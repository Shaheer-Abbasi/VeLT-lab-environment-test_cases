; ModuleID = 'src/pathchk.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [47 x i8] c"Diagnose invalid or non-portable file names.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [39 x i8] c"  -p     check for most POSIX systems\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P     check for empty names and leading \22-\22\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [80 x i8] c"      --portability\0A         check for all POSIX systems (equivalent to -p -P)\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !44
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1, !dbg !59
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.53, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !64
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !142
@.str.14 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !147
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !152
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !157
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !162
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !164
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !247
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !252
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !254
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !256
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !296
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !298
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !300
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !305
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !310
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !315
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !320
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !322
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !324
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !326
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !337
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !339
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !344
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !349
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !354
@.str.53 = private unnamed_addr constant [12 x i8] c"portability\00", align 1, !dbg !356
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !358
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !360
@.str.56 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1, !dbg !362
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !364
@.str.58 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !366
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !368
@.str.60 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1, !dbg !370
@.str.61 = private unnamed_addr constant [49 x i8] c"limit %td exceeded by length %td of file name %s\00", align 1, !dbg !375
@.str.62 = private unnamed_addr constant [59 x i8] c"limit %td exceeded by length %td of file name component %s\00", align 1, !dbg !377
@.str.63 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1, !dbg !382
@.str.64 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1, !dbg !387
@.str.65 = private unnamed_addr constant [42 x i8] c"non-portable character %s in file name %s\00", align 1, !dbg !392
@.str.22 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !407
@Version = dso_local local_unnamed_addr global ptr @.str.22, align 8, !dbg !410
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !414
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !427
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !419
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !421
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !423
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !425
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !429
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !435
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !471
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !437
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !461
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !463
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !465
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !467
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !469
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !473
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !475
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !480
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !485
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !503
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !509
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !511
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !513
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !542
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !545
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !547
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !549
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !551
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !553
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !555
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !557
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !559
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !561
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 8, !dbg !563
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !576
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !590
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !628
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !635
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !592
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !637
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !580
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !597
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !599
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !601
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !603
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !605
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !643
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !646
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !648
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !650
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !652
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !654
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !659
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !664
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !666
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !671
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !676
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !681
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !686
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !688
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !693
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !695
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !700
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !705
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !707
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !709
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !711
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !713
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !715
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !717
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !722
@exit_failure = dso_local global i32 1, align 4, !dbg !728
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !734
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !737
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !739
@.str.146 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !741
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !744
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !746
@internal_state.151 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !749

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !837 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !841, metadata !DIExpression()), !dbg !842
  %2 = icmp eq i32 %0, 0, !dbg !843
  br i1 %2, label %8, label %3, !dbg !845

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !846, !tbaa !848
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !846
  %6 = load ptr, ptr @program_name, align 8, !dbg !846, !tbaa !848
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !846
  br label %34, !dbg !846

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !852
  %10 = load ptr, ptr @program_name, align 8, !dbg !852, !tbaa !848
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !852
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !854
  %13 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !848
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !854
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !855
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !855
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !856
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !857
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !858
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !858
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !859
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !859
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata !879, metadata !873, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr poison, metadata !872, metadata !DIExpression()), !dbg !877
  tail call void @emit_bug_reporting_address() #37, !dbg !880
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !881
  call void @llvm.dbg.value(metadata ptr %20, metadata !875, metadata !DIExpression()), !dbg !877
  %21 = icmp eq ptr %20, null, !dbg !882
  br i1 %21, label %29, label %22, !dbg !884

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !885
  %24 = icmp eq i32 %23, 0, !dbg !885
  br i1 %24, label %29, label %25, !dbg !886

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !887
  %27 = load ptr, ptr @stdout, align 8, !dbg !887, !tbaa !848
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !887
  br label %29, !dbg !889

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !877
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !890
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !890
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !891
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !891
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !892
  unreachable, !dbg !892
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !893 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !897 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !903 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !906 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !166 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !170, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !909
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !910, !tbaa !911
  %3 = icmp eq i32 %2, -1, !dbg !913
  br i1 %3, label %4, label %16, !dbg !914

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !172, metadata !DIExpression()), !dbg !916
  %6 = icmp eq ptr %5, null, !dbg !917
  br i1 %6, label %14, label %7, !dbg !918

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !919, !tbaa !920
  %9 = icmp eq i8 %8, 0, !dbg !919
  br i1 %9, label %14, label %10, !dbg !921

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !928, metadata !DIExpression()), !dbg !929
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !931
  %12 = icmp eq i32 %11, 0, !dbg !932
  %13 = zext i1 %12 to i32, !dbg !921
  br label %14, !dbg !921

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !933, !tbaa !911
  br label %16, !dbg !934

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !935
  %18 = icmp eq i32 %17, 0, !dbg !935
  br i1 %18, label %22, label %19, !dbg !937

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !848
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !938
  br label %121, !dbg !940

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !909
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !941
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !942
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !177, metadata !DIExpression()), !dbg !909
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !943
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !178, metadata !DIExpression()), !dbg !909
  %26 = icmp eq ptr %25, null, !dbg !944
  br i1 %26, label %53, label %27, !dbg !945

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !946
  br i1 %28, label %53, label %29, !dbg !947

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !179, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !948
  %30 = icmp ult ptr %24, %25, !dbg !949
  br i1 %30, label %31, label %53, !dbg !950

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !909
  %33 = load ptr, ptr %32, align 8, !tbaa !848
  br label %34, !dbg !950

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !179, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !183, metadata !DIExpression()), !dbg !948
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !951
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !179, metadata !DIExpression()), !dbg !948
  %38 = load i8, ptr %35, align 1, !dbg !951, !tbaa !920
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !951
  %41 = load i16, ptr %40, align 2, !dbg !951, !tbaa !952
  %42 = freeze i16 %41, !dbg !954
  %43 = lshr i16 %42, 13, !dbg !954
  %44 = and i16 %43, 1, !dbg !954
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !955
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !183, metadata !DIExpression()), !dbg !948
  %47 = icmp ult ptr %37, %25, !dbg !949
  %48 = icmp ult i64 %46, 2, !dbg !956
  %49 = select i1 %47, i1 %48, i1 false, !dbg !956
  br i1 %49, label %34, label %50, !dbg !950, !llvm.loop !957

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !955
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !959
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !961
  br label %53, !dbg !961

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !909
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !178, metadata !DIExpression()), !dbg !909
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.21) #38, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !184, metadata !DIExpression()), !dbg !909
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !963
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !185, metadata !DIExpression()), !dbg !909
  br label %58, !dbg !964

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !909
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !185, metadata !DIExpression()), !dbg !909
  %61 = load i8, ptr %59, align 1, !dbg !965, !tbaa !920
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !966

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !967
  %64 = load i8, ptr %63, align 1, !dbg !970, !tbaa !920
  %65 = icmp ne i8 %64, 45, !dbg !971
  %66 = select i1 %65, i1 %60, i1 false, !dbg !972
  br label %67, !dbg !972

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !909
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !973
  %70 = load ptr, ptr %69, align 8, !dbg !973, !tbaa !848
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !973
  %73 = load i16, ptr %72, align 2, !dbg !973, !tbaa !952
  %74 = and i16 %73, 8192, !dbg !973
  %75 = icmp eq i16 %74, 0, !dbg !973
  br i1 %75, label %89, label %76, !dbg !975

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !976
  br i1 %77, label %91, label %78, !dbg !979

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !980
  %80 = load i8, ptr %79, align 1, !dbg !980, !tbaa !920
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !980
  %83 = load i16, ptr %82, align 2, !dbg !980, !tbaa !952
  %84 = and i16 %83, 8192, !dbg !980
  %85 = icmp eq i16 %84, 0, !dbg !980
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !981
  br i1 %88, label %89, label %91, !dbg !981

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !982
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !185, metadata !DIExpression()), !dbg !909
  br label %58, !dbg !964, !llvm.loop !983

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !909
  %92 = ptrtoint ptr %24 to i64, !dbg !985
  %93 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !848
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !985
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !879, metadata !928, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !242, metadata !DIExpression()), !dbg !909
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !1006
  %96 = icmp eq i32 %95, 0, !dbg !1006
  br i1 %96, label %100, label %97, !dbg !1008

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !1009
  %99 = icmp eq i32 %98, 0, !dbg !1009
  br i1 %99, label %100, label %103, !dbg !1010

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1011
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !1011
  br label %106, !dbg !1013

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1014
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !1014
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !848
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %107), !dbg !1016
  %109 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !848
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %109), !dbg !1017
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1018
  %112 = sub i64 %111, %92, !dbg !1018
  %113 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !848
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1018
  %115 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !848
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %115), !dbg !1019
  %117 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !848
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %117), !dbg !1020
  %119 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !848
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1021
  br label %121, !dbg !1022

121:                                              ; preds = %106, %19
  ret void, !dbg !1022
}

; Function Attrs: nounwind
declare !dbg !1023 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1027 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1031 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1033 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1036 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1039 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1045 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1051 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1052 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1058 {
  %3 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1069
  %4 = alloca %struct.stat, align 8, !DIAssignID !1070
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1063, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1064, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1066, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1067, metadata !DIExpression()), !dbg !1071
  %5 = load ptr, ptr %1, align 8, !dbg !1072, !tbaa !848
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1073
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1074
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1075
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1076
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1077
  br label %10, !dbg !1078

10:                                               ; preds = %18, %2
  %11 = phi i1 [ false, %2 ], [ true, %18 ]
  %12 = phi i1 [ false, %2 ], [ %19, %18 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1067, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1066, metadata !DIExpression()), !dbg !1071
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1068, metadata !DIExpression()), !dbg !1071
  switch i32 %13, label %.loopexit13 [
    i32 -1, label %.loopexit14
    i32 256, label %18
    i32 112, label %16
    i32 80, label %.preheader6
    i32 -2, label %.loopexit15
    i32 -3, label %.loopexit16
  ], !dbg !1078, !llvm.loop !1080

.preheader6:                                      ; preds = %10
  br label %14, !dbg !1078

14:                                               ; preds = %.preheader6, %20
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1067, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1066, metadata !DIExpression()), !dbg !1071
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1068, metadata !DIExpression()), !dbg !1071
  switch i32 %15, label %.loopexit7 [
    i32 -1, label %.loopexit8
    i32 256, label %.loopexit9
    i32 112, label %.loopexit10
    i32 80, label %20
    i32 -2, label %.loopexit11
    i32 -3, label %.loopexit12
  ], !dbg !1078, !llvm.loop !1080

.loopexit10:                                      ; preds = %14
  br label %16, !dbg !1082

16:                                               ; preds = %.loopexit10, %10
  %17 = phi i1 [ %12, %10 ], [ true, %.loopexit10 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1066, metadata !DIExpression()), !dbg !1071
  br label %18, !dbg !1082

.loopexit9:                                       ; preds = %14
  br label %18, !dbg !1078

18:                                               ; preds = %.loopexit9, %10, %16
  %19 = phi i1 [ %17, %16 ], [ true, %10 ], [ true, %.loopexit9 ]
  br label %10, !dbg !1078, !llvm.loop !1080

20:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1071
  br label %14, !dbg !1085, !llvm.loop !1086

.loopexit11:                                      ; preds = %14
  br label %21, !dbg !1088

.loopexit15:                                      ; preds = %10
  br label %21, !dbg !1088

21:                                               ; preds = %.loopexit15, %.loopexit11
  tail call void @usage(i32 noundef 0) #41, !dbg !1088
  unreachable, !dbg !1088

.loopexit12:                                      ; preds = %14
  br label %22, !dbg !1089

.loopexit16:                                      ; preds = %10
  br label %22, !dbg !1089

22:                                               ; preds = %.loopexit16, %.loopexit12
  %23 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !848
  %24 = load ptr, ptr @Version, align 8, !dbg !1089, !tbaa !848
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1089
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #37, !dbg !1089
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1089
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #37, !dbg !1089
  tail call void @exit(i32 noundef 0) #39, !dbg !1089
  unreachable, !dbg !1089

.loopexit7:                                       ; preds = %14
  br label %28, !dbg !1090

.loopexit13:                                      ; preds = %10
  br label %28, !dbg !1090

28:                                               ; preds = %.loopexit13, %.loopexit7
  tail call void @usage(i32 noundef 1) #41, !dbg !1090
  unreachable, !dbg !1090

.loopexit8:                                       ; preds = %14
  %.lcssa43 = phi i1 [ %11, %14 ]
  br label %29, !dbg !1091

.loopexit14:                                      ; preds = %10
  %.lcssa39 = phi i1 [ %11, %10 ]
  %.lcssa31 = phi i1 [ %12, %10 ]
  br label %29, !dbg !1091

29:                                               ; preds = %.loopexit14, %.loopexit8
  %30 = phi i1 [ %.lcssa43, %.loopexit8 ], [ %.lcssa39, %.loopexit14 ]
  %31 = phi i1 [ true, %.loopexit8 ], [ %.lcssa31, %.loopexit14 ]
  %32 = load i32, ptr @optind, align 4, !dbg !1091, !tbaa !911
  %33 = icmp eq i32 %32, %0, !dbg !1093
  br i1 %33, label %36, label %34, !dbg !1094

34:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()), !dbg !1071
  %35 = icmp slt i32 %32, %0, !dbg !1095
  br i1 %35, label %.preheader5, label %180, !dbg !1098

.preheader5:                                      ; preds = %34
  br label %38, !dbg !1098

36:                                               ; preds = %29
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1099
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %37) #37, !dbg !1099
  tail call void @usage(i32 noundef 1) #41, !dbg !1101
  unreachable, !dbg !1101

38:                                               ; preds = %.preheader5, %171
  %39 = phi i32 [ %175, %171 ], [ %32, %.preheader5 ]
  %40 = phi i1 [ %173, %171 ], [ true, %.preheader5 ]
  %41 = sext i32 %39 to i64, !dbg !1102
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !1102
  %43 = load ptr, ptr %42, align 8, !dbg !1102, !tbaa !848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1103, metadata !DIExpression(), metadata !1070, metadata ptr %4, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %43, metadata !1110, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i1 %30, metadata !1111, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1186
  call void @llvm.dbg.value(metadata i1 %31, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1186
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #38, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %44, metadata !1113, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1186
  br i1 %31, label %45, label %62, !dbg !1188

45:                                               ; preds = %38
  call void @llvm.dbg.value(metadata ptr %43, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %43, metadata !1195, metadata !DIExpression()), !dbg !1199
  %46 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %43, i32 noundef 45) #38, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %46, metadata !1195, metadata !DIExpression()), !dbg !1199
  %47 = icmp eq ptr %46, null, !dbg !1202
  br i1 %47, label %62, label %.preheader3, !dbg !1202

.preheader3:                                      ; preds = %45
  br label %52, !dbg !1202

48:                                               ; preds = %55
  %49 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %49, metadata !1195, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %49, metadata !1195, metadata !DIExpression()), !dbg !1199
  %50 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %49, i32 noundef 45) #38, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %50, metadata !1195, metadata !DIExpression()), !dbg !1199
  %51 = icmp eq ptr %50, null, !dbg !1202
  br i1 %51, label %.loopexit4, label %52, !dbg !1202, !llvm.loop !1204

52:                                               ; preds = %.preheader3, %48
  %53 = phi ptr [ %50, %48 ], [ %46, %.preheader3 ]
  %54 = icmp eq ptr %53, %43, !dbg !1206
  br i1 %54, label %59, label %55, !dbg !1208

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %53, i64 -1, !dbg !1209
  %57 = load i8, ptr %56, align 1, !dbg !1209, !tbaa !920
  %58 = icmp eq i8 %57, 47, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %53, metadata !1195, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1199
  br i1 %58, label %59, label %48, !dbg !1211

59:                                               ; preds = %55, %52
  %60 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #37, !dbg !1212
  %61 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %43) #37, !dbg !1212
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %60, ptr noundef %61) #37, !dbg !1212
  br label %171, !dbg !1214

.loopexit4:                                       ; preds = %48
  br label %62

62:                                               ; preds = %.loopexit4, %45, %38
  %63 = icmp eq i64 %44, 0
  br i1 %30, label %66, label %64, !dbg !1215

64:                                               ; preds = %62
  %65 = select i1 %31, i1 %63, i1 false, !dbg !1217
  br i1 %65, label %67, label %82, !dbg !1217

66:                                               ; preds = %62
  br i1 %63, label %67, label %69, !dbg !1218

67:                                               ; preds = %66, %64
  %68 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !1219
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %68) #37, !dbg !1219
  br label %171, !dbg !1221

69:                                               ; preds = %66
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1222, metadata !DIExpression(), metadata !1069, metadata ptr %3, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %43, metadata !1229, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %44, metadata !1230, metadata !DIExpression()), !dbg !1248
  %70 = call i64 @strspn(ptr noundef %43, ptr noundef nonnull @.str.64) #38, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %70, metadata !1231, metadata !DIExpression()), !dbg !1248
  %71 = getelementptr inbounds i8, ptr %43, i64 %70, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %71, metadata !1232, metadata !DIExpression()), !dbg !1248
  %72 = load i8, ptr %71, align 1, !dbg !1251, !tbaa !920
  %73 = icmp eq i8 %72, 0, !dbg !1251
  br i1 %73, label %108, label %74, !dbg !1252

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1253
  call void @llvm.dbg.value(metadata ptr %3, metadata !1254, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata ptr %3, metadata !1263, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 0, metadata !1269, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 8, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i64 0, ptr %3, align 8, !dbg !1273
  %75 = sub i64 %44, %70, !dbg !1274
  %76 = call i64 @rpl_mbrlen(ptr noundef nonnull %71, i64 noundef %75, ptr noundef nonnull %3) #37, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %76, metadata !1233, metadata !DIExpression()), !dbg !1244
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1276
  %78 = icmp ult i64 %76, 17, !dbg !1276
  %79 = select i1 %78, i64 %76, i64 1, !dbg !1276
  %80 = call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef nonnull %71, i64 noundef %79) #37, !dbg !1276
  %81 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %43) #37, !dbg !1276
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %77, ptr noundef %80, ptr noundef %81) #37, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1277
  br label %171, !dbg !1278

82:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #37, !dbg !1279
  %83 = call i32 @lstat(ptr noundef %43, ptr noundef nonnull %4) #37, !dbg !1280
  %84 = icmp eq i32 %83, 0, !dbg !1282
  br i1 %84, label %85, label %86, !dbg !1283

85:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1284
  call void @llvm.dbg.value(metadata i8 poison, metadata !1116, metadata !DIExpression()), !dbg !1186
  br label %171, !dbg !1285

86:                                               ; preds = %82
  %87 = tail call ptr @__errno_location() #40, !dbg !1286
  %88 = load i32, ptr %87, align 4, !dbg !1286, !tbaa !911
  %89 = icmp ne i32 %88, 2, !dbg !1288
  %90 = select i1 %89, i1 true, i1 %63, !dbg !1289
  br i1 %90, label %91, label %93, !dbg !1289

91:                                               ; preds = %86
  %92 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %43) #37, !dbg !1290
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %88, ptr noundef nonnull @.str.57, ptr noundef %92) #37, !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1284
  br label %171

93:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1284
  %94 = icmp slt i64 %44, 256
  br i1 %94, label %116, label %95, !dbg !1292

95:                                               ; preds = %93
  %96 = load i8, ptr %43, align 1, !dbg !1293, !tbaa !920
  %97 = icmp eq i8 %96, 47, !dbg !1294
  %98 = select i1 %97, ptr @.str.58, ptr @.str.59, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %98, metadata !1124, metadata !DIExpression()), !dbg !1295
  store i32 0, ptr %87, align 4, !dbg !1296, !tbaa !911
  %99 = call i64 @pathconf(ptr noundef nonnull %98, i32 noundef 4) #37, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %99, metadata !1121, metadata !DIExpression()), !dbg !1295
  %100 = icmp slt i64 %99, 0, !dbg !1298
  br i1 %100, label %101, label %106, !dbg !1300

101:                                              ; preds = %95
  %102 = load i32, ptr %87, align 4, !dbg !1301, !tbaa !911
  %103 = icmp eq i32 %102, 0, !dbg !1302
  br i1 %103, label %106, label %104, !dbg !1303

104:                                              ; preds = %101
  %105 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !1304
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %102, ptr noundef %105, ptr noundef nonnull %98) #37, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %99, metadata !1118, metadata !DIExpression()), !dbg !1306
  br label %171

106:                                              ; preds = %101, %95
  call void @llvm.dbg.value(metadata i64 %99, metadata !1118, metadata !DIExpression()), !dbg !1306
  %107 = icmp sgt i64 %99, %44, !dbg !1307
  br i1 %107, label %115, label %110, !dbg !1309

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 256, metadata !1118, metadata !DIExpression()), !dbg !1306
  %109 = icmp slt i64 %44, 256, !dbg !1307
  br i1 %109, label %132, label %110, !dbg !1309

110:                                              ; preds = %108, %106
  %111 = phi i64 [ 256, %108 ], [ %99, %106 ]
  %112 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #37, !dbg !1310
  %113 = add nsw i64 %111, -1, !dbg !1310
  %114 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %43) #37, !dbg !1310
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %112, i64 noundef %113, i64 noundef %44, ptr noundef %114) #37, !dbg !1310
  br label %171, !dbg !1312

115:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i1 %30, metadata !1116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1186
  br i1 %30, label %132, label %116, !dbg !1313

116:                                              ; preds = %115, %93
  br label %117, !dbg !1314

117:                                              ; preds = %121, %116
  %118 = phi ptr [ %43, %116 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata ptr %118, metadata !1319, metadata !DIExpression()), !dbg !1321
  %119 = load i8, ptr %118, align 1, !dbg !1322, !tbaa !920
  %120 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %120, metadata !1319, metadata !DIExpression()), !dbg !1321
  switch i8 %119, label %.preheader [
    i8 47, label %121
    i8 0, label %.loopexit1
  ], !dbg !1314

.preheader:                                       ; preds = %117
  br label %123, !dbg !1324

121:                                              ; preds = %117, %129
  %122 = phi ptr [ %120, %117 ], [ %130, %129 ]
  br label %117, !dbg !1321, !llvm.loop !1333

123:                                              ; preds = %.preheader, %127
  %124 = phi i64 [ %128, %127 ], [ 1, %.preheader ], !dbg !1336
  call void @llvm.dbg.value(metadata i64 %124, metadata !1331, metadata !DIExpression()), !dbg !1337
  %125 = getelementptr inbounds i8, ptr %118, i64 %124, !dbg !1338
  %126 = load i8, ptr %125, align 1, !dbg !1338, !tbaa !920
  switch i8 %126, label %127 [
    i8 47, label %129
    i8 0, label %129
  ], !dbg !1340

127:                                              ; preds = %123
  %128 = add i64 %124, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %128, metadata !1331, metadata !DIExpression()), !dbg !1337
  br label %123, !dbg !1342, !llvm.loop !1343

129:                                              ; preds = %123, %123
  %.lcssa = phi i64 [ %124, %123 ], [ %124, %123 ], !dbg !1336
  %130 = getelementptr inbounds i8, ptr %118, i64 %.lcssa
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !1129, metadata !DIExpression()), !dbg !1345
  %131 = icmp ult i64 %.lcssa, 15, !dbg !1346
  call void @llvm.dbg.value(metadata i8 poison, metadata !1116, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata ptr poison, metadata !1125, metadata !DIExpression()), !dbg !1348
  br i1 %131, label %121, label %.loopexit2

.loopexit2:                                       ; preds = %129
  br label %132, !dbg !1349

132:                                              ; preds = %.loopexit2, %108, %115
  %133 = phi i64 [ 14, %115 ], [ 14, %108 ], [ 0, %.loopexit2 ]
  br label %134, !dbg !1349

134:                                              ; preds = %132, %165
  %135 = phi i64 [ %157, %165 ], [ 14, %132 ], !dbg !1350
  %136 = phi i64 [ %158, %165 ], [ %133, %132 ], !dbg !1351
  %137 = phi ptr [ %166, %165 ], [ %43, %132 ], !dbg !1352
  call void @llvm.dbg.value(metadata ptr %137, metadata !1136, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %136, metadata !1135, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %135, metadata !1132, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata ptr %137, metadata !1319, metadata !DIExpression()), !dbg !1354
  br label %138, !dbg !1356

138:                                              ; preds = %138, %134
  %139 = phi ptr [ %137, %134 ], [ %141, %138 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !1319, metadata !DIExpression()), !dbg !1354
  %140 = load i8, ptr %139, align 1, !dbg !1357, !tbaa !920
  %141 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %141, metadata !1319, metadata !DIExpression()), !dbg !1354
  switch i8 %140, label %142 [
    i8 47, label %138
    i8 0, label %.loopexit
  ], !dbg !1356

142:                                              ; preds = %138
  %.lcssa20 = phi ptr [ %139, %138 ]
  %.lcssa17 = phi i8 [ %140, %138 ], !dbg !1357
  %143 = icmp eq i64 %136, 0, !dbg !1359
  br i1 %143, label %144, label %156, !dbg !1360

144:                                              ; preds = %142
  %145 = icmp eq ptr %.lcssa20, %43, !dbg !1361
  %146 = select i1 %145, ptr @.str.59, ptr %43, !dbg !1362
  call void @llvm.dbg.value(metadata ptr %146, metadata !1144, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %.lcssa17, metadata !1145, metadata !DIExpression()), !dbg !1363
  %147 = tail call ptr @__errno_location() #40, !dbg !1364
  store i32 0, ptr %147, align 4, !dbg !1365, !tbaa !911
  store i8 0, ptr %.lcssa20, align 1, !dbg !1366, !tbaa !920
  %148 = call i64 @pathconf(ptr noundef %146, i32 noundef 3) #37, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %148, metadata !1141, metadata !DIExpression()), !dbg !1363
  store i8 %.lcssa17, ptr %.lcssa20, align 1, !dbg !1368, !tbaa !920
  %149 = icmp sgt i64 %148, -1, !dbg !1369
  br i1 %149, label %156, label %150, !dbg !1371

150:                                              ; preds = %144
  %151 = load i32, ptr %147, align 4, !dbg !1372, !tbaa !911
  switch i32 %151, label %153 [
    i32 0, label %156
    i32 2, label %152
  ], !dbg !1373

152:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i64 %135, metadata !1135, metadata !DIExpression()), !dbg !1350
  br label %156, !dbg !1374

153:                                              ; preds = %150
  %.lcssa26 = phi ptr [ %146, %150 ], !dbg !1362
  %.lcssa25 = phi ptr [ %147, %150 ], !dbg !1364
  %.lcssa20.lcssa = phi ptr [ %.lcssa20, %150 ]
  %.lcssa17.lcssa = phi i8 [ %.lcssa17, %150 ], !dbg !1357
  store i8 0, ptr %.lcssa20.lcssa, align 1, !dbg !1376, !tbaa !920
  %154 = load i32, ptr %.lcssa25, align 4, !dbg !1377, !tbaa !911
  %155 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %.lcssa26) #37, !dbg !1377
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %154, ptr noundef nonnull @.str.57, ptr noundef %155) #37, !dbg !1377
  store i8 %.lcssa17.lcssa, ptr %.lcssa20.lcssa, align 1, !dbg !1378, !tbaa !920
  call void @llvm.dbg.value(metadata i64 0, metadata !1135, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %135, metadata !1132, metadata !DIExpression()), !dbg !1350
  br label %171

156:                                              ; preds = %152, %150, %144, %142
  %157 = phi i64 [ %136, %142 ], [ 9223372036854775807, %150 ], [ %148, %144 ], [ %135, %152 ], !dbg !1379
  %158 = phi i64 [ %136, %142 ], [ 0, %150 ], [ 0, %144 ], [ %135, %152 ], !dbg !1351
  call void @llvm.dbg.value(metadata i64 %158, metadata !1135, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %157, metadata !1132, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata ptr %.lcssa20, metadata !1330, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 1, metadata !1331, metadata !DIExpression()), !dbg !1380
  br label %159, !dbg !1382

159:                                              ; preds = %163, %156
  %160 = phi i64 [ 1, %156 ], [ %164, %163 ], !dbg !1383
  call void @llvm.dbg.value(metadata i64 %160, metadata !1331, metadata !DIExpression()), !dbg !1380
  %161 = getelementptr inbounds i8, ptr %.lcssa20, i64 %160, !dbg !1384
  %162 = load i8, ptr %161, align 1, !dbg !1384, !tbaa !920
  switch i8 %162, label %163 [
    i8 47, label %165
    i8 0, label %165
  ], !dbg !1385

163:                                              ; preds = %159
  %164 = add i64 %160, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %164, metadata !1331, metadata !DIExpression()), !dbg !1380
  br label %159, !dbg !1387, !llvm.loop !1388

165:                                              ; preds = %159, %159
  %.lcssa24 = phi i64 [ %160, %159 ], [ %160, %159 ], !dbg !1383
  %.lcssa23 = phi i8 [ %162, %159 ], [ %162, %159 ], !dbg !1384
  %166 = getelementptr inbounds i8, ptr %.lcssa20, i64 %.lcssa24
  call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1138, metadata !DIExpression()), !dbg !1391
  %167 = icmp slt i64 %157, %.lcssa24, !dbg !1392
  br i1 %167, label %168, label %134, !dbg !1393, !llvm.loop !1394

168:                                              ; preds = %165
  %.lcssa28 = phi ptr [ %166, %165 ]
  %.lcssa27 = phi i64 [ %157, %165 ], !dbg !1379
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %165 ], !dbg !1383
  %.lcssa23.lcssa = phi i8 [ %.lcssa23, %165 ], !dbg !1384
  %.lcssa20.lcssa22 = phi ptr [ %.lcssa20, %165 ]
  call void @llvm.dbg.value(metadata i8 %.lcssa23.lcssa, metadata !1146, metadata !DIExpression()), !dbg !1396
  store i8 0, ptr %.lcssa28, align 1, !dbg !1397, !tbaa !920
  %169 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1398
  %170 = call ptr @quote(ptr noundef nonnull %.lcssa20.lcssa22) #37, !dbg !1398
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %169, i64 noundef %.lcssa27, i64 noundef %.lcssa24.lcssa, ptr noundef %170) #37, !dbg !1398
  store i8 %.lcssa23.lcssa, ptr %.lcssa28, align 1, !dbg !1399, !tbaa !920
  br label %171

.loopexit:                                        ; preds = %138
  br label %171, !dbg !1400

.loopexit1:                                       ; preds = %117
  br label %171, !dbg !1400

171:                                              ; preds = %.loopexit1, %.loopexit, %59, %67, %74, %85, %91, %104, %110, %153, %168
  %172 = phi i1 [ false, %67 ], [ false, %91 ], [ false, %59 ], [ false, %74 ], [ false, %104 ], [ false, %110 ], [ false, %168 ], [ false, %153 ], [ true, %85 ], [ true, %.loopexit ], [ true, %.loopexit1 ]
  %173 = and i1 %40, %172, !dbg !1400
  tail call void @llvm.dbg.value(metadata i1 %173, metadata !1065, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1071
  %174 = load i32, ptr @optind, align 4, !dbg !1401, !tbaa !911
  %175 = add nsw i32 %174, 1, !dbg !1401
  store i32 %175, ptr @optind, align 4, !dbg !1401, !tbaa !911
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()), !dbg !1071
  %176 = icmp slt i32 %175, %0, !dbg !1095
  br i1 %176, label %38, label %177, !dbg !1098, !llvm.loop !1402

177:                                              ; preds = %171
  %.lcssa29 = phi i1 [ %173, %171 ], !dbg !1400
  %178 = xor i1 %.lcssa29, true, !dbg !1404
  %179 = zext i1 %178 to i32, !dbg !1404
  br label %180, !dbg !1404

180:                                              ; preds = %177, %34
  %181 = phi i32 [ 0, %34 ], [ %179, %177 ]
  ret i32 %181, !dbg !1405
}

; Function Attrs: nounwind
declare !dbg !1406 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1409 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1410 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1413 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1419 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1422 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1428 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1432 i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1436 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1438, metadata !DIExpression()), !dbg !1439
  store ptr %0, ptr @file_name, align 8, !dbg !1440, !tbaa !848
  ret void, !dbg !1441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1442 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1448, !tbaa !1449
  ret void, !dbg !1451
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1452 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1457, !tbaa !848
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1458
  %3 = icmp eq i32 %2, 0, !dbg !1459
  br i1 %3, label %22, label %4, !dbg !1460

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1461, !tbaa !1449, !range !1462, !noundef !879
  %6 = icmp eq i8 %5, 0, !dbg !1461
  br i1 %6, label %11, label %7, !dbg !1463

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1464
  %9 = load i32, ptr %8, align 4, !dbg !1464, !tbaa !911
  %10 = icmp eq i32 %9, 32, !dbg !1465
  br i1 %10, label %22, label %11, !dbg !1466

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #37, !dbg !1467
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1454, metadata !DIExpression()), !dbg !1468
  %13 = load ptr, ptr @file_name, align 8, !dbg !1469, !tbaa !848
  %14 = icmp eq ptr %13, null, !dbg !1469
  %15 = tail call ptr @__errno_location() #40, !dbg !1471
  %16 = load i32, ptr %15, align 4, !dbg !1471, !tbaa !911
  br i1 %14, label %19, label %17, !dbg !1472

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1473
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #37, !dbg !1473
  br label %20, !dbg !1473

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #37, !dbg !1474
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1475, !tbaa !911
  tail call void @_exit(i32 noundef %21) #39, !dbg !1476
  unreachable, !dbg !1476

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1477, !tbaa !848
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1479
  %25 = icmp eq i32 %24, 0, !dbg !1480
  br i1 %25, label %28, label %26, !dbg !1481

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1482, !tbaa !911
  tail call void @_exit(i32 noundef %27) #39, !dbg !1483
  unreachable, !dbg !1483

28:                                               ; preds = %22
  ret void, !dbg !1484
}

; Function Attrs: noreturn
declare !dbg !1485 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1486 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1490, metadata !DIExpression()), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1491, metadata !DIExpression()), !dbg !1494
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1492, metadata !DIExpression()), !dbg !1494
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1493, metadata !DIExpression(DW_OP_deref)), !dbg !1494
  tail call fastcc void @flush_stdout(), !dbg !1495
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1496, !tbaa !848
  %7 = icmp eq ptr %6, null, !dbg !1496
  br i1 %7, label %9, label %8, !dbg !1498

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1499
  br label %13, !dbg !1499

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1500, !tbaa !848
  %11 = tail call ptr @getprogname() #38, !dbg !1500
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #37, !dbg !1500
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1502, !tbaa.struct !1503
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1502
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1502
  ret void, !dbg !1504
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1505 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 1, metadata !1509, metadata !DIExpression()), !dbg !1514
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1517
  %2 = icmp slt i32 %1, 0, !dbg !1518
  br i1 %2, label %6, label %3, !dbg !1519

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !848
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1520
  br label %6, !dbg !1520

6:                                                ; preds = %3, %0
  ret void, !dbg !1521
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1522 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1528
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1524, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1525, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1527, metadata !DIExpression(DW_OP_deref)), !dbg !1529
  %7 = load ptr, ptr @stderr, align 8, !dbg !1530, !tbaa !848
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1531, !noalias !1575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1579
  call void @llvm.dbg.value(metadata ptr %7, metadata !1571, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %2, metadata !1572, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr poison, metadata !1573, metadata !DIExpression(DW_OP_deref)), !dbg !1580
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1531
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1531, !noalias !1575
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1581, !tbaa !911
  %10 = add i32 %9, 1, !dbg !1581
  store i32 %10, ptr @error_message_count, align 4, !dbg !1581, !tbaa !911
  %11 = icmp eq i32 %1, 0, !dbg !1582
  br i1 %11, label %21, label %12, !dbg !1584

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1585, metadata !DIExpression(), metadata !1528, metadata ptr %5, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1595
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %13, metadata !1589, metadata !DIExpression()), !dbg !1593
  %14 = icmp eq ptr %13, null, !dbg !1597
  br i1 %14, label %15, label %17, !dbg !1599

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %16, metadata !1589, metadata !DIExpression()), !dbg !1593
  br label %17, !dbg !1601

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1593
  call void @llvm.dbg.value(metadata ptr %18, metadata !1589, metadata !DIExpression()), !dbg !1593
  %19 = load ptr, ptr @stderr, align 8, !dbg !1602, !tbaa !848
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #37, !dbg !1602
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1603
  br label %21, !dbg !1604

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1605, !tbaa !848
  call void @llvm.dbg.value(metadata i32 10, metadata !1606, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata ptr %22, metadata !1612, metadata !DIExpression()), !dbg !1613
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1615
  %24 = load ptr, ptr %23, align 8, !dbg !1615, !tbaa !1616
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1615
  %26 = load ptr, ptr %25, align 8, !dbg !1615, !tbaa !1619
  %27 = icmp ult ptr %24, %26, !dbg !1615
  br i1 %27, label %30, label %28, !dbg !1615, !prof !1620

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1615
  br label %32, !dbg !1615

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1615
  store ptr %31, ptr %23, align 8, !dbg !1615, !tbaa !1616
  store i8 10, ptr %24, align 1, !dbg !1615, !tbaa !920
  br label %32, !dbg !1615

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1621, !tbaa !848
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1621
  %35 = icmp eq i32 %0, 0, !dbg !1622
  br i1 %35, label %37, label %36, !dbg !1624

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1625
  unreachable, !dbg !1625

37:                                               ; preds = %32
  ret void, !dbg !1626
}

declare !dbg !1627 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1630 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1633 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1636 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1639 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1643 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1650, metadata !DIExpression(), metadata !1651, metadata ptr %4, metadata !DIExpression()), !dbg !1652
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1647, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1648, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1653
  call void @llvm.va_start(ptr nonnull %4), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1655, !tbaa.struct !1503
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1655
  call void @llvm.va_end(ptr nonnull %4), !dbg !1656
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1657
  ret void, !dbg !1657
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !439 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !455, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !456, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !458, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !460, metadata !DIExpression(DW_OP_deref)), !dbg !1658
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1659, !tbaa !911
  %9 = icmp eq i32 %8, 0, !dbg !1659
  br i1 %9, label %24, label %10, !dbg !1661

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1662, !tbaa !911
  %12 = icmp eq i32 %11, %3, !dbg !1665
  br i1 %12, label %13, label %23, !dbg !1666

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1667, !tbaa !848
  %15 = icmp eq ptr %14, %2, !dbg !1668
  br i1 %15, label %37, label %16, !dbg !1669

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1670
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1671
  br i1 %19, label %20, label %23, !dbg !1671

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1672
  %22 = icmp eq i32 %21, 0, !dbg !1673
  br i1 %22, label %37, label %23, !dbg !1674

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1675, !tbaa !848
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1676, !tbaa !911
  br label %24, !dbg !1677

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1678
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1679, !tbaa !848
  %26 = icmp eq ptr %25, null, !dbg !1679
  br i1 %26, label %28, label %27, !dbg !1681

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1682
  br label %32, !dbg !1682

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1683, !tbaa !848
  %30 = tail call ptr @getprogname() #38, !dbg !1683
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #37, !dbg !1683
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1685, !tbaa !848
  %34 = icmp eq ptr %2, null, !dbg !1685
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1685
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1685
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1686, !tbaa.struct !1503
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1686
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1686
  br label %37, !dbg !1687

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1687
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1688 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1697, metadata !DIExpression(), metadata !1698, metadata ptr %6, metadata !DIExpression()), !dbg !1699
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1692, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1693, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1694, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1695, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1700
  call void @llvm.va_start(ptr nonnull %6), !dbg !1701
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1702, !tbaa.struct !1503
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1702
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1702
  call void @llvm.va_end(ptr nonnull %6), !dbg !1703
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1704
  ret void, !dbg !1704
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1705 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1708, !tbaa !848
  ret ptr %1, !dbg !1709
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1710 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1715, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1716, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1717, metadata !DIExpression()), !dbg !1718
  %4 = icmp eq ptr %2, null, !dbg !1719
  %5 = select i1 %4, ptr @internal_state, ptr %2, !dbg !1721
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1717, metadata !DIExpression()), !dbg !1718
  %6 = tail call i64 @rpl_mbrtowc(ptr noundef null, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %5) #37, !dbg !1722
  ret i64 %6, !dbg !1723
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !1724 {
  %5 = alloca i32, align 4, !DIAssignID !1751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1746, metadata !DIExpression(), metadata !1751, metadata ptr %5, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1742, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1743, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1744, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1745, metadata !DIExpression()), !dbg !1752
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #37, !dbg !1753
  %6 = icmp eq ptr %0, null, !dbg !1754
  %7 = select i1 %6, ptr %5, ptr %0, !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1742, metadata !DIExpression()), !dbg !1752
  %8 = call i64 @mbrtowc(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %3) #37, !dbg !1757
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1747, metadata !DIExpression()), !dbg !1752
  %9 = icmp ugt i64 %8, -3, !dbg !1758
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9, !dbg !1759
  br i1 %11, label %12, label %17, !dbg !1759

12:                                               ; preds = %4
  %13 = call i1 @hard_locale(i32 noundef 0) #37, !dbg !1760
  br i1 %13, label %17, label %14, !dbg !1761

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 1, !dbg !1762, !tbaa !920
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !1748, metadata !DIExpression()), !dbg !1763
  %16 = zext i8 %15 to i32, !dbg !1764
  store i32 %16, ptr %7, align 4, !dbg !1765, !tbaa !911
  br label %17

17:                                               ; preds = %4, %12, %14
  %18 = phi i64 [ 1, %14 ], [ %8, %12 ], [ %8, %4 ], !dbg !1752
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #37, !dbg !1766
  ret i64 %18, !dbg !1766
}

; Function Attrs: nounwind
declare !dbg !1767 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1773 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1775, metadata !DIExpression()), !dbg !1778
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1779
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1776, metadata !DIExpression()), !dbg !1778
  %3 = icmp eq ptr %2, null, !dbg !1780
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1780
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1780
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1777, metadata !DIExpression()), !dbg !1778
  %6 = ptrtoint ptr %5 to i64, !dbg !1781
  %7 = ptrtoint ptr %0 to i64, !dbg !1781
  %8 = sub i64 %6, %7, !dbg !1781
  %9 = icmp sgt i64 %8, 6, !dbg !1783
  br i1 %9, label %10, label %19, !dbg !1784

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1785
  call void @llvm.dbg.value(metadata ptr %11, metadata !1786, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 7, metadata !1792, metadata !DIExpression()), !dbg !1793
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !1795
  %13 = icmp eq i32 %12, 0, !dbg !1796
  br i1 %13, label %14, label %19, !dbg !1797

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1775, metadata !DIExpression()), !dbg !1778
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #38, !dbg !1798
  %16 = icmp eq i32 %15, 0, !dbg !1801
  %17 = select i1 %16, i64 3, i64 0, !dbg !1802
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1802
  br label %19, !dbg !1802

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1777, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1775, metadata !DIExpression()), !dbg !1778
  store ptr %20, ptr @program_name, align 8, !dbg !1803, !tbaa !848
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1804, !tbaa !848
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1805, !tbaa !848
  ret void, !dbg !1806
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1807 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !515 {
  %3 = alloca i32, align 4, !DIAssignID !1808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1808, metadata ptr %3, metadata !DIExpression()), !dbg !1809
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !530, metadata !DIExpression(), metadata !1810, metadata ptr %4, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !522, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !523, metadata !DIExpression()), !dbg !1809
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1811
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !1809
  %6 = icmp eq ptr %5, %0, !dbg !1812
  br i1 %6, label %7, label %14, !dbg !1814

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1815
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %4, metadata !1817, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %4, metadata !1825, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 8, metadata !1829, metadata !DIExpression()), !dbg !1830
  store i64 0, ptr %4, align 8, !dbg !1832
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1833
  %9 = icmp eq i64 %8, 2, !dbg !1835
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1836
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1809
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1837
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1809
  ret ptr %15, !dbg !1837
}

; Function Attrs: nounwind
declare !dbg !1838 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1844 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1849, metadata !DIExpression()), !dbg !1852
  %2 = tail call ptr @__errno_location() #40, !dbg !1853
  %3 = load i32, ptr %2, align 4, !dbg !1853, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1850, metadata !DIExpression()), !dbg !1852
  %4 = icmp eq ptr %0, null, !dbg !1854
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1854
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1855
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1851, metadata !DIExpression()), !dbg !1852
  store i32 %3, ptr %2, align 4, !dbg !1856, !tbaa !911
  ret ptr %6, !dbg !1857
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1864, metadata !DIExpression()), !dbg !1865
  %2 = icmp eq ptr %0, null, !dbg !1866
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1866
  %4 = load i32, ptr %3, align 8, !dbg !1867, !tbaa !1868
  ret i32 %4, !dbg !1870
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1871 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1875, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1876, metadata !DIExpression()), !dbg !1877
  %3 = icmp eq ptr %0, null, !dbg !1878
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1878
  store i32 %1, ptr %4, align 8, !dbg !1879, !tbaa !1868
  ret void, !dbg !1880
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1885, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1886, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1887, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1888, metadata !DIExpression()), !dbg !1893
  %4 = icmp eq ptr %0, null, !dbg !1894
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1894
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1895
  %7 = lshr i8 %1, 5, !dbg !1896
  %8 = zext nneg i8 %7 to i64, !dbg !1896
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1897
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1889, metadata !DIExpression()), !dbg !1893
  %10 = and i8 %1, 31, !dbg !1898
  %11 = zext nneg i8 %10 to i32, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1891, metadata !DIExpression()), !dbg !1893
  %12 = load i32, ptr %9, align 4, !dbg !1899, !tbaa !911
  %13 = lshr i32 %12, %11, !dbg !1900
  %14 = and i32 %13, 1, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1892, metadata !DIExpression()), !dbg !1893
  %15 = xor i32 %13, %2, !dbg !1902
  %16 = and i32 %15, 1, !dbg !1902
  %17 = shl nuw i32 %16, %11, !dbg !1903
  %18 = xor i32 %17, %12, !dbg !1904
  store i32 %18, ptr %9, align 4, !dbg !1904, !tbaa !911
  ret i32 %14, !dbg !1905
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1911, metadata !DIExpression()), !dbg !1913
  %3 = icmp eq ptr %0, null, !dbg !1914
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1916
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1910, metadata !DIExpression()), !dbg !1913
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1917
  %6 = load i32, ptr %5, align 4, !dbg !1917, !tbaa !1918
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1912, metadata !DIExpression()), !dbg !1913
  store i32 %1, ptr %5, align 4, !dbg !1919, !tbaa !1918
  ret i32 %6, !dbg !1920
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1921 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1925, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1926, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1927, metadata !DIExpression()), !dbg !1928
  %4 = icmp eq ptr %0, null, !dbg !1929
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1931
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1925, metadata !DIExpression()), !dbg !1928
  store i32 10, ptr %5, align 8, !dbg !1932, !tbaa !1868
  %6 = icmp ne ptr %1, null, !dbg !1933
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1935
  br i1 %8, label %10, label %9, !dbg !1935

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1936
  unreachable, !dbg !1936

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1937
  store ptr %1, ptr %11, align 8, !dbg !1938, !tbaa !1939
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1940
  store ptr %2, ptr %12, align 8, !dbg !1941, !tbaa !1942
  ret void, !dbg !1943
}

; Function Attrs: noreturn nounwind
declare !dbg !1944 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1949, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1950, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1951, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1952, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1953, metadata !DIExpression()), !dbg !1957
  %6 = icmp eq ptr %4, null, !dbg !1958
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1958
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1954, metadata !DIExpression()), !dbg !1957
  %8 = tail call ptr @__errno_location() #40, !dbg !1959
  %9 = load i32, ptr %8, align 4, !dbg !1959, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1955, metadata !DIExpression()), !dbg !1957
  %10 = load i32, ptr %7, align 8, !dbg !1960, !tbaa !1868
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1961
  %12 = load i32, ptr %11, align 4, !dbg !1961, !tbaa !1918
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1962
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1963
  %15 = load ptr, ptr %14, align 8, !dbg !1963, !tbaa !1939
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1964
  %17 = load ptr, ptr %16, align 8, !dbg !1964, !tbaa !1942
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1956, metadata !DIExpression()), !dbg !1957
  store i32 %9, ptr %8, align 4, !dbg !1966, !tbaa !911
  ret i64 %18, !dbg !1967
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1968 {
  %10 = alloca i32, align 4, !DIAssignID !2036
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2037
  %12 = alloca i32, align 4, !DIAssignID !2038
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2039
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2040
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2014, metadata !DIExpression(), metadata !2040, metadata ptr %14, metadata !DIExpression()), !dbg !2041
  %15 = alloca i32, align 4, !DIAssignID !2042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2017, metadata !DIExpression(), metadata !2042, metadata ptr %15, metadata !DIExpression()), !dbg !2043
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1976, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1977, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1978, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1979, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1980, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1981, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1982, metadata !DIExpression()), !dbg !2044
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2045
  %17 = icmp eq i64 %16, 1, !dbg !2046
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1986, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1987, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1989, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2044
  %18 = and i32 %5, 2, !dbg !2047
  %19 = icmp ne i32 %18, 0, !dbg !2047
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2047

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2048
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2049
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2050
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1987, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1986, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1977, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1982, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1981, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1978, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.label(metadata !1992), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2044
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
  ], !dbg !2052

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1978, metadata !DIExpression()), !dbg !2044
  br label %101, !dbg !2053

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1978, metadata !DIExpression()), !dbg !2044
  br i1 %36, label %101, label %42, !dbg !2053

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2054
  br i1 %43, label %101, label %44, !dbg !2058

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2054, !tbaa !920
  br label %101, !dbg !2054

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2038, metadata ptr %12, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2039, metadata ptr %13, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !611, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2059
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %46, metadata !613, metadata !DIExpression()), !dbg !2059
  %47 = icmp eq ptr %46, @.str.11.80, !dbg !2064
  br i1 %47, label %48, label %57, !dbg !2066

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2067
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %13, metadata !2069, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %13, metadata !2077, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i64 0, ptr %13, align 8, !dbg !2084
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2085
  %50 = icmp eq i64 %49, 3, !dbg !2087
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2088
  %54 = icmp eq i32 %28, 9, !dbg !2088
  %55 = select i1 %54, ptr @.str.10.82, ptr @.str.12.83, !dbg !2088
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2089
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2059
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1981, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2036, metadata ptr %10, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2037, metadata ptr %11, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !611, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2090
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %59, metadata !613, metadata !DIExpression()), !dbg !2090
  %60 = icmp eq ptr %59, @.str.12.83, !dbg !2093
  br i1 %60, label %61, label %70, !dbg !2094

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2096
  call void @llvm.dbg.value(metadata ptr %11, metadata !2069, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata ptr %11, metadata !2077, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2099
  store i64 0, ptr %11, align 8, !dbg !2101
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2102
  %63 = icmp eq i64 %62, 3, !dbg !2103
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2104
  %67 = icmp eq i32 %28, 9, !dbg !2104
  %68 = select i1 %67, ptr @.str.10.82, ptr @.str.12.83, !dbg !2104
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2105
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1982, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1981, metadata !DIExpression()), !dbg !2044
  br i1 %36, label %88, label %73, !dbg !2106

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1994, metadata !DIExpression()), !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1984, metadata !DIExpression()), !dbg !2044
  %74 = load i8, ptr %71, align 1, !dbg !2108, !tbaa !920
  %75 = icmp eq i8 %74, 0, !dbg !2110
  br i1 %75, label %88, label %.preheader11, !dbg !2110

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2110

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1994, metadata !DIExpression()), !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1984, metadata !DIExpression()), !dbg !2044
  %80 = icmp ult i64 %79, %39, !dbg !2111
  br i1 %80, label %81, label %83, !dbg !2114

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2111
  store i8 %77, ptr %82, align 1, !dbg !2111, !tbaa !920
  br label %83, !dbg !2111

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1984, metadata !DIExpression()), !dbg !2044
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1994, metadata !DIExpression()), !dbg !2107
  %86 = load i8, ptr %85, align 1, !dbg !2108, !tbaa !920
  %87 = icmp eq i8 %86, 0, !dbg !2110
  br i1 %87, label %.loopexit12, label %76, !dbg !2110, !llvm.loop !2116

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2114
  br label %88, !dbg !2118

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1986, metadata !DIExpression()), !dbg !2044
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1987, metadata !DIExpression()), !dbg !2044
  br label %101, !dbg !2120

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2044
  br label %101, !dbg !2121

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1978, metadata !DIExpression()), !dbg !2044
  br label %101, !dbg !2122

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  br i1 %36, label %101, label %95, !dbg !2123

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1978, metadata !DIExpression()), !dbg !2044
  br i1 %36, label %101, label %95, !dbg !2122

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2124
  br i1 %97, label %101, label %98, !dbg !2128

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2124, !tbaa !920
  br label %101, !dbg !2124

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2044
  br label %101, !dbg !2129

100:                                              ; preds = %27
  call void @abort() #39, !dbg !2130
  unreachable, !dbg !2130

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2119
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.82, %42 ], [ @.str.10.82, %44 ], [ @.str.10.82, %41 ], [ %33, %27 ], [ @.str.12.83, %95 ], [ @.str.12.83, %98 ], [ @.str.12.83, %94 ], [ @.str.10.82, %40 ], [ @.str.12.83, %91 ], [ @.str.12.83, %92 ], [ @.str.12.83, %93 ], !dbg !2044
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2044
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1987, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1986, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1982, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1981, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1978, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1999, metadata !DIExpression()), !dbg !2131
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
  br label %121, !dbg !2132

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2119
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2048
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2133
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1977, metadata !DIExpression()), !dbg !2044
  %130 = icmp eq i64 %122, -1, !dbg !2134
  br i1 %130, label %131, label %135, !dbg !2135

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2136
  %133 = load i8, ptr %132, align 1, !dbg !2136, !tbaa !920
  %134 = icmp eq i8 %133, 0, !dbg !2137
  br i1 %134, label %573, label %137, !dbg !2138

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2139
  br i1 %136, label %573, label %137, !dbg !2138

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2140
  br i1 %113, label %138, label %151, !dbg !2141

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2143
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2144
  br i1 %140, label %141, label %143, !dbg !2144

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2145
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1977, metadata !DIExpression()), !dbg !2044
  br label %143, !dbg !2146

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1977, metadata !DIExpression()), !dbg !2044
  %145 = icmp ugt i64 %139, %144, !dbg !2147
  br i1 %145, label %151, label %146, !dbg !2148

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %147, metadata !2150, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr %106, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %107, metadata !2154, metadata !DIExpression()), !dbg !2155
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2157
  %149 = icmp eq i32 %148, 0, !dbg !2158
  %150 = and i1 %149, %109, !dbg !2159
  br i1 %150, label %.loopexit7, label %151, !dbg !2159

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1977, metadata !DIExpression()), !dbg !2044
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2160
  %155 = load i8, ptr %154, align 1, !dbg !2160, !tbaa !920
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2006, metadata !DIExpression()), !dbg !2140
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
  ], !dbg !2161

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2162

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2163

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2004, metadata !DIExpression()), !dbg !2140
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2167
  br i1 %159, label %176, label %160, !dbg !2167

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2169
  br i1 %161, label %162, label %164, !dbg !2173

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2169
  store i8 39, ptr %163, align 1, !dbg !2169, !tbaa !920
  br label %164, !dbg !2169

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1984, metadata !DIExpression()), !dbg !2044
  %166 = icmp ult i64 %165, %129, !dbg !2174
  br i1 %166, label %167, label %169, !dbg !2177

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2174
  store i8 36, ptr %168, align 1, !dbg !2174, !tbaa !920
  br label %169, !dbg !2174

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2177
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1984, metadata !DIExpression()), !dbg !2044
  %171 = icmp ult i64 %170, %129, !dbg !2178
  br i1 %171, label %172, label %174, !dbg !2181

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2178
  store i8 39, ptr %173, align 1, !dbg !2178, !tbaa !920
  br label %174, !dbg !2178

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2181
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %176, !dbg !2182

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2044
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1984, metadata !DIExpression()), !dbg !2044
  %179 = icmp ult i64 %177, %129, !dbg !2183
  br i1 %179, label %180, label %182, !dbg !2186

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2183
  store i8 92, ptr %181, align 1, !dbg !2183, !tbaa !920
  br label %182, !dbg !2183

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1984, metadata !DIExpression()), !dbg !2044
  br i1 %110, label %184, label %476, !dbg !2187

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2189
  %186 = icmp ult i64 %185, %152, !dbg !2190
  br i1 %186, label %187, label %433, !dbg !2191

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2192
  %189 = load i8, ptr %188, align 1, !dbg !2192, !tbaa !920
  %190 = add i8 %189, -48, !dbg !2193
  %191 = icmp ult i8 %190, 10, !dbg !2193
  br i1 %191, label %192, label %433, !dbg !2193

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2194
  br i1 %193, label %194, label %196, !dbg !2198

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2194
  store i8 48, ptr %195, align 1, !dbg !2194, !tbaa !920
  br label %196, !dbg !2194

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2198
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1984, metadata !DIExpression()), !dbg !2044
  %198 = icmp ult i64 %197, %129, !dbg !2199
  br i1 %198, label %199, label %201, !dbg !2202

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2199
  store i8 48, ptr %200, align 1, !dbg !2199, !tbaa !920
  br label %201, !dbg !2199

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1984, metadata !DIExpression()), !dbg !2044
  br label %433, !dbg !2203

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2204

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2205

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2206

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2208

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2210
  %209 = icmp ult i64 %208, %152, !dbg !2211
  br i1 %209, label %210, label %433, !dbg !2212

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2213
  %212 = load i8, ptr %211, align 1, !dbg !2213, !tbaa !920
  %213 = icmp eq i8 %212, 63, !dbg !2214
  br i1 %213, label %214, label %433, !dbg !2215

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2216
  %216 = load i8, ptr %215, align 1, !dbg !2216, !tbaa !920
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
  ], !dbg !2217

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2218

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1999, metadata !DIExpression()), !dbg !2131
  %219 = icmp ult i64 %123, %129, !dbg !2220
  br i1 %219, label %220, label %222, !dbg !2223

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2220
  store i8 63, ptr %221, align 1, !dbg !2220, !tbaa !920
  br label %222, !dbg !2220

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1984, metadata !DIExpression()), !dbg !2044
  %224 = icmp ult i64 %223, %129, !dbg !2224
  br i1 %224, label %225, label %227, !dbg !2227

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2224
  store i8 34, ptr %226, align 1, !dbg !2224, !tbaa !920
  br label %227, !dbg !2224

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1984, metadata !DIExpression()), !dbg !2044
  %229 = icmp ult i64 %228, %129, !dbg !2228
  br i1 %229, label %230, label %232, !dbg !2231

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2228
  store i8 34, ptr %231, align 1, !dbg !2228, !tbaa !920
  br label %232, !dbg !2228

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1984, metadata !DIExpression()), !dbg !2044
  %234 = icmp ult i64 %233, %129, !dbg !2232
  br i1 %234, label %235, label %237, !dbg !2235

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2232
  store i8 63, ptr %236, align 1, !dbg !2232, !tbaa !920
  br label %237, !dbg !2232

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2235
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1984, metadata !DIExpression()), !dbg !2044
  br label %433, !dbg !2236

239:                                              ; preds = %151
  br label %249, !dbg !2237

240:                                              ; preds = %151
  br label %249, !dbg !2238

241:                                              ; preds = %151
  br label %247, !dbg !2239

242:                                              ; preds = %151
  br label %247, !dbg !2240

243:                                              ; preds = %151
  br label %249, !dbg !2241

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2242

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2243

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2246

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2248
  call void @llvm.dbg.label(metadata !2007), !dbg !2249
  br i1 %118, label %.loopexit8, label %249, !dbg !2250

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2248
  call void @llvm.dbg.label(metadata !2010), !dbg !2252
  br i1 %108, label %487, label %444, !dbg !2253

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2254

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2255, !tbaa !920
  %254 = icmp eq i8 %253, 0, !dbg !2257
  br i1 %254, label %255, label %433, !dbg !2258

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2259
  br i1 %256, label %257, label %433, !dbg !2261

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2005, metadata !DIExpression()), !dbg !2140
  br label %258, !dbg !2262

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2140
  br i1 %115, label %260, label %433, !dbg !2263

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2265

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2005, metadata !DIExpression()), !dbg !2140
  br i1 %115, label %262, label %433, !dbg !2266

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2267

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2270
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2272
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2272
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2272
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1985, metadata !DIExpression()), !dbg !2044
  %269 = icmp ult i64 %123, %268, !dbg !2273
  br i1 %269, label %270, label %272, !dbg !2276

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2273
  store i8 39, ptr %271, align 1, !dbg !2273, !tbaa !920
  br label %272, !dbg !2273

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1984, metadata !DIExpression()), !dbg !2044
  %274 = icmp ult i64 %273, %268, !dbg !2277
  br i1 %274, label %275, label %277, !dbg !2280

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2277
  store i8 92, ptr %276, align 1, !dbg !2277, !tbaa !920
  br label %277, !dbg !2277

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2280
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1984, metadata !DIExpression()), !dbg !2044
  %279 = icmp ult i64 %278, %268, !dbg !2281
  br i1 %279, label %280, label %282, !dbg !2284

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2281
  store i8 39, ptr %281, align 1, !dbg !2281, !tbaa !920
  br label %282, !dbg !2281

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %433, !dbg !2285

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2286

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2011, metadata !DIExpression()), !dbg !2287
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2288
  %287 = load ptr, ptr %286, align 8, !dbg !2288, !tbaa !848
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2288
  %290 = load i16, ptr %289, align 2, !dbg !2288, !tbaa !952
  %291 = and i16 %290, 16384, !dbg !2288
  %292 = icmp ne i16 %291, 0, !dbg !2290
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2287
  br label %334, !dbg !2291

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %14, metadata !2069, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata ptr %14, metadata !2077, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2295
  store i64 0, ptr %14, align 8, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2011, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2287
  %294 = icmp eq i64 %152, -1, !dbg !2298
  br i1 %294, label %295, label %297, !dbg !2300

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1977, metadata !DIExpression()), !dbg !2044
  br label %297, !dbg !2302

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1977, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2303
  %299 = sub i64 %298, %128, !dbg !2304
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2021, metadata !DIExpression()), !dbg !2043
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2306

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2011, metadata !DIExpression()), !dbg !2287
  %302 = icmp ult i64 %128, %298, !dbg !2307
  br i1 %302, label %.preheader5, label %329, !dbg !2309

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2310

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2287
  br label %329, !dbg !2311

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2011, metadata !DIExpression()), !dbg !2287
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2313
  %308 = load i8, ptr %307, align 1, !dbg !2313, !tbaa !920
  %309 = icmp eq i8 %308, 0, !dbg !2309
  br i1 %309, label %.loopexit6, label %310, !dbg !2310

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2314
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2011, metadata !DIExpression()), !dbg !2287
  %312 = add i64 %311, %128, !dbg !2315
  %313 = icmp eq i64 %311, %299, !dbg !2307
  br i1 %313, label %.loopexit6, label %304, !dbg !2309, !llvm.loop !2316

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2022, metadata !DIExpression()), !dbg !2317
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2318
  %317 = and i1 %316, %109, !dbg !2318
  br i1 %317, label %.preheader3, label %325, !dbg !2318

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2319

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2022, metadata !DIExpression()), !dbg !2317
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2320
  %321 = load i8, ptr %320, align 1, !dbg !2320, !tbaa !920
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2322

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2022, metadata !DIExpression()), !dbg !2317
  %324 = icmp eq i64 %323, %300, !dbg !2324
  br i1 %324, label %.loopexit4, label %318, !dbg !2319, !llvm.loop !2325

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2327

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2327, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %326, metadata !2329, metadata !DIExpression()), !dbg !2337
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !2339
  %328 = icmp ne i32 %327, 0, !dbg !2340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2013, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2011, metadata !DIExpression()), !dbg !2287
  br label %329, !dbg !2341

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2342

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2013, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2011, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2343
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2013, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2011, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2343
  call void @llvm.dbg.label(metadata !2035), !dbg !2344
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2345
  br label %624, !dbg !2345

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2140
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2347
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2013, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2011, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1977, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2005, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2140
  %338 = icmp ult i64 %336, 2, !dbg !2348
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2349
  br i1 %340, label %433, label %341, !dbg !2349

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2030, metadata !DIExpression()), !dbg !2351
  br label %343, !dbg !2352

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2044
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2131
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1984, metadata !DIExpression()), !dbg !2044
  br i1 %339, label %394, label %350, !dbg !2353

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2358

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2004, metadata !DIExpression()), !dbg !2140
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2361
  br i1 %352, label %369, label %353, !dbg !2361

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2363
  br i1 %354, label %355, label %357, !dbg !2367

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2363
  store i8 39, ptr %356, align 1, !dbg !2363, !tbaa !920
  br label %357, !dbg !2363

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1984, metadata !DIExpression()), !dbg !2044
  %359 = icmp ult i64 %358, %129, !dbg !2368
  br i1 %359, label %360, label %362, !dbg !2371

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2368
  store i8 36, ptr %361, align 1, !dbg !2368, !tbaa !920
  br label %362, !dbg !2368

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1984, metadata !DIExpression()), !dbg !2044
  %364 = icmp ult i64 %363, %129, !dbg !2372
  br i1 %364, label %365, label %367, !dbg !2375

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2372
  store i8 39, ptr %366, align 1, !dbg !2372, !tbaa !920
  br label %367, !dbg !2372

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %369, !dbg !2376

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2044
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1984, metadata !DIExpression()), !dbg !2044
  %372 = icmp ult i64 %370, %129, !dbg !2377
  br i1 %372, label %373, label %375, !dbg !2380

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2377
  store i8 92, ptr %374, align 1, !dbg !2377, !tbaa !920
  br label %375, !dbg !2377

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1984, metadata !DIExpression()), !dbg !2044
  %377 = icmp ult i64 %376, %129, !dbg !2381
  br i1 %377, label %378, label %382, !dbg !2384

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2381
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2381
  store i8 %380, ptr %381, align 1, !dbg !2381, !tbaa !920
  br label %382, !dbg !2381

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1984, metadata !DIExpression()), !dbg !2044
  %384 = icmp ult i64 %383, %129, !dbg !2385
  br i1 %384, label %385, label %390, !dbg !2388

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2385
  %388 = or disjoint i8 %387, 48, !dbg !2385
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2385
  store i8 %388, ptr %389, align 1, !dbg !2385, !tbaa !920
  br label %390, !dbg !2385

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1984, metadata !DIExpression()), !dbg !2044
  %392 = and i8 %349, 7, !dbg !2389
  %393 = or disjoint i8 %392, 48, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2006, metadata !DIExpression()), !dbg !2140
  br label %401, !dbg !2391

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2392

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2393
  br i1 %396, label %397, label %399, !dbg !2398

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2393
  store i8 92, ptr %398, align 1, !dbg !2393, !tbaa !920
  br label %399, !dbg !2393

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2140
  br label %401, !dbg !2399

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2044
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1984, metadata !DIExpression()), !dbg !2044
  %407 = add i64 %346, 1, !dbg !2400
  %408 = icmp ugt i64 %342, %407, !dbg !2402
  br i1 %408, label %409, label %.loopexit2, !dbg !2403

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2404
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2404
  br i1 %411, label %423, label %412, !dbg !2404

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2407
  br i1 %413, label %414, label %416, !dbg !2411

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2407
  store i8 39, ptr %415, align 1, !dbg !2407, !tbaa !920
  br label %416, !dbg !2407

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1984, metadata !DIExpression()), !dbg !2044
  %418 = icmp ult i64 %417, %129, !dbg !2412
  br i1 %418, label %419, label %421, !dbg !2415

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2412
  store i8 39, ptr %420, align 1, !dbg !2412, !tbaa !920
  br label %421, !dbg !2412

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %423, !dbg !2416

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2417
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1984, metadata !DIExpression()), !dbg !2044
  %426 = icmp ult i64 %424, %129, !dbg !2418
  br i1 %426, label %427, label %429, !dbg !2421

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2418
  store i8 %406, ptr %428, align 1, !dbg !2418, !tbaa !920
  br label %429, !dbg !2418

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1999, metadata !DIExpression()), !dbg !2131
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2422
  %432 = load i8, ptr %431, align 1, !dbg !2422, !tbaa !920
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2006, metadata !DIExpression()), !dbg !2140
  br label %343, !dbg !2423, !llvm.loop !2424

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2427
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2044
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2048
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2131
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2140
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1977, metadata !DIExpression()), !dbg !2044
  br i1 %111, label %455, label %444, !dbg !2428

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
  br i1 %120, label %456, label %476, !dbg !2430

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2431

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
  %467 = lshr i8 %458, 5, !dbg !2432
  %468 = zext nneg i8 %467 to i64, !dbg !2432
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2433
  %470 = load i32, ptr %469, align 4, !dbg !2433, !tbaa !911
  %471 = and i8 %458, 31, !dbg !2434
  %472 = zext nneg i8 %471 to i32, !dbg !2434
  %473 = shl nuw i32 1, %472, !dbg !2435
  %474 = and i32 %470, %473, !dbg !2435
  %475 = icmp eq i32 %474, 0, !dbg !2435
  br i1 %475, label %476, label %487, !dbg !2436

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
  br i1 %153, label %487, label %523, !dbg !2437

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2427
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2044
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2048
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2438
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2140
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1977, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.label(metadata !2033), !dbg !2439
  br i1 %109, label %.loopexit8, label %497, !dbg !2440

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2004, metadata !DIExpression()), !dbg !2140
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2442
  br i1 %498, label %515, label %499, !dbg !2442

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2444
  br i1 %500, label %501, label %503, !dbg !2448

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2444
  store i8 39, ptr %502, align 1, !dbg !2444, !tbaa !920
  br label %503, !dbg !2444

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1984, metadata !DIExpression()), !dbg !2044
  %505 = icmp ult i64 %504, %496, !dbg !2449
  br i1 %505, label %506, label %508, !dbg !2452

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2449
  store i8 36, ptr %507, align 1, !dbg !2449, !tbaa !920
  br label %508, !dbg !2449

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1984, metadata !DIExpression()), !dbg !2044
  %510 = icmp ult i64 %509, %496, !dbg !2453
  br i1 %510, label %511, label %513, !dbg !2456

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2453
  store i8 39, ptr %512, align 1, !dbg !2453, !tbaa !920
  br label %513, !dbg !2453

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %515, !dbg !2457

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2140
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1984, metadata !DIExpression()), !dbg !2044
  %518 = icmp ult i64 %516, %496, !dbg !2458
  br i1 %518, label %519, label %521, !dbg !2461

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2458
  store i8 92, ptr %520, align 1, !dbg !2458, !tbaa !920
  br label %521, !dbg !2458

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1977, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.label(metadata !2034), !dbg !2462
  br label %547, !dbg !2463

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2044
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2140
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2131
  br label %523, !dbg !2463

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2427
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2044
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2048
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2438
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2466
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2006, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2004, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1977, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.label(metadata !2034), !dbg !2462
  %534 = xor i1 %528, true, !dbg !2463
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2463
  br i1 %535, label %547, label %536, !dbg !2463

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2467
  br i1 %537, label %538, label %540, !dbg !2471

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2467
  store i8 39, ptr %539, align 1, !dbg !2467, !tbaa !920
  br label %540, !dbg !2467

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1984, metadata !DIExpression()), !dbg !2044
  %542 = icmp ult i64 %541, %533, !dbg !2472
  br i1 %542, label %543, label %545, !dbg !2475

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2472
  store i8 39, ptr %544, align 1, !dbg !2472, !tbaa !920
  br label %545, !dbg !2472

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2044
  br label %547, !dbg !2476

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2140
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1984, metadata !DIExpression()), !dbg !2044
  %557 = icmp ult i64 %555, %548, !dbg !2477
  br i1 %557, label %558, label %560, !dbg !2480

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2477
  store i8 %549, ptr %559, align 1, !dbg !2477, !tbaa !920
  br label %560, !dbg !2477

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1984, metadata !DIExpression()), !dbg !2044
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !2044
  br label %563, !dbg !2482

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2427
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2044
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2048
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2438
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1999, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1977, metadata !DIExpression()), !dbg !2044
  %572 = add i64 %570, 1, !dbg !2483
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1999, metadata !DIExpression()), !dbg !2131
  br label %121, !dbg !2484, !llvm.loop !2485

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2119
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2048
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1975, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1985, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1984, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1977, metadata !DIExpression()), !dbg !2044
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2487
  %575 = xor i1 %109, true, !dbg !2489
  %576 = or i1 %574, %575, !dbg !2489
  %577 = or i1 %576, %110, !dbg !2489
  br i1 %577, label %578, label %.loopexit13, !dbg !2489

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2490
  %580 = xor i1 %.lcssa38, true, !dbg !2490
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2490
  br i1 %581, label %589, label %582, !dbg !2490

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2492

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2048
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2494
  br label %638, !dbg !2496

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2497
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2499
  br i1 %588, label %27, label %589, !dbg !2499

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2044
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2119
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2500
  %592 = or i1 %591, %590, !dbg !2502
  br i1 %592, label %608, label %593, !dbg !2502

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1986, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1984, metadata !DIExpression()), !dbg !2044
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2503, !tbaa !920
  %595 = icmp eq i8 %594, 0, !dbg !2506
  br i1 %595, label %608, label %.preheader, !dbg !2506

.preheader:                                       ; preds = %593
  br label %596, !dbg !2506

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1986, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1984, metadata !DIExpression()), !dbg !2044
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2507
  br i1 %600, label %601, label %603, !dbg !2510

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2507
  store i8 %597, ptr %602, align 1, !dbg !2507, !tbaa !920
  br label %603, !dbg !2507

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1984, metadata !DIExpression()), !dbg !2044
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1986, metadata !DIExpression()), !dbg !2044
  %606 = load i8, ptr %605, align 1, !dbg !2503, !tbaa !920
  %607 = icmp eq i8 %606, 0, !dbg !2506
  br i1 %607, label %.loopexit, label %596, !dbg !2506, !llvm.loop !2512

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2510
  br label %608, !dbg !2514

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1984, metadata !DIExpression()), !dbg !2044
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2514
  br i1 %610, label %611, label %638, !dbg !2516

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2517
  store i8 0, ptr %612, align 1, !dbg !2518, !tbaa !920
  br label %638, !dbg !2517

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2035), !dbg !2344
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2519
  br i1 %614, label %624, label %630, !dbg !2345

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2140
  br label %615, !dbg !2519

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2519

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2519

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2035), !dbg !2344
  %622 = icmp eq i32 %616, 2, !dbg !2519
  %623 = select i1 %619, i32 4, i32 2, !dbg !2345
  br i1 %622, label %624, label %630, !dbg !2345

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2345

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2146
  br label %630, !dbg !2520

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1978, metadata !DIExpression()), !dbg !2044
  %636 = and i32 %5, -3, !dbg !2520
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2521
  br label %638, !dbg !2522

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2523
}

; Function Attrs: nounwind
declare !dbg !2524 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2526 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()), !dbg !2535
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %0, metadata !2536, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %1, metadata !2541, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr null, metadata !2542, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %2, metadata !2543, metadata !DIExpression()), !dbg !2549
  %4 = icmp eq ptr %2, null, !dbg !2551
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %5, metadata !2544, metadata !DIExpression()), !dbg !2549
  %6 = tail call ptr @__errno_location() #40, !dbg !2552
  %7 = load i32, ptr %6, align 4, !dbg !2552, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %7, metadata !2545, metadata !DIExpression()), !dbg !2549
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2553
  %9 = load i32, ptr %8, align 4, !dbg !2553, !tbaa !1918
  %10 = or i32 %9, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %10, metadata !2546, metadata !DIExpression()), !dbg !2549
  %11 = load i32, ptr %5, align 8, !dbg !2555, !tbaa !1868
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2556
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2557
  %14 = load ptr, ptr %13, align 8, !dbg !2557, !tbaa !1939
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2558
  %16 = load ptr, ptr %15, align 8, !dbg !2558, !tbaa !1942
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2559
  %18 = add i64 %17, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %18, metadata !2547, metadata !DIExpression()), !dbg !2549
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %19, metadata !2548, metadata !DIExpression()), !dbg !2549
  %20 = load i32, ptr %5, align 8, !dbg !2562, !tbaa !1868
  %21 = load ptr, ptr %13, align 8, !dbg !2563, !tbaa !1939
  %22 = load ptr, ptr %15, align 8, !dbg !2564, !tbaa !1942
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2565
  store i32 %7, ptr %6, align 4, !dbg !2566, !tbaa !911
  ret ptr %19, !dbg !2567
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2537 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2536, metadata !DIExpression()), !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2541, metadata !DIExpression()), !dbg !2568
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2542, metadata !DIExpression()), !dbg !2568
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2543, metadata !DIExpression()), !dbg !2568
  %5 = icmp eq ptr %3, null, !dbg !2569
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2569
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2544, metadata !DIExpression()), !dbg !2568
  %7 = tail call ptr @__errno_location() #40, !dbg !2570
  %8 = load i32, ptr %7, align 4, !dbg !2570, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2545, metadata !DIExpression()), !dbg !2568
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2571
  %10 = load i32, ptr %9, align 4, !dbg !2571, !tbaa !1918
  %11 = icmp eq ptr %2, null, !dbg !2572
  %12 = zext i1 %11 to i32, !dbg !2572
  %13 = or i32 %10, %12, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2546, metadata !DIExpression()), !dbg !2568
  %14 = load i32, ptr %6, align 8, !dbg !2574, !tbaa !1868
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2575
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2576
  %17 = load ptr, ptr %16, align 8, !dbg !2576, !tbaa !1939
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2577
  %19 = load ptr, ptr %18, align 8, !dbg !2577, !tbaa !1942
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2578
  %21 = add i64 %20, 1, !dbg !2579
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2547, metadata !DIExpression()), !dbg !2568
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2580
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2548, metadata !DIExpression()), !dbg !2568
  %23 = load i32, ptr %6, align 8, !dbg !2581, !tbaa !1868
  %24 = load ptr, ptr %16, align 8, !dbg !2582, !tbaa !1939
  %25 = load ptr, ptr %18, align 8, !dbg !2583, !tbaa !1942
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2584
  store i32 %8, ptr %7, align 4, !dbg !2585, !tbaa !911
  br i1 %11, label %28, label %27, !dbg !2586

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2587, !tbaa !2589
  br label %28, !dbg !2590

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2592 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2597, !tbaa !848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2594, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2595, metadata !DIExpression()), !dbg !2599
  %2 = load i32, ptr @nslots, align 4, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2595, metadata !DIExpression()), !dbg !2599
  %3 = icmp sgt i32 %2, 1, !dbg !2600
  br i1 %3, label %4, label %6, !dbg !2602

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2600
  br label %10, !dbg !2602

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2603

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2603
  %8 = load ptr, ptr %7, align 8, !dbg !2603, !tbaa !2605
  %9 = icmp eq ptr %8, @slot0, !dbg !2607
  br i1 %9, label %17, label %16, !dbg !2608

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2595, metadata !DIExpression()), !dbg !2599
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2609
  %13 = load ptr, ptr %12, align 8, !dbg !2609, !tbaa !2605
  tail call void @free(ptr noundef %13) #37, !dbg !2610
  %14 = add nuw nsw i64 %11, 1, !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2595, metadata !DIExpression()), !dbg !2599
  %15 = icmp eq i64 %14, %5, !dbg !2600
  br i1 %15, label %.loopexit, label %10, !dbg !2602, !llvm.loop !2612

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2614
  store i64 256, ptr @slotvec0, align 8, !dbg !2616, !tbaa !2617
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2618, !tbaa !2605
  br label %17, !dbg !2619

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2620
  br i1 %18, label %20, label %19, !dbg !2622

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2623
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2625, !tbaa !848
  br label %20, !dbg !2626

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2627, !tbaa !911
  ret void, !dbg !2628
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2629 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2632 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2635, metadata !DIExpression()), !dbg !2636
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2637
  ret ptr %3, !dbg !2638
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2639 {
  %5 = alloca i64, align 8, !DIAssignID !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2659, metadata ptr %5, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2661
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2661
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()), !dbg !2661
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2646, metadata !DIExpression()), !dbg !2661
  %6 = tail call ptr @__errno_location() #40, !dbg !2662
  %7 = load i32, ptr %6, align 4, !dbg !2662, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2647, metadata !DIExpression()), !dbg !2661
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2663, !tbaa !848
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2648, metadata !DIExpression()), !dbg !2661
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2649, metadata !DIExpression()), !dbg !2661
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2664
  br i1 %9, label %10, label %11, !dbg !2664

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2666
  unreachable, !dbg !2666

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2667, !tbaa !911
  %13 = icmp sgt i32 %12, %0, !dbg !2668
  br i1 %13, label %32, label %14, !dbg !2669

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2670
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2671
  %16 = sext i32 %12 to i64, !dbg !2672
  store i64 %16, ptr %5, align 8, !dbg !2673, !tbaa !2589, !DIAssignID !2674
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2653, metadata !DIExpression(), metadata !2674, metadata ptr %5, metadata !DIExpression()), !dbg !2660
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2675
  %18 = add nuw nsw i32 %0, 1, !dbg !2676
  %19 = sub i32 %18, %12, !dbg !2677
  %20 = sext i32 %19 to i64, !dbg !2678
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2679
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2648, metadata !DIExpression()), !dbg !2661
  store ptr %21, ptr @slotvec, align 8, !dbg !2680, !tbaa !848
  br i1 %15, label %22, label %23, !dbg !2681

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2682, !tbaa.struct !2684
  br label %23, !dbg !2685

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2686, !tbaa !911
  %25 = sext i32 %24 to i64, !dbg !2687
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2687
  %27 = load i64, ptr %5, align 8, !dbg !2688, !tbaa !2589
  %28 = sub nsw i64 %27, %25, !dbg !2689
  %29 = shl i64 %28, 4, !dbg !2690
  call void @llvm.dbg.value(metadata ptr %26, metadata !2077, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %29, metadata !2081, metadata !DIExpression()), !dbg !2691
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2693
  %30 = load i64, ptr %5, align 8, !dbg !2694, !tbaa !2589
  %31 = trunc i64 %30 to i32, !dbg !2694
  store i32 %31, ptr @nslots, align 4, !dbg !2695, !tbaa !911
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2696
  br label %32, !dbg !2697

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2661
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2648, metadata !DIExpression()), !dbg !2661
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2698
  %36 = load i64, ptr %35, align 8, !dbg !2699, !tbaa !2617
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2654, metadata !DIExpression()), !dbg !2700
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2701
  %38 = load ptr, ptr %37, align 8, !dbg !2701, !tbaa !2605
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2656, metadata !DIExpression()), !dbg !2700
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2702
  %40 = load i32, ptr %39, align 4, !dbg !2702, !tbaa !1918
  %41 = or i32 %40, 1, !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2657, metadata !DIExpression()), !dbg !2700
  %42 = load i32, ptr %3, align 8, !dbg !2704, !tbaa !1868
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2705
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2706
  %45 = load ptr, ptr %44, align 8, !dbg !2706, !tbaa !1939
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2707
  %47 = load ptr, ptr %46, align 8, !dbg !2707, !tbaa !1942
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2658, metadata !DIExpression()), !dbg !2700
  %49 = icmp ugt i64 %36, %48, !dbg !2709
  br i1 %49, label %60, label %50, !dbg !2711

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2654, metadata !DIExpression()), !dbg !2700
  store i64 %51, ptr %35, align 8, !dbg !2714, !tbaa !2617
  %52 = icmp eq ptr %38, @slot0, !dbg !2715
  br i1 %52, label %54, label %53, !dbg !2717

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2718
  br label %54, !dbg !2718

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2656, metadata !DIExpression()), !dbg !2700
  store ptr %55, ptr %37, align 8, !dbg !2720, !tbaa !2605
  %56 = load i32, ptr %3, align 8, !dbg !2721, !tbaa !1868
  %57 = load ptr, ptr %44, align 8, !dbg !2722, !tbaa !1939
  %58 = load ptr, ptr %46, align 8, !dbg !2723, !tbaa !1942
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2724
  br label %60, !dbg !2725

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2656, metadata !DIExpression()), !dbg !2700
  store i32 %7, ptr %6, align 4, !dbg !2726, !tbaa !911
  ret ptr %61, !dbg !2727
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2728 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2732, metadata !DIExpression()), !dbg !2735
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2733, metadata !DIExpression()), !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2734, metadata !DIExpression()), !dbg !2735
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2736
  ret ptr %4, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2634, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %0, metadata !2635, metadata !DIExpression()), !dbg !2742
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2744
  ret ptr %2, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2746 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %0, metadata !2733, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2734, metadata !DIExpression()), !dbg !2753
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2755
  ret ptr %3, !dbg !2756
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2757 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2764, metadata !DIExpression(), metadata !2765, metadata ptr %4, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2768), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2780, !alias.scope !2768, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata i8 0, metadata !2764, metadata !DIExpression(), metadata !2781, metadata ptr %4, metadata !DIExpression()), !dbg !2766
  %5 = icmp eq i32 %1, 10, !dbg !2782
  br i1 %5, label %6, label %7, !dbg !2784

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2785, !noalias !2768
  unreachable, !dbg !2785

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2786, !tbaa !1868, !alias.scope !2768, !DIAssignID !2787
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2764, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2787, metadata ptr %4, metadata !DIExpression()), !dbg !2766
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2788
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2789
  ret ptr %8, !dbg !2790
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2791 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2800, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2796, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2797, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2777, metadata !DIExpression()), !dbg !2809
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2809, !alias.scope !2803, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata i8 0, metadata !2799, metadata !DIExpression(), metadata !2810, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  %6 = icmp eq i32 %1, 10, !dbg !2811
  br i1 %6, label %7, label %8, !dbg !2812

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2813, !noalias !2803
  unreachable, !dbg !2813

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2814, !tbaa !1868, !alias.scope !2803, !DIAssignID !2815
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2815, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2816
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2817
  ret ptr %9, !dbg !2818
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2819 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2825
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2826
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2764, metadata !DIExpression(), metadata !2825, metadata ptr %3, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %1, metadata !2763, metadata !DIExpression()), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2830), !dbg !2833
  call void @llvm.dbg.value(metadata i32 %0, metadata !2772, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2777, metadata !DIExpression()), !dbg !2836
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2836, !alias.scope !2830, !DIAssignID !2837
  call void @llvm.dbg.assign(metadata i8 0, metadata !2764, metadata !DIExpression(), metadata !2837, metadata ptr %3, metadata !DIExpression()), !dbg !2827
  %4 = icmp eq i32 %0, 10, !dbg !2838
  br i1 %4, label %5, label %6, !dbg !2839

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2840, !noalias !2830
  unreachable, !dbg !2840

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2841, !tbaa !1868, !alias.scope !2830, !DIAssignID !2842
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2764, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2842, metadata ptr %3, metadata !DIExpression()), !dbg !2827
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2843
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2844
  ret ptr %7, !dbg !2845
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2846 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2853
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2854
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2851, metadata !DIExpression()), !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2853, metadata ptr %4, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %1, metadata !2797, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %2, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2858), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %0, metadata !2772, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2777, metadata !DIExpression()), !dbg !2864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2864, !alias.scope !2858, !DIAssignID !2865
  call void @llvm.dbg.assign(metadata i8 0, metadata !2799, metadata !DIExpression(), metadata !2865, metadata ptr %4, metadata !DIExpression()), !dbg !2855
  %5 = icmp eq i32 %0, 10, !dbg !2866
  br i1 %5, label %6, label %7, !dbg !2867

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2868, !noalias !2858
  unreachable, !dbg !2868

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2869, !tbaa !1868, !alias.scope !2858, !DIAssignID !2870
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2870, metadata ptr %4, metadata !DIExpression()), !dbg !2855
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2871
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2872
  ret ptr %8, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2874 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2882, metadata ptr %4, metadata !DIExpression()), !dbg !2883
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2885, !tbaa.struct !2886, !DIAssignID !2887
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2887, metadata ptr %4, metadata !DIExpression()), !dbg !2883
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1886, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1887, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1888, metadata !DIExpression()), !dbg !2888
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2890
  %6 = lshr i8 %2, 5, !dbg !2891
  %7 = zext nneg i8 %6 to i64, !dbg !2891
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2892
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1889, metadata !DIExpression()), !dbg !2888
  %9 = and i8 %2, 31, !dbg !2893
  %10 = zext nneg i8 %9 to i32, !dbg !2893
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1891, metadata !DIExpression()), !dbg !2888
  %11 = load i32, ptr %8, align 4, !dbg !2894, !tbaa !911
  %12 = lshr i32 %11, %10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1892, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2888
  %13 = and i32 %12, 1, !dbg !2896
  %14 = xor i32 %13, 1, !dbg !2896
  %15 = shl nuw i32 %14, %10, !dbg !2897
  %16 = xor i32 %15, %11, !dbg !2898
  store i32 %16, ptr %8, align 4, !dbg !2898, !tbaa !911
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2899
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2900
  ret ptr %17, !dbg !2901
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2902 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2908
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2906, metadata !DIExpression()), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2908, metadata ptr %3, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 -1, metadata !2879, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 %1, metadata !2880, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2913, !tbaa.struct !2886, !DIAssignID !2914
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2914, metadata ptr %3, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %1, metadata !1886, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 1, metadata !1887, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %1, metadata !1888, metadata !DIExpression()), !dbg !2915
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2917
  %5 = lshr i8 %1, 5, !dbg !2918
  %6 = zext nneg i8 %5 to i64, !dbg !2918
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %7, metadata !1889, metadata !DIExpression()), !dbg !2915
  %8 = and i8 %1, 31, !dbg !2920
  %9 = zext nneg i8 %8 to i32, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %9, metadata !1891, metadata !DIExpression()), !dbg !2915
  %10 = load i32, ptr %7, align 4, !dbg !2921, !tbaa !911
  %11 = lshr i32 %10, %9, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %11, metadata !1892, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2915
  %12 = and i32 %11, 1, !dbg !2923
  %13 = xor i32 %12, 1, !dbg !2923
  %14 = shl nuw i32 %13, %9, !dbg !2924
  %15 = xor i32 %14, %10, !dbg !2925
  store i32 %15, ptr %7, align 4, !dbg !2925, !tbaa !911
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2926
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2927
  ret ptr %16, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2929 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2932
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2906, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 58, metadata !2907, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2932, metadata ptr %2, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 -1, metadata !2879, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !2880, metadata !DIExpression()), !dbg !2936
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2939, !tbaa.struct !2886, !DIAssignID !2940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2940, metadata ptr %2, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %2, metadata !1885, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 1, metadata !1887, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1888, metadata !DIExpression()), !dbg !2941
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %3, metadata !1889, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 26, metadata !1891, metadata !DIExpression()), !dbg !2941
  %4 = load i32, ptr %3, align 4, !dbg !2944, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %4, metadata !1892, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2941
  %5 = or i32 %4, 67108864, !dbg !2945
  store i32 %5, ptr %3, align 4, !dbg !2945, !tbaa !911
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2946
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2947
  ret ptr %6, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2949 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2953
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2953, metadata ptr %3, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 58, metadata !2880, metadata !DIExpression()), !dbg !2955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2958, !tbaa.struct !2886, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2881, metadata !DIExpression(), metadata !2959, metadata ptr %3, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 1, metadata !1887, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 58, metadata !1888, metadata !DIExpression()), !dbg !2960
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %4, metadata !1889, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 26, metadata !1891, metadata !DIExpression()), !dbg !2960
  %5 = load i32, ptr %4, align 4, !dbg !2963, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %5, metadata !1892, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2960
  %6 = or i32 %5, 67108864, !dbg !2964
  store i32 %6, ptr %4, align 4, !dbg !2964, !tbaa !911
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2965
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2966
  ret ptr %7, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2968 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2974
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2973, metadata !DIExpression(), metadata !2974, metadata ptr %4, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2777, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2976
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2971, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2777, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2979
  %5 = icmp eq i32 %1, 10, !dbg !2980
  br i1 %5, label %6, label %7, !dbg !2981

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2982, !noalias !2983
  unreachable, !dbg !2982

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2777, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2979
  store i32 %1, ptr %4, align 8, !dbg !2986, !tbaa.struct !2886, !DIAssignID !2987
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2986
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2986
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2973, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2987, metadata ptr %4, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2973, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2988, metadata ptr %8, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1887, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1888, metadata !DIExpression()), !dbg !2989
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2991
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1889, metadata !DIExpression()), !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1891, metadata !DIExpression()), !dbg !2989
  %10 = load i32, ptr %9, align 4, !dbg !2992, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1892, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2989
  %11 = or i32 %10, 67108864, !dbg !2993
  store i32 %11, ptr %9, align 4, !dbg !2993, !tbaa !911, !DIAssignID !2994
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2973, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2994, metadata ptr %9, metadata !DIExpression()), !dbg !2975
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2995
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2996
  ret ptr %12, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2998 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3006
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3003, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3004, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3006, metadata ptr %5, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %1, metadata !3014, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %2, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %3, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 -1, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3021, !tbaa.struct !2886, !DIAssignID !3022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3022, metadata ptr %5, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3023, metadata ptr undef, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %5, metadata !1925, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %1, metadata !1926, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !1927, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %5, metadata !1925, metadata !DIExpression()), !dbg !3024
  store i32 10, ptr %5, align 8, !dbg !3026, !tbaa !1868, !DIAssignID !3027
  call void @llvm.dbg.assign(metadata i32 10, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3027, metadata ptr %5, metadata !DIExpression()), !dbg !3018
  %6 = icmp ne ptr %1, null, !dbg !3028
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3029
  br i1 %8, label %10, label %9, !dbg !3029

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3030
  unreachable, !dbg !3030

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3031
  store ptr %1, ptr %11, align 8, !dbg !3032, !tbaa !1939, !DIAssignID !3033
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3033, metadata ptr %11, metadata !DIExpression()), !dbg !3018
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3034
  store ptr %2, ptr %12, align 8, !dbg !3035, !tbaa !1942, !DIAssignID !3036
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3036, metadata ptr %12, metadata !DIExpression()), !dbg !3018
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3037
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3038
  ret ptr %13, !dbg !3039
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3009 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3040
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3040, metadata ptr %6, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3014, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3015, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3016, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3017, metadata !DIExpression()), !dbg !3041
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3043, !tbaa.struct !2886, !DIAssignID !3044
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3044, metadata ptr %6, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3045, metadata ptr undef, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %6, metadata !1925, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %1, metadata !1926, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %2, metadata !1927, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %6, metadata !1925, metadata !DIExpression()), !dbg !3046
  store i32 10, ptr %6, align 8, !dbg !3048, !tbaa !1868, !DIAssignID !3049
  call void @llvm.dbg.assign(metadata i32 10, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3049, metadata ptr %6, metadata !DIExpression()), !dbg !3041
  %7 = icmp ne ptr %1, null, !dbg !3050
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3051
  br i1 %9, label %11, label %10, !dbg !3051

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3052
  unreachable, !dbg !3052

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3053
  store ptr %1, ptr %12, align 8, !dbg !3054, !tbaa !1939, !DIAssignID !3055
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3055, metadata ptr %12, metadata !DIExpression()), !dbg !3041
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3056
  store ptr %2, ptr %13, align 8, !dbg !3057, !tbaa !1942, !DIAssignID !3058
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3058, metadata ptr %13, metadata !DIExpression()), !dbg !3041
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3059
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3060
  ret ptr %14, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3062 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3069
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3067, metadata !DIExpression()), !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %0, metadata !3003, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %1, metadata !3004, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3069, metadata ptr %4, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 -1, metadata !3017, metadata !DIExpression()), !dbg !3073
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3076, !tbaa.struct !2886, !DIAssignID !3077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3077, metadata ptr %4, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3078, metadata ptr undef, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %4, metadata !1925, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %1, metadata !1927, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %4, metadata !1925, metadata !DIExpression()), !dbg !3079
  store i32 10, ptr %4, align 8, !dbg !3081, !tbaa !1868, !DIAssignID !3082
  call void @llvm.dbg.assign(metadata i32 10, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3082, metadata ptr %4, metadata !DIExpression()), !dbg !3073
  %5 = icmp ne ptr %0, null, !dbg !3083
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3084
  br i1 %7, label %9, label %8, !dbg !3084

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3085
  unreachable, !dbg !3085

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3086
  store ptr %0, ptr %10, align 8, !dbg !3087, !tbaa !1939, !DIAssignID !3088
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3088, metadata ptr %10, metadata !DIExpression()), !dbg !3073
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3089
  store ptr %1, ptr %11, align 8, !dbg !3090, !tbaa !1942, !DIAssignID !3091
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3091, metadata ptr %11, metadata !DIExpression()), !dbg !3073
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3092
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3093
  ret ptr %12, !dbg !3094
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3095 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3103
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3099, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3100, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3103, metadata ptr %5, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %3, metadata !3017, metadata !DIExpression()), !dbg !3105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3108, !tbaa.struct !2886, !DIAssignID !3109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(), metadata !3109, metadata ptr %5, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3110, metadata ptr undef, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %5, metadata !1925, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %1, metadata !1927, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %5, metadata !1925, metadata !DIExpression()), !dbg !3111
  store i32 10, ptr %5, align 8, !dbg !3113, !tbaa !1868, !DIAssignID !3114
  call void @llvm.dbg.assign(metadata i32 10, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3114, metadata ptr %5, metadata !DIExpression()), !dbg !3105
  %6 = icmp ne ptr %0, null, !dbg !3115
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3116
  br i1 %8, label %10, label %9, !dbg !3116

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3117
  unreachable, !dbg !3117

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3118
  store ptr %0, ptr %11, align 8, !dbg !3119, !tbaa !1939, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3120, metadata ptr %11, metadata !DIExpression()), !dbg !3105
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3121
  store ptr %1, ptr %12, align 8, !dbg !3122, !tbaa !1942, !DIAssignID !3123
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3008, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3123, metadata ptr %12, metadata !DIExpression()), !dbg !3105
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3124
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3125
  ret ptr %13, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3127 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3131, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3134
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3135
  ret ptr %4, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3131, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3144
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3146
  ret ptr %3, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %0, metadata !3131, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 -1, metadata !3133, metadata !DIExpression()), !dbg !3155
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3157
  ret ptr %3, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3159 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %0, metadata !3153, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 0, metadata !3131, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 -1, metadata !3133, metadata !DIExpression()), !dbg !3167
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3169
  ret ptr %2, !dbg !3170
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3171 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3210, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3211, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3212, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3213, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3214, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3215, metadata !DIExpression()), !dbg !3216
  %7 = icmp eq ptr %1, null, !dbg !3217
  br i1 %7, label %10, label %8, !dbg !3219

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3220
  br label %12, !dbg !3220

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.97, ptr noundef %2, ptr noundef %3) #37, !dbg !3221
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.3.99, i32 noundef 5) #37, !dbg !3222
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3222
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3223
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.5.101, i32 noundef 5) #37, !dbg !3224
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.102) #37, !dbg !3224
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3225
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
  ], !dbg !3226

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.7.103, i32 noundef 5) #37, !dbg !3227
  %21 = load ptr, ptr %4, align 8, !dbg !3227, !tbaa !848
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3227
  br label %147, !dbg !3229

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.8.104, i32 noundef 5) #37, !dbg !3230
  %25 = load ptr, ptr %4, align 8, !dbg !3230, !tbaa !848
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3230
  %27 = load ptr, ptr %26, align 8, !dbg !3230, !tbaa !848
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3230
  br label %147, !dbg !3231

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.9.105, i32 noundef 5) #37, !dbg !3232
  %31 = load ptr, ptr %4, align 8, !dbg !3232, !tbaa !848
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3232
  %33 = load ptr, ptr %32, align 8, !dbg !3232, !tbaa !848
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3232
  %35 = load ptr, ptr %34, align 8, !dbg !3232, !tbaa !848
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3232
  br label %147, !dbg !3233

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.10.106, i32 noundef 5) #37, !dbg !3234
  %39 = load ptr, ptr %4, align 8, !dbg !3234, !tbaa !848
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3234
  %41 = load ptr, ptr %40, align 8, !dbg !3234, !tbaa !848
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3234
  %43 = load ptr, ptr %42, align 8, !dbg !3234, !tbaa !848
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3234
  %45 = load ptr, ptr %44, align 8, !dbg !3234, !tbaa !848
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3234
  br label %147, !dbg !3235

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.11.107, i32 noundef 5) #37, !dbg !3236
  %49 = load ptr, ptr %4, align 8, !dbg !3236, !tbaa !848
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3236
  %51 = load ptr, ptr %50, align 8, !dbg !3236, !tbaa !848
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3236
  %53 = load ptr, ptr %52, align 8, !dbg !3236, !tbaa !848
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3236
  %55 = load ptr, ptr %54, align 8, !dbg !3236, !tbaa !848
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3236
  %57 = load ptr, ptr %56, align 8, !dbg !3236, !tbaa !848
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3236
  br label %147, !dbg !3237

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.12.108, i32 noundef 5) #37, !dbg !3238
  %61 = load ptr, ptr %4, align 8, !dbg !3238, !tbaa !848
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3238
  %63 = load ptr, ptr %62, align 8, !dbg !3238, !tbaa !848
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3238
  %65 = load ptr, ptr %64, align 8, !dbg !3238, !tbaa !848
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3238
  %67 = load ptr, ptr %66, align 8, !dbg !3238, !tbaa !848
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3238
  %69 = load ptr, ptr %68, align 8, !dbg !3238, !tbaa !848
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3238
  %71 = load ptr, ptr %70, align 8, !dbg !3238, !tbaa !848
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3238
  br label %147, !dbg !3239

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.13.109, i32 noundef 5) #37, !dbg !3240
  %75 = load ptr, ptr %4, align 8, !dbg !3240, !tbaa !848
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3240
  %77 = load ptr, ptr %76, align 8, !dbg !3240, !tbaa !848
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3240
  %79 = load ptr, ptr %78, align 8, !dbg !3240, !tbaa !848
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3240
  %81 = load ptr, ptr %80, align 8, !dbg !3240, !tbaa !848
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3240
  %83 = load ptr, ptr %82, align 8, !dbg !3240, !tbaa !848
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3240
  %85 = load ptr, ptr %84, align 8, !dbg !3240, !tbaa !848
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3240
  %87 = load ptr, ptr %86, align 8, !dbg !3240, !tbaa !848
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3240
  br label %147, !dbg !3241

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.14.110, i32 noundef 5) #37, !dbg !3242
  %91 = load ptr, ptr %4, align 8, !dbg !3242, !tbaa !848
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3242
  %93 = load ptr, ptr %92, align 8, !dbg !3242, !tbaa !848
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3242
  %95 = load ptr, ptr %94, align 8, !dbg !3242, !tbaa !848
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3242
  %97 = load ptr, ptr %96, align 8, !dbg !3242, !tbaa !848
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3242
  %99 = load ptr, ptr %98, align 8, !dbg !3242, !tbaa !848
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3242
  %101 = load ptr, ptr %100, align 8, !dbg !3242, !tbaa !848
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3242
  %103 = load ptr, ptr %102, align 8, !dbg !3242, !tbaa !848
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3242
  %105 = load ptr, ptr %104, align 8, !dbg !3242, !tbaa !848
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3242
  br label %147, !dbg !3243

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.15.111, i32 noundef 5) #37, !dbg !3244
  %109 = load ptr, ptr %4, align 8, !dbg !3244, !tbaa !848
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3244
  %111 = load ptr, ptr %110, align 8, !dbg !3244, !tbaa !848
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3244
  %113 = load ptr, ptr %112, align 8, !dbg !3244, !tbaa !848
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3244
  %115 = load ptr, ptr %114, align 8, !dbg !3244, !tbaa !848
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3244
  %117 = load ptr, ptr %116, align 8, !dbg !3244, !tbaa !848
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3244
  %119 = load ptr, ptr %118, align 8, !dbg !3244, !tbaa !848
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3244
  %121 = load ptr, ptr %120, align 8, !dbg !3244, !tbaa !848
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3244
  %123 = load ptr, ptr %122, align 8, !dbg !3244, !tbaa !848
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3244
  %125 = load ptr, ptr %124, align 8, !dbg !3244, !tbaa !848
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3244
  br label %147, !dbg !3245

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.16.112, i32 noundef 5) #37, !dbg !3246
  %129 = load ptr, ptr %4, align 8, !dbg !3246, !tbaa !848
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3246
  %131 = load ptr, ptr %130, align 8, !dbg !3246, !tbaa !848
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3246
  %133 = load ptr, ptr %132, align 8, !dbg !3246, !tbaa !848
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3246
  %135 = load ptr, ptr %134, align 8, !dbg !3246, !tbaa !848
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3246
  %137 = load ptr, ptr %136, align 8, !dbg !3246, !tbaa !848
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3246
  %139 = load ptr, ptr %138, align 8, !dbg !3246, !tbaa !848
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3246
  %141 = load ptr, ptr %140, align 8, !dbg !3246, !tbaa !848
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3246
  %143 = load ptr, ptr %142, align 8, !dbg !3246, !tbaa !848
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3246
  %145 = load ptr, ptr %144, align 8, !dbg !3246, !tbaa !848
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3246
  br label %147, !dbg !3247

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3248
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3249 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3254, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3255, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3256, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3257, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3258, metadata !DIExpression()), !dbg !3259
  br label %6, !dbg !3260

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3258, metadata !DIExpression()), !dbg !3259
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3263
  %9 = load ptr, ptr %8, align 8, !dbg !3263, !tbaa !848
  %10 = icmp eq ptr %9, null, !dbg !3265
  %11 = add i64 %7, 1, !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3258, metadata !DIExpression()), !dbg !3259
  br i1 %10, label %12, label %6, !dbg !3265, !llvm.loop !3267

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3262
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3269
  ret void, !dbg !3270
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3271 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3291, metadata !DIExpression(), metadata !3293, metadata ptr %6, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3286, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3287, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3288, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3289, metadata !DIExpression(DW_OP_deref)), !dbg !3294
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3290, metadata !DIExpression()), !dbg !3294
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3290, metadata !DIExpression()), !dbg !3294
  %10 = icmp sgt i32 %9, -1, !dbg !3296
  br i1 %10, label %18, label %11, !dbg !3296

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3296
  store i32 %12, ptr %7, align 8, !dbg !3296
  %13 = icmp ult i32 %9, -7, !dbg !3296
  br i1 %13, label %14, label %18, !dbg !3296

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3296
  %16 = sext i32 %9 to i64, !dbg !3296
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3296
  br label %22, !dbg !3296

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3296
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3296
  store ptr %21, ptr %4, align 8, !dbg !3296
  br label %22, !dbg !3296

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3296
  %25 = load ptr, ptr %24, align 8, !dbg !3296
  store ptr %25, ptr %6, align 8, !dbg !3299, !tbaa !848
  %26 = icmp eq ptr %25, null, !dbg !3300
  br i1 %26, label %197, label %27, !dbg !3301

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3290, metadata !DIExpression()), !dbg !3294
  %28 = icmp sgt i32 %23, -1, !dbg !3296
  br i1 %28, label %36, label %29, !dbg !3296

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3296
  store i32 %30, ptr %7, align 8, !dbg !3296
  %31 = icmp ult i32 %23, -7, !dbg !3296
  br i1 %31, label %32, label %36, !dbg !3296

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3296
  %34 = sext i32 %23 to i64, !dbg !3296
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3296
  br label %40, !dbg !3296

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3296
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3296
  store ptr %39, ptr %4, align 8, !dbg !3296
  br label %40, !dbg !3296

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3296
  %43 = load ptr, ptr %42, align 8, !dbg !3296
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3302
  store ptr %43, ptr %44, align 8, !dbg !3299, !tbaa !848
  %45 = icmp eq ptr %43, null, !dbg !3300
  br i1 %45, label %197, label %46, !dbg !3301

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3290, metadata !DIExpression()), !dbg !3294
  %47 = icmp sgt i32 %41, -1, !dbg !3296
  br i1 %47, label %55, label %48, !dbg !3296

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3296
  store i32 %49, ptr %7, align 8, !dbg !3296
  %50 = icmp ult i32 %41, -7, !dbg !3296
  br i1 %50, label %51, label %55, !dbg !3296

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3296
  %53 = sext i32 %41 to i64, !dbg !3296
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3296
  br label %59, !dbg !3296

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3296
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3296
  store ptr %58, ptr %4, align 8, !dbg !3296
  br label %59, !dbg !3296

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3296
  %62 = load ptr, ptr %61, align 8, !dbg !3296
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3302
  store ptr %62, ptr %63, align 8, !dbg !3299, !tbaa !848
  %64 = icmp eq ptr %62, null, !dbg !3300
  br i1 %64, label %197, label %65, !dbg !3301

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3290, metadata !DIExpression()), !dbg !3294
  %66 = icmp sgt i32 %60, -1, !dbg !3296
  br i1 %66, label %74, label %67, !dbg !3296

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3296
  store i32 %68, ptr %7, align 8, !dbg !3296
  %69 = icmp ult i32 %60, -7, !dbg !3296
  br i1 %69, label %70, label %74, !dbg !3296

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3296
  %72 = sext i32 %60 to i64, !dbg !3296
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3296
  br label %78, !dbg !3296

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3296
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3296
  store ptr %77, ptr %4, align 8, !dbg !3296
  br label %78, !dbg !3296

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3296
  %81 = load ptr, ptr %80, align 8, !dbg !3296
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3302
  store ptr %81, ptr %82, align 8, !dbg !3299, !tbaa !848
  %83 = icmp eq ptr %81, null, !dbg !3300
  br i1 %83, label %197, label %84, !dbg !3301

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3290, metadata !DIExpression()), !dbg !3294
  %85 = icmp sgt i32 %79, -1, !dbg !3296
  br i1 %85, label %93, label %86, !dbg !3296

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3296
  store i32 %87, ptr %7, align 8, !dbg !3296
  %88 = icmp ult i32 %79, -7, !dbg !3296
  br i1 %88, label %89, label %93, !dbg !3296

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3296
  %91 = sext i32 %79 to i64, !dbg !3296
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3296
  br label %97, !dbg !3296

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3296
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3296
  store ptr %96, ptr %4, align 8, !dbg !3296
  br label %97, !dbg !3296

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3296
  %100 = load ptr, ptr %99, align 8, !dbg !3296
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3302
  store ptr %100, ptr %101, align 8, !dbg !3299, !tbaa !848
  %102 = icmp eq ptr %100, null, !dbg !3300
  br i1 %102, label %197, label %103, !dbg !3301

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3290, metadata !DIExpression()), !dbg !3294
  %104 = icmp sgt i32 %98, -1, !dbg !3296
  br i1 %104, label %112, label %105, !dbg !3296

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3296
  store i32 %106, ptr %7, align 8, !dbg !3296
  %107 = icmp ult i32 %98, -7, !dbg !3296
  br i1 %107, label %108, label %112, !dbg !3296

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3296
  %110 = sext i32 %98 to i64, !dbg !3296
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3296
  br label %116, !dbg !3296

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3296
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3296
  store ptr %115, ptr %4, align 8, !dbg !3296
  br label %116, !dbg !3296

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3296
  %119 = load ptr, ptr %118, align 8, !dbg !3296
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3302
  store ptr %119, ptr %120, align 8, !dbg !3299, !tbaa !848
  %121 = icmp eq ptr %119, null, !dbg !3300
  br i1 %121, label %197, label %122, !dbg !3301

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3290, metadata !DIExpression()), !dbg !3294
  %123 = icmp sgt i32 %117, -1, !dbg !3296
  br i1 %123, label %131, label %124, !dbg !3296

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3296
  store i32 %125, ptr %7, align 8, !dbg !3296
  %126 = icmp ult i32 %117, -7, !dbg !3296
  br i1 %126, label %127, label %131, !dbg !3296

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3296
  %129 = sext i32 %117 to i64, !dbg !3296
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3296
  br label %135, !dbg !3296

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3296
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3296
  store ptr %134, ptr %4, align 8, !dbg !3296
  br label %135, !dbg !3296

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3296
  %138 = load ptr, ptr %137, align 8, !dbg !3296
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3302
  store ptr %138, ptr %139, align 8, !dbg !3299, !tbaa !848
  %140 = icmp eq ptr %138, null, !dbg !3300
  br i1 %140, label %197, label %141, !dbg !3301

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3290, metadata !DIExpression()), !dbg !3294
  %142 = icmp sgt i32 %136, -1, !dbg !3296
  br i1 %142, label %150, label %143, !dbg !3296

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3296
  store i32 %144, ptr %7, align 8, !dbg !3296
  %145 = icmp ult i32 %136, -7, !dbg !3296
  br i1 %145, label %146, label %150, !dbg !3296

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3296
  %148 = sext i32 %136 to i64, !dbg !3296
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3296
  br label %154, !dbg !3296

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3296
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3296
  store ptr %153, ptr %4, align 8, !dbg !3296
  br label %154, !dbg !3296

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3296
  %157 = load ptr, ptr %156, align 8, !dbg !3296
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3302
  store ptr %157, ptr %158, align 8, !dbg !3299, !tbaa !848
  %159 = icmp eq ptr %157, null, !dbg !3300
  br i1 %159, label %197, label %160, !dbg !3301

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3290, metadata !DIExpression()), !dbg !3294
  %161 = icmp sgt i32 %155, -1, !dbg !3296
  br i1 %161, label %169, label %162, !dbg !3296

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3296
  store i32 %163, ptr %7, align 8, !dbg !3296
  %164 = icmp ult i32 %155, -7, !dbg !3296
  br i1 %164, label %165, label %169, !dbg !3296

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3296
  %167 = sext i32 %155 to i64, !dbg !3296
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3296
  br label %173, !dbg !3296

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3296
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3296
  store ptr %172, ptr %4, align 8, !dbg !3296
  br label %173, !dbg !3296

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3296
  %176 = load ptr, ptr %175, align 8, !dbg !3296
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3302
  store ptr %176, ptr %177, align 8, !dbg !3299, !tbaa !848
  %178 = icmp eq ptr %176, null, !dbg !3300
  br i1 %178, label %197, label %179, !dbg !3301

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3290, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3290, metadata !DIExpression()), !dbg !3294
  %180 = icmp sgt i32 %174, -1, !dbg !3296
  br i1 %180, label %188, label %181, !dbg !3296

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3296
  store i32 %182, ptr %7, align 8, !dbg !3296
  %183 = icmp ult i32 %174, -7, !dbg !3296
  br i1 %183, label %184, label %188, !dbg !3296

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3296
  %186 = sext i32 %174 to i64, !dbg !3296
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3296
  br label %191, !dbg !3296

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3296
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3296
  store ptr %190, ptr %4, align 8, !dbg !3296
  br label %191, !dbg !3296

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3296
  %193 = load ptr, ptr %192, align 8, !dbg !3296
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3302
  store ptr %193, ptr %194, align 8, !dbg !3299, !tbaa !848
  %195 = icmp eq ptr %193, null, !dbg !3300
  %196 = select i1 %195, i64 9, i64 10, !dbg !3301
  br label %197, !dbg !3301

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3303
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3304
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3305
  ret void, !dbg !3305
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3306 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3315
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3314, metadata !DIExpression(), metadata !3315, metadata ptr %5, metadata !DIExpression()), !dbg !3316
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3310, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3311, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3312, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3317
  call void @llvm.va_start(ptr nonnull %5), !dbg !3318
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3319, !tbaa.struct !1503
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3319
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3319
  call void @llvm.va_end(ptr nonnull %5), !dbg !3320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3321
  ret void, !dbg !3321
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3322 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3323, !tbaa !848
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %1), !dbg !3323
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.17.117, i32 noundef 5) #37, !dbg !3324
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.118) #37, !dbg !3324
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.19.119, i32 noundef 5) #37, !dbg !3325
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.120, ptr noundef nonnull @.str.21.121) #37, !dbg !3325
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.22.122, i32 noundef 5) #37, !dbg !3326
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3326
  ret void, !dbg !3327
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3328 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %2, metadata !3341, metadata !DIExpression()), !dbg !3342
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3344
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3350
  %5 = icmp eq ptr %4, null, !dbg !3352
  br i1 %5, label %6, label %7, !dbg !3354

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3355
  unreachable, !dbg !3355

7:                                                ; preds = %3
  ret ptr %4, !dbg !3356
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3341, metadata !DIExpression()), !dbg !3357
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3359
  %5 = icmp eq ptr %4, null, !dbg !3361
  br i1 %5, label %6, label %7, !dbg !3362

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3363
  unreachable, !dbg !3363

7:                                                ; preds = %3
  ret ptr %4, !dbg !3364
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3365 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3369, metadata !DIExpression()), !dbg !3370
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3372
  %3 = icmp eq ptr %2, null, !dbg !3374
  br i1 %3, label %4, label %5, !dbg !3375

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3376
  unreachable, !dbg !3376

5:                                                ; preds = %1
  ret ptr %2, !dbg !3377
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3378 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3389
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3391
  call void @llvm.dbg.value(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3392
  %3 = icmp eq ptr %2, null, !dbg !3394
  br i1 %3, label %4, label %5, !dbg !3395

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3396
  unreachable, !dbg !3396

5:                                                ; preds = %1
  ret ptr %2, !dbg !3397
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3398 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %0, metadata !3369, metadata !DIExpression()), !dbg !3404
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3407
  %3 = icmp eq ptr %2, null, !dbg !3409
  br i1 %3, label %4, label %5, !dbg !3410

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3411
  unreachable, !dbg !3411

5:                                                ; preds = %1
  ret ptr %2, !dbg !3412
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3413 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3425
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3427
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3428
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3429
  %5 = icmp eq ptr %4, null, !dbg !3431
  br i1 %5, label %6, label %7, !dbg !3432

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3433
  unreachable, !dbg !3433

7:                                                ; preds = %2
  ret ptr %4, !dbg !3434
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3435 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3436 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %0, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3449
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3451
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3453
  %5 = icmp eq ptr %4, null, !dbg !3455
  br i1 %5, label %6, label %7, !dbg !3456

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3457
  unreachable, !dbg !3457

7:                                                ; preds = %2
  ret ptr %4, !dbg !3458
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3459 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %2, metadata !3471, metadata !DIExpression()), !dbg !3472
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3474
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3475
  %5 = icmp eq ptr %4, null, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3478

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3479
  unreachable, !dbg !3479

7:                                                ; preds = %3
  ret ptr %4, !dbg !3480
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3485, metadata !DIExpression()), !dbg !3487
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata ptr null, metadata !3337, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %0, metadata !3340, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3488
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3490
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3491
  %4 = icmp eq ptr %3, null, !dbg !3493
  br i1 %4, label %5, label %6, !dbg !3494

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3495
  unreachable, !dbg !3495

6:                                                ; preds = %2
  ret ptr %3, !dbg !3496
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3497 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3501, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr null, metadata !3463, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %0, metadata !3464, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3465, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr null, metadata !3467, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %0, metadata !3470, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()), !dbg !3506
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3508
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3509
  %4 = icmp eq ptr %3, null, !dbg !3511
  br i1 %4, label %5, label %6, !dbg !3512

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3513
  unreachable, !dbg !3513

6:                                                ; preds = %2
  ret ptr %3, !dbg !3514
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3515 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3519, metadata !DIExpression()), !dbg !3521
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3520, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata ptr %0, metadata !784, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 1, metadata !786, metadata !DIExpression()), !dbg !3522
  %3 = load i64, ptr %1, align 8, !dbg !3524, !tbaa !2589
  call void @llvm.dbg.value(metadata i64 %3, metadata !787, metadata !DIExpression()), !dbg !3522
  %4 = icmp eq ptr %0, null, !dbg !3525
  br i1 %4, label %5, label %8, !dbg !3527

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3528
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3531
  br label %15, !dbg !3531

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3532
  %10 = add nuw i64 %9, 1, !dbg !3532
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3532
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3532
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %13, metadata !787, metadata !DIExpression()), !dbg !3522
  br i1 %12, label %14, label %15, !dbg !3535

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3536
  unreachable, !dbg !3536

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3522
  call void @llvm.dbg.value(metadata i64 %16, metadata !787, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %16, metadata !3340, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 1, metadata !3341, metadata !DIExpression()), !dbg !3537
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %17, metadata !3345, metadata !DIExpression()), !dbg !3540
  %18 = icmp eq ptr %17, null, !dbg !3542
  br i1 %18, label %19, label %20, !dbg !3543

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3544
  unreachable, !dbg !3544

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !784, metadata !DIExpression()), !dbg !3522
  store i64 %16, ptr %1, align 8, !dbg !3545, !tbaa !2589
  ret ptr %17, !dbg !3546
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !779 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !784, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !786, metadata !DIExpression()), !dbg !3547
  %4 = load i64, ptr %1, align 8, !dbg !3548, !tbaa !2589
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !787, metadata !DIExpression()), !dbg !3547
  %5 = icmp eq ptr %0, null, !dbg !3549
  br i1 %5, label %6, label %13, !dbg !3550

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3551
  br i1 %7, label %8, label %20, !dbg !3552

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !787, metadata !DIExpression()), !dbg !3547
  %10 = icmp ugt i64 %2, 128, !dbg !3555
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !787, metadata !DIExpression()), !dbg !3547
  br label %20, !dbg !3557

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3558
  %15 = add nuw i64 %14, 1, !dbg !3558
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3558
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3558
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !787, metadata !DIExpression()), !dbg !3547
  br i1 %17, label %19, label %20, !dbg !3559

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3560
  unreachable, !dbg !3560

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !787, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %21, metadata !3340, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %2, metadata !3341, metadata !DIExpression()), !dbg !3561
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3563
  call void @llvm.dbg.value(metadata ptr %22, metadata !3345, metadata !DIExpression()), !dbg !3564
  %23 = icmp eq ptr %22, null, !dbg !3566
  br i1 %23, label %24, label %25, !dbg !3567

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3568
  unreachable, !dbg !3568

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !784, metadata !DIExpression()), !dbg !3547
  store i64 %21, ptr %1, align 8, !dbg !3569, !tbaa !2589
  ret ptr %22, !dbg !3570
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !800, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !801, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !802, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !803, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !804, metadata !DIExpression()), !dbg !3571
  %6 = load i64, ptr %1, align 8, !dbg !3572, !tbaa !2589
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !805, metadata !DIExpression()), !dbg !3571
  %7 = ashr i64 %6, 1, !dbg !3573
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3573
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3573
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !806, metadata !DIExpression()), !dbg !3571
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !806, metadata !DIExpression()), !dbg !3571
  %12 = icmp sgt i64 %3, -1, !dbg !3576
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3578
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !806, metadata !DIExpression()), !dbg !3571
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3579
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3579
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !807, metadata !DIExpression()), !dbg !3571
  %18 = icmp slt i64 %17, 128, !dbg !3579
  %19 = select i1 %18, i64 128, i64 0, !dbg !3579
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !808, metadata !DIExpression()), !dbg !3571
  %21 = icmp eq i64 %20, 0, !dbg !3580
  br i1 %21, label %28, label %22, !dbg !3582

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !806, metadata !DIExpression()), !dbg !3571
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !807, metadata !DIExpression()), !dbg !3571
  br label %28, !dbg !3586

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3571
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !807, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !806, metadata !DIExpression()), !dbg !3571
  %31 = icmp eq ptr %0, null, !dbg !3587
  br i1 %31, label %32, label %33, !dbg !3589

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3590, !tbaa !2589
  br label %33, !dbg !3591

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3592
  %35 = icmp slt i64 %34, %2, !dbg !3594
  br i1 %35, label %36, label %48, !dbg !3595

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3596
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3596
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !806, metadata !DIExpression()), !dbg !3571
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3597
  br i1 %42, label %47, label %43, !dbg !3597

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3598
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3598
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !807, metadata !DIExpression()), !dbg !3571
  br i1 %45, label %47, label %48, !dbg !3599

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3600
  unreachable, !dbg !3600

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3571
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !807, metadata !DIExpression()), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !806, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %50, metadata !3418, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %50, metadata !3424, metadata !DIExpression()), !dbg !3603
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3605
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %52, metadata !3345, metadata !DIExpression()), !dbg !3607
  %53 = icmp eq ptr %52, null, !dbg !3609
  br i1 %53, label %54, label %55, !dbg !3610

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3611
  unreachable, !dbg !3611

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !800, metadata !DIExpression()), !dbg !3571
  store i64 %49, ptr %1, align 8, !dbg !3612, !tbaa !2589
  ret ptr %52, !dbg !3613
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3614 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 1, metadata !3621, metadata !DIExpression()), !dbg !3622
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3624
  call void @llvm.dbg.value(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3625
  %3 = icmp eq ptr %2, null, !dbg !3627
  br i1 %3, label %4, label %5, !dbg !3628

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3629
  unreachable, !dbg !3629

5:                                                ; preds = %1
  ret ptr %2, !dbg !3630
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3631 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3619 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()), !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3621, metadata !DIExpression()), !dbg !3632
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3634
  %4 = icmp eq ptr %3, null, !dbg !3636
  br i1 %4, label %5, label %6, !dbg !3637

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3638
  unreachable, !dbg !3638

6:                                                ; preds = %2
  ret ptr %3, !dbg !3639
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3640 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %0, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 1, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %0, metadata !3650, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 1, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %0, metadata !3650, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 1, metadata !3653, metadata !DIExpression()), !dbg !3654
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3656
  call void @llvm.dbg.value(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3657
  %3 = icmp eq ptr %2, null, !dbg !3659
  br i1 %3, label %4, label %5, !dbg !3660

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3661
  unreachable, !dbg !3661

5:                                                ; preds = %1
  ret ptr %2, !dbg !3662
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3645 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3644, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %0, metadata !3650, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %0, metadata !3650, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3664
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3667
  %4 = icmp eq ptr %3, null, !dbg !3669
  br i1 %4, label %5, label %6, !dbg !3670

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3671
  unreachable, !dbg !3671

6:                                                ; preds = %2
  ret ptr %3, !dbg !3672
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %1, metadata !3369, metadata !DIExpression()), !dbg !3680
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3682
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3683
  %4 = icmp eq ptr %3, null, !dbg !3685
  br i1 %4, label %5, label %6, !dbg !3686

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3687
  unreachable, !dbg !3687

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3688, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 %1, metadata !3695, metadata !DIExpression()), !dbg !3696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3698
  ret ptr %3, !dbg !3699
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3700 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3383, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3385, metadata !DIExpression()), !dbg !3709
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3712
  %4 = icmp eq ptr %3, null, !dbg !3714
  br i1 %4, label %5, label %6, !dbg !3715

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3716
  unreachable, !dbg !3716

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3688, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3695, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3719
  ret ptr %3, !dbg !3720
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3721 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3726, metadata !DIExpression()), !dbg !3728
  %3 = add nsw i64 %1, 1, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3383, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %3, metadata !3385, metadata !DIExpression()), !dbg !3732
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3734
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3735
  %5 = icmp eq ptr %4, null, !dbg !3737
  br i1 %5, label %6, label %7, !dbg !3738

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3739
  unreachable, !dbg !3739

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3727, metadata !DIExpression()), !dbg !3728
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3740
  store i8 0, ptr %8, align 1, !dbg !3741, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %4, metadata !3688, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %1, metadata !3695, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3744
  ret ptr %4, !dbg !3745
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3746 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3748, metadata !DIExpression()), !dbg !3749
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3750
  %3 = add i64 %2, 1, !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %3, metadata !3678, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %3, metadata !3369, metadata !DIExpression()), !dbg !3754
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3756
  call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3757
  %5 = icmp eq ptr %4, null, !dbg !3759
  br i1 %5, label %6, label %7, !dbg !3760

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3761
  unreachable, !dbg !3761

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3688, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %3, metadata !3695, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3764
  ret ptr %4, !dbg !3765
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3766 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3771, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3768, metadata !DIExpression()), !dbg !3772
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #37, !dbg !3771
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #37, !dbg !3771
  %3 = icmp eq i32 %1, 0, !dbg !3771
  tail call void @llvm.assume(i1 %3), !dbg !3771
  tail call void @abort() #39, !dbg !3773
  unreachable, !dbg !3773
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3812, metadata !DIExpression()), !dbg !3817
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3818
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3813, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3822
  %3 = load i32, ptr %0, align 8, !dbg !3824, !tbaa !3825
  %4 = and i32 %3, 32, !dbg !3826
  %5 = icmp eq i32 %4, 0, !dbg !3826
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3817
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3827
  %7 = icmp eq i32 %6, 0, !dbg !3828
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3817
  br i1 %5, label %8, label %18, !dbg !3829

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3831
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3817
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3832
  %11 = xor i1 %7, true, !dbg !3832
  %12 = sext i1 %11 to i32, !dbg !3832
  br i1 %10, label %21, label %13, !dbg !3832

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3833
  %15 = load i32, ptr %14, align 4, !dbg !3833, !tbaa !911
  %16 = icmp ne i32 %15, 9, !dbg !3834
  %17 = sext i1 %16 to i32, !dbg !3835
  br label %21, !dbg !3835

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3836

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3838
  store i32 0, ptr %20, align 4, !dbg !3840, !tbaa !911
  br label %21, !dbg !3838

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3817
  ret i32 %22, !dbg !3841
}

; Function Attrs: nounwind
declare !dbg !3842 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3846 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()), !dbg !3888
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3886, metadata !DIExpression()), !dbg !3888
  %3 = icmp slt i32 %2, 0, !dbg !3890
  br i1 %3, label %4, label %6, !dbg !3892

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3893
  br label %24, !dbg !3894

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3895
  %8 = icmp eq i32 %7, 0, !dbg !3895
  br i1 %8, label %13, label %9, !dbg !3897

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3898
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3899
  %12 = icmp eq i64 %11, -1, !dbg !3900
  br i1 %12, label %16, label %13, !dbg !3901

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3902
  %15 = icmp eq i32 %14, 0, !dbg !3902
  br i1 %15, label %16, label %18, !dbg !3903

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3887, metadata !DIExpression()), !dbg !3888
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3904
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3887, metadata !DIExpression()), !dbg !3888
  br label %24, !dbg !3905

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3906
  %20 = load i32, ptr %19, align 4, !dbg !3906, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3885, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3887, metadata !DIExpression()), !dbg !3888
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3904
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3887, metadata !DIExpression()), !dbg !3888
  %22 = icmp eq i32 %20, 0, !dbg !3907
  br i1 %22, label %24, label %23, !dbg !3905

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3909, !tbaa !911
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3887, metadata !DIExpression()), !dbg !3888
  br label %24, !dbg !3911

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3888
  ret i32 %25, !dbg !3912
}

; Function Attrs: nofree nounwind
declare !dbg !3913 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3914 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3915 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3916 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3957, metadata !DIExpression()), !dbg !3958
  %2 = icmp eq ptr %0, null, !dbg !3959
  br i1 %2, label %6, label %3, !dbg !3961

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3962
  %5 = icmp eq i32 %4, 0, !dbg !3962
  br i1 %5, label %6, label %8, !dbg !3963

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3964
  br label %16, !dbg !3965

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3966, metadata !DIExpression()), !dbg !3971
  %9 = load i32, ptr %0, align 8, !dbg !3973, !tbaa !3825
  %10 = and i32 %9, 256, !dbg !3975
  %11 = icmp eq i32 %10, 0, !dbg !3975
  br i1 %11, label %14, label %12, !dbg !3976

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3977
  br label %14, !dbg !3977

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3978
  br label %16, !dbg !3979

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3958
  ret i32 %17, !dbg !3980
}

; Function Attrs: nofree nounwind
declare !dbg !3981 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3982 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4021, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4022, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4023, metadata !DIExpression()), !dbg !4027
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4028
  %5 = load ptr, ptr %4, align 8, !dbg !4028, !tbaa !4029
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4030
  %7 = load ptr, ptr %6, align 8, !dbg !4030, !tbaa !4031
  %8 = icmp eq ptr %5, %7, !dbg !4032
  br i1 %8, label %9, label %27, !dbg !4033

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4034
  %11 = load ptr, ptr %10, align 8, !dbg !4034, !tbaa !1616
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4035
  %13 = load ptr, ptr %12, align 8, !dbg !4035, !tbaa !4036
  %14 = icmp eq ptr %11, %13, !dbg !4037
  br i1 %14, label %15, label %27, !dbg !4038

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4039
  %17 = load ptr, ptr %16, align 8, !dbg !4039, !tbaa !4040
  %18 = icmp eq ptr %17, null, !dbg !4041
  br i1 %18, label %19, label %27, !dbg !4042

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4043
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4024, metadata !DIExpression()), !dbg !4045
  %22 = icmp eq i64 %21, -1, !dbg !4046
  br i1 %22, label %29, label %23, !dbg !4048

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4049, !tbaa !3825
  %25 = and i32 %24, -17, !dbg !4049
  store i32 %25, ptr %0, align 8, !dbg !4049, !tbaa !3825
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4050
  store i64 %21, ptr %26, align 8, !dbg !4051, !tbaa !4052
  br label %29, !dbg !4053

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4054
  br label %29, !dbg !4055

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4027
  ret i32 %30, !dbg !4056
}

; Function Attrs: nofree nounwind
declare !dbg !4057 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4060 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4069
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4065, metadata !DIExpression(), metadata !4069, metadata ptr %2, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4064, metadata !DIExpression()), !dbg !4070
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4071
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4072
  %4 = icmp eq i32 %3, 0, !dbg !4072
  br i1 %4, label %5, label %12, !dbg !4074

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4075, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr @.str.146, metadata !4078, metadata !DIExpression()), !dbg !4079
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.146, i64 2), !dbg !4082
  %7 = icmp eq i32 %6, 0, !dbg !4083
  br i1 %7, label %11, label %8, !dbg !4084

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4075, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr @.str.1.147, metadata !4078, metadata !DIExpression()), !dbg !4085
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.147, i64 6), !dbg !4087
  %10 = icmp eq i32 %9, 0, !dbg !4088
  br i1 %10, label %11, label %12, !dbg !4089

11:                                               ; preds = %8, %5
  br label %12, !dbg !4090

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4070
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4091
  ret i1 %13, !dbg !4091
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4097, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4100, metadata !DIExpression()), !dbg !4102
  %5 = icmp eq ptr %1, null, !dbg !4103
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4105
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4105
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4098, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4097, metadata !DIExpression()), !dbg !4102
  %9 = icmp eq ptr %3, null, !dbg !4106
  %10 = select i1 %9, ptr @internal_state.151, ptr %3, !dbg !4108
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4100, metadata !DIExpression()), !dbg !4102
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4101, metadata !DIExpression()), !dbg !4102
  %12 = icmp ult i64 %11, -3, !dbg !4110
  br i1 %12, label %13, label %17, !dbg !4112

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4113
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
  tail call void @abort() #39, !dbg !4134
  unreachable, !dbg !4134

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4135

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4137
  br i1 %23, label %29, label %24, !dbg !4138

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4139
  br i1 %25, label %29, label %26, !dbg !4142

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4143, !tbaa !920
  %28 = zext i8 %27 to i32, !dbg !4144
  store i32 %28, ptr %6, align 4, !dbg !4145, !tbaa !911
  br label %29, !dbg !4146

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4102
  ret i64 %30, !dbg !4147
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4148 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4153 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()), !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4157, metadata !DIExpression()), !dbg !4159
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4160
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4158, metadata !DIExpression()), !dbg !4159
  br i1 %5, label %6, label %8, !dbg !4162

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4163
  store i32 12, ptr %7, align 4, !dbg !4165, !tbaa !911
  br label %12, !dbg !4166

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 %9, metadata !4170, metadata !DIExpression()), !dbg !4171
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4173
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4174
  br label %12, !dbg !4175

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4159
  ret ptr %13, !dbg !4176
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4177 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4183, metadata !DIExpression()), !dbg !4184
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4185
  ret i32 %4, !dbg !4186
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4187 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4191, metadata !DIExpression()), !dbg !4192
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4193
  ret ptr %2, !dbg !4194
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4195 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4199
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4199
  ret ptr %2, !dbg !4201
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4202 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4204, metadata !DIExpression()), !dbg !4211
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4205, metadata !DIExpression()), !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4206, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4212
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4214
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4212
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4207, metadata !DIExpression()), !dbg !4211
  %5 = icmp eq ptr %4, null, !dbg !4215
  br i1 %5, label %6, label %9, !dbg !4216

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4217
  br i1 %7, label %19, label %8, !dbg !4220

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4221, !tbaa !920
  br label %19, !dbg !4222

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4208, metadata !DIExpression()), !dbg !4224
  %11 = icmp ult i64 %10, %2, !dbg !4225
  br i1 %11, label %12, label %14, !dbg !4227

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4228
  call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %4, metadata !4233, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %13, metadata !4234, metadata !DIExpression()), !dbg !4235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4237
  br label %19, !dbg !4238

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4239
  br i1 %15, label %19, label %16, !dbg !4242

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %4, metadata !4233, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %17, metadata !4234, metadata !DIExpression()), !dbg !4245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4247
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4248
  store i8 0, ptr %18, align 1, !dbg !4249, !tbaa !920
  br label %19, !dbg !4250

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4251
  ret i32 %20, !dbg !4252
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !412, !416, !431, !730, !764, !487, !766, !505, !519, !565, !769, !724, !775, !810, !812, !814, !816, !818, !820, !751, !822, !824, !826}
!llvm.ident = !{!828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828}
!llvm.module.flags = !{!829, !830, !831, !832, !833, !834, !835, !836}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/pathchk.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa64b76be00e62a867ebcba8290d4fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 47)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !3, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 48)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 80)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 50)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 62)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "longopts", scope: !66, file: !2, line: 72, type: !397, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/pathchk.o -MD -MP -MF src/.deps/pathchk.Tpo -c src/pathchk.c -o src/.pathchk.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !131, globals: !141, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !72, !78, !93, !107}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 67, baseType: !69, size: 32, elements: !70)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71}
!71 = !DIEnumerator(name: "PORTABILITY_OPTION", value: 256)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 337, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!77 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 46, baseType: !69, size: 32, elements: !80)
!79 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!81 = !DIEnumerator(name: "_ISupper", value: 256)
!82 = !DIEnumerator(name: "_ISlower", value: 512)
!83 = !DIEnumerator(name: "_ISalpha", value: 1024)
!84 = !DIEnumerator(name: "_ISdigit", value: 2048)
!85 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!86 = !DIEnumerator(name: "_ISspace", value: 8192)
!87 = !DIEnumerator(name: "_ISprint", value: 16384)
!88 = !DIEnumerator(name: "_ISgraph", value: 32768)
!89 = !DIEnumerator(name: "_ISblank", value: 1)
!90 = !DIEnumerator(name: "_IScntrl", value: 2)
!91 = !DIEnumerator(name: "_ISpunct", value: 4)
!92 = !DIEnumerator(name: "_ISalnum", value: 8)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !94, line: 42, baseType: !69, size: 32, elements: !95)
!94 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!97 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!98 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!99 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!100 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!101 = !DIEnumerator(name: "c_quoting_style", value: 5)
!102 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!103 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!104 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!105 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!106 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 24, baseType: !69, size: 32, elements: !109)
!108 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!110 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!111 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!112 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!113 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!114 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!115 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!116 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!117 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!118 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!119 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!120 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!121 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!122 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!123 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!124 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!125 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!126 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!127 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!128 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!129 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!130 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!131 = !{!132, !133, !74, !134, !135, !138, !140}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 18, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!0, !7, !12, !17, !22, !24, !29, !34, !39, !44, !49, !54, !59, !142, !147, !152, !157, !162, !164, !247, !252, !254, !256, !261, !266, !268, !270, !275, !277, !279, !281, !286, !288, !290, !292, !294, !296, !298, !300, !305, !310, !315, !320, !322, !324, !326, !328, !330, !335, !337, !339, !344, !349, !354, !356, !358, !360, !64, !362, !364, !366, !368, !370, !375, !377, !382, !387, !392}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 14)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 12)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 13)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !154, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !166, file: !73, line: 575, type: !74, isLocal: true, isDefinition: true)
!166 = distinct !DISubprogram(name: "oputs_", scope: !73, file: !73, line: 573, type: !167, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !169)
!167 = !DISubroutineType(cc: DW_CC_nocall, types: !168)
!168 = !{null, !138, !138}
!169 = !{!170, !171, !172, !175, !177, !178, !179, !183, !184, !185, !186, !188, !241, !242, !243, !245, !246}
!170 = !DILocalVariable(name: "program", arg: 1, scope: !166, file: !73, line: 573, type: !138)
!171 = !DILocalVariable(name: "option", arg: 2, scope: !166, file: !73, line: 573, type: !138)
!172 = !DILocalVariable(name: "term", scope: !173, file: !73, line: 585, type: !138)
!173 = distinct !DILexicalBlock(scope: !174, file: !73, line: 582, column: 5)
!174 = distinct !DILexicalBlock(scope: !166, file: !73, line: 581, column: 7)
!175 = !DILocalVariable(name: "double_space", scope: !166, file: !73, line: 594, type: !176)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DILocalVariable(name: "first_word", scope: !166, file: !73, line: 595, type: !138)
!178 = !DILocalVariable(name: "option_text", scope: !166, file: !73, line: 596, type: !138)
!179 = !DILocalVariable(name: "s", scope: !180, file: !73, line: 608, type: !138)
!180 = distinct !DILexicalBlock(scope: !181, file: !73, line: 605, column: 5)
!181 = distinct !DILexicalBlock(scope: !182, file: !73, line: 604, column: 12)
!182 = distinct !DILexicalBlock(scope: !166, file: !73, line: 597, column: 7)
!183 = !DILocalVariable(name: "spaces", scope: !180, file: !73, line: 609, type: !135)
!184 = !DILocalVariable(name: "anchor_len", scope: !166, file: !73, line: 620, type: !135)
!185 = !DILocalVariable(name: "desc_text", scope: !166, file: !73, line: 625, type: !138)
!186 = !DILocalVariable(name: "__ptr", scope: !187, file: !73, line: 644, type: !138)
!187 = distinct !DILexicalBlock(scope: !166, file: !73, line: 644, column: 3)
!188 = !DILocalVariable(name: "__stream", scope: !187, file: !73, line: 644, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !192)
!191 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !194)
!193 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !210, !212, !213, !214, !218, !219, !221, !222, !225, !227, !230, !233, !234, !235, !236, !237}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !193, line: 51, baseType: !74, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 36, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !193, line: 70, baseType: !211, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !216, line: 152, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!217 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!220 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !193, line: 43, baseType: null)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !216, line: 153, baseType: !217)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !192, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !193, line: 37, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !192, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !193, line: 38, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !192, file: !193, line: 93, baseType: !211, size: 64, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !192, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DILocalVariable(name: "__cnt", scope: !187, file: !73, line: 644, type: !135)
!242 = !DILocalVariable(name: "url_program", scope: !166, file: !73, line: 648, type: !138)
!243 = !DILocalVariable(name: "__ptr", scope: !244, file: !73, line: 686, type: !138)
!244 = distinct !DILexicalBlock(scope: !166, file: !73, line: 686, column: 3)
!245 = !DILocalVariable(name: "__stream", scope: !244, file: !73, line: 686, type: !189)
!246 = !DILocalVariable(name: "__cnt", scope: !244, file: !73, line: 686, type: !135)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !73, line: 585, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 5)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !73, line: 586, type: !249, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !73, line: 595, type: !61, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !73, line: 620, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 6)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !73, line: 648, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 2)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !73, line: 648, type: !249, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !73, line: 649, type: !61, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !73, line: 649, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 3)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !73, line: 650, type: !249, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !73, line: 651, type: !258, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !73, line: 651, type: !258, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !73, line: 652, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 7)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !73, line: 653, type: !19, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !73, line: 654, type: !51, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !73, line: 655, type: !51, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !73, line: 656, type: !51, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !73, line: 657, type: !51, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !73, line: 663, type: !283, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !73, line: 664, type: !51, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !73, line: 669, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 17)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !73, line: 669, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 40)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !73, line: 676, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 15)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !73, line: 676, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 61)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !73, line: 679, type: !272, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !73, line: 683, type: !249, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !73, line: 688, type: !249, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !73, line: 691, type: !19, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !73, line: 839, type: !154, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !73, line: 840, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 22)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !73, line: 841, type: !312, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !73, line: 862, type: !61, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !73, line: 868, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 71)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !73, line: 875, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 27)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !73, line: 877, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 51)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !73, line: 877, type: !149, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !149, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !249, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !19, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !154, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !272, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !263, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !263, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 49)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !372, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 59)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 43)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 67)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 42)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 1024, elements: !62)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !400, line: 50, size: 256, elements: !401)
!400 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!401 = !{!402, !403, !404, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !400, line: 52, baseType: !138, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !399, file: !400, line: 55, baseType: !74, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !399, file: !400, line: 56, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !400, line: 57, baseType: !74, size: 32, offset: 192)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !409, line: 3, type: !312, isLocal: true, isDefinition: true)
!409 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "Version", scope: !412, file: !409, line: 3, type: !138, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !413, splitDebugInlining: false, nameTableKind: None)
!413 = !{!407, !410}
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "file_name", scope: !416, file: !417, line: 45, type: !138, isLocal: true, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C11, file: !417, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !418, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!418 = !{!419, !421, !423, !425, !414, !427}
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !417, line: 121, type: !283, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !417, line: 121, type: !149, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !417, line: 123, type: !283, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !417, line: 126, type: !272, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !416, file: !417, line: 55, type: !176, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !431, file: !432, line: 66, type: !482, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, globals: !434, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!433 = !{!133, !140}
!434 = !{!435, !437, !461, !463, !465, !467, !429, !469, !471, !473, !475, !480}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !432, line: 272, type: !249, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "old_file_name", scope: !439, file: !432, line: 304, type: !138, isLocal: true, isDefinition: true)
!439 = distinct !DISubprogram(name: "verror_at_line", scope: !432, file: !432, line: 298, type: !440, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !454)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !74, !74, !138, !69, !138, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !443, line: 52, baseType: !444)
!443 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !445, line: 12, baseType: !446)
!445 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !432, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !448)
!448 = !{!449, !450, !451, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !447, file: !432, baseType: !133, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !447, file: !432, baseType: !133, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !447, file: !432, baseType: !133, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !447, file: !432, baseType: !74, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !447, file: !432, baseType: !74, size: 32, offset: 224)
!454 = !{!455, !456, !457, !458, !459, !460}
!455 = !DILocalVariable(name: "status", arg: 1, scope: !439, file: !432, line: 298, type: !74)
!456 = !DILocalVariable(name: "errnum", arg: 2, scope: !439, file: !432, line: 298, type: !74)
!457 = !DILocalVariable(name: "file_name", arg: 3, scope: !439, file: !432, line: 298, type: !138)
!458 = !DILocalVariable(name: "line_number", arg: 4, scope: !439, file: !432, line: 298, type: !69)
!459 = !DILocalVariable(name: "message", arg: 5, scope: !439, file: !432, line: 298, type: !138)
!460 = !DILocalVariable(name: "args", arg: 6, scope: !439, file: !432, line: 298, type: !442)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "old_line_number", scope: !439, file: !432, line: 305, type: !69, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !432, line: 338, type: !61, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !19, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !263, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "error_message_count", scope: !431, file: !432, line: 69, type: !69, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !431, file: !432, line: 295, type: !74, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !283, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 21)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !432, line: 214, type: !249, isLocal: true, isDefinition: true)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null}
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "internal_state", scope: !487, file: !488, line: 24, type: !491, isLocal: true, isDefinition: true)
!487 = distinct !DICompileUnit(language: DW_LANG_C11, file: !488, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrlen.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrlen.Tpo -c lib/mbrlen.c -o lib/.libcoreutils_a-mbrlen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, globals: !490, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!489 = !{!133}
!490 = !{!485}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !493)
!492 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !495)
!494 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !495, file: !494, line: 15, baseType: !74, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !495, file: !494, line: 20, baseType: !499, size: 32, offset: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !494, line: 16, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !499, file: !494, line: 18, baseType: !69, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !499, file: !494, line: 19, baseType: !61, size: 32)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "program_name", scope: !505, file: !506, line: 31, type: !138, isLocal: false, isDefinition: true)
!505 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !507, globals: !508, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!507 = !{!133, !132}
!508 = !{!503, !509, !511}
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !506, line: 46, type: !19, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !506, line: 49, type: !61, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "utf07FF", scope: !515, file: !516, line: 46, type: !541, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "proper_name_lite", scope: !516, file: !516, line: 38, type: !517, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !521)
!516 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!517 = !DISubroutineType(types: !518)
!518 = !{!138, !138, !138}
!519 = distinct !DICompileUnit(language: DW_LANG_C11, file: !516, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !520, splitDebugInlining: false, nameTableKind: None)
!520 = !{!513}
!521 = !{!522, !523, !524, !525, !530}
!522 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !515, file: !516, line: 38, type: !138)
!523 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !515, file: !516, line: 38, type: !138)
!524 = !DILocalVariable(name: "translation", scope: !515, file: !516, line: 40, type: !138)
!525 = !DILocalVariable(name: "w", scope: !515, file: !516, line: 47, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !527, line: 37, baseType: !528)
!527 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !216, line: 57, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !216, line: 42, baseType: !69)
!530 = !DILocalVariable(name: "mbs", scope: !515, file: !516, line: 48, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !533, file: !494, line: 15, baseType: !74, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !533, file: !494, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !494, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !494, line: 18, baseType: !69, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !494, line: 19, baseType: !61, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !264)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !544, line: 78, type: !19, isLocal: true, isDefinition: true)
!544 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !544, line: 79, type: !258, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !544, line: 80, type: !159, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !544, line: 81, type: !159, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !544, line: 82, type: !238, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !544, line: 83, type: !263, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !544, line: 84, type: !19, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !544, line: 85, type: !283, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !544, line: 86, type: !283, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !544, line: 87, type: !19, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !565, file: !544, line: 76, type: !639, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !544, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !574, globals: !575, splitDebugInlining: false, nameTableKind: None)
!566 = !{!567, !569, !78}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !568, line: 42, baseType: !69, size: 32, elements: !95)
!568 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !568, line: 254, baseType: !69, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!572 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!573 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!574 = !{!133, !74, !134, !135}
!575 = !{!542, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !576, !580, !590, !592, !597, !599, !601, !603, !605, !628, !635, !637}
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !565, file: !544, line: 92, type: !578, isLocal: false, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 320, elements: !52)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !565, file: !544, line: 1040, type: !582, isLocal: false, isDefinition: true)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !544, line: 56, size: 448, elements: !583)
!583 = !{!584, !585, !586, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !582, file: !544, line: 59, baseType: !567, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !544, line: 62, baseType: !74, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !582, file: !544, line: 66, baseType: !587, size: 256, offset: 64)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !20)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !582, file: !544, line: 69, baseType: !138, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !582, file: !544, line: 72, baseType: !138, size: 64, offset: 384)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !565, file: !544, line: 107, type: !582, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "slot0", scope: !565, file: !544, line: 831, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 256)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !544, line: 321, type: !263, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !544, line: 357, type: !263, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !544, line: 358, type: !263, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !544, line: 199, type: !283, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "quote", scope: !607, file: !544, line: 228, type: !626, isLocal: true, isDefinition: true)
!607 = distinct !DISubprogram(name: "gettext_quote", scope: !544, file: !544, line: 197, type: !608, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!138, !138, !567}
!610 = !{!611, !612, !613, !614, !615}
!611 = !DILocalVariable(name: "msgid", arg: 1, scope: !607, file: !544, line: 197, type: !138)
!612 = !DILocalVariable(name: "s", arg: 2, scope: !607, file: !544, line: 197, type: !567)
!613 = !DILocalVariable(name: "translation", scope: !607, file: !544, line: 199, type: !138)
!614 = !DILocalVariable(name: "w", scope: !607, file: !544, line: 229, type: !526)
!615 = !DILocalVariable(name: "mbs", scope: !607, file: !544, line: 230, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !618, file: !494, line: 15, baseType: !74, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !618, file: !494, line: 20, baseType: !622, size: 32, offset: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !494, line: 16, size: 32, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !622, file: !494, line: 18, baseType: !69, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !622, file: !494, line: 19, baseType: !61, size: 32)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !627)
!627 = !{!265, !63}
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "slotvec", scope: !565, file: !544, line: 834, type: !630, isLocal: true, isDefinition: true)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !544, line: 823, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !631, file: !544, line: 825, baseType: !135, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !631, file: !544, line: 826, baseType: !132, size: 64, offset: 64)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "nslots", scope: !565, file: !544, line: 832, type: !74, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "slotvec0", scope: !565, file: !544, line: 833, type: !631, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 704, elements: !641)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!641 = !{!642}
!642 = !DISubrange(count: 11)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !645, line: 67, type: !149, isLocal: true, isDefinition: true)
!645 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !645, line: 69, type: !283, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !645, line: 83, type: !283, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !645, line: 83, type: !61, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !645, line: 85, type: !263, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !645, line: 88, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 171)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !645, line: 88, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 34)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !645, line: 105, type: !154, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !645, line: 109, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 23)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !645, line: 113, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 28)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !645, line: 120, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 32)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !645, line: 127, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 36)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !645, line: 134, type: !307, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !645, line: 142, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 44)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !645, line: 150, type: !26, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !645, line: 159, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 52)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !645, line: 170, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 60)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !645, line: 248, type: !238, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !645, line: 248, type: !332, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !238, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !144, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !307, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !645, line: 259, type: !3, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !645, line: 259, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 29)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !724, file: !725, line: 26, type: !727, isLocal: false, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!726 = !{!722}
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !15)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "exit_failure", scope: !730, file: !731, line: 24, type: !733, isLocal: false, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !732, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!732 = !{!728}
!733 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !272, isLocal: true, isDefinition: true)
!736 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !283, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !302, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !743, line: 35, type: !263, isLocal: true, isDefinition: true)
!743 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !743, line: 35, type: !258, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !748, line: 108, type: !46, isLocal: true, isDefinition: true)
!748 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "internal_state", scope: !751, file: !748, line: 97, type: !754, isLocal: true, isDefinition: true)
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !752, globals: !753, splitDebugInlining: false, nameTableKind: None)
!752 = !{!133, !135, !140}
!753 = !{!746, !749}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !494, line: 15, baseType: !74, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !756, file: !494, line: 20, baseType: !760, size: 32, offset: 32)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !494, line: 16, size: 32, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !760, file: !494, line: 18, baseType: !69, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !760, file: !494, line: 19, baseType: !61, size: 32)
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtowc.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtowc.Tpo -c lib/mbrtowc.c -o lib/.libcoreutils_a-mbrtowc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!768 = !{!135}
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !489, globals: !774, splitDebugInlining: false, nameTableKind: None)
!770 = !{!771}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !645, line: 40, baseType: !69, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!774 = !{!643, !646, !648, !650, !652, !654, !659, !664, !666, !671, !676, !681, !686, !688, !693, !695, !700, !705, !707, !709, !711, !713, !715, !717}
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !777, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!777 = !{!778, !790}
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !779, file: !776, line: 188, baseType: !69, size: 32, elements: !788)
!779 = distinct !DISubprogram(name: "x2nrealloc", scope: !776, file: !776, line: 176, type: !780, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !783)
!780 = !DISubroutineType(types: !781)
!781 = !{!133, !133, !782, !135}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!783 = !{!784, !785, !786, !787}
!784 = !DILocalVariable(name: "p", arg: 1, scope: !779, file: !776, line: 176, type: !133)
!785 = !DILocalVariable(name: "pn", arg: 2, scope: !779, file: !776, line: 176, type: !782)
!786 = !DILocalVariable(name: "s", arg: 3, scope: !779, file: !776, line: 176, type: !135)
!787 = !DILocalVariable(name: "n", scope: !779, file: !776, line: 178, type: !135)
!788 = !{!789}
!789 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !791, file: !776, line: 228, baseType: !69, size: 32, elements: !788)
!791 = distinct !DISubprogram(name: "xpalloc", scope: !776, file: !776, line: 223, type: !792, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !799)
!792 = !DISubroutineType(types: !793)
!793 = !{!133, !133, !794, !795, !797, !795}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !796, line: 130, baseType: !797)
!796 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !798, line: 18, baseType: !217)
!798 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808}
!800 = !DILocalVariable(name: "pa", arg: 1, scope: !791, file: !776, line: 223, type: !133)
!801 = !DILocalVariable(name: "pn", arg: 2, scope: !791, file: !776, line: 223, type: !794)
!802 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !791, file: !776, line: 223, type: !795)
!803 = !DILocalVariable(name: "n_max", arg: 4, scope: !791, file: !776, line: 223, type: !797)
!804 = !DILocalVariable(name: "s", arg: 5, scope: !791, file: !776, line: 223, type: !795)
!805 = !DILocalVariable(name: "n0", scope: !791, file: !776, line: 230, type: !795)
!806 = !DILocalVariable(name: "n", scope: !791, file: !776, line: 237, type: !795)
!807 = !DILocalVariable(name: "nbytes", scope: !791, file: !776, line: 248, type: !795)
!808 = !DILocalVariable(name: "adjusted_nbytes", scope: !791, file: !776, line: 252, type: !795)
!809 = !{!132, !133}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !811, splitDebugInlining: false, nameTableKind: None)
!811 = !{!734, !737, !739}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !821, splitDebugInlining: false, nameTableKind: None)
!821 = !{!741, !744}
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!828 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!829 = !{i32 7, !"Dwarf Version", i32 5}
!830 = !{i32 2, !"Debug Info Version", i32 3}
!831 = !{i32 1, !"wchar_size", i32 4}
!832 = !{i32 8, !"PIC Level", i32 2}
!833 = !{i32 7, !"PIE Level", i32 2}
!834 = !{i32 7, !"uwtable", i32 2}
!835 = !{i32 7, !"frame-pointer", i32 1}
!836 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!837 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !838, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !74}
!840 = !{!841}
!841 = !DILocalVariable(name: "status", arg: 1, scope: !837, file: !2, line: 81, type: !74)
!842 = !DILocation(line: 0, scope: !837)
!843 = !DILocation(line: 83, column: 14, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !2, line: 83, column: 7)
!845 = !DILocation(line: 83, column: 7, scope: !837)
!846 = !DILocation(line: 84, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !2, line: 84, column: 5)
!848 = !{!849, !849, i64 0}
!849 = !{!"any pointer", !850, i64 0}
!850 = !{!"omnipotent char", !851, i64 0}
!851 = !{!"Simple C/C++ TBAA"}
!852 = !DILocation(line: 87, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !2, line: 86, column: 5)
!854 = !DILocation(line: 88, column: 7, scope: !853)
!855 = !DILocation(line: 92, column: 7, scope: !853)
!856 = !DILocation(line: 95, column: 7, scope: !853)
!857 = !DILocation(line: 98, column: 7, scope: !853)
!858 = !DILocation(line: 102, column: 7, scope: !853)
!859 = !DILocation(line: 103, column: 7, scope: !853)
!860 = !DILocalVariable(name: "program", arg: 1, scope: !861, file: !73, line: 836, type: !138)
!861 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !73, file: !73, line: 836, type: !862, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !138}
!864 = !{!860, !865, !872, !873, !875, !876}
!865 = !DILocalVariable(name: "infomap", scope: !861, file: !73, line: 838, type: !866)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 896, elements: !284)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !861, file: !73, line: 838, size: 128, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !868, file: !73, line: 838, baseType: !138, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !868, file: !73, line: 838, baseType: !138, size: 64, offset: 64)
!872 = !DILocalVariable(name: "node", scope: !861, file: !73, line: 848, type: !138)
!873 = !DILocalVariable(name: "map_prog", scope: !861, file: !73, line: 849, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!875 = !DILocalVariable(name: "lc_messages", scope: !861, file: !73, line: 861, type: !138)
!876 = !DILocalVariable(name: "url_program", scope: !861, file: !73, line: 874, type: !138)
!877 = !DILocation(line: 0, scope: !861, inlinedAt: !878)
!878 = distinct !DILocation(line: 104, column: 7, scope: !853)
!879 = !{}
!880 = !DILocation(line: 857, column: 3, scope: !861, inlinedAt: !878)
!881 = !DILocation(line: 861, column: 29, scope: !861, inlinedAt: !878)
!882 = !DILocation(line: 862, column: 7, scope: !883, inlinedAt: !878)
!883 = distinct !DILexicalBlock(scope: !861, file: !73, line: 862, column: 7)
!884 = !DILocation(line: 862, column: 19, scope: !883, inlinedAt: !878)
!885 = !DILocation(line: 862, column: 22, scope: !883, inlinedAt: !878)
!886 = !DILocation(line: 862, column: 7, scope: !861, inlinedAt: !878)
!887 = !DILocation(line: 868, column: 7, scope: !888, inlinedAt: !878)
!888 = distinct !DILexicalBlock(scope: !883, file: !73, line: 863, column: 5)
!889 = !DILocation(line: 870, column: 5, scope: !888, inlinedAt: !878)
!890 = !DILocation(line: 875, column: 3, scope: !861, inlinedAt: !878)
!891 = !DILocation(line: 877, column: 3, scope: !861, inlinedAt: !878)
!892 = !DILocation(line: 106, column: 3, scope: !837)
!893 = !DISubprogram(name: "dcgettext", scope: !894, file: !894, line: 51, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!895 = !DISubroutineType(types: !896)
!896 = !{!132, !138, !138, !74}
!897 = !DISubprogram(name: "__fprintf_chk", scope: !898, file: !898, line: 93, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!899 = !DISubroutineType(types: !900)
!900 = !{!74, !901, !74, !902, null}
!901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !189)
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!903 = !DISubprogram(name: "__printf_chk", scope: !898, file: !898, line: 95, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{!74, !74, !902, null}
!906 = !DISubprogram(name: "fputs_unlocked", scope: !443, file: !443, line: 691, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{!74, !902, !901}
!909 = !DILocation(line: 0, scope: !166)
!910 = !DILocation(line: 581, column: 7, scope: !174)
!911 = !{!912, !912, i64 0}
!912 = !{!"int", !850, i64 0}
!913 = !DILocation(line: 581, column: 19, scope: !174)
!914 = !DILocation(line: 581, column: 7, scope: !166)
!915 = !DILocation(line: 585, column: 26, scope: !173)
!916 = !DILocation(line: 0, scope: !173)
!917 = !DILocation(line: 586, column: 23, scope: !173)
!918 = !DILocation(line: 586, column: 28, scope: !173)
!919 = !DILocation(line: 586, column: 32, scope: !173)
!920 = !{!850, !850, i64 0}
!921 = !DILocation(line: 586, column: 38, scope: !173)
!922 = !DILocalVariable(name: "__s1", arg: 1, scope: !923, file: !924, line: 1359, type: !138)
!923 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !927)
!924 = !DIFile(filename: "./lib/string.h", directory: "/src")
!925 = !DISubroutineType(types: !926)
!926 = !{!176, !138, !138}
!927 = !{!922, !928}
!928 = !DILocalVariable(name: "__s2", arg: 2, scope: !923, file: !924, line: 1359, type: !138)
!929 = !DILocation(line: 0, scope: !923, inlinedAt: !930)
!930 = distinct !DILocation(line: 586, column: 41, scope: !173)
!931 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !930)
!932 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !930)
!933 = !DILocation(line: 586, column: 19, scope: !173)
!934 = !DILocation(line: 587, column: 5, scope: !173)
!935 = !DILocation(line: 588, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !166, file: !73, line: 588, column: 7)
!937 = !DILocation(line: 588, column: 7, scope: !166)
!938 = !DILocation(line: 590, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !73, line: 589, column: 5)
!940 = !DILocation(line: 591, column: 7, scope: !939)
!941 = !DILocation(line: 595, column: 37, scope: !166)
!942 = !DILocation(line: 595, column: 35, scope: !166)
!943 = !DILocation(line: 596, column: 29, scope: !166)
!944 = !DILocation(line: 597, column: 8, scope: !182)
!945 = !DILocation(line: 597, column: 7, scope: !166)
!946 = !DILocation(line: 604, column: 24, scope: !181)
!947 = !DILocation(line: 604, column: 12, scope: !182)
!948 = !DILocation(line: 0, scope: !180)
!949 = !DILocation(line: 610, column: 16, scope: !180)
!950 = !DILocation(line: 610, column: 7, scope: !180)
!951 = !DILocation(line: 611, column: 21, scope: !180)
!952 = !{!953, !953, i64 0}
!953 = !{!"short", !850, i64 0}
!954 = !DILocation(line: 611, column: 19, scope: !180)
!955 = !DILocation(line: 611, column: 16, scope: !180)
!956 = !DILocation(line: 610, column: 30, scope: !180)
!957 = distinct !{!957, !950, !951, !958}
!958 = !{!"llvm.loop.mustprogress"}
!959 = !DILocation(line: 612, column: 18, scope: !960)
!960 = distinct !DILexicalBlock(scope: !180, file: !73, line: 612, column: 11)
!961 = !DILocation(line: 612, column: 11, scope: !180)
!962 = !DILocation(line: 620, column: 23, scope: !166)
!963 = !DILocation(line: 625, column: 39, scope: !166)
!964 = !DILocation(line: 626, column: 3, scope: !166)
!965 = !DILocation(line: 626, column: 10, scope: !166)
!966 = !DILocation(line: 626, column: 21, scope: !166)
!967 = !DILocation(line: 628, column: 44, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !73, line: 628, column: 11)
!969 = distinct !DILexicalBlock(scope: !166, file: !73, line: 627, column: 5)
!970 = !DILocation(line: 628, column: 32, scope: !968)
!971 = !DILocation(line: 628, column: 49, scope: !968)
!972 = !DILocation(line: 628, column: 11, scope: !969)
!973 = !DILocation(line: 630, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !73, line: 630, column: 11)
!975 = !DILocation(line: 630, column: 11, scope: !969)
!976 = !DILocation(line: 632, column: 26, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !73, line: 632, column: 15)
!978 = distinct !DILexicalBlock(scope: !974, file: !73, line: 631, column: 9)
!979 = !DILocation(line: 632, column: 34, scope: !977)
!980 = !DILocation(line: 632, column: 37, scope: !977)
!981 = !DILocation(line: 632, column: 15, scope: !978)
!982 = !DILocation(line: 640, column: 16, scope: !969)
!983 = distinct !{!983, !964, !984, !958}
!984 = !DILocation(line: 641, column: 5, scope: !166)
!985 = !DILocation(line: 644, column: 3, scope: !166)
!986 = !DILocation(line: 0, scope: !923, inlinedAt: !987)
!987 = distinct !DILocation(line: 648, column: 31, scope: !166)
!988 = !DILocation(line: 0, scope: !923, inlinedAt: !989)
!989 = distinct !DILocation(line: 649, column: 31, scope: !166)
!990 = !DILocation(line: 0, scope: !923, inlinedAt: !991)
!991 = distinct !DILocation(line: 650, column: 31, scope: !166)
!992 = !DILocation(line: 0, scope: !923, inlinedAt: !993)
!993 = distinct !DILocation(line: 651, column: 31, scope: !166)
!994 = !DILocation(line: 0, scope: !923, inlinedAt: !995)
!995 = distinct !DILocation(line: 652, column: 31, scope: !166)
!996 = !DILocation(line: 0, scope: !923, inlinedAt: !997)
!997 = distinct !DILocation(line: 653, column: 31, scope: !166)
!998 = !DILocation(line: 0, scope: !923, inlinedAt: !999)
!999 = distinct !DILocation(line: 654, column: 31, scope: !166)
!1000 = !DILocation(line: 0, scope: !923, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 655, column: 31, scope: !166)
!1002 = !DILocation(line: 0, scope: !923, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 656, column: 31, scope: !166)
!1004 = !DILocation(line: 0, scope: !923, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 657, column: 31, scope: !166)
!1006 = !DILocation(line: 663, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !166, file: !73, line: 663, column: 7)
!1008 = !DILocation(line: 664, column: 7, scope: !1007)
!1009 = !DILocation(line: 664, column: 10, scope: !1007)
!1010 = !DILocation(line: 663, column: 7, scope: !166)
!1011 = !DILocation(line: 669, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !73, line: 665, column: 5)
!1013 = !DILocation(line: 671, column: 5, scope: !1012)
!1014 = !DILocation(line: 676, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !73, line: 673, column: 5)
!1016 = !DILocation(line: 679, column: 3, scope: !166)
!1017 = !DILocation(line: 683, column: 3, scope: !166)
!1018 = !DILocation(line: 686, column: 3, scope: !166)
!1019 = !DILocation(line: 688, column: 3, scope: !166)
!1020 = !DILocation(line: 691, column: 3, scope: !166)
!1021 = !DILocation(line: 695, column: 3, scope: !166)
!1022 = !DILocation(line: 696, column: 1, scope: !166)
!1023 = !DISubprogram(name: "setlocale", scope: !1024, file: !1024, line: 122, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!132, !74, !138}
!1027 = !DISubprogram(name: "strncmp", scope: !1028, file: !1028, line: 159, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!74, !138, !138, !135}
!1031 = !DISubprogram(name: "exit", scope: !1032, file: !1032, line: 624, type: !838, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1033 = !DISubprogram(name: "getenv", scope: !1032, file: !1032, line: 641, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!132, !138}
!1036 = !DISubprogram(name: "strcmp", scope: !1028, file: !1028, line: 156, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!74, !138, !138}
!1039 = !DISubprogram(name: "strspn", scope: !1028, file: !1028, line: 297, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!137, !138, !138}
!1042 = !DISubprogram(name: "strchr", scope: !1028, file: !1028, line: 246, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!132, !138, !74}
!1045 = !DISubprogram(name: "__ctype_b_loc", scope: !79, file: !79, line: 79, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1051 = !DISubprogram(name: "strcspn", scope: !1028, file: !1028, line: 293, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubprogram(name: "fwrite_unlocked", scope: !443, file: !443, line: 704, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!135, !1055, !135, !135, !901}
!1055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1058 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 110, type: !1059, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1062)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!74, !74, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068}
!1063 = !DILocalVariable(name: "argc", arg: 1, scope: !1058, file: !2, line: 110, type: !74)
!1064 = !DILocalVariable(name: "argv", arg: 2, scope: !1058, file: !2, line: 110, type: !1061)
!1065 = !DILocalVariable(name: "ok", scope: !1058, file: !2, line: 112, type: !176)
!1066 = !DILocalVariable(name: "check_basic_portability", scope: !1058, file: !2, line: 113, type: !176)
!1067 = !DILocalVariable(name: "check_extra_portability", scope: !1058, file: !2, line: 114, type: !176)
!1068 = !DILocalVariable(name: "optc", scope: !1058, file: !2, line: 115, type: !74)
!1069 = distinct !DIAssignID()
!1070 = distinct !DIAssignID()
!1071 = !DILocation(line: 0, scope: !1058)
!1072 = !DILocation(line: 118, column: 21, scope: !1058)
!1073 = !DILocation(line: 118, column: 3, scope: !1058)
!1074 = !DILocation(line: 119, column: 3, scope: !1058)
!1075 = !DILocation(line: 120, column: 3, scope: !1058)
!1076 = !DILocation(line: 121, column: 3, scope: !1058)
!1077 = !DILocation(line: 123, column: 3, scope: !1058)
!1078 = !DILocation(line: 125, column: 3, scope: !1058)
!1079 = !DILocation(line: 125, column: 18, scope: !1058)
!1080 = distinct !{!1080, !1078, !1081, !958}
!1081 = !DILocation(line: 149, column: 5, scope: !1058)
!1082 = !DILocation(line: 136, column: 11, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 128, column: 9)
!1084 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 126, column: 5)
!1085 = !DILocation(line: 140, column: 11, scope: !1083)
!1086 = distinct !{!1086, !1078, !1081, !958, !1087}
!1087 = !{!"llvm.loop.peeled.count", i32 1}
!1088 = !DILocation(line: 142, column: 9, scope: !1083)
!1089 = !DILocation(line: 144, column: 9, scope: !1083)
!1090 = !DILocation(line: 147, column: 11, scope: !1083)
!1091 = !DILocation(line: 151, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 151, column: 7)
!1093 = !DILocation(line: 151, column: 14, scope: !1092)
!1094 = !DILocation(line: 151, column: 7, scope: !1058)
!1095 = !DILocation(line: 157, column: 17, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 157, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 157, column: 3)
!1098 = !DILocation(line: 157, column: 3, scope: !1097)
!1099 = !DILocation(line: 153, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 152, column: 5)
!1101 = !DILocation(line: 154, column: 7, scope: !1100)
!1102 = !DILocation(line: 158, column: 31, scope: !1096)
!1103 = !DILocalVariable(name: "st", scope: !1104, file: !2, line: 290, type: !1149)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 284, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 278, column: 7)
!1106 = distinct !DISubprogram(name: "validate_file_name", scope: !2, file: !2, line: 253, type: !1107, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!176, !132, !176, !176}
!1109 = !{!1110, !1111, !1112, !1113, !1116, !1117, !1103, !1118, !1121, !1124, !1125, !1129, !1132, !1135, !1136, !1138, !1141, !1144, !1145, !1146}
!1110 = !DILocalVariable(name: "file", arg: 1, scope: !1106, file: !2, line: 253, type: !132)
!1111 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !1106, file: !2, line: 253, type: !176)
!1112 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !1106, file: !2, line: 254, type: !176)
!1113 = !DILocalVariable(name: "filelen", scope: !1106, file: !2, line: 256, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1115, line: 130, baseType: !797)
!1115 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1116 = !DILocalVariable(name: "check_component_lengths", scope: !1106, file: !2, line: 259, type: !176)
!1117 = !DILocalVariable(name: "file_exists", scope: !1106, file: !2, line: 262, type: !176)
!1118 = !DILocalVariable(name: "maxsize", scope: !1119, file: !2, line: 303, type: !1114)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 302, column: 5)
!1120 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 300, column: 7)
!1121 = !DILocalVariable(name: "size", scope: !1122, file: !2, line: 309, type: !217)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 308, column: 9)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 305, column: 11)
!1124 = !DILocalVariable(name: "dir", scope: !1122, file: !2, line: 310, type: !138)
!1125 = !DILocalVariable(name: "start", scope: !1126, file: !2, line: 339, type: !132)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 339, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 338, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 337, column: 7)
!1129 = !DILocalVariable(name: "length", scope: !1130, file: !2, line: 341, type: !135)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 340, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 339, column: 7)
!1132 = !DILocalVariable(name: "name_max", scope: !1133, file: !2, line: 359, type: !1114)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 354, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 353, column: 7)
!1135 = !DILocalVariable(name: "known_name_max", scope: !1133, file: !2, line: 362, type: !1114)
!1136 = !DILocalVariable(name: "start", scope: !1137, file: !2, line: 364, type: !132)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 364, column: 7)
!1138 = !DILocalVariable(name: "length", scope: !1139, file: !2, line: 366, type: !1114)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 365, column: 9)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 364, column: 7)
!1141 = !DILocalVariable(name: "len", scope: !1142, file: !2, line: 372, type: !217)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 371, column: 13)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 368, column: 15)
!1144 = !DILocalVariable(name: "dir", scope: !1142, file: !2, line: 373, type: !138)
!1145 = !DILocalVariable(name: "c", scope: !1142, file: !2, line: 374, type: !4)
!1146 = !DILocalVariable(name: "c", scope: !1147, file: !2, line: 406, type: !4)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 405, column: 13)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 404, column: 15)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1150, line: 44, size: 1024, elements: !1151)
!1150 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1151 = !{!1152, !1154, !1156, !1158, !1160, !1162, !1164, !1165, !1166, !1167, !1169, !1170, !1172, !1180, !1181, !1182}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1149, file: !1150, line: 46, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !216, line: 145, baseType: !137)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1149, file: !1150, line: 47, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !216, line: 148, baseType: !137)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1149, file: !1150, line: 48, baseType: !1157, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !216, line: 150, baseType: !69)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1149, file: !1150, line: 49, baseType: !1159, size: 32, offset: 160)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !216, line: 151, baseType: !69)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1149, file: !1150, line: 50, baseType: !1161, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !216, line: 146, baseType: !69)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1149, file: !1150, line: 51, baseType: !1163, size: 32, offset: 224)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !216, line: 147, baseType: !69)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1149, file: !1150, line: 52, baseType: !1153, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1149, file: !1150, line: 53, baseType: !1153, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1149, file: !1150, line: 54, baseType: !215, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1149, file: !1150, line: 55, baseType: !1168, size: 32, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !216, line: 175, baseType: !74)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1149, file: !1150, line: 56, baseType: !74, size: 32, offset: 480)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1149, file: !1150, line: 57, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !216, line: 180, baseType: !217)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1149, file: !1150, line: 65, baseType: !1173, size: 128, offset: 576)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1174, line: 11, size: 128, elements: !1175)
!1174 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1173, file: !1174, line: 16, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !216, line: 160, baseType: !217)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1173, file: !1174, line: 21, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !216, line: 197, baseType: !217)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1149, file: !1150, line: 66, baseType: !1173, size: 128, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1149, file: !1150, line: 67, baseType: !1173, size: 128, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1149, file: !1150, line: 79, baseType: !1183, size: 64, offset: 960)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !264)
!1184 = !DILocation(line: 0, scope: !1104, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 158, column: 11, scope: !1096)
!1186 = !DILocation(line: 0, scope: !1106, inlinedAt: !1185)
!1187 = !DILocation(line: 256, column: 19, scope: !1106, inlinedAt: !1185)
!1188 = !DILocation(line: 264, column: 31, scope: !1189, inlinedAt: !1185)
!1189 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 264, column: 7)
!1190 = !DILocalVariable(name: "file", arg: 1, scope: !1191, file: !2, line: 168, type: !138)
!1191 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !2, file: !2, line: 168, type: !1192, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!176, !138}
!1194 = !{!1190, !1195}
!1195 = !DILocalVariable(name: "p", scope: !1196, file: !2, line: 170, type: !138)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 170, column: 3)
!1197 = !DILocation(line: 0, scope: !1191, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 264, column: 36, scope: !1189, inlinedAt: !1185)
!1199 = !DILocation(line: 0, scope: !1196, inlinedAt: !1198)
!1200 = !DILocation(line: 170, column: 36, scope: !1201, inlinedAt: !1198)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 170, column: 3)
!1202 = !DILocation(line: 170, column: 3, scope: !1196, inlinedAt: !1198)
!1203 = !DILocation(line: 170, column: 56, scope: !1201, inlinedAt: !1198)
!1204 = distinct !{!1204, !1202, !1205, !958}
!1205 = !DILocation(line: 176, column: 7, scope: !1196, inlinedAt: !1198)
!1206 = !DILocation(line: 171, column: 11, scope: !1207, inlinedAt: !1198)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 171, column: 9)
!1208 = !DILocation(line: 171, column: 19, scope: !1207, inlinedAt: !1198)
!1209 = !DILocation(line: 171, column: 22, scope: !1207, inlinedAt: !1198)
!1210 = !DILocation(line: 171, column: 28, scope: !1207, inlinedAt: !1198)
!1211 = !DILocation(line: 171, column: 9, scope: !1201, inlinedAt: !1198)
!1212 = !DILocation(line: 173, column: 9, scope: !1213, inlinedAt: !1198)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 172, column: 7)
!1214 = !DILocation(line: 264, column: 7, scope: !1106, inlinedAt: !1185)
!1215 = !DILocation(line: 267, column: 32, scope: !1216, inlinedAt: !1185)
!1216 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 267, column: 7)
!1217 = !DILocation(line: 268, column: 7, scope: !1216, inlinedAt: !1185)
!1218 = !DILocation(line: 267, column: 7, scope: !1106, inlinedAt: !1185)
!1219 = !DILocation(line: 274, column: 7, scope: !1220, inlinedAt: !1185)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 269, column: 5)
!1221 = !DILocation(line: 275, column: 7, scope: !1220, inlinedAt: !1185)
!1222 = !DILocalVariable(name: "mbstate", scope: !1223, file: !2, line: 196, type: !1234)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 195, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 194, column: 7)
!1225 = distinct !DISubprogram(name: "portable_chars_only", scope: !2, file: !2, line: 185, type: !1226, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!176, !138, !135}
!1228 = !{!1229, !1230, !1231, !1232, !1222, !1233}
!1229 = !DILocalVariable(name: "file", arg: 1, scope: !1225, file: !2, line: 185, type: !138)
!1230 = !DILocalVariable(name: "filelen", arg: 2, scope: !1225, file: !2, line: 185, type: !135)
!1231 = !DILocalVariable(name: "validlen", scope: !1225, file: !2, line: 187, type: !135)
!1232 = !DILocalVariable(name: "invalid", scope: !1225, file: !2, line: 192, type: !138)
!1233 = !DILocalVariable(name: "charlen", scope: !1223, file: !2, line: 197, type: !135)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1236, file: !494, line: 15, baseType: !74, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1236, file: !494, line: 20, baseType: !1240, size: 32, offset: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !494, line: 16, size: 32, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1240, file: !494, line: 18, baseType: !69, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1240, file: !494, line: 19, baseType: !61, size: 32)
!1244 = !DILocation(line: 0, scope: !1223, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 280, column: 13, scope: !1246, inlinedAt: !1185)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 280, column: 11)
!1247 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 279, column: 5)
!1248 = !DILocation(line: 0, scope: !1225, inlinedAt: !1245)
!1249 = !DILocation(line: 187, column: 21, scope: !1225, inlinedAt: !1245)
!1250 = !DILocation(line: 192, column: 30, scope: !1225, inlinedAt: !1245)
!1251 = !DILocation(line: 194, column: 7, scope: !1224, inlinedAt: !1245)
!1252 = !DILocation(line: 194, column: 7, scope: !1225, inlinedAt: !1245)
!1253 = !DILocation(line: 196, column: 7, scope: !1223, inlinedAt: !1245)
!1254 = !DILocalVariable(name: "ps", arg: 1, scope: !1255, file: !1256, line: 1135, type: !1259)
!1255 = distinct !DISubprogram(name: "mbszero", scope: !1256, file: !1256, line: 1135, type: !1257, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1260)
!1256 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1260 = !{!1254}
!1261 = !DILocation(line: 0, scope: !1255, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 196, column: 26, scope: !1223, inlinedAt: !1245)
!1263 = !DILocalVariable(name: "__dest", arg: 1, scope: !1264, file: !1265, line: 57, type: !133)
!1264 = distinct !DISubprogram(name: "memset", scope: !1265, file: !1265, line: 57, type: !1266, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1268)
!1265 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!133, !133, !74, !135}
!1268 = !{!1263, !1269, !1270}
!1269 = !DILocalVariable(name: "__ch", arg: 2, scope: !1264, file: !1265, line: 57, type: !74)
!1270 = !DILocalVariable(name: "__len", arg: 3, scope: !1264, file: !1265, line: 57, type: !135)
!1271 = !DILocation(line: 0, scope: !1264, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 1137, column: 3, scope: !1255, inlinedAt: !1262)
!1273 = !DILocation(line: 59, column: 10, scope: !1264, inlinedAt: !1272)
!1274 = !DILocation(line: 197, column: 49, scope: !1223, inlinedAt: !1245)
!1275 = !DILocation(line: 197, column: 24, scope: !1223, inlinedAt: !1245)
!1276 = !DILocation(line: 198, column: 7, scope: !1223, inlinedAt: !1245)
!1277 = !DILocation(line: 204, column: 5, scope: !1224, inlinedAt: !1245)
!1278 = !DILocation(line: 280, column: 11, scope: !1247, inlinedAt: !1185)
!1279 = !DILocation(line: 290, column: 7, scope: !1104, inlinedAt: !1185)
!1280 = !DILocation(line: 291, column: 11, scope: !1281, inlinedAt: !1185)
!1281 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 291, column: 11)
!1282 = !DILocation(line: 291, column: 29, scope: !1281, inlinedAt: !1185)
!1283 = !DILocation(line: 291, column: 11, scope: !1104, inlinedAt: !1185)
!1284 = !DILocation(line: 298, column: 5, scope: !1105, inlinedAt: !1185)
!1285 = !DILocation(line: 353, column: 7, scope: !1106, inlinedAt: !1185)
!1286 = !DILocation(line: 293, column: 16, scope: !1287, inlinedAt: !1185)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 293, column: 16)
!1288 = !DILocation(line: 293, column: 22, scope: !1287, inlinedAt: !1185)
!1289 = !DILocation(line: 293, column: 32, scope: !1287, inlinedAt: !1185)
!1290 = !DILocation(line: 295, column: 11, scope: !1291, inlinedAt: !1185)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 294, column: 9)
!1292 = !DILocation(line: 301, column: 7, scope: !1120, inlinedAt: !1185)
!1293 = !DILocation(line: 310, column: 30, scope: !1122, inlinedAt: !1185)
!1294 = !DILocation(line: 310, column: 36, scope: !1122, inlinedAt: !1185)
!1295 = !DILocation(line: 0, scope: !1122, inlinedAt: !1185)
!1296 = !DILocation(line: 311, column: 17, scope: !1122, inlinedAt: !1185)
!1297 = !DILocation(line: 312, column: 18, scope: !1122, inlinedAt: !1185)
!1298 = !DILocation(line: 313, column: 20, scope: !1299, inlinedAt: !1185)
!1299 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 313, column: 15)
!1300 = !DILocation(line: 313, column: 24, scope: !1299, inlinedAt: !1185)
!1301 = !DILocation(line: 313, column: 27, scope: !1299, inlinedAt: !1185)
!1302 = !DILocation(line: 313, column: 33, scope: !1299, inlinedAt: !1185)
!1303 = !DILocation(line: 313, column: 15, scope: !1122, inlinedAt: !1185)
!1304 = !DILocation(line: 315, column: 15, scope: !1305, inlinedAt: !1185)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 314, column: 13)
!1306 = !DILocation(line: 0, scope: !1119, inlinedAt: !1185)
!1307 = !DILocation(line: 323, column: 19, scope: !1308, inlinedAt: !1185)
!1308 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 323, column: 11)
!1309 = !DILocation(line: 323, column: 11, scope: !1119, inlinedAt: !1185)
!1310 = !DILocation(line: 325, column: 11, scope: !1311, inlinedAt: !1185)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 324, column: 9)
!1312 = !DILocation(line: 327, column: 11, scope: !1311, inlinedAt: !1185)
!1313 = !DILocation(line: 337, column: 33, scope: !1128, inlinedAt: !1185)
!1314 = !DILocation(line: 215, column: 3, scope: !1315, inlinedAt: !1320)
!1315 = distinct !DISubprogram(name: "component_start", scope: !2, file: !2, line: 213, type: !1316, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!132, !132}
!1318 = !{!1319}
!1319 = !DILocalVariable(name: "f", arg: 1, scope: !1315, file: !2, line: 213, type: !132)
!1320 = distinct !DILocation(line: 339, column: 42, scope: !1131, inlinedAt: !1185)
!1321 = !DILocation(line: 0, scope: !1315, inlinedAt: !1320)
!1322 = !DILocation(line: 215, column: 10, scope: !1315, inlinedAt: !1320)
!1323 = !DILocation(line: 216, column: 6, scope: !1315, inlinedAt: !1320)
!1324 = !DILocation(line: 227, column: 3, scope: !1325, inlinedAt: !1332)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 227, column: 3)
!1326 = distinct !DISubprogram(name: "component_len", scope: !2, file: !2, line: 224, type: !1327, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!135, !138}
!1329 = !{!1330, !1331}
!1330 = !DILocalVariable(name: "f", arg: 1, scope: !1326, file: !2, line: 224, type: !138)
!1331 = !DILocalVariable(name: "len", scope: !1326, file: !2, line: 226, type: !135)
!1332 = distinct !DILocation(line: 341, column: 27, scope: !1130, inlinedAt: !1185)
!1333 = distinct !{!1333, !1334, !1335, !958}
!1334 = !DILocation(line: 339, column: 7, scope: !1126, inlinedAt: !1185)
!1335 = !DILocation(line: 350, column: 9, scope: !1126, inlinedAt: !1185)
!1336 = !DILocation(line: 227, scope: !1325, inlinedAt: !1332)
!1337 = !DILocation(line: 0, scope: !1326, inlinedAt: !1332)
!1338 = !DILocation(line: 227, column: 17, scope: !1339, inlinedAt: !1332)
!1339 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 227, column: 3)
!1340 = !DILocation(line: 227, column: 31, scope: !1339, inlinedAt: !1332)
!1341 = !DILocation(line: 227, column: 45, scope: !1339, inlinedAt: !1332)
!1342 = !DILocation(line: 227, column: 3, scope: !1339, inlinedAt: !1332)
!1343 = distinct !{!1343, !1324, !1344, !958}
!1344 = !DILocation(line: 228, column: 5, scope: !1325, inlinedAt: !1332)
!1345 = !DILocation(line: 0, scope: !1130, inlinedAt: !1185)
!1346 = !DILocation(line: 343, column: 32, scope: !1347, inlinedAt: !1185)
!1347 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 343, column: 15)
!1348 = !DILocation(line: 0, scope: !1126, inlinedAt: !1185)
!1349 = !DILocation(line: 364, column: 7, scope: !1137, inlinedAt: !1185)
!1350 = !DILocation(line: 0, scope: !1133, inlinedAt: !1185)
!1351 = !DILocation(line: 362, column: 13, scope: !1133, inlinedAt: !1185)
!1352 = !DILocation(line: 364, scope: !1137, inlinedAt: !1185)
!1353 = !DILocation(line: 0, scope: !1137, inlinedAt: !1185)
!1354 = !DILocation(line: 0, scope: !1315, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 364, column: 42, scope: !1140, inlinedAt: !1185)
!1356 = !DILocation(line: 215, column: 3, scope: !1315, inlinedAt: !1355)
!1357 = !DILocation(line: 215, column: 10, scope: !1315, inlinedAt: !1355)
!1358 = !DILocation(line: 216, column: 6, scope: !1315, inlinedAt: !1355)
!1359 = !DILocation(line: 368, column: 15, scope: !1143, inlinedAt: !1185)
!1360 = !DILocation(line: 368, column: 15, scope: !1139, inlinedAt: !1185)
!1361 = !DILocation(line: 373, column: 40, scope: !1142, inlinedAt: !1185)
!1362 = !DILocation(line: 373, column: 34, scope: !1142, inlinedAt: !1185)
!1363 = !DILocation(line: 0, scope: !1142, inlinedAt: !1185)
!1364 = !DILocation(line: 375, column: 15, scope: !1142, inlinedAt: !1185)
!1365 = !DILocation(line: 375, column: 21, scope: !1142, inlinedAt: !1185)
!1366 = !DILocation(line: 376, column: 22, scope: !1142, inlinedAt: !1185)
!1367 = !DILocation(line: 377, column: 21, scope: !1142, inlinedAt: !1185)
!1368 = !DILocation(line: 378, column: 22, scope: !1142, inlinedAt: !1185)
!1369 = !DILocation(line: 379, column: 21, scope: !1370, inlinedAt: !1185)
!1370 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 379, column: 19)
!1371 = !DILocation(line: 379, column: 19, scope: !1142, inlinedAt: !1185)
!1372 = !DILocation(line: 382, column: 25, scope: !1370, inlinedAt: !1185)
!1373 = !DILocation(line: 382, column: 17, scope: !1370, inlinedAt: !1185)
!1374 = !DILocation(line: 392, column: 21, scope: !1375, inlinedAt: !1185)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 383, column: 19)
!1376 = !DILocation(line: 395, column: 28, scope: !1375, inlinedAt: !1185)
!1377 = !DILocation(line: 396, column: 21, scope: !1375, inlinedAt: !1185)
!1378 = !DILocation(line: 397, column: 28, scope: !1375, inlinedAt: !1185)
!1379 = !DILocation(line: 0, scope: !1143, inlinedAt: !1185)
!1380 = !DILocation(line: 0, scope: !1326, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 402, column: 20, scope: !1139, inlinedAt: !1185)
!1382 = !DILocation(line: 227, column: 8, scope: !1325, inlinedAt: !1381)
!1383 = !DILocation(line: 227, scope: !1325, inlinedAt: !1381)
!1384 = !DILocation(line: 227, column: 17, scope: !1339, inlinedAt: !1381)
!1385 = !DILocation(line: 227, column: 31, scope: !1339, inlinedAt: !1381)
!1386 = !DILocation(line: 227, column: 45, scope: !1339, inlinedAt: !1381)
!1387 = !DILocation(line: 227, column: 3, scope: !1339, inlinedAt: !1381)
!1388 = distinct !{!1388, !1389, !1390, !958}
!1389 = !DILocation(line: 227, column: 3, scope: !1325, inlinedAt: !1381)
!1390 = !DILocation(line: 228, column: 5, scope: !1325, inlinedAt: !1381)
!1391 = !DILocation(line: 0, scope: !1139, inlinedAt: !1185)
!1392 = !DILocation(line: 404, column: 24, scope: !1148, inlinedAt: !1185)
!1393 = !DILocation(line: 404, column: 15, scope: !1139, inlinedAt: !1185)
!1394 = distinct !{!1394, !1349, !1395, !958}
!1395 = !DILocation(line: 417, column: 9, scope: !1137, inlinedAt: !1185)
!1396 = !DILocation(line: 0, scope: !1147, inlinedAt: !1185)
!1397 = !DILocation(line: 407, column: 29, scope: !1147, inlinedAt: !1185)
!1398 = !DILocation(line: 408, column: 15, scope: !1147, inlinedAt: !1185)
!1399 = !DILocation(line: 412, column: 29, scope: !1147, inlinedAt: !1185)
!1400 = !DILocation(line: 158, column: 8, scope: !1096)
!1401 = !DILocation(line: 157, column: 25, scope: !1096)
!1402 = distinct !{!1402, !1098, !1403, !958}
!1403 = !DILocation(line: 159, column: 79, scope: !1097)
!1404 = !DILocation(line: 161, column: 10, scope: !1058)
!1405 = !DILocation(line: 161, column: 3, scope: !1058)
!1406 = !DISubprogram(name: "bindtextdomain", scope: !894, file: !894, line: 86, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!132, !138, !138}
!1409 = !DISubprogram(name: "textdomain", scope: !894, file: !894, line: 82, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubprogram(name: "atexit", scope: !1032, file: !1032, line: 602, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!74, !482}
!1413 = !DISubprogram(name: "getopt_long", scope: !400, file: !400, line: 66, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!74, !74, !1416, !138, !1418, !405}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1419 = !DISubprogram(name: "strlen", scope: !1028, file: !1028, line: 407, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!137, !138}
!1422 = !DISubprogram(name: "lstat", scope: !1423, file: !1423, line: 313, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!74, !902, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1428 = !DISubprogram(name: "__errno_location", scope: !1429, file: !1429, line: 37, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!405}
!1432 = !DISubprogram(name: "pathconf", scope: !1433, file: !1433, line: 633, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1433 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!217, !138, !74}
!1436 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !417, file: !417, line: 50, type: !862, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "file", arg: 1, scope: !1436, file: !417, line: 50, type: !138)
!1439 = !DILocation(line: 0, scope: !1436)
!1440 = !DILocation(line: 52, column: 13, scope: !1436)
!1441 = !DILocation(line: 53, column: 1, scope: !1436)
!1442 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !417, file: !417, line: 87, type: !1443, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !176}
!1445 = !{!1446}
!1446 = !DILocalVariable(name: "ignore", arg: 1, scope: !1442, file: !417, line: 87, type: !176)
!1447 = !DILocation(line: 0, scope: !1442)
!1448 = !DILocation(line: 89, column: 16, scope: !1442)
!1449 = !{!1450, !1450, i64 0}
!1450 = !{!"_Bool", !850, i64 0}
!1451 = !DILocation(line: 90, column: 1, scope: !1442)
!1452 = distinct !DISubprogram(name: "close_stdout", scope: !417, file: !417, line: 116, type: !483, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1453)
!1453 = !{!1454}
!1454 = !DILocalVariable(name: "write_error", scope: !1455, file: !417, line: 121, type: !138)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !417, line: 120, column: 5)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !417, line: 118, column: 7)
!1457 = !DILocation(line: 118, column: 21, scope: !1456)
!1458 = !DILocation(line: 118, column: 7, scope: !1456)
!1459 = !DILocation(line: 118, column: 29, scope: !1456)
!1460 = !DILocation(line: 119, column: 7, scope: !1456)
!1461 = !DILocation(line: 119, column: 12, scope: !1456)
!1462 = !{i8 0, i8 2}
!1463 = !DILocation(line: 119, column: 25, scope: !1456)
!1464 = !DILocation(line: 119, column: 28, scope: !1456)
!1465 = !DILocation(line: 119, column: 34, scope: !1456)
!1466 = !DILocation(line: 118, column: 7, scope: !1452)
!1467 = !DILocation(line: 121, column: 33, scope: !1455)
!1468 = !DILocation(line: 0, scope: !1455)
!1469 = !DILocation(line: 122, column: 11, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1455, file: !417, line: 122, column: 11)
!1471 = !DILocation(line: 0, scope: !1470)
!1472 = !DILocation(line: 122, column: 11, scope: !1455)
!1473 = !DILocation(line: 123, column: 9, scope: !1470)
!1474 = !DILocation(line: 126, column: 9, scope: !1470)
!1475 = !DILocation(line: 128, column: 14, scope: !1455)
!1476 = !DILocation(line: 128, column: 7, scope: !1455)
!1477 = !DILocation(line: 133, column: 42, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1452, file: !417, line: 133, column: 7)
!1479 = !DILocation(line: 133, column: 28, scope: !1478)
!1480 = !DILocation(line: 133, column: 50, scope: !1478)
!1481 = !DILocation(line: 133, column: 7, scope: !1452)
!1482 = !DILocation(line: 134, column: 12, scope: !1478)
!1483 = !DILocation(line: 134, column: 5, scope: !1478)
!1484 = !DILocation(line: 135, column: 1, scope: !1452)
!1485 = !DISubprogram(name: "_exit", scope: !1433, file: !1433, line: 624, type: !838, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1486 = distinct !DISubprogram(name: "verror", scope: !432, file: !432, line: 251, type: !1487, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !74, !74, !138, !442}
!1489 = !{!1490, !1491, !1492, !1493}
!1490 = !DILocalVariable(name: "status", arg: 1, scope: !1486, file: !432, line: 251, type: !74)
!1491 = !DILocalVariable(name: "errnum", arg: 2, scope: !1486, file: !432, line: 251, type: !74)
!1492 = !DILocalVariable(name: "message", arg: 3, scope: !1486, file: !432, line: 251, type: !138)
!1493 = !DILocalVariable(name: "args", arg: 4, scope: !1486, file: !432, line: 251, type: !442)
!1494 = !DILocation(line: 0, scope: !1486)
!1495 = !DILocation(line: 261, column: 3, scope: !1486)
!1496 = !DILocation(line: 265, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !432, line: 265, column: 7)
!1498 = !DILocation(line: 265, column: 7, scope: !1486)
!1499 = !DILocation(line: 266, column: 5, scope: !1497)
!1500 = !DILocation(line: 272, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !432, line: 268, column: 5)
!1502 = !DILocation(line: 276, column: 3, scope: !1486)
!1503 = !{i64 0, i64 8, !848, i64 8, i64 8, !848, i64 16, i64 8, !848, i64 24, i64 4, !911, i64 28, i64 4, !911}
!1504 = !DILocation(line: 282, column: 1, scope: !1486)
!1505 = distinct !DISubprogram(name: "flush_stdout", scope: !432, file: !432, line: 163, type: !483, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1506)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "stdout_fd", scope: !1505, file: !432, line: 166, type: !74)
!1508 = !DILocation(line: 0, scope: !1505)
!1509 = !DILocalVariable(name: "fd", arg: 1, scope: !1510, file: !432, line: 145, type: !74)
!1510 = distinct !DISubprogram(name: "is_open", scope: !432, file: !432, line: 145, type: !1511, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!74, !74}
!1513 = !{!1509}
!1514 = !DILocation(line: 0, scope: !1510, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 182, column: 25, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !432, line: 182, column: 7)
!1517 = !DILocation(line: 157, column: 15, scope: !1510, inlinedAt: !1515)
!1518 = !DILocation(line: 157, column: 12, scope: !1510, inlinedAt: !1515)
!1519 = !DILocation(line: 182, column: 7, scope: !1505)
!1520 = !DILocation(line: 184, column: 5, scope: !1516)
!1521 = !DILocation(line: 185, column: 1, scope: !1505)
!1522 = distinct !DISubprogram(name: "error_tail", scope: !432, file: !432, line: 219, type: !1487, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DILocalVariable(name: "status", arg: 1, scope: !1522, file: !432, line: 219, type: !74)
!1525 = !DILocalVariable(name: "errnum", arg: 2, scope: !1522, file: !432, line: 219, type: !74)
!1526 = !DILocalVariable(name: "message", arg: 3, scope: !1522, file: !432, line: 219, type: !138)
!1527 = !DILocalVariable(name: "args", arg: 4, scope: !1522, file: !432, line: 219, type: !442)
!1528 = distinct !DIAssignID()
!1529 = !DILocation(line: 0, scope: !1522)
!1530 = !DILocation(line: 229, column: 13, scope: !1522)
!1531 = !DILocation(line: 135, column: 10, scope: !1532, inlinedAt: !1574)
!1532 = distinct !DISubprogram(name: "vfprintf", scope: !898, file: !898, line: 132, type: !1533, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1570)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!74, !1535, !902, !444}
!1535 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1538, file: !193, line: 51, baseType: !74, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1538, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1538, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1538, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1538, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1538, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1538, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1538, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1538, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1538, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1538, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1538, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1538, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1538, file: !193, line: 70, baseType: !1554, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1538, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1538, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1538, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1538, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1538, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1538, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1538, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1538, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1538, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1538, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1538, file: !193, line: 93, baseType: !1554, size: 64, offset: 1344)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1538, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1538, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1538, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1538, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "__stream", arg: 1, scope: !1532, file: !898, line: 132, type: !1535)
!1572 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1532, file: !898, line: 133, type: !902)
!1573 = !DILocalVariable(name: "__ap", arg: 3, scope: !1532, file: !898, line: 133, type: !444)
!1574 = distinct !DILocation(line: 229, column: 3, scope: !1522)
!1575 = !{!1576, !1578}
!1576 = distinct !{!1576, !1577, !"vfprintf.inline: argument 0"}
!1577 = distinct !{!1577, !"vfprintf.inline"}
!1578 = distinct !{!1578, !1577, !"vfprintf.inline: argument 1"}
!1579 = !DILocation(line: 229, column: 3, scope: !1522)
!1580 = !DILocation(line: 0, scope: !1532, inlinedAt: !1574)
!1581 = !DILocation(line: 232, column: 3, scope: !1522)
!1582 = !DILocation(line: 233, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1522, file: !432, line: 233, column: 7)
!1584 = !DILocation(line: 233, column: 7, scope: !1522)
!1585 = !DILocalVariable(name: "errbuf", scope: !1586, file: !432, line: 193, type: !1590)
!1586 = distinct !DISubprogram(name: "print_errno_message", scope: !432, file: !432, line: 188, type: !838, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1585}
!1588 = !DILocalVariable(name: "errnum", arg: 1, scope: !1586, file: !432, line: 188, type: !74)
!1589 = !DILocalVariable(name: "s", scope: !1586, file: !432, line: 190, type: !138)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 1024)
!1593 = !DILocation(line: 0, scope: !1586, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 234, column: 5, scope: !1583)
!1595 = !DILocation(line: 193, column: 3, scope: !1586, inlinedAt: !1594)
!1596 = !DILocation(line: 195, column: 7, scope: !1586, inlinedAt: !1594)
!1597 = !DILocation(line: 207, column: 9, scope: !1598, inlinedAt: !1594)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !432, line: 207, column: 7)
!1599 = !DILocation(line: 207, column: 7, scope: !1586, inlinedAt: !1594)
!1600 = !DILocation(line: 208, column: 9, scope: !1598, inlinedAt: !1594)
!1601 = !DILocation(line: 208, column: 5, scope: !1598, inlinedAt: !1594)
!1602 = !DILocation(line: 214, column: 3, scope: !1586, inlinedAt: !1594)
!1603 = !DILocation(line: 216, column: 1, scope: !1586, inlinedAt: !1594)
!1604 = !DILocation(line: 234, column: 5, scope: !1583)
!1605 = !DILocation(line: 238, column: 3, scope: !1522)
!1606 = !DILocalVariable(name: "__c", arg: 1, scope: !1607, file: !1608, line: 101, type: !74)
!1607 = distinct !DISubprogram(name: "putc_unlocked", scope: !1608, file: !1608, line: 101, type: !1609, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1611)
!1608 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!74, !74, !1536}
!1611 = !{!1606, !1612}
!1612 = !DILocalVariable(name: "__stream", arg: 2, scope: !1607, file: !1608, line: 101, type: !1536)
!1613 = !DILocation(line: 0, scope: !1607, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 238, column: 3, scope: !1522)
!1615 = !DILocation(line: 103, column: 10, scope: !1607, inlinedAt: !1614)
!1616 = !{!1617, !849, i64 40}
!1617 = !{!"_IO_FILE", !912, i64 0, !849, i64 8, !849, i64 16, !849, i64 24, !849, i64 32, !849, i64 40, !849, i64 48, !849, i64 56, !849, i64 64, !849, i64 72, !849, i64 80, !849, i64 88, !849, i64 96, !849, i64 104, !912, i64 112, !912, i64 116, !1618, i64 120, !953, i64 128, !850, i64 130, !850, i64 131, !849, i64 136, !1618, i64 144, !849, i64 152, !849, i64 160, !849, i64 168, !849, i64 176, !1618, i64 184, !912, i64 192, !850, i64 196}
!1618 = !{!"long", !850, i64 0}
!1619 = !{!1617, !849, i64 48}
!1620 = !{!"branch_weights", i32 2000, i32 1}
!1621 = !DILocation(line: 240, column: 3, scope: !1522)
!1622 = !DILocation(line: 241, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1522, file: !432, line: 241, column: 7)
!1624 = !DILocation(line: 241, column: 7, scope: !1522)
!1625 = !DILocation(line: 242, column: 5, scope: !1623)
!1626 = !DILocation(line: 243, column: 1, scope: !1522)
!1627 = !DISubprogram(name: "__vfprintf_chk", scope: !898, file: !898, line: 96, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!74, !1535, !74, !902, !444}
!1630 = !DISubprogram(name: "strerror_r", scope: !1028, file: !1028, line: 444, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!132, !74, !132, !135}
!1633 = !DISubprogram(name: "__overflow", scope: !443, file: !443, line: 886, type: !1634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!74, !1536, !74}
!1636 = !DISubprogram(name: "fflush_unlocked", scope: !443, file: !443, line: 239, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!74, !1536}
!1639 = !DISubprogram(name: "fcntl", scope: !1640, file: !1640, line: 149, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!74, !74, !74, null}
!1643 = distinct !DISubprogram(name: "error", scope: !432, file: !432, line: 285, type: !1644, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !74, !74, !138, null}
!1646 = !{!1647, !1648, !1649, !1650}
!1647 = !DILocalVariable(name: "status", arg: 1, scope: !1643, file: !432, line: 285, type: !74)
!1648 = !DILocalVariable(name: "errnum", arg: 2, scope: !1643, file: !432, line: 285, type: !74)
!1649 = !DILocalVariable(name: "message", arg: 3, scope: !1643, file: !432, line: 285, type: !138)
!1650 = !DILocalVariable(name: "ap", scope: !1643, file: !432, line: 287, type: !442)
!1651 = distinct !DIAssignID()
!1652 = !DILocation(line: 0, scope: !1643)
!1653 = !DILocation(line: 287, column: 3, scope: !1643)
!1654 = !DILocation(line: 288, column: 3, scope: !1643)
!1655 = !DILocation(line: 289, column: 3, scope: !1643)
!1656 = !DILocation(line: 290, column: 3, scope: !1643)
!1657 = !DILocation(line: 291, column: 1, scope: !1643)
!1658 = !DILocation(line: 0, scope: !439)
!1659 = !DILocation(line: 302, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !439, file: !432, line: 302, column: 7)
!1661 = !DILocation(line: 302, column: 7, scope: !439)
!1662 = !DILocation(line: 307, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !432, line: 307, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !432, line: 303, column: 5)
!1665 = !DILocation(line: 307, column: 27, scope: !1663)
!1666 = !DILocation(line: 308, column: 11, scope: !1663)
!1667 = !DILocation(line: 308, column: 28, scope: !1663)
!1668 = !DILocation(line: 308, column: 25, scope: !1663)
!1669 = !DILocation(line: 309, column: 15, scope: !1663)
!1670 = !DILocation(line: 309, column: 33, scope: !1663)
!1671 = !DILocation(line: 310, column: 19, scope: !1663)
!1672 = !DILocation(line: 311, column: 22, scope: !1663)
!1673 = !DILocation(line: 311, column: 56, scope: !1663)
!1674 = !DILocation(line: 307, column: 11, scope: !1664)
!1675 = !DILocation(line: 316, column: 21, scope: !1664)
!1676 = !DILocation(line: 317, column: 23, scope: !1664)
!1677 = !DILocation(line: 318, column: 5, scope: !1664)
!1678 = !DILocation(line: 327, column: 3, scope: !439)
!1679 = !DILocation(line: 331, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !439, file: !432, line: 331, column: 7)
!1681 = !DILocation(line: 331, column: 7, scope: !439)
!1682 = !DILocation(line: 332, column: 5, scope: !1680)
!1683 = !DILocation(line: 338, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !432, line: 334, column: 5)
!1685 = !DILocation(line: 346, column: 3, scope: !439)
!1686 = !DILocation(line: 350, column: 3, scope: !439)
!1687 = !DILocation(line: 356, column: 1, scope: !439)
!1688 = distinct !DISubprogram(name: "error_at_line", scope: !432, file: !432, line: 359, type: !1689, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !74, !74, !138, !69, !138, null}
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697}
!1692 = !DILocalVariable(name: "status", arg: 1, scope: !1688, file: !432, line: 359, type: !74)
!1693 = !DILocalVariable(name: "errnum", arg: 2, scope: !1688, file: !432, line: 359, type: !74)
!1694 = !DILocalVariable(name: "file_name", arg: 3, scope: !1688, file: !432, line: 359, type: !138)
!1695 = !DILocalVariable(name: "line_number", arg: 4, scope: !1688, file: !432, line: 360, type: !69)
!1696 = !DILocalVariable(name: "message", arg: 5, scope: !1688, file: !432, line: 360, type: !138)
!1697 = !DILocalVariable(name: "ap", scope: !1688, file: !432, line: 362, type: !442)
!1698 = distinct !DIAssignID()
!1699 = !DILocation(line: 0, scope: !1688)
!1700 = !DILocation(line: 362, column: 3, scope: !1688)
!1701 = !DILocation(line: 363, column: 3, scope: !1688)
!1702 = !DILocation(line: 364, column: 3, scope: !1688)
!1703 = !DILocation(line: 366, column: 3, scope: !1688)
!1704 = !DILocation(line: 367, column: 1, scope: !1688)
!1705 = distinct !DISubprogram(name: "getprogname", scope: !765, file: !765, line: 54, type: !1706, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!138}
!1708 = !DILocation(line: 58, column: 10, scope: !1705)
!1709 = !DILocation(line: 58, column: 3, scope: !1705)
!1710 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !488, file: !488, line: 27, type: !1711, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1714)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!135, !138, !135, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1714 = !{!1715, !1716, !1717}
!1715 = !DILocalVariable(name: "s", arg: 1, scope: !1710, file: !488, line: 27, type: !138)
!1716 = !DILocalVariable(name: "n", arg: 2, scope: !1710, file: !488, line: 27, type: !135)
!1717 = !DILocalVariable(name: "ps", arg: 3, scope: !1710, file: !488, line: 27, type: !1713)
!1718 = !DILocation(line: 0, scope: !1710)
!1719 = !DILocation(line: 29, column: 10, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1710, file: !488, line: 29, column: 7)
!1721 = !DILocation(line: 29, column: 7, scope: !1710)
!1722 = !DILocation(line: 31, column: 10, scope: !1710)
!1723 = !DILocation(line: 31, column: 3, scope: !1710)
!1724 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !767, file: !767, line: 82, type: !1725, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1741)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!135, !1727, !138, !135, !1730}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1729, line: 24, baseType: !69)
!1729 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1733, file: !494, line: 15, baseType: !74, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1733, file: !494, line: 20, baseType: !1737, size: 32, offset: 32)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !494, line: 16, size: 32, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1737, file: !494, line: 18, baseType: !69, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1737, file: !494, line: 19, baseType: !61, size: 32)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1742 = !DILocalVariable(name: "pwc", arg: 1, scope: !1724, file: !767, line: 82, type: !1727)
!1743 = !DILocalVariable(name: "s", arg: 2, scope: !1724, file: !767, line: 82, type: !138)
!1744 = !DILocalVariable(name: "n", arg: 3, scope: !1724, file: !767, line: 82, type: !135)
!1745 = !DILocalVariable(name: "ps", arg: 4, scope: !1724, file: !767, line: 82, type: !1730)
!1746 = !DILocalVariable(name: "wc", scope: !1724, file: !767, line: 98, type: !1728)
!1747 = !DILocalVariable(name: "ret", scope: !1724, file: !767, line: 134, type: !135)
!1748 = !DILocalVariable(name: "uc", scope: !1749, file: !767, line: 151, type: !140)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !767, line: 150, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1724, file: !767, line: 149, column: 7)
!1751 = distinct !DIAssignID()
!1752 = !DILocation(line: 0, scope: !1724)
!1753 = !DILocation(line: 98, column: 3, scope: !1724)
!1754 = !DILocation(line: 99, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1724, file: !767, line: 99, column: 7)
!1756 = !DILocation(line: 99, column: 7, scope: !1724)
!1757 = !DILocation(line: 140, column: 9, scope: !1724)
!1758 = !DILocation(line: 149, column: 19, scope: !1750)
!1759 = !DILocation(line: 149, column: 26, scope: !1750)
!1760 = !DILocation(line: 149, column: 41, scope: !1750)
!1761 = !DILocation(line: 149, column: 7, scope: !1724)
!1762 = !DILocation(line: 151, column: 26, scope: !1749)
!1763 = !DILocation(line: 0, scope: !1749)
!1764 = !DILocation(line: 152, column: 14, scope: !1749)
!1765 = !DILocation(line: 152, column: 12, scope: !1749)
!1766 = !DILocation(line: 158, column: 1, scope: !1724)
!1767 = !DISubprogram(name: "mbrtowc", scope: !1768, file: !1768, line: 297, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1768 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!135, !1771, !902, !135, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1727)
!1772 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1730)
!1773 = distinct !DISubprogram(name: "set_program_name", scope: !506, file: !506, line: 37, type: !862, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "argv0", arg: 1, scope: !1773, file: !506, line: 37, type: !138)
!1776 = !DILocalVariable(name: "slash", scope: !1773, file: !506, line: 44, type: !138)
!1777 = !DILocalVariable(name: "base", scope: !1773, file: !506, line: 45, type: !138)
!1778 = !DILocation(line: 0, scope: !1773)
!1779 = !DILocation(line: 44, column: 23, scope: !1773)
!1780 = !DILocation(line: 45, column: 22, scope: !1773)
!1781 = !DILocation(line: 46, column: 17, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1773, file: !506, line: 46, column: 7)
!1783 = !DILocation(line: 46, column: 9, scope: !1782)
!1784 = !DILocation(line: 46, column: 25, scope: !1782)
!1785 = !DILocation(line: 46, column: 40, scope: !1782)
!1786 = !DILocalVariable(name: "__s1", arg: 1, scope: !1787, file: !924, line: 974, type: !1056)
!1787 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1788, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!176, !1056, !1056, !135}
!1790 = !{!1786, !1791, !1792}
!1791 = !DILocalVariable(name: "__s2", arg: 2, scope: !1787, file: !924, line: 974, type: !1056)
!1792 = !DILocalVariable(name: "__n", arg: 3, scope: !1787, file: !924, line: 974, type: !135)
!1793 = !DILocation(line: 0, scope: !1787, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 46, column: 28, scope: !1782)
!1795 = !DILocation(line: 976, column: 11, scope: !1787, inlinedAt: !1794)
!1796 = !DILocation(line: 976, column: 10, scope: !1787, inlinedAt: !1794)
!1797 = !DILocation(line: 46, column: 7, scope: !1773)
!1798 = !DILocation(line: 49, column: 11, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !506, line: 49, column: 11)
!1800 = distinct !DILexicalBlock(scope: !1782, file: !506, line: 47, column: 5)
!1801 = !DILocation(line: 49, column: 36, scope: !1799)
!1802 = !DILocation(line: 49, column: 11, scope: !1800)
!1803 = !DILocation(line: 65, column: 16, scope: !1773)
!1804 = !DILocation(line: 71, column: 27, scope: !1773)
!1805 = !DILocation(line: 74, column: 33, scope: !1773)
!1806 = !DILocation(line: 76, column: 1, scope: !1773)
!1807 = !DISubprogram(name: "strrchr", scope: !1028, file: !1028, line: 273, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1808 = distinct !DIAssignID()
!1809 = !DILocation(line: 0, scope: !515)
!1810 = distinct !DIAssignID()
!1811 = !DILocation(line: 40, column: 29, scope: !515)
!1812 = !DILocation(line: 41, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !515, file: !516, line: 41, column: 7)
!1814 = !DILocation(line: 41, column: 7, scope: !515)
!1815 = !DILocation(line: 47, column: 3, scope: !515)
!1816 = !DILocation(line: 48, column: 3, scope: !515)
!1817 = !DILocalVariable(name: "ps", arg: 1, scope: !1818, file: !1256, line: 1135, type: !1821)
!1818 = distinct !DISubprogram(name: "mbszero", scope: !1256, file: !1256, line: 1135, type: !1819, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !1822)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1822 = !{!1817}
!1823 = !DILocation(line: 0, scope: !1818, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 48, column: 18, scope: !515)
!1825 = !DILocalVariable(name: "__dest", arg: 1, scope: !1826, file: !1265, line: 57, type: !133)
!1826 = distinct !DISubprogram(name: "memset", scope: !1265, file: !1265, line: 57, type: !1266, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !1827)
!1827 = !{!1825, !1828, !1829}
!1828 = !DILocalVariable(name: "__ch", arg: 2, scope: !1826, file: !1265, line: 57, type: !74)
!1829 = !DILocalVariable(name: "__len", arg: 3, scope: !1826, file: !1265, line: 57, type: !135)
!1830 = !DILocation(line: 0, scope: !1826, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 1137, column: 3, scope: !1818, inlinedAt: !1824)
!1832 = !DILocation(line: 59, column: 10, scope: !1826, inlinedAt: !1831)
!1833 = !DILocation(line: 49, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !515, file: !516, line: 49, column: 7)
!1835 = !DILocation(line: 49, column: 39, scope: !1834)
!1836 = !DILocation(line: 49, column: 44, scope: !1834)
!1837 = !DILocation(line: 54, column: 1, scope: !515)
!1838 = !DISubprogram(name: "mbrtoc32", scope: !527, file: !527, line: 57, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!135, !1841, !902, !135, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1821)
!1844 = distinct !DISubprogram(name: "clone_quoting_options", scope: !544, file: !544, line: 113, type: !1845, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1848)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1848 = !{!1849, !1850, !1851}
!1849 = !DILocalVariable(name: "o", arg: 1, scope: !1844, file: !544, line: 113, type: !1847)
!1850 = !DILocalVariable(name: "saved_errno", scope: !1844, file: !544, line: 115, type: !74)
!1851 = !DILocalVariable(name: "p", scope: !1844, file: !544, line: 116, type: !1847)
!1852 = !DILocation(line: 0, scope: !1844)
!1853 = !DILocation(line: 115, column: 21, scope: !1844)
!1854 = !DILocation(line: 116, column: 40, scope: !1844)
!1855 = !DILocation(line: 116, column: 31, scope: !1844)
!1856 = !DILocation(line: 118, column: 9, scope: !1844)
!1857 = !DILocation(line: 119, column: 3, scope: !1844)
!1858 = distinct !DISubprogram(name: "get_quoting_style", scope: !544, file: !544, line: 124, type: !1859, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1863)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!567, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "o", arg: 1, scope: !1858, file: !544, line: 124, type: !1861)
!1865 = !DILocation(line: 0, scope: !1858)
!1866 = !DILocation(line: 126, column: 11, scope: !1858)
!1867 = !DILocation(line: 126, column: 46, scope: !1858)
!1868 = !{!1869, !912, i64 0}
!1869 = !{!"quoting_options", !912, i64 0, !912, i64 4, !850, i64 8, !849, i64 40, !849, i64 48}
!1870 = !DILocation(line: 126, column: 3, scope: !1858)
!1871 = distinct !DISubprogram(name: "set_quoting_style", scope: !544, file: !544, line: 132, type: !1872, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1847, !567}
!1874 = !{!1875, !1876}
!1875 = !DILocalVariable(name: "o", arg: 1, scope: !1871, file: !544, line: 132, type: !1847)
!1876 = !DILocalVariable(name: "s", arg: 2, scope: !1871, file: !544, line: 132, type: !567)
!1877 = !DILocation(line: 0, scope: !1871)
!1878 = !DILocation(line: 134, column: 4, scope: !1871)
!1879 = !DILocation(line: 134, column: 45, scope: !1871)
!1880 = !DILocation(line: 135, column: 1, scope: !1871)
!1881 = distinct !DISubprogram(name: "set_char_quoting", scope: !544, file: !544, line: 143, type: !1882, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!74, !1847, !4, !74}
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1891, !1892}
!1885 = !DILocalVariable(name: "o", arg: 1, scope: !1881, file: !544, line: 143, type: !1847)
!1886 = !DILocalVariable(name: "c", arg: 2, scope: !1881, file: !544, line: 143, type: !4)
!1887 = !DILocalVariable(name: "i", arg: 3, scope: !1881, file: !544, line: 143, type: !74)
!1888 = !DILocalVariable(name: "uc", scope: !1881, file: !544, line: 145, type: !140)
!1889 = !DILocalVariable(name: "p", scope: !1881, file: !544, line: 146, type: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1891 = !DILocalVariable(name: "shift", scope: !1881, file: !544, line: 148, type: !74)
!1892 = !DILocalVariable(name: "r", scope: !1881, file: !544, line: 149, type: !69)
!1893 = !DILocation(line: 0, scope: !1881)
!1894 = !DILocation(line: 147, column: 6, scope: !1881)
!1895 = !DILocation(line: 147, column: 41, scope: !1881)
!1896 = !DILocation(line: 147, column: 62, scope: !1881)
!1897 = !DILocation(line: 147, column: 57, scope: !1881)
!1898 = !DILocation(line: 148, column: 15, scope: !1881)
!1899 = !DILocation(line: 149, column: 21, scope: !1881)
!1900 = !DILocation(line: 149, column: 24, scope: !1881)
!1901 = !DILocation(line: 149, column: 34, scope: !1881)
!1902 = !DILocation(line: 150, column: 19, scope: !1881)
!1903 = !DILocation(line: 150, column: 24, scope: !1881)
!1904 = !DILocation(line: 150, column: 6, scope: !1881)
!1905 = !DILocation(line: 151, column: 3, scope: !1881)
!1906 = distinct !DISubprogram(name: "set_quoting_flags", scope: !544, file: !544, line: 159, type: !1907, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!74, !1847, !74}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !544, line: 159, type: !1847)
!1911 = !DILocalVariable(name: "i", arg: 2, scope: !1906, file: !544, line: 159, type: !74)
!1912 = !DILocalVariable(name: "r", scope: !1906, file: !544, line: 163, type: !74)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 161, column: 8, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !544, line: 161, column: 7)
!1916 = !DILocation(line: 161, column: 7, scope: !1906)
!1917 = !DILocation(line: 163, column: 14, scope: !1906)
!1918 = !{!1869, !912, i64 4}
!1919 = !DILocation(line: 164, column: 12, scope: !1906)
!1920 = !DILocation(line: 165, column: 3, scope: !1906)
!1921 = distinct !DISubprogram(name: "set_custom_quoting", scope: !544, file: !544, line: 169, type: !1922, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1847, !138, !138}
!1924 = !{!1925, !1926, !1927}
!1925 = !DILocalVariable(name: "o", arg: 1, scope: !1921, file: !544, line: 169, type: !1847)
!1926 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1921, file: !544, line: 170, type: !138)
!1927 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1921, file: !544, line: 170, type: !138)
!1928 = !DILocation(line: 0, scope: !1921)
!1929 = !DILocation(line: 172, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !544, line: 172, column: 7)
!1931 = !DILocation(line: 172, column: 7, scope: !1921)
!1932 = !DILocation(line: 174, column: 12, scope: !1921)
!1933 = !DILocation(line: 175, column: 8, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1921, file: !544, line: 175, column: 7)
!1935 = !DILocation(line: 175, column: 19, scope: !1934)
!1936 = !DILocation(line: 176, column: 5, scope: !1934)
!1937 = !DILocation(line: 177, column: 6, scope: !1921)
!1938 = !DILocation(line: 177, column: 17, scope: !1921)
!1939 = !{!1869, !849, i64 40}
!1940 = !DILocation(line: 178, column: 6, scope: !1921)
!1941 = !DILocation(line: 178, column: 18, scope: !1921)
!1942 = !{!1869, !849, i64 48}
!1943 = !DILocation(line: 179, column: 1, scope: !1921)
!1944 = !DISubprogram(name: "abort", scope: !1032, file: !1032, line: 598, type: !483, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1945 = distinct !DISubprogram(name: "quotearg_buffer", scope: !544, file: !544, line: 774, type: !1946, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!135, !132, !135, !138, !135, !1861}
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1949 = !DILocalVariable(name: "buffer", arg: 1, scope: !1945, file: !544, line: 774, type: !132)
!1950 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1945, file: !544, line: 774, type: !135)
!1951 = !DILocalVariable(name: "arg", arg: 3, scope: !1945, file: !544, line: 775, type: !138)
!1952 = !DILocalVariable(name: "argsize", arg: 4, scope: !1945, file: !544, line: 775, type: !135)
!1953 = !DILocalVariable(name: "o", arg: 5, scope: !1945, file: !544, line: 776, type: !1861)
!1954 = !DILocalVariable(name: "p", scope: !1945, file: !544, line: 778, type: !1861)
!1955 = !DILocalVariable(name: "saved_errno", scope: !1945, file: !544, line: 779, type: !74)
!1956 = !DILocalVariable(name: "r", scope: !1945, file: !544, line: 780, type: !135)
!1957 = !DILocation(line: 0, scope: !1945)
!1958 = !DILocation(line: 778, column: 37, scope: !1945)
!1959 = !DILocation(line: 779, column: 21, scope: !1945)
!1960 = !DILocation(line: 781, column: 43, scope: !1945)
!1961 = !DILocation(line: 781, column: 53, scope: !1945)
!1962 = !DILocation(line: 781, column: 63, scope: !1945)
!1963 = !DILocation(line: 782, column: 43, scope: !1945)
!1964 = !DILocation(line: 782, column: 58, scope: !1945)
!1965 = !DILocation(line: 780, column: 14, scope: !1945)
!1966 = !DILocation(line: 783, column: 9, scope: !1945)
!1967 = !DILocation(line: 784, column: 3, scope: !1945)
!1968 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !544, file: !544, line: 251, type: !1969, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1973)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!135, !132, !135, !138, !135, !567, !74, !1971, !138, !138}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1999, !2001, !2004, !2005, !2006, !2007, !2010, !2011, !2013, !2014, !2017, !2021, !2022, !2030, !2033, !2034, !2035}
!1974 = !DILocalVariable(name: "buffer", arg: 1, scope: !1968, file: !544, line: 251, type: !132)
!1975 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1968, file: !544, line: 251, type: !135)
!1976 = !DILocalVariable(name: "arg", arg: 3, scope: !1968, file: !544, line: 252, type: !138)
!1977 = !DILocalVariable(name: "argsize", arg: 4, scope: !1968, file: !544, line: 252, type: !135)
!1978 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1968, file: !544, line: 253, type: !567)
!1979 = !DILocalVariable(name: "flags", arg: 6, scope: !1968, file: !544, line: 253, type: !74)
!1980 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1968, file: !544, line: 254, type: !1971)
!1981 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1968, file: !544, line: 255, type: !138)
!1982 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1968, file: !544, line: 256, type: !138)
!1983 = !DILocalVariable(name: "unibyte_locale", scope: !1968, file: !544, line: 258, type: !176)
!1984 = !DILocalVariable(name: "len", scope: !1968, file: !544, line: 260, type: !135)
!1985 = !DILocalVariable(name: "orig_buffersize", scope: !1968, file: !544, line: 261, type: !135)
!1986 = !DILocalVariable(name: "quote_string", scope: !1968, file: !544, line: 262, type: !138)
!1987 = !DILocalVariable(name: "quote_string_len", scope: !1968, file: !544, line: 263, type: !135)
!1988 = !DILocalVariable(name: "backslash_escapes", scope: !1968, file: !544, line: 264, type: !176)
!1989 = !DILocalVariable(name: "elide_outer_quotes", scope: !1968, file: !544, line: 265, type: !176)
!1990 = !DILocalVariable(name: "encountered_single_quote", scope: !1968, file: !544, line: 266, type: !176)
!1991 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1968, file: !544, line: 267, type: !176)
!1992 = !DILabel(scope: !1968, name: "process_input", file: !544, line: 308)
!1993 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1968, file: !544, line: 309, type: !176)
!1994 = !DILocalVariable(name: "lq", scope: !1995, file: !544, line: 361, type: !138)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !544, line: 361, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !544, line: 360, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !544, line: 333, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 312, column: 5)
!1999 = !DILocalVariable(name: "i", scope: !2000, file: !544, line: 395, type: !135)
!2000 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 395, column: 3)
!2001 = !DILocalVariable(name: "is_right_quote", scope: !2002, file: !544, line: 397, type: !176)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !544, line: 396, column: 5)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !544, line: 395, column: 3)
!2004 = !DILocalVariable(name: "escaping", scope: !2002, file: !544, line: 398, type: !176)
!2005 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2002, file: !544, line: 399, type: !176)
!2006 = !DILocalVariable(name: "c", scope: !2002, file: !544, line: 417, type: !140)
!2007 = !DILabel(scope: !2008, name: "c_and_shell_escape", file: !544, line: 502)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 478, column: 9)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 419, column: 9)
!2010 = !DILabel(scope: !2008, name: "c_escape", file: !544, line: 507)
!2011 = !DILocalVariable(name: "m", scope: !2012, file: !544, line: 598, type: !135)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 596, column: 11)
!2013 = !DILocalVariable(name: "printable", scope: !2012, file: !544, line: 600, type: !176)
!2014 = !DILocalVariable(name: "mbs", scope: !2015, file: !544, line: 609, type: !616)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !544, line: 608, column: 15)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !544, line: 602, column: 17)
!2017 = !DILocalVariable(name: "w", scope: !2018, file: !544, line: 618, type: !526)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !544, line: 617, column: 19)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !544, line: 616, column: 17)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !544, line: 616, column: 17)
!2021 = !DILocalVariable(name: "bytes", scope: !2018, file: !544, line: 619, type: !135)
!2022 = !DILocalVariable(name: "j", scope: !2023, file: !544, line: 648, type: !135)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 648, column: 29)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !544, line: 647, column: 27)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !544, line: 645, column: 29)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !544, line: 636, column: 23)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !544, line: 628, column: 30)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !544, line: 623, column: 30)
!2029 = distinct !DILexicalBlock(scope: !2018, file: !544, line: 621, column: 25)
!2030 = !DILocalVariable(name: "ilim", scope: !2031, file: !544, line: 674, type: !135)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !544, line: 671, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2012, file: !544, line: 670, column: 17)
!2033 = !DILabel(scope: !2002, name: "store_escape", file: !544, line: 709)
!2034 = !DILabel(scope: !2002, name: "store_c", file: !544, line: 712)
!2035 = !DILabel(scope: !1968, name: "force_outer_quoting_style", file: !544, line: 753)
!2036 = distinct !DIAssignID()
!2037 = distinct !DIAssignID()
!2038 = distinct !DIAssignID()
!2039 = distinct !DIAssignID()
!2040 = distinct !DIAssignID()
!2041 = !DILocation(line: 0, scope: !2015)
!2042 = distinct !DIAssignID()
!2043 = !DILocation(line: 0, scope: !2018)
!2044 = !DILocation(line: 0, scope: !1968)
!2045 = !DILocation(line: 258, column: 25, scope: !1968)
!2046 = !DILocation(line: 258, column: 36, scope: !1968)
!2047 = !DILocation(line: 267, column: 3, scope: !1968)
!2048 = !DILocation(line: 261, column: 10, scope: !1968)
!2049 = !DILocation(line: 262, column: 15, scope: !1968)
!2050 = !DILocation(line: 263, column: 10, scope: !1968)
!2051 = !DILocation(line: 308, column: 2, scope: !1968)
!2052 = !DILocation(line: 311, column: 3, scope: !1968)
!2053 = !DILocation(line: 318, column: 11, scope: !1998)
!2054 = !DILocation(line: 319, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !544, line: 319, column: 9)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 319, column: 9)
!2057 = distinct !DILexicalBlock(scope: !1998, file: !544, line: 318, column: 11)
!2058 = !DILocation(line: 319, column: 9, scope: !2056)
!2059 = !DILocation(line: 0, scope: !607, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 357, column: 26, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !544, line: 335, column: 11)
!2062 = distinct !DILexicalBlock(scope: !1997, file: !544, line: 334, column: 13)
!2063 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2060)
!2064 = !DILocation(line: 201, column: 19, scope: !2065, inlinedAt: !2060)
!2065 = distinct !DILexicalBlock(scope: !607, file: !544, line: 201, column: 7)
!2066 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2060)
!2067 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2060)
!2068 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2060)
!2069 = !DILocalVariable(name: "ps", arg: 1, scope: !2070, file: !1256, line: 1135, type: !2073)
!2070 = distinct !DISubprogram(name: "mbszero", scope: !1256, file: !1256, line: 1135, type: !2071, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2074)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2074 = !{!2069}
!2075 = !DILocation(line: 0, scope: !2070, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2060)
!2077 = !DILocalVariable(name: "__dest", arg: 1, scope: !2078, file: !1265, line: 57, type: !133)
!2078 = distinct !DISubprogram(name: "memset", scope: !1265, file: !1265, line: 57, type: !1266, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2079)
!2079 = !{!2077, !2080, !2081}
!2080 = !DILocalVariable(name: "__ch", arg: 2, scope: !2078, file: !1265, line: 57, type: !74)
!2081 = !DILocalVariable(name: "__len", arg: 3, scope: !2078, file: !1265, line: 57, type: !135)
!2082 = !DILocation(line: 0, scope: !2078, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2076)
!2084 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2083)
!2085 = !DILocation(line: 231, column: 7, scope: !2086, inlinedAt: !2060)
!2086 = distinct !DILexicalBlock(scope: !607, file: !544, line: 231, column: 7)
!2087 = !DILocation(line: 231, column: 40, scope: !2086, inlinedAt: !2060)
!2088 = !DILocation(line: 231, column: 45, scope: !2086, inlinedAt: !2060)
!2089 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2060)
!2090 = !DILocation(line: 0, scope: !607, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 358, column: 27, scope: !2061)
!2092 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2091)
!2093 = !DILocation(line: 201, column: 19, scope: !2065, inlinedAt: !2091)
!2094 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2091)
!2095 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2091)
!2096 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2091)
!2097 = !DILocation(line: 0, scope: !2070, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2091)
!2099 = !DILocation(line: 0, scope: !2078, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2098)
!2101 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2100)
!2102 = !DILocation(line: 231, column: 7, scope: !2086, inlinedAt: !2091)
!2103 = !DILocation(line: 231, column: 40, scope: !2086, inlinedAt: !2091)
!2104 = !DILocation(line: 231, column: 45, scope: !2086, inlinedAt: !2091)
!2105 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2091)
!2106 = !DILocation(line: 360, column: 13, scope: !1997)
!2107 = !DILocation(line: 0, scope: !1995)
!2108 = !DILocation(line: 361, column: 45, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1995, file: !544, line: 361, column: 11)
!2110 = !DILocation(line: 361, column: 11, scope: !1995)
!2111 = !DILocation(line: 362, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !544, line: 362, column: 13)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !544, line: 362, column: 13)
!2114 = !DILocation(line: 362, column: 13, scope: !2113)
!2115 = !DILocation(line: 361, column: 52, scope: !2109)
!2116 = distinct !{!2116, !2110, !2117, !958}
!2117 = !DILocation(line: 362, column: 13, scope: !1995)
!2118 = !DILocation(line: 365, column: 28, scope: !1997)
!2119 = !DILocation(line: 260, column: 10, scope: !1968)
!2120 = !DILocation(line: 367, column: 7, scope: !1998)
!2121 = !DILocation(line: 373, column: 7, scope: !1998)
!2122 = !DILocation(line: 381, column: 11, scope: !1998)
!2123 = !DILocation(line: 376, column: 11, scope: !1998)
!2124 = !DILocation(line: 382, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !544, line: 382, column: 9)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !544, line: 382, column: 9)
!2127 = distinct !DILexicalBlock(scope: !1998, file: !544, line: 381, column: 11)
!2128 = !DILocation(line: 382, column: 9, scope: !2126)
!2129 = !DILocation(line: 389, column: 7, scope: !1998)
!2130 = !DILocation(line: 392, column: 7, scope: !1998)
!2131 = !DILocation(line: 0, scope: !2000)
!2132 = !DILocation(line: 395, column: 8, scope: !2000)
!2133 = !DILocation(line: 395, scope: !2000)
!2134 = !DILocation(line: 395, column: 34, scope: !2003)
!2135 = !DILocation(line: 395, column: 26, scope: !2003)
!2136 = !DILocation(line: 395, column: 48, scope: !2003)
!2137 = !DILocation(line: 395, column: 55, scope: !2003)
!2138 = !DILocation(line: 395, column: 3, scope: !2000)
!2139 = !DILocation(line: 395, column: 67, scope: !2003)
!2140 = !DILocation(line: 0, scope: !2002)
!2141 = !DILocation(line: 402, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 401, column: 11)
!2143 = !DILocation(line: 404, column: 17, scope: !2142)
!2144 = !DILocation(line: 405, column: 39, scope: !2142)
!2145 = !DILocation(line: 409, column: 32, scope: !2142)
!2146 = !DILocation(line: 405, column: 19, scope: !2142)
!2147 = !DILocation(line: 405, column: 15, scope: !2142)
!2148 = !DILocation(line: 410, column: 11, scope: !2142)
!2149 = !DILocation(line: 410, column: 25, scope: !2142)
!2150 = !DILocalVariable(name: "__s1", arg: 1, scope: !2151, file: !924, line: 974, type: !1056)
!2151 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1788, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2152)
!2152 = !{!2150, !2153, !2154}
!2153 = !DILocalVariable(name: "__s2", arg: 2, scope: !2151, file: !924, line: 974, type: !1056)
!2154 = !DILocalVariable(name: "__n", arg: 3, scope: !2151, file: !924, line: 974, type: !135)
!2155 = !DILocation(line: 0, scope: !2151, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 410, column: 14, scope: !2142)
!2157 = !DILocation(line: 976, column: 11, scope: !2151, inlinedAt: !2156)
!2158 = !DILocation(line: 976, column: 10, scope: !2151, inlinedAt: !2156)
!2159 = !DILocation(line: 401, column: 11, scope: !2002)
!2160 = !DILocation(line: 417, column: 25, scope: !2002)
!2161 = !DILocation(line: 418, column: 7, scope: !2002)
!2162 = !DILocation(line: 421, column: 15, scope: !2009)
!2163 = !DILocation(line: 423, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !544, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !544, line: 422, column: 13)
!2166 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 421, column: 15)
!2167 = !DILocation(line: 423, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !544, line: 423, column: 15)
!2169 = !DILocation(line: 423, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !544, line: 423, column: 15)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !544, line: 423, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !544, line: 423, column: 15)
!2173 = !DILocation(line: 423, column: 15, scope: !2171)
!2174 = !DILocation(line: 423, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !544, line: 423, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !544, line: 423, column: 15)
!2177 = !DILocation(line: 423, column: 15, scope: !2176)
!2178 = !DILocation(line: 423, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !544, line: 423, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2172, file: !544, line: 423, column: 15)
!2181 = !DILocation(line: 423, column: 15, scope: !2180)
!2182 = !DILocation(line: 423, column: 15, scope: !2172)
!2183 = !DILocation(line: 423, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !544, line: 423, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2164, file: !544, line: 423, column: 15)
!2186 = !DILocation(line: 423, column: 15, scope: !2185)
!2187 = !DILocation(line: 431, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2165, file: !544, line: 430, column: 19)
!2189 = !DILocation(line: 431, column: 24, scope: !2188)
!2190 = !DILocation(line: 431, column: 28, scope: !2188)
!2191 = !DILocation(line: 431, column: 38, scope: !2188)
!2192 = !DILocation(line: 431, column: 48, scope: !2188)
!2193 = !DILocation(line: 431, column: 59, scope: !2188)
!2194 = !DILocation(line: 433, column: 19, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !544, line: 433, column: 19)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !544, line: 433, column: 19)
!2197 = distinct !DILexicalBlock(scope: !2188, file: !544, line: 432, column: 17)
!2198 = !DILocation(line: 433, column: 19, scope: !2196)
!2199 = !DILocation(line: 434, column: 19, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !544, line: 434, column: 19)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !544, line: 434, column: 19)
!2202 = !DILocation(line: 434, column: 19, scope: !2201)
!2203 = !DILocation(line: 435, column: 17, scope: !2197)
!2204 = !DILocation(line: 442, column: 20, scope: !2166)
!2205 = !DILocation(line: 447, column: 11, scope: !2009)
!2206 = !DILocation(line: 450, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 448, column: 13)
!2208 = !DILocation(line: 456, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !544, line: 455, column: 19)
!2210 = !DILocation(line: 456, column: 24, scope: !2209)
!2211 = !DILocation(line: 456, column: 28, scope: !2209)
!2212 = !DILocation(line: 456, column: 38, scope: !2209)
!2213 = !DILocation(line: 456, column: 41, scope: !2209)
!2214 = !DILocation(line: 456, column: 52, scope: !2209)
!2215 = !DILocation(line: 455, column: 19, scope: !2207)
!2216 = !DILocation(line: 457, column: 25, scope: !2209)
!2217 = !DILocation(line: 457, column: 17, scope: !2209)
!2218 = !DILocation(line: 464, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2209, file: !544, line: 458, column: 19)
!2220 = !DILocation(line: 468, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !544, line: 468, column: 21)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !544, line: 468, column: 21)
!2223 = !DILocation(line: 468, column: 21, scope: !2222)
!2224 = !DILocation(line: 469, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !544, line: 469, column: 21)
!2226 = distinct !DILexicalBlock(scope: !2219, file: !544, line: 469, column: 21)
!2227 = !DILocation(line: 469, column: 21, scope: !2226)
!2228 = !DILocation(line: 470, column: 21, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !544, line: 470, column: 21)
!2230 = distinct !DILexicalBlock(scope: !2219, file: !544, line: 470, column: 21)
!2231 = !DILocation(line: 470, column: 21, scope: !2230)
!2232 = !DILocation(line: 471, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !544, line: 471, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2219, file: !544, line: 471, column: 21)
!2235 = !DILocation(line: 471, column: 21, scope: !2234)
!2236 = !DILocation(line: 472, column: 21, scope: !2219)
!2237 = !DILocation(line: 482, column: 33, scope: !2008)
!2238 = !DILocation(line: 483, column: 33, scope: !2008)
!2239 = !DILocation(line: 485, column: 33, scope: !2008)
!2240 = !DILocation(line: 486, column: 33, scope: !2008)
!2241 = !DILocation(line: 487, column: 33, scope: !2008)
!2242 = !DILocation(line: 490, column: 17, scope: !2008)
!2243 = !DILocation(line: 492, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !544, line: 491, column: 15)
!2245 = distinct !DILexicalBlock(scope: !2008, file: !544, line: 490, column: 17)
!2246 = !DILocation(line: 499, column: 35, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2008, file: !544, line: 499, column: 17)
!2248 = !DILocation(line: 0, scope: !2008)
!2249 = !DILocation(line: 502, column: 11, scope: !2008)
!2250 = !DILocation(line: 504, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2008, file: !544, line: 503, column: 17)
!2252 = !DILocation(line: 507, column: 11, scope: !2008)
!2253 = !DILocation(line: 508, column: 17, scope: !2008)
!2254 = !DILocation(line: 517, column: 15, scope: !2009)
!2255 = !DILocation(line: 517, column: 40, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 517, column: 15)
!2257 = !DILocation(line: 517, column: 47, scope: !2256)
!2258 = !DILocation(line: 517, column: 18, scope: !2256)
!2259 = !DILocation(line: 521, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 521, column: 15)
!2261 = !DILocation(line: 521, column: 15, scope: !2009)
!2262 = !DILocation(line: 525, column: 11, scope: !2009)
!2263 = !DILocation(line: 537, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 536, column: 15)
!2265 = !DILocation(line: 536, column: 15, scope: !2009)
!2266 = !DILocation(line: 544, column: 15, scope: !2009)
!2267 = !DILocation(line: 546, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !544, line: 545, column: 13)
!2269 = distinct !DILexicalBlock(scope: !2009, file: !544, line: 544, column: 15)
!2270 = !DILocation(line: 549, column: 19, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !544, line: 549, column: 19)
!2272 = !DILocation(line: 549, column: 30, scope: !2271)
!2273 = !DILocation(line: 558, column: 15, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !544, line: 558, column: 15)
!2275 = distinct !DILexicalBlock(scope: !2268, file: !544, line: 558, column: 15)
!2276 = !DILocation(line: 558, column: 15, scope: !2275)
!2277 = !DILocation(line: 559, column: 15, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !544, line: 559, column: 15)
!2279 = distinct !DILexicalBlock(scope: !2268, file: !544, line: 559, column: 15)
!2280 = !DILocation(line: 559, column: 15, scope: !2279)
!2281 = !DILocation(line: 560, column: 15, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !544, line: 560, column: 15)
!2283 = distinct !DILexicalBlock(scope: !2268, file: !544, line: 560, column: 15)
!2284 = !DILocation(line: 560, column: 15, scope: !2283)
!2285 = !DILocation(line: 562, column: 13, scope: !2268)
!2286 = !DILocation(line: 602, column: 17, scope: !2012)
!2287 = !DILocation(line: 0, scope: !2012)
!2288 = !DILocation(line: 605, column: 29, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2016, file: !544, line: 603, column: 15)
!2290 = !DILocation(line: 605, column: 41, scope: !2289)
!2291 = !DILocation(line: 606, column: 15, scope: !2289)
!2292 = !DILocation(line: 609, column: 17, scope: !2015)
!2293 = !DILocation(line: 0, scope: !2070, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 609, column: 32, scope: !2015)
!2295 = !DILocation(line: 0, scope: !2078, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2294)
!2297 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2296)
!2298 = !DILocation(line: 613, column: 29, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2015, file: !544, line: 613, column: 21)
!2300 = !DILocation(line: 613, column: 21, scope: !2015)
!2301 = !DILocation(line: 614, column: 29, scope: !2299)
!2302 = !DILocation(line: 614, column: 19, scope: !2299)
!2303 = !DILocation(line: 618, column: 21, scope: !2018)
!2304 = !DILocation(line: 620, column: 54, scope: !2018)
!2305 = !DILocation(line: 619, column: 36, scope: !2018)
!2306 = !DILocation(line: 621, column: 25, scope: !2018)
!2307 = !DILocation(line: 631, column: 38, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2027, file: !544, line: 629, column: 23)
!2309 = !DILocation(line: 631, column: 48, scope: !2308)
!2310 = !DILocation(line: 631, column: 25, scope: !2308)
!2311 = !DILocation(line: 626, column: 25, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2028, file: !544, line: 624, column: 23)
!2313 = !DILocation(line: 631, column: 51, scope: !2308)
!2314 = !DILocation(line: 632, column: 28, scope: !2308)
!2315 = !DILocation(line: 631, column: 34, scope: !2308)
!2316 = distinct !{!2316, !2310, !2314, !958}
!2317 = !DILocation(line: 0, scope: !2023)
!2318 = !DILocation(line: 646, column: 29, scope: !2025)
!2319 = !DILocation(line: 648, column: 29, scope: !2023)
!2320 = !DILocation(line: 649, column: 39, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2023, file: !544, line: 648, column: 29)
!2322 = !DILocation(line: 649, column: 31, scope: !2321)
!2323 = !DILocation(line: 648, column: 60, scope: !2321)
!2324 = !DILocation(line: 648, column: 50, scope: !2321)
!2325 = distinct !{!2325, !2319, !2326, !958}
!2326 = !DILocation(line: 654, column: 33, scope: !2023)
!2327 = !DILocation(line: 657, column: 43, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2026, file: !544, line: 657, column: 29)
!2329 = !DILocalVariable(name: "wc", arg: 1, scope: !2330, file: !2331, line: 865, type: !2334)
!2330 = distinct !DISubprogram(name: "c32isprint", scope: !2331, file: !2331, line: 865, type: !2332, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2336)
!2331 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!74, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2335, line: 20, baseType: !69)
!2335 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2336 = !{!2329}
!2337 = !DILocation(line: 0, scope: !2330, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 657, column: 31, scope: !2328)
!2339 = !DILocation(line: 871, column: 10, scope: !2330, inlinedAt: !2338)
!2340 = !DILocation(line: 657, column: 31, scope: !2328)
!2341 = !DILocation(line: 664, column: 23, scope: !2018)
!2342 = !DILocation(line: 665, column: 19, scope: !2019)
!2343 = !DILocation(line: 666, column: 15, scope: !2016)
!2344 = !DILocation(line: 753, column: 2, scope: !1968)
!2345 = !DILocation(line: 756, column: 51, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 756, column: 7)
!2347 = !DILocation(line: 0, scope: !2016)
!2348 = !DILocation(line: 670, column: 19, scope: !2032)
!2349 = !DILocation(line: 670, column: 23, scope: !2032)
!2350 = !DILocation(line: 674, column: 33, scope: !2031)
!2351 = !DILocation(line: 0, scope: !2031)
!2352 = !DILocation(line: 676, column: 17, scope: !2031)
!2353 = !DILocation(line: 678, column: 43, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !544, line: 678, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !544, line: 677, column: 19)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !544, line: 676, column: 17)
!2357 = distinct !DILexicalBlock(scope: !2031, file: !544, line: 676, column: 17)
!2358 = !DILocation(line: 680, column: 25, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !544, line: 680, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !544, line: 679, column: 23)
!2361 = !DILocation(line: 680, column: 25, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2359, file: !544, line: 680, column: 25)
!2363 = !DILocation(line: 680, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !544, line: 680, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !544, line: 680, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !544, line: 680, column: 25)
!2367 = !DILocation(line: 680, column: 25, scope: !2365)
!2368 = !DILocation(line: 680, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !544, line: 680, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !544, line: 680, column: 25)
!2371 = !DILocation(line: 680, column: 25, scope: !2370)
!2372 = !DILocation(line: 680, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !544, line: 680, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2366, file: !544, line: 680, column: 25)
!2375 = !DILocation(line: 680, column: 25, scope: !2374)
!2376 = !DILocation(line: 680, column: 25, scope: !2366)
!2377 = !DILocation(line: 680, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !544, line: 680, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2359, file: !544, line: 680, column: 25)
!2380 = !DILocation(line: 680, column: 25, scope: !2379)
!2381 = !DILocation(line: 681, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !544, line: 681, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2360, file: !544, line: 681, column: 25)
!2384 = !DILocation(line: 681, column: 25, scope: !2383)
!2385 = !DILocation(line: 682, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !544, line: 682, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2360, file: !544, line: 682, column: 25)
!2388 = !DILocation(line: 682, column: 25, scope: !2387)
!2389 = !DILocation(line: 683, column: 38, scope: !2360)
!2390 = !DILocation(line: 683, column: 33, scope: !2360)
!2391 = !DILocation(line: 684, column: 23, scope: !2360)
!2392 = !DILocation(line: 685, column: 30, scope: !2354)
!2393 = !DILocation(line: 687, column: 25, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !544, line: 687, column: 25)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !544, line: 687, column: 25)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !544, line: 686, column: 23)
!2397 = distinct !DILexicalBlock(scope: !2354, file: !544, line: 685, column: 30)
!2398 = !DILocation(line: 687, column: 25, scope: !2395)
!2399 = !DILocation(line: 689, column: 23, scope: !2396)
!2400 = !DILocation(line: 690, column: 35, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2355, file: !544, line: 690, column: 25)
!2402 = !DILocation(line: 690, column: 30, scope: !2401)
!2403 = !DILocation(line: 690, column: 25, scope: !2355)
!2404 = !DILocation(line: 692, column: 21, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !544, line: 692, column: 21)
!2406 = distinct !DILexicalBlock(scope: !2355, file: !544, line: 692, column: 21)
!2407 = !DILocation(line: 692, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !544, line: 692, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 692, column: 21)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !544, line: 692, column: 21)
!2411 = !DILocation(line: 692, column: 21, scope: !2409)
!2412 = !DILocation(line: 692, column: 21, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !544, line: 692, column: 21)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 692, column: 21)
!2415 = !DILocation(line: 692, column: 21, scope: !2414)
!2416 = !DILocation(line: 692, column: 21, scope: !2410)
!2417 = !DILocation(line: 0, scope: !2355)
!2418 = !DILocation(line: 693, column: 21, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 693, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2355, file: !544, line: 693, column: 21)
!2421 = !DILocation(line: 693, column: 21, scope: !2420)
!2422 = !DILocation(line: 694, column: 25, scope: !2355)
!2423 = !DILocation(line: 676, column: 17, scope: !2356)
!2424 = distinct !{!2424, !2425, !2426}
!2425 = !DILocation(line: 676, column: 17, scope: !2357)
!2426 = !DILocation(line: 695, column: 19, scope: !2357)
!2427 = !DILocation(line: 409, column: 30, scope: !2142)
!2428 = !DILocation(line: 702, column: 34, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 702, column: 11)
!2430 = !DILocation(line: 704, column: 14, scope: !2429)
!2431 = !DILocation(line: 705, column: 14, scope: !2429)
!2432 = !DILocation(line: 705, column: 35, scope: !2429)
!2433 = !DILocation(line: 705, column: 17, scope: !2429)
!2434 = !DILocation(line: 705, column: 47, scope: !2429)
!2435 = !DILocation(line: 705, column: 65, scope: !2429)
!2436 = !DILocation(line: 706, column: 11, scope: !2429)
!2437 = !DILocation(line: 702, column: 11, scope: !2002)
!2438 = !DILocation(line: 395, column: 15, scope: !2000)
!2439 = !DILocation(line: 709, column: 5, scope: !2002)
!2440 = !DILocation(line: 710, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 710, column: 7)
!2442 = !DILocation(line: 710, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2441, file: !544, line: 710, column: 7)
!2444 = !DILocation(line: 710, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !544, line: 710, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !544, line: 710, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !544, line: 710, column: 7)
!2448 = !DILocation(line: 710, column: 7, scope: !2446)
!2449 = !DILocation(line: 710, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !544, line: 710, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !544, line: 710, column: 7)
!2452 = !DILocation(line: 710, column: 7, scope: !2451)
!2453 = !DILocation(line: 710, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !544, line: 710, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2447, file: !544, line: 710, column: 7)
!2456 = !DILocation(line: 710, column: 7, scope: !2455)
!2457 = !DILocation(line: 710, column: 7, scope: !2447)
!2458 = !DILocation(line: 710, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !544, line: 710, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2441, file: !544, line: 710, column: 7)
!2461 = !DILocation(line: 710, column: 7, scope: !2460)
!2462 = !DILocation(line: 712, column: 5, scope: !2002)
!2463 = !DILocation(line: 713, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !544, line: 713, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 713, column: 7)
!2466 = !DILocation(line: 417, column: 21, scope: !2002)
!2467 = !DILocation(line: 713, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !544, line: 713, column: 7)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !544, line: 713, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !544, line: 713, column: 7)
!2471 = !DILocation(line: 713, column: 7, scope: !2469)
!2472 = !DILocation(line: 713, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !544, line: 713, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !544, line: 713, column: 7)
!2475 = !DILocation(line: 713, column: 7, scope: !2474)
!2476 = !DILocation(line: 713, column: 7, scope: !2470)
!2477 = !DILocation(line: 714, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !544, line: 714, column: 7)
!2479 = distinct !DILexicalBlock(scope: !2002, file: !544, line: 714, column: 7)
!2480 = !DILocation(line: 714, column: 7, scope: !2479)
!2481 = !DILocation(line: 716, column: 11, scope: !2002)
!2482 = !DILocation(line: 718, column: 5, scope: !2003)
!2483 = !DILocation(line: 395, column: 82, scope: !2003)
!2484 = !DILocation(line: 395, column: 3, scope: !2003)
!2485 = distinct !{!2485, !2138, !2486, !958}
!2486 = !DILocation(line: 718, column: 5, scope: !2000)
!2487 = !DILocation(line: 720, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 720, column: 7)
!2489 = !DILocation(line: 720, column: 16, scope: !2488)
!2490 = !DILocation(line: 728, column: 51, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 728, column: 7)
!2492 = !DILocation(line: 731, column: 11, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2491, file: !544, line: 730, column: 5)
!2494 = !DILocation(line: 732, column: 16, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2493, file: !544, line: 731, column: 11)
!2496 = !DILocation(line: 732, column: 9, scope: !2495)
!2497 = !DILocation(line: 736, column: 18, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !544, line: 736, column: 16)
!2499 = !DILocation(line: 736, column: 29, scope: !2498)
!2500 = !DILocation(line: 745, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 745, column: 7)
!2502 = !DILocation(line: 745, column: 20, scope: !2501)
!2503 = !DILocation(line: 746, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !544, line: 746, column: 5)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !544, line: 746, column: 5)
!2506 = !DILocation(line: 746, column: 5, scope: !2505)
!2507 = !DILocation(line: 747, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !544, line: 747, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !544, line: 747, column: 7)
!2510 = !DILocation(line: 747, column: 7, scope: !2509)
!2511 = !DILocation(line: 746, column: 39, scope: !2504)
!2512 = distinct !{!2512, !2506, !2513, !958}
!2513 = !DILocation(line: 747, column: 7, scope: !2505)
!2514 = !DILocation(line: 749, column: 11, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 749, column: 7)
!2516 = !DILocation(line: 749, column: 7, scope: !1968)
!2517 = !DILocation(line: 750, column: 5, scope: !2515)
!2518 = !DILocation(line: 750, column: 17, scope: !2515)
!2519 = !DILocation(line: 756, column: 21, scope: !2346)
!2520 = !DILocation(line: 760, column: 42, scope: !1968)
!2521 = !DILocation(line: 758, column: 10, scope: !1968)
!2522 = !DILocation(line: 758, column: 3, scope: !1968)
!2523 = !DILocation(line: 762, column: 1, scope: !1968)
!2524 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1032, file: !1032, line: 98, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2525 = !DISubroutineType(types: !768)
!2526 = !DISubprogram(name: "iswprint", scope: !2527, file: !2527, line: 120, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2527 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2528 = distinct !DISubprogram(name: "quotearg_alloc", scope: !544, file: !544, line: 788, type: !2529, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!132, !138, !135, !1861}
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !544, line: 788, type: !138)
!2533 = !DILocalVariable(name: "argsize", arg: 2, scope: !2528, file: !544, line: 788, type: !135)
!2534 = !DILocalVariable(name: "o", arg: 3, scope: !2528, file: !544, line: 789, type: !1861)
!2535 = !DILocation(line: 0, scope: !2528)
!2536 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !544, line: 801, type: !138)
!2537 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !544, file: !544, line: 801, type: !2538, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!132, !138, !135, !782, !1861}
!2540 = !{!2536, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !544, line: 801, type: !135)
!2542 = !DILocalVariable(name: "size", arg: 3, scope: !2537, file: !544, line: 801, type: !782)
!2543 = !DILocalVariable(name: "o", arg: 4, scope: !2537, file: !544, line: 802, type: !1861)
!2544 = !DILocalVariable(name: "p", scope: !2537, file: !544, line: 804, type: !1861)
!2545 = !DILocalVariable(name: "saved_errno", scope: !2537, file: !544, line: 805, type: !74)
!2546 = !DILocalVariable(name: "flags", scope: !2537, file: !544, line: 807, type: !74)
!2547 = !DILocalVariable(name: "bufsize", scope: !2537, file: !544, line: 808, type: !135)
!2548 = !DILocalVariable(name: "buf", scope: !2537, file: !544, line: 812, type: !132)
!2549 = !DILocation(line: 0, scope: !2537, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 791, column: 10, scope: !2528)
!2551 = !DILocation(line: 804, column: 37, scope: !2537, inlinedAt: !2550)
!2552 = !DILocation(line: 805, column: 21, scope: !2537, inlinedAt: !2550)
!2553 = !DILocation(line: 807, column: 18, scope: !2537, inlinedAt: !2550)
!2554 = !DILocation(line: 807, column: 24, scope: !2537, inlinedAt: !2550)
!2555 = !DILocation(line: 808, column: 72, scope: !2537, inlinedAt: !2550)
!2556 = !DILocation(line: 809, column: 56, scope: !2537, inlinedAt: !2550)
!2557 = !DILocation(line: 810, column: 49, scope: !2537, inlinedAt: !2550)
!2558 = !DILocation(line: 811, column: 49, scope: !2537, inlinedAt: !2550)
!2559 = !DILocation(line: 808, column: 20, scope: !2537, inlinedAt: !2550)
!2560 = !DILocation(line: 811, column: 62, scope: !2537, inlinedAt: !2550)
!2561 = !DILocation(line: 812, column: 15, scope: !2537, inlinedAt: !2550)
!2562 = !DILocation(line: 813, column: 60, scope: !2537, inlinedAt: !2550)
!2563 = !DILocation(line: 815, column: 32, scope: !2537, inlinedAt: !2550)
!2564 = !DILocation(line: 815, column: 47, scope: !2537, inlinedAt: !2550)
!2565 = !DILocation(line: 813, column: 3, scope: !2537, inlinedAt: !2550)
!2566 = !DILocation(line: 816, column: 9, scope: !2537, inlinedAt: !2550)
!2567 = !DILocation(line: 791, column: 3, scope: !2528)
!2568 = !DILocation(line: 0, scope: !2537)
!2569 = !DILocation(line: 804, column: 37, scope: !2537)
!2570 = !DILocation(line: 805, column: 21, scope: !2537)
!2571 = !DILocation(line: 807, column: 18, scope: !2537)
!2572 = !DILocation(line: 807, column: 27, scope: !2537)
!2573 = !DILocation(line: 807, column: 24, scope: !2537)
!2574 = !DILocation(line: 808, column: 72, scope: !2537)
!2575 = !DILocation(line: 809, column: 56, scope: !2537)
!2576 = !DILocation(line: 810, column: 49, scope: !2537)
!2577 = !DILocation(line: 811, column: 49, scope: !2537)
!2578 = !DILocation(line: 808, column: 20, scope: !2537)
!2579 = !DILocation(line: 811, column: 62, scope: !2537)
!2580 = !DILocation(line: 812, column: 15, scope: !2537)
!2581 = !DILocation(line: 813, column: 60, scope: !2537)
!2582 = !DILocation(line: 815, column: 32, scope: !2537)
!2583 = !DILocation(line: 815, column: 47, scope: !2537)
!2584 = !DILocation(line: 813, column: 3, scope: !2537)
!2585 = !DILocation(line: 816, column: 9, scope: !2537)
!2586 = !DILocation(line: 817, column: 7, scope: !2537)
!2587 = !DILocation(line: 818, column: 11, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2537, file: !544, line: 817, column: 7)
!2589 = !{!1618, !1618, i64 0}
!2590 = !DILocation(line: 818, column: 5, scope: !2588)
!2591 = !DILocation(line: 819, column: 3, scope: !2537)
!2592 = distinct !DISubprogram(name: "quotearg_free", scope: !544, file: !544, line: 837, type: !483, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2593)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "sv", scope: !2592, file: !544, line: 839, type: !630)
!2595 = !DILocalVariable(name: "i", scope: !2596, file: !544, line: 840, type: !74)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !544, line: 840, column: 3)
!2597 = !DILocation(line: 839, column: 24, scope: !2592)
!2598 = !DILocation(line: 0, scope: !2592)
!2599 = !DILocation(line: 0, scope: !2596)
!2600 = !DILocation(line: 840, column: 21, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !544, line: 840, column: 3)
!2602 = !DILocation(line: 840, column: 3, scope: !2596)
!2603 = !DILocation(line: 842, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2592, file: !544, line: 842, column: 7)
!2605 = !{!2606, !849, i64 8}
!2606 = !{!"slotvec", !1618, i64 0, !849, i64 8}
!2607 = !DILocation(line: 842, column: 17, scope: !2604)
!2608 = !DILocation(line: 842, column: 7, scope: !2592)
!2609 = !DILocation(line: 841, column: 17, scope: !2601)
!2610 = !DILocation(line: 841, column: 5, scope: !2601)
!2611 = !DILocation(line: 840, column: 32, scope: !2601)
!2612 = distinct !{!2612, !2602, !2613, !958}
!2613 = !DILocation(line: 841, column: 20, scope: !2596)
!2614 = !DILocation(line: 844, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2604, file: !544, line: 843, column: 5)
!2616 = !DILocation(line: 845, column: 21, scope: !2615)
!2617 = !{!2606, !1618, i64 0}
!2618 = !DILocation(line: 846, column: 20, scope: !2615)
!2619 = !DILocation(line: 847, column: 5, scope: !2615)
!2620 = !DILocation(line: 848, column: 10, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2592, file: !544, line: 848, column: 7)
!2622 = !DILocation(line: 848, column: 7, scope: !2592)
!2623 = !DILocation(line: 850, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2621, file: !544, line: 849, column: 5)
!2625 = !DILocation(line: 851, column: 15, scope: !2624)
!2626 = !DILocation(line: 852, column: 5, scope: !2624)
!2627 = !DILocation(line: 853, column: 10, scope: !2592)
!2628 = !DILocation(line: 854, column: 1, scope: !2592)
!2629 = !DISubprogram(name: "free", scope: !1256, file: !1256, line: 786, type: !2630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null, !133}
!2632 = distinct !DISubprogram(name: "quotearg_n", scope: !544, file: !544, line: 919, type: !1025, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2633)
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !544, line: 919, type: !74)
!2635 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !544, line: 919, type: !138)
!2636 = !DILocation(line: 0, scope: !2632)
!2637 = !DILocation(line: 921, column: 10, scope: !2632)
!2638 = !DILocation(line: 921, column: 3, scope: !2632)
!2639 = distinct !DISubprogram(name: "quotearg_n_options", scope: !544, file: !544, line: 866, type: !2640, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!132, !74, !138, !135, !1861}
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2653, !2654, !2656, !2657, !2658}
!2643 = !DILocalVariable(name: "n", arg: 1, scope: !2639, file: !544, line: 866, type: !74)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !544, line: 866, type: !138)
!2645 = !DILocalVariable(name: "argsize", arg: 3, scope: !2639, file: !544, line: 866, type: !135)
!2646 = !DILocalVariable(name: "options", arg: 4, scope: !2639, file: !544, line: 867, type: !1861)
!2647 = !DILocalVariable(name: "saved_errno", scope: !2639, file: !544, line: 869, type: !74)
!2648 = !DILocalVariable(name: "sv", scope: !2639, file: !544, line: 871, type: !630)
!2649 = !DILocalVariable(name: "nslots_max", scope: !2639, file: !544, line: 873, type: !74)
!2650 = !DILocalVariable(name: "preallocated", scope: !2651, file: !544, line: 879, type: !176)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !544, line: 878, column: 5)
!2652 = distinct !DILexicalBlock(scope: !2639, file: !544, line: 877, column: 7)
!2653 = !DILocalVariable(name: "new_nslots", scope: !2651, file: !544, line: 880, type: !795)
!2654 = !DILocalVariable(name: "size", scope: !2655, file: !544, line: 891, type: !135)
!2655 = distinct !DILexicalBlock(scope: !2639, file: !544, line: 890, column: 3)
!2656 = !DILocalVariable(name: "val", scope: !2655, file: !544, line: 892, type: !132)
!2657 = !DILocalVariable(name: "flags", scope: !2655, file: !544, line: 894, type: !74)
!2658 = !DILocalVariable(name: "qsize", scope: !2655, file: !544, line: 895, type: !135)
!2659 = distinct !DIAssignID()
!2660 = !DILocation(line: 0, scope: !2651)
!2661 = !DILocation(line: 0, scope: !2639)
!2662 = !DILocation(line: 869, column: 21, scope: !2639)
!2663 = !DILocation(line: 871, column: 24, scope: !2639)
!2664 = !DILocation(line: 874, column: 17, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2639, file: !544, line: 874, column: 7)
!2666 = !DILocation(line: 875, column: 5, scope: !2665)
!2667 = !DILocation(line: 877, column: 7, scope: !2652)
!2668 = !DILocation(line: 877, column: 14, scope: !2652)
!2669 = !DILocation(line: 877, column: 7, scope: !2639)
!2670 = !DILocation(line: 879, column: 31, scope: !2651)
!2671 = !DILocation(line: 880, column: 7, scope: !2651)
!2672 = !DILocation(line: 880, column: 26, scope: !2651)
!2673 = !DILocation(line: 880, column: 13, scope: !2651)
!2674 = distinct !DIAssignID()
!2675 = !DILocation(line: 882, column: 31, scope: !2651)
!2676 = !DILocation(line: 883, column: 33, scope: !2651)
!2677 = !DILocation(line: 883, column: 42, scope: !2651)
!2678 = !DILocation(line: 883, column: 31, scope: !2651)
!2679 = !DILocation(line: 882, column: 22, scope: !2651)
!2680 = !DILocation(line: 882, column: 15, scope: !2651)
!2681 = !DILocation(line: 884, column: 11, scope: !2651)
!2682 = !DILocation(line: 885, column: 15, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2651, file: !544, line: 884, column: 11)
!2684 = !{i64 0, i64 8, !2589, i64 8, i64 8, !848}
!2685 = !DILocation(line: 885, column: 9, scope: !2683)
!2686 = !DILocation(line: 886, column: 20, scope: !2651)
!2687 = !DILocation(line: 886, column: 18, scope: !2651)
!2688 = !DILocation(line: 886, column: 32, scope: !2651)
!2689 = !DILocation(line: 886, column: 43, scope: !2651)
!2690 = !DILocation(line: 886, column: 53, scope: !2651)
!2691 = !DILocation(line: 0, scope: !2078, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 886, column: 7, scope: !2651)
!2693 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2692)
!2694 = !DILocation(line: 887, column: 16, scope: !2651)
!2695 = !DILocation(line: 887, column: 14, scope: !2651)
!2696 = !DILocation(line: 888, column: 5, scope: !2652)
!2697 = !DILocation(line: 888, column: 5, scope: !2651)
!2698 = !DILocation(line: 891, column: 19, scope: !2655)
!2699 = !DILocation(line: 891, column: 25, scope: !2655)
!2700 = !DILocation(line: 0, scope: !2655)
!2701 = !DILocation(line: 892, column: 23, scope: !2655)
!2702 = !DILocation(line: 894, column: 26, scope: !2655)
!2703 = !DILocation(line: 894, column: 32, scope: !2655)
!2704 = !DILocation(line: 896, column: 55, scope: !2655)
!2705 = !DILocation(line: 897, column: 55, scope: !2655)
!2706 = !DILocation(line: 898, column: 55, scope: !2655)
!2707 = !DILocation(line: 899, column: 55, scope: !2655)
!2708 = !DILocation(line: 895, column: 20, scope: !2655)
!2709 = !DILocation(line: 901, column: 14, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2655, file: !544, line: 901, column: 9)
!2711 = !DILocation(line: 901, column: 9, scope: !2655)
!2712 = !DILocation(line: 903, column: 35, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2710, file: !544, line: 902, column: 7)
!2714 = !DILocation(line: 903, column: 20, scope: !2713)
!2715 = !DILocation(line: 904, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !544, line: 904, column: 13)
!2717 = !DILocation(line: 904, column: 13, scope: !2713)
!2718 = !DILocation(line: 905, column: 11, scope: !2716)
!2719 = !DILocation(line: 906, column: 27, scope: !2713)
!2720 = !DILocation(line: 906, column: 19, scope: !2713)
!2721 = !DILocation(line: 907, column: 69, scope: !2713)
!2722 = !DILocation(line: 909, column: 44, scope: !2713)
!2723 = !DILocation(line: 910, column: 44, scope: !2713)
!2724 = !DILocation(line: 907, column: 9, scope: !2713)
!2725 = !DILocation(line: 911, column: 7, scope: !2713)
!2726 = !DILocation(line: 913, column: 11, scope: !2655)
!2727 = !DILocation(line: 914, column: 5, scope: !2655)
!2728 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !544, file: !544, line: 925, type: !2729, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!132, !74, !138, !135}
!2731 = !{!2732, !2733, !2734}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !544, line: 925, type: !74)
!2733 = !DILocalVariable(name: "arg", arg: 2, scope: !2728, file: !544, line: 925, type: !138)
!2734 = !DILocalVariable(name: "argsize", arg: 3, scope: !2728, file: !544, line: 925, type: !135)
!2735 = !DILocation(line: 0, scope: !2728)
!2736 = !DILocation(line: 927, column: 10, scope: !2728)
!2737 = !DILocation(line: 927, column: 3, scope: !2728)
!2738 = distinct !DISubprogram(name: "quotearg", scope: !544, file: !544, line: 931, type: !1034, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2739)
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "arg", arg: 1, scope: !2738, file: !544, line: 931, type: !138)
!2741 = !DILocation(line: 0, scope: !2738)
!2742 = !DILocation(line: 0, scope: !2632, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 933, column: 10, scope: !2738)
!2744 = !DILocation(line: 921, column: 10, scope: !2632, inlinedAt: !2743)
!2745 = !DILocation(line: 933, column: 3, scope: !2738)
!2746 = distinct !DISubprogram(name: "quotearg_mem", scope: !544, file: !544, line: 937, type: !2747, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!132, !138, !135}
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2746, file: !544, line: 937, type: !138)
!2751 = !DILocalVariable(name: "argsize", arg: 2, scope: !2746, file: !544, line: 937, type: !135)
!2752 = !DILocation(line: 0, scope: !2746)
!2753 = !DILocation(line: 0, scope: !2728, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 939, column: 10, scope: !2746)
!2755 = !DILocation(line: 927, column: 10, scope: !2728, inlinedAt: !2754)
!2756 = !DILocation(line: 939, column: 3, scope: !2746)
!2757 = distinct !DISubprogram(name: "quotearg_n_style", scope: !544, file: !544, line: 943, type: !2758, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!132, !74, !567, !138}
!2760 = !{!2761, !2762, !2763, !2764}
!2761 = !DILocalVariable(name: "n", arg: 1, scope: !2757, file: !544, line: 943, type: !74)
!2762 = !DILocalVariable(name: "s", arg: 2, scope: !2757, file: !544, line: 943, type: !567)
!2763 = !DILocalVariable(name: "arg", arg: 3, scope: !2757, file: !544, line: 943, type: !138)
!2764 = !DILocalVariable(name: "o", scope: !2757, file: !544, line: 945, type: !1862)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 0, scope: !2757)
!2767 = !DILocation(line: 945, column: 3, scope: !2757)
!2768 = !{!2769}
!2769 = distinct !{!2769, !2770, !"quoting_options_from_style: argument 0"}
!2770 = distinct !{!2770, !"quoting_options_from_style"}
!2771 = !DILocation(line: 945, column: 36, scope: !2757)
!2772 = !DILocalVariable(name: "style", arg: 1, scope: !2773, file: !544, line: 183, type: !567)
!2773 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !544, file: !544, line: 183, type: !2774, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!582, !567}
!2776 = !{!2772, !2777}
!2777 = !DILocalVariable(name: "o", scope: !2773, file: !544, line: 185, type: !582)
!2778 = !DILocation(line: 0, scope: !2773, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 945, column: 36, scope: !2757)
!2780 = !DILocation(line: 185, column: 26, scope: !2773, inlinedAt: !2779)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2779)
!2783 = distinct !DILexicalBlock(scope: !2773, file: !544, line: 186, column: 7)
!2784 = !DILocation(line: 186, column: 7, scope: !2773, inlinedAt: !2779)
!2785 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2779)
!2786 = !DILocation(line: 188, column: 11, scope: !2773, inlinedAt: !2779)
!2787 = distinct !DIAssignID()
!2788 = !DILocation(line: 946, column: 10, scope: !2757)
!2789 = !DILocation(line: 947, column: 1, scope: !2757)
!2790 = !DILocation(line: 946, column: 3, scope: !2757)
!2791 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !544, file: !544, line: 950, type: !2792, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!132, !74, !567, !138, !135}
!2794 = !{!2795, !2796, !2797, !2798, !2799}
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2791, file: !544, line: 950, type: !74)
!2796 = !DILocalVariable(name: "s", arg: 2, scope: !2791, file: !544, line: 950, type: !567)
!2797 = !DILocalVariable(name: "arg", arg: 3, scope: !2791, file: !544, line: 951, type: !138)
!2798 = !DILocalVariable(name: "argsize", arg: 4, scope: !2791, file: !544, line: 951, type: !135)
!2799 = !DILocalVariable(name: "o", scope: !2791, file: !544, line: 953, type: !1862)
!2800 = distinct !DIAssignID()
!2801 = !DILocation(line: 0, scope: !2791)
!2802 = !DILocation(line: 953, column: 3, scope: !2791)
!2803 = !{!2804}
!2804 = distinct !{!2804, !2805, !"quoting_options_from_style: argument 0"}
!2805 = distinct !{!2805, !"quoting_options_from_style"}
!2806 = !DILocation(line: 953, column: 36, scope: !2791)
!2807 = !DILocation(line: 0, scope: !2773, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 953, column: 36, scope: !2791)
!2809 = !DILocation(line: 185, column: 26, scope: !2773, inlinedAt: !2808)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2808)
!2812 = !DILocation(line: 186, column: 7, scope: !2773, inlinedAt: !2808)
!2813 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2808)
!2814 = !DILocation(line: 188, column: 11, scope: !2773, inlinedAt: !2808)
!2815 = distinct !DIAssignID()
!2816 = !DILocation(line: 954, column: 10, scope: !2791)
!2817 = !DILocation(line: 955, column: 1, scope: !2791)
!2818 = !DILocation(line: 954, column: 3, scope: !2791)
!2819 = distinct !DISubprogram(name: "quotearg_style", scope: !544, file: !544, line: 958, type: !2820, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!132, !567, !138}
!2822 = !{!2823, !2824}
!2823 = !DILocalVariable(name: "s", arg: 1, scope: !2819, file: !544, line: 958, type: !567)
!2824 = !DILocalVariable(name: "arg", arg: 2, scope: !2819, file: !544, line: 958, type: !138)
!2825 = distinct !DIAssignID()
!2826 = !DILocation(line: 0, scope: !2819)
!2827 = !DILocation(line: 0, scope: !2757, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 960, column: 10, scope: !2819)
!2829 = !DILocation(line: 945, column: 3, scope: !2757, inlinedAt: !2828)
!2830 = !{!2831}
!2831 = distinct !{!2831, !2832, !"quoting_options_from_style: argument 0"}
!2832 = distinct !{!2832, !"quoting_options_from_style"}
!2833 = !DILocation(line: 945, column: 36, scope: !2757, inlinedAt: !2828)
!2834 = !DILocation(line: 0, scope: !2773, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 945, column: 36, scope: !2757, inlinedAt: !2828)
!2836 = !DILocation(line: 185, column: 26, scope: !2773, inlinedAt: !2835)
!2837 = distinct !DIAssignID()
!2838 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2835)
!2839 = !DILocation(line: 186, column: 7, scope: !2773, inlinedAt: !2835)
!2840 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2835)
!2841 = !DILocation(line: 188, column: 11, scope: !2773, inlinedAt: !2835)
!2842 = distinct !DIAssignID()
!2843 = !DILocation(line: 946, column: 10, scope: !2757, inlinedAt: !2828)
!2844 = !DILocation(line: 947, column: 1, scope: !2757, inlinedAt: !2828)
!2845 = !DILocation(line: 960, column: 3, scope: !2819)
!2846 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !544, file: !544, line: 964, type: !2847, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!132, !567, !138, !135}
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "s", arg: 1, scope: !2846, file: !544, line: 964, type: !567)
!2851 = !DILocalVariable(name: "arg", arg: 2, scope: !2846, file: !544, line: 964, type: !138)
!2852 = !DILocalVariable(name: "argsize", arg: 3, scope: !2846, file: !544, line: 964, type: !135)
!2853 = distinct !DIAssignID()
!2854 = !DILocation(line: 0, scope: !2846)
!2855 = !DILocation(line: 0, scope: !2791, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 966, column: 10, scope: !2846)
!2857 = !DILocation(line: 953, column: 3, scope: !2791, inlinedAt: !2856)
!2858 = !{!2859}
!2859 = distinct !{!2859, !2860, !"quoting_options_from_style: argument 0"}
!2860 = distinct !{!2860, !"quoting_options_from_style"}
!2861 = !DILocation(line: 953, column: 36, scope: !2791, inlinedAt: !2856)
!2862 = !DILocation(line: 0, scope: !2773, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 953, column: 36, scope: !2791, inlinedAt: !2856)
!2864 = !DILocation(line: 185, column: 26, scope: !2773, inlinedAt: !2863)
!2865 = distinct !DIAssignID()
!2866 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2863)
!2867 = !DILocation(line: 186, column: 7, scope: !2773, inlinedAt: !2863)
!2868 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2863)
!2869 = !DILocation(line: 188, column: 11, scope: !2773, inlinedAt: !2863)
!2870 = distinct !DIAssignID()
!2871 = !DILocation(line: 954, column: 10, scope: !2791, inlinedAt: !2856)
!2872 = !DILocation(line: 955, column: 1, scope: !2791, inlinedAt: !2856)
!2873 = !DILocation(line: 966, column: 3, scope: !2846)
!2874 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !544, file: !544, line: 970, type: !2875, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!132, !138, !135, !4}
!2877 = !{!2878, !2879, !2880, !2881}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !544, line: 970, type: !138)
!2879 = !DILocalVariable(name: "argsize", arg: 2, scope: !2874, file: !544, line: 970, type: !135)
!2880 = !DILocalVariable(name: "ch", arg: 3, scope: !2874, file: !544, line: 970, type: !4)
!2881 = !DILocalVariable(name: "options", scope: !2874, file: !544, line: 972, type: !582)
!2882 = distinct !DIAssignID()
!2883 = !DILocation(line: 0, scope: !2874)
!2884 = !DILocation(line: 972, column: 3, scope: !2874)
!2885 = !DILocation(line: 973, column: 13, scope: !2874)
!2886 = !{i64 0, i64 4, !911, i64 4, i64 4, !911, i64 8, i64 32, !920, i64 40, i64 8, !848, i64 48, i64 8, !848}
!2887 = distinct !DIAssignID()
!2888 = !DILocation(line: 0, scope: !1881, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 974, column: 3, scope: !2874)
!2890 = !DILocation(line: 147, column: 41, scope: !1881, inlinedAt: !2889)
!2891 = !DILocation(line: 147, column: 62, scope: !1881, inlinedAt: !2889)
!2892 = !DILocation(line: 147, column: 57, scope: !1881, inlinedAt: !2889)
!2893 = !DILocation(line: 148, column: 15, scope: !1881, inlinedAt: !2889)
!2894 = !DILocation(line: 149, column: 21, scope: !1881, inlinedAt: !2889)
!2895 = !DILocation(line: 149, column: 24, scope: !1881, inlinedAt: !2889)
!2896 = !DILocation(line: 150, column: 19, scope: !1881, inlinedAt: !2889)
!2897 = !DILocation(line: 150, column: 24, scope: !1881, inlinedAt: !2889)
!2898 = !DILocation(line: 150, column: 6, scope: !1881, inlinedAt: !2889)
!2899 = !DILocation(line: 975, column: 10, scope: !2874)
!2900 = !DILocation(line: 976, column: 1, scope: !2874)
!2901 = !DILocation(line: 975, column: 3, scope: !2874)
!2902 = distinct !DISubprogram(name: "quotearg_char", scope: !544, file: !544, line: 979, type: !2903, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!132, !138, !4}
!2905 = !{!2906, !2907}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2902, file: !544, line: 979, type: !138)
!2907 = !DILocalVariable(name: "ch", arg: 2, scope: !2902, file: !544, line: 979, type: !4)
!2908 = distinct !DIAssignID()
!2909 = !DILocation(line: 0, scope: !2902)
!2910 = !DILocation(line: 0, scope: !2874, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 981, column: 10, scope: !2902)
!2912 = !DILocation(line: 972, column: 3, scope: !2874, inlinedAt: !2911)
!2913 = !DILocation(line: 973, column: 13, scope: !2874, inlinedAt: !2911)
!2914 = distinct !DIAssignID()
!2915 = !DILocation(line: 0, scope: !1881, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 974, column: 3, scope: !2874, inlinedAt: !2911)
!2917 = !DILocation(line: 147, column: 41, scope: !1881, inlinedAt: !2916)
!2918 = !DILocation(line: 147, column: 62, scope: !1881, inlinedAt: !2916)
!2919 = !DILocation(line: 147, column: 57, scope: !1881, inlinedAt: !2916)
!2920 = !DILocation(line: 148, column: 15, scope: !1881, inlinedAt: !2916)
!2921 = !DILocation(line: 149, column: 21, scope: !1881, inlinedAt: !2916)
!2922 = !DILocation(line: 149, column: 24, scope: !1881, inlinedAt: !2916)
!2923 = !DILocation(line: 150, column: 19, scope: !1881, inlinedAt: !2916)
!2924 = !DILocation(line: 150, column: 24, scope: !1881, inlinedAt: !2916)
!2925 = !DILocation(line: 150, column: 6, scope: !1881, inlinedAt: !2916)
!2926 = !DILocation(line: 975, column: 10, scope: !2874, inlinedAt: !2911)
!2927 = !DILocation(line: 976, column: 1, scope: !2874, inlinedAt: !2911)
!2928 = !DILocation(line: 981, column: 3, scope: !2902)
!2929 = distinct !DISubprogram(name: "quotearg_colon", scope: !544, file: !544, line: 985, type: !1034, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2930)
!2930 = !{!2931}
!2931 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !544, line: 985, type: !138)
!2932 = distinct !DIAssignID()
!2933 = !DILocation(line: 0, scope: !2929)
!2934 = !DILocation(line: 0, scope: !2902, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 987, column: 10, scope: !2929)
!2936 = !DILocation(line: 0, scope: !2874, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 981, column: 10, scope: !2902, inlinedAt: !2935)
!2938 = !DILocation(line: 972, column: 3, scope: !2874, inlinedAt: !2937)
!2939 = !DILocation(line: 973, column: 13, scope: !2874, inlinedAt: !2937)
!2940 = distinct !DIAssignID()
!2941 = !DILocation(line: 0, scope: !1881, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 974, column: 3, scope: !2874, inlinedAt: !2937)
!2943 = !DILocation(line: 147, column: 57, scope: !1881, inlinedAt: !2942)
!2944 = !DILocation(line: 149, column: 21, scope: !1881, inlinedAt: !2942)
!2945 = !DILocation(line: 150, column: 6, scope: !1881, inlinedAt: !2942)
!2946 = !DILocation(line: 975, column: 10, scope: !2874, inlinedAt: !2937)
!2947 = !DILocation(line: 976, column: 1, scope: !2874, inlinedAt: !2937)
!2948 = !DILocation(line: 987, column: 3, scope: !2929)
!2949 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !544, file: !544, line: 991, type: !2747, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2950)
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "arg", arg: 1, scope: !2949, file: !544, line: 991, type: !138)
!2952 = !DILocalVariable(name: "argsize", arg: 2, scope: !2949, file: !544, line: 991, type: !135)
!2953 = distinct !DIAssignID()
!2954 = !DILocation(line: 0, scope: !2949)
!2955 = !DILocation(line: 0, scope: !2874, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 993, column: 10, scope: !2949)
!2957 = !DILocation(line: 972, column: 3, scope: !2874, inlinedAt: !2956)
!2958 = !DILocation(line: 973, column: 13, scope: !2874, inlinedAt: !2956)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 0, scope: !1881, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 974, column: 3, scope: !2874, inlinedAt: !2956)
!2962 = !DILocation(line: 147, column: 57, scope: !1881, inlinedAt: !2961)
!2963 = !DILocation(line: 149, column: 21, scope: !1881, inlinedAt: !2961)
!2964 = !DILocation(line: 150, column: 6, scope: !1881, inlinedAt: !2961)
!2965 = !DILocation(line: 975, column: 10, scope: !2874, inlinedAt: !2956)
!2966 = !DILocation(line: 976, column: 1, scope: !2874, inlinedAt: !2956)
!2967 = !DILocation(line: 993, column: 3, scope: !2949)
!2968 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !544, file: !544, line: 997, type: !2758, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2969)
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2968, file: !544, line: 997, type: !74)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2968, file: !544, line: 997, type: !567)
!2972 = !DILocalVariable(name: "arg", arg: 3, scope: !2968, file: !544, line: 997, type: !138)
!2973 = !DILocalVariable(name: "options", scope: !2968, file: !544, line: 999, type: !582)
!2974 = distinct !DIAssignID()
!2975 = !DILocation(line: 0, scope: !2968)
!2976 = !DILocation(line: 185, column: 26, scope: !2773, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1000, column: 13, scope: !2968)
!2978 = !DILocation(line: 999, column: 3, scope: !2968)
!2979 = !DILocation(line: 0, scope: !2773, inlinedAt: !2977)
!2980 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2977)
!2981 = !DILocation(line: 186, column: 7, scope: !2773, inlinedAt: !2977)
!2982 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2977)
!2983 = !{!2984}
!2984 = distinct !{!2984, !2985, !"quoting_options_from_style: argument 0"}
!2985 = distinct !{!2985, !"quoting_options_from_style"}
!2986 = !DILocation(line: 1000, column: 13, scope: !2968)
!2987 = distinct !DIAssignID()
!2988 = distinct !DIAssignID()
!2989 = !DILocation(line: 0, scope: !1881, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 1001, column: 3, scope: !2968)
!2991 = !DILocation(line: 147, column: 57, scope: !1881, inlinedAt: !2990)
!2992 = !DILocation(line: 149, column: 21, scope: !1881, inlinedAt: !2990)
!2993 = !DILocation(line: 150, column: 6, scope: !1881, inlinedAt: !2990)
!2994 = distinct !DIAssignID()
!2995 = !DILocation(line: 1002, column: 10, scope: !2968)
!2996 = !DILocation(line: 1003, column: 1, scope: !2968)
!2997 = !DILocation(line: 1002, column: 3, scope: !2968)
!2998 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !544, file: !544, line: 1006, type: !2999, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!132, !74, !138, !138, !138}
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !544, line: 1006, type: !74)
!3003 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2998, file: !544, line: 1006, type: !138)
!3004 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2998, file: !544, line: 1007, type: !138)
!3005 = !DILocalVariable(name: "arg", arg: 4, scope: !2998, file: !544, line: 1007, type: !138)
!3006 = distinct !DIAssignID()
!3007 = !DILocation(line: 0, scope: !2998)
!3008 = !DILocalVariable(name: "o", scope: !3009, file: !544, line: 1018, type: !582)
!3009 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !544, file: !544, line: 1014, type: !3010, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!132, !74, !138, !138, !138, !135}
!3012 = !{!3013, !3014, !3015, !3016, !3017, !3008}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !544, line: 1014, type: !74)
!3014 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3009, file: !544, line: 1014, type: !138)
!3015 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3009, file: !544, line: 1015, type: !138)
!3016 = !DILocalVariable(name: "arg", arg: 4, scope: !3009, file: !544, line: 1016, type: !138)
!3017 = !DILocalVariable(name: "argsize", arg: 5, scope: !3009, file: !544, line: 1016, type: !135)
!3018 = !DILocation(line: 0, scope: !3009, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1009, column: 10, scope: !2998)
!3020 = !DILocation(line: 1018, column: 3, scope: !3009, inlinedAt: !3019)
!3021 = !DILocation(line: 1018, column: 30, scope: !3009, inlinedAt: !3019)
!3022 = distinct !DIAssignID()
!3023 = distinct !DIAssignID()
!3024 = !DILocation(line: 0, scope: !1921, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1019, column: 3, scope: !3009, inlinedAt: !3019)
!3026 = !DILocation(line: 174, column: 12, scope: !1921, inlinedAt: !3025)
!3027 = distinct !DIAssignID()
!3028 = !DILocation(line: 175, column: 8, scope: !1934, inlinedAt: !3025)
!3029 = !DILocation(line: 175, column: 19, scope: !1934, inlinedAt: !3025)
!3030 = !DILocation(line: 176, column: 5, scope: !1934, inlinedAt: !3025)
!3031 = !DILocation(line: 177, column: 6, scope: !1921, inlinedAt: !3025)
!3032 = !DILocation(line: 177, column: 17, scope: !1921, inlinedAt: !3025)
!3033 = distinct !DIAssignID()
!3034 = !DILocation(line: 178, column: 6, scope: !1921, inlinedAt: !3025)
!3035 = !DILocation(line: 178, column: 18, scope: !1921, inlinedAt: !3025)
!3036 = distinct !DIAssignID()
!3037 = !DILocation(line: 1020, column: 10, scope: !3009, inlinedAt: !3019)
!3038 = !DILocation(line: 1021, column: 1, scope: !3009, inlinedAt: !3019)
!3039 = !DILocation(line: 1009, column: 3, scope: !2998)
!3040 = distinct !DIAssignID()
!3041 = !DILocation(line: 0, scope: !3009)
!3042 = !DILocation(line: 1018, column: 3, scope: !3009)
!3043 = !DILocation(line: 1018, column: 30, scope: !3009)
!3044 = distinct !DIAssignID()
!3045 = distinct !DIAssignID()
!3046 = !DILocation(line: 0, scope: !1921, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1019, column: 3, scope: !3009)
!3048 = !DILocation(line: 174, column: 12, scope: !1921, inlinedAt: !3047)
!3049 = distinct !DIAssignID()
!3050 = !DILocation(line: 175, column: 8, scope: !1934, inlinedAt: !3047)
!3051 = !DILocation(line: 175, column: 19, scope: !1934, inlinedAt: !3047)
!3052 = !DILocation(line: 176, column: 5, scope: !1934, inlinedAt: !3047)
!3053 = !DILocation(line: 177, column: 6, scope: !1921, inlinedAt: !3047)
!3054 = !DILocation(line: 177, column: 17, scope: !1921, inlinedAt: !3047)
!3055 = distinct !DIAssignID()
!3056 = !DILocation(line: 178, column: 6, scope: !1921, inlinedAt: !3047)
!3057 = !DILocation(line: 178, column: 18, scope: !1921, inlinedAt: !3047)
!3058 = distinct !DIAssignID()
!3059 = !DILocation(line: 1020, column: 10, scope: !3009)
!3060 = !DILocation(line: 1021, column: 1, scope: !3009)
!3061 = !DILocation(line: 1020, column: 3, scope: !3009)
!3062 = distinct !DISubprogram(name: "quotearg_custom", scope: !544, file: !544, line: 1024, type: !3063, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!132, !138, !138, !138}
!3065 = !{!3066, !3067, !3068}
!3066 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3062, file: !544, line: 1024, type: !138)
!3067 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3062, file: !544, line: 1024, type: !138)
!3068 = !DILocalVariable(name: "arg", arg: 3, scope: !3062, file: !544, line: 1025, type: !138)
!3069 = distinct !DIAssignID()
!3070 = !DILocation(line: 0, scope: !3062)
!3071 = !DILocation(line: 0, scope: !2998, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 1027, column: 10, scope: !3062)
!3073 = !DILocation(line: 0, scope: !3009, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1009, column: 10, scope: !2998, inlinedAt: !3072)
!3075 = !DILocation(line: 1018, column: 3, scope: !3009, inlinedAt: !3074)
!3076 = !DILocation(line: 1018, column: 30, scope: !3009, inlinedAt: !3074)
!3077 = distinct !DIAssignID()
!3078 = distinct !DIAssignID()
!3079 = !DILocation(line: 0, scope: !1921, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1019, column: 3, scope: !3009, inlinedAt: !3074)
!3081 = !DILocation(line: 174, column: 12, scope: !1921, inlinedAt: !3080)
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 175, column: 8, scope: !1934, inlinedAt: !3080)
!3084 = !DILocation(line: 175, column: 19, scope: !1934, inlinedAt: !3080)
!3085 = !DILocation(line: 176, column: 5, scope: !1934, inlinedAt: !3080)
!3086 = !DILocation(line: 177, column: 6, scope: !1921, inlinedAt: !3080)
!3087 = !DILocation(line: 177, column: 17, scope: !1921, inlinedAt: !3080)
!3088 = distinct !DIAssignID()
!3089 = !DILocation(line: 178, column: 6, scope: !1921, inlinedAt: !3080)
!3090 = !DILocation(line: 178, column: 18, scope: !1921, inlinedAt: !3080)
!3091 = distinct !DIAssignID()
!3092 = !DILocation(line: 1020, column: 10, scope: !3009, inlinedAt: !3074)
!3093 = !DILocation(line: 1021, column: 1, scope: !3009, inlinedAt: !3074)
!3094 = !DILocation(line: 1027, column: 3, scope: !3062)
!3095 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !544, file: !544, line: 1031, type: !3096, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!132, !138, !138, !138, !135}
!3098 = !{!3099, !3100, !3101, !3102}
!3099 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3095, file: !544, line: 1031, type: !138)
!3100 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3095, file: !544, line: 1031, type: !138)
!3101 = !DILocalVariable(name: "arg", arg: 3, scope: !3095, file: !544, line: 1032, type: !138)
!3102 = !DILocalVariable(name: "argsize", arg: 4, scope: !3095, file: !544, line: 1032, type: !135)
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 0, scope: !3095)
!3105 = !DILocation(line: 0, scope: !3009, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1034, column: 10, scope: !3095)
!3107 = !DILocation(line: 1018, column: 3, scope: !3009, inlinedAt: !3106)
!3108 = !DILocation(line: 1018, column: 30, scope: !3009, inlinedAt: !3106)
!3109 = distinct !DIAssignID()
!3110 = distinct !DIAssignID()
!3111 = !DILocation(line: 0, scope: !1921, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 1019, column: 3, scope: !3009, inlinedAt: !3106)
!3113 = !DILocation(line: 174, column: 12, scope: !1921, inlinedAt: !3112)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 175, column: 8, scope: !1934, inlinedAt: !3112)
!3116 = !DILocation(line: 175, column: 19, scope: !1934, inlinedAt: !3112)
!3117 = !DILocation(line: 176, column: 5, scope: !1934, inlinedAt: !3112)
!3118 = !DILocation(line: 177, column: 6, scope: !1921, inlinedAt: !3112)
!3119 = !DILocation(line: 177, column: 17, scope: !1921, inlinedAt: !3112)
!3120 = distinct !DIAssignID()
!3121 = !DILocation(line: 178, column: 6, scope: !1921, inlinedAt: !3112)
!3122 = !DILocation(line: 178, column: 18, scope: !1921, inlinedAt: !3112)
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 1020, column: 10, scope: !3009, inlinedAt: !3106)
!3125 = !DILocation(line: 1021, column: 1, scope: !3009, inlinedAt: !3106)
!3126 = !DILocation(line: 1034, column: 3, scope: !3095)
!3127 = distinct !DISubprogram(name: "quote_n_mem", scope: !544, file: !544, line: 1049, type: !3128, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!138, !74, !138, !135}
!3130 = !{!3131, !3132, !3133}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !544, line: 1049, type: !74)
!3132 = !DILocalVariable(name: "arg", arg: 2, scope: !3127, file: !544, line: 1049, type: !138)
!3133 = !DILocalVariable(name: "argsize", arg: 3, scope: !3127, file: !544, line: 1049, type: !135)
!3134 = !DILocation(line: 0, scope: !3127)
!3135 = !DILocation(line: 1051, column: 10, scope: !3127)
!3136 = !DILocation(line: 1051, column: 3, scope: !3127)
!3137 = distinct !DISubprogram(name: "quote_mem", scope: !544, file: !544, line: 1055, type: !3138, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!138, !138, !135}
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !544, line: 1055, type: !138)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !544, line: 1055, type: !135)
!3143 = !DILocation(line: 0, scope: !3137)
!3144 = !DILocation(line: 0, scope: !3127, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1057, column: 10, scope: !3137)
!3146 = !DILocation(line: 1051, column: 10, scope: !3127, inlinedAt: !3145)
!3147 = !DILocation(line: 1057, column: 3, scope: !3137)
!3148 = distinct !DISubprogram(name: "quote_n", scope: !544, file: !544, line: 1061, type: !3149, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!138, !74, !138}
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !544, line: 1061, type: !74)
!3153 = !DILocalVariable(name: "arg", arg: 2, scope: !3148, file: !544, line: 1061, type: !138)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 0, scope: !3127, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1063, column: 10, scope: !3148)
!3157 = !DILocation(line: 1051, column: 10, scope: !3127, inlinedAt: !3156)
!3158 = !DILocation(line: 1063, column: 3, scope: !3148)
!3159 = distinct !DISubprogram(name: "quote", scope: !544, file: !544, line: 1067, type: !3160, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!138, !138}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "arg", arg: 1, scope: !3159, file: !544, line: 1067, type: !138)
!3164 = !DILocation(line: 0, scope: !3159)
!3165 = !DILocation(line: 0, scope: !3148, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1069, column: 10, scope: !3159)
!3167 = !DILocation(line: 0, scope: !3127, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1063, column: 10, scope: !3148, inlinedAt: !3166)
!3169 = !DILocation(line: 1051, column: 10, scope: !3127, inlinedAt: !3168)
!3170 = !DILocation(line: 1069, column: 3, scope: !3159)
!3171 = distinct !DISubprogram(name: "version_etc_arn", scope: !645, file: !645, line: 61, type: !3172, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3209)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !3174, !138, !138, !138, !3208, !135}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3176)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3176, file: !193, line: 51, baseType: !74, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3176, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3176, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3176, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3176, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3176, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3176, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3176, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3176, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3176, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3176, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3176, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3176, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3176, file: !193, line: 70, baseType: !3192, size: 64, offset: 832)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3176, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3176, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3176, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3176, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3176, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3176, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3176, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3176, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3176, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3176, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3176, file: !193, line: 93, baseType: !3192, size: 64, offset: 1344)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3176, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3176, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3176, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3176, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215}
!3210 = !DILocalVariable(name: "stream", arg: 1, scope: !3171, file: !645, line: 61, type: !3174)
!3211 = !DILocalVariable(name: "command_name", arg: 2, scope: !3171, file: !645, line: 62, type: !138)
!3212 = !DILocalVariable(name: "package", arg: 3, scope: !3171, file: !645, line: 62, type: !138)
!3213 = !DILocalVariable(name: "version", arg: 4, scope: !3171, file: !645, line: 63, type: !138)
!3214 = !DILocalVariable(name: "authors", arg: 5, scope: !3171, file: !645, line: 64, type: !3208)
!3215 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3171, file: !645, line: 64, type: !135)
!3216 = !DILocation(line: 0, scope: !3171)
!3217 = !DILocation(line: 66, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3171, file: !645, line: 66, column: 7)
!3219 = !DILocation(line: 66, column: 7, scope: !3171)
!3220 = !DILocation(line: 67, column: 5, scope: !3218)
!3221 = !DILocation(line: 69, column: 5, scope: !3218)
!3222 = !DILocation(line: 83, column: 3, scope: !3171)
!3223 = !DILocation(line: 85, column: 3, scope: !3171)
!3224 = !DILocation(line: 88, column: 3, scope: !3171)
!3225 = !DILocation(line: 95, column: 3, scope: !3171)
!3226 = !DILocation(line: 97, column: 3, scope: !3171)
!3227 = !DILocation(line: 105, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3171, file: !645, line: 98, column: 5)
!3229 = !DILocation(line: 106, column: 7, scope: !3228)
!3230 = !DILocation(line: 109, column: 7, scope: !3228)
!3231 = !DILocation(line: 110, column: 7, scope: !3228)
!3232 = !DILocation(line: 113, column: 7, scope: !3228)
!3233 = !DILocation(line: 115, column: 7, scope: !3228)
!3234 = !DILocation(line: 120, column: 7, scope: !3228)
!3235 = !DILocation(line: 122, column: 7, scope: !3228)
!3236 = !DILocation(line: 127, column: 7, scope: !3228)
!3237 = !DILocation(line: 129, column: 7, scope: !3228)
!3238 = !DILocation(line: 134, column: 7, scope: !3228)
!3239 = !DILocation(line: 137, column: 7, scope: !3228)
!3240 = !DILocation(line: 142, column: 7, scope: !3228)
!3241 = !DILocation(line: 145, column: 7, scope: !3228)
!3242 = !DILocation(line: 150, column: 7, scope: !3228)
!3243 = !DILocation(line: 154, column: 7, scope: !3228)
!3244 = !DILocation(line: 159, column: 7, scope: !3228)
!3245 = !DILocation(line: 163, column: 7, scope: !3228)
!3246 = !DILocation(line: 170, column: 7, scope: !3228)
!3247 = !DILocation(line: 174, column: 7, scope: !3228)
!3248 = !DILocation(line: 176, column: 1, scope: !3171)
!3249 = distinct !DISubprogram(name: "version_etc_ar", scope: !645, file: !645, line: 183, type: !3250, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !3174, !138, !138, !138, !3208}
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258}
!3253 = !DILocalVariable(name: "stream", arg: 1, scope: !3249, file: !645, line: 183, type: !3174)
!3254 = !DILocalVariable(name: "command_name", arg: 2, scope: !3249, file: !645, line: 184, type: !138)
!3255 = !DILocalVariable(name: "package", arg: 3, scope: !3249, file: !645, line: 184, type: !138)
!3256 = !DILocalVariable(name: "version", arg: 4, scope: !3249, file: !645, line: 185, type: !138)
!3257 = !DILocalVariable(name: "authors", arg: 5, scope: !3249, file: !645, line: 185, type: !3208)
!3258 = !DILocalVariable(name: "n_authors", scope: !3249, file: !645, line: 187, type: !135)
!3259 = !DILocation(line: 0, scope: !3249)
!3260 = !DILocation(line: 189, column: 8, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3249, file: !645, line: 189, column: 3)
!3262 = !DILocation(line: 189, scope: !3261)
!3263 = !DILocation(line: 189, column: 23, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !645, line: 189, column: 3)
!3265 = !DILocation(line: 189, column: 3, scope: !3261)
!3266 = !DILocation(line: 189, column: 52, scope: !3264)
!3267 = distinct !{!3267, !3265, !3268, !958}
!3268 = !DILocation(line: 190, column: 5, scope: !3261)
!3269 = !DILocation(line: 191, column: 3, scope: !3249)
!3270 = !DILocation(line: 192, column: 1, scope: !3249)
!3271 = distinct !DISubprogram(name: "version_etc_va", scope: !645, file: !645, line: 199, type: !3272, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3284)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !3174, !138, !138, !138, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !443, line: 52, baseType: !3275)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !445, line: 12, baseType: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !645, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3277, file: !645, line: 192, baseType: !133, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3277, file: !645, line: 192, baseType: !133, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3277, file: !645, line: 192, baseType: !133, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3277, file: !645, line: 192, baseType: !74, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3277, file: !645, line: 192, baseType: !74, size: 32, offset: 224)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3285 = !DILocalVariable(name: "stream", arg: 1, scope: !3271, file: !645, line: 199, type: !3174)
!3286 = !DILocalVariable(name: "command_name", arg: 2, scope: !3271, file: !645, line: 200, type: !138)
!3287 = !DILocalVariable(name: "package", arg: 3, scope: !3271, file: !645, line: 200, type: !138)
!3288 = !DILocalVariable(name: "version", arg: 4, scope: !3271, file: !645, line: 201, type: !138)
!3289 = !DILocalVariable(name: "authors", arg: 5, scope: !3271, file: !645, line: 201, type: !3274)
!3290 = !DILocalVariable(name: "n_authors", scope: !3271, file: !645, line: 203, type: !135)
!3291 = !DILocalVariable(name: "authtab", scope: !3271, file: !645, line: 204, type: !3292)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !52)
!3293 = distinct !DIAssignID()
!3294 = !DILocation(line: 0, scope: !3271)
!3295 = !DILocation(line: 204, column: 3, scope: !3271)
!3296 = !DILocation(line: 208, column: 35, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !645, line: 206, column: 3)
!3298 = distinct !DILexicalBlock(scope: !3271, file: !645, line: 206, column: 3)
!3299 = !DILocation(line: 208, column: 33, scope: !3297)
!3300 = !DILocation(line: 208, column: 67, scope: !3297)
!3301 = !DILocation(line: 206, column: 3, scope: !3298)
!3302 = !DILocation(line: 208, column: 14, scope: !3297)
!3303 = !DILocation(line: 0, scope: !3298)
!3304 = !DILocation(line: 211, column: 3, scope: !3271)
!3305 = !DILocation(line: 213, column: 1, scope: !3271)
!3306 = distinct !DISubprogram(name: "version_etc", scope: !645, file: !645, line: 230, type: !3307, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3174, !138, !138, !138, null}
!3309 = !{!3310, !3311, !3312, !3313, !3314}
!3310 = !DILocalVariable(name: "stream", arg: 1, scope: !3306, file: !645, line: 230, type: !3174)
!3311 = !DILocalVariable(name: "command_name", arg: 2, scope: !3306, file: !645, line: 231, type: !138)
!3312 = !DILocalVariable(name: "package", arg: 3, scope: !3306, file: !645, line: 231, type: !138)
!3313 = !DILocalVariable(name: "version", arg: 4, scope: !3306, file: !645, line: 232, type: !138)
!3314 = !DILocalVariable(name: "authors", scope: !3306, file: !645, line: 234, type: !3274)
!3315 = distinct !DIAssignID()
!3316 = !DILocation(line: 0, scope: !3306)
!3317 = !DILocation(line: 234, column: 3, scope: !3306)
!3318 = !DILocation(line: 235, column: 3, scope: !3306)
!3319 = !DILocation(line: 236, column: 3, scope: !3306)
!3320 = !DILocation(line: 237, column: 3, scope: !3306)
!3321 = !DILocation(line: 238, column: 1, scope: !3306)
!3322 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !645, file: !645, line: 241, type: !483, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769)
!3323 = !DILocation(line: 243, column: 3, scope: !3322)
!3324 = !DILocation(line: 248, column: 3, scope: !3322)
!3325 = !DILocation(line: 254, column: 3, scope: !3322)
!3326 = !DILocation(line: 259, column: 3, scope: !3322)
!3327 = !DILocation(line: 261, column: 1, scope: !3322)
!3328 = distinct !DISubprogram(name: "xnrealloc", scope: !3329, file: !3329, line: 147, type: !3330, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3332)
!3329 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!133, !133, !135, !135}
!3332 = !{!3333, !3334, !3335}
!3333 = !DILocalVariable(name: "p", arg: 1, scope: !3328, file: !3329, line: 147, type: !133)
!3334 = !DILocalVariable(name: "n", arg: 2, scope: !3328, file: !3329, line: 147, type: !135)
!3335 = !DILocalVariable(name: "s", arg: 3, scope: !3328, file: !3329, line: 147, type: !135)
!3336 = !DILocation(line: 0, scope: !3328)
!3337 = !DILocalVariable(name: "p", arg: 1, scope: !3338, file: !776, line: 83, type: !133)
!3338 = distinct !DISubprogram(name: "xreallocarray", scope: !776, file: !776, line: 83, type: !3330, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3339)
!3339 = !{!3337, !3340, !3341}
!3340 = !DILocalVariable(name: "n", arg: 2, scope: !3338, file: !776, line: 83, type: !135)
!3341 = !DILocalVariable(name: "s", arg: 3, scope: !3338, file: !776, line: 83, type: !135)
!3342 = !DILocation(line: 0, scope: !3338, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 149, column: 10, scope: !3328)
!3344 = !DILocation(line: 85, column: 25, scope: !3338, inlinedAt: !3343)
!3345 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !776, line: 37, type: !133)
!3346 = distinct !DISubprogram(name: "check_nonnull", scope: !776, file: !776, line: 37, type: !3347, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!133, !133}
!3349 = !{!3345}
!3350 = !DILocation(line: 0, scope: !3346, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 85, column: 10, scope: !3338, inlinedAt: !3343)
!3352 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3351)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !776, line: 39, column: 7)
!3354 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3351)
!3355 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3351)
!3356 = !DILocation(line: 149, column: 3, scope: !3328)
!3357 = !DILocation(line: 0, scope: !3338)
!3358 = !DILocation(line: 85, column: 25, scope: !3338)
!3359 = !DILocation(line: 0, scope: !3346, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 85, column: 10, scope: !3338)
!3361 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3360)
!3362 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3360)
!3363 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3360)
!3364 = !DILocation(line: 85, column: 3, scope: !3338)
!3365 = distinct !DISubprogram(name: "xmalloc", scope: !776, file: !776, line: 47, type: !3366, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!133, !135}
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "s", arg: 1, scope: !3365, file: !776, line: 47, type: !135)
!3370 = !DILocation(line: 0, scope: !3365)
!3371 = !DILocation(line: 49, column: 25, scope: !3365)
!3372 = !DILocation(line: 0, scope: !3346, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 49, column: 10, scope: !3365)
!3374 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3373)
!3375 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3373)
!3376 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3373)
!3377 = !DILocation(line: 49, column: 3, scope: !3365)
!3378 = !DISubprogram(name: "malloc", scope: !1032, file: !1032, line: 540, type: !3366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3379 = distinct !DISubprogram(name: "ximalloc", scope: !776, file: !776, line: 53, type: !3380, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!133, !795}
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "s", arg: 1, scope: !3379, file: !776, line: 53, type: !795)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocalVariable(name: "s", arg: 1, scope: !3386, file: !3387, line: 55, type: !795)
!3386 = distinct !DISubprogram(name: "imalloc", scope: !3387, file: !3387, line: 55, type: !3380, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3388)
!3387 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3388 = !{!3385}
!3389 = !DILocation(line: 0, scope: !3386, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 55, column: 25, scope: !3379)
!3391 = !DILocation(line: 57, column: 26, scope: !3386, inlinedAt: !3390)
!3392 = !DILocation(line: 0, scope: !3346, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 55, column: 10, scope: !3379)
!3394 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3393)
!3395 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3393)
!3396 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3393)
!3397 = !DILocation(line: 55, column: 3, scope: !3379)
!3398 = distinct !DISubprogram(name: "xcharalloc", scope: !776, file: !776, line: 59, type: !3399, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!132, !135}
!3401 = !{!3402}
!3402 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !776, line: 59, type: !135)
!3403 = !DILocation(line: 0, scope: !3398)
!3404 = !DILocation(line: 0, scope: !3365, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 61, column: 10, scope: !3398)
!3406 = !DILocation(line: 49, column: 25, scope: !3365, inlinedAt: !3405)
!3407 = !DILocation(line: 0, scope: !3346, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 49, column: 10, scope: !3365, inlinedAt: !3405)
!3409 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3408)
!3410 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3408)
!3411 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3408)
!3412 = !DILocation(line: 61, column: 3, scope: !3398)
!3413 = distinct !DISubprogram(name: "xrealloc", scope: !776, file: !776, line: 68, type: !3414, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!133, !133, !135}
!3416 = !{!3417, !3418}
!3417 = !DILocalVariable(name: "p", arg: 1, scope: !3413, file: !776, line: 68, type: !133)
!3418 = !DILocalVariable(name: "s", arg: 2, scope: !3413, file: !776, line: 68, type: !135)
!3419 = !DILocation(line: 0, scope: !3413)
!3420 = !DILocalVariable(name: "ptr", arg: 1, scope: !3421, file: !3422, line: 2057, type: !133)
!3421 = distinct !DISubprogram(name: "rpl_realloc", scope: !3422, file: !3422, line: 2057, type: !3414, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3423)
!3422 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3423 = !{!3420, !3424}
!3424 = !DILocalVariable(name: "size", arg: 2, scope: !3421, file: !3422, line: 2057, type: !135)
!3425 = !DILocation(line: 0, scope: !3421, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 70, column: 25, scope: !3413)
!3427 = !DILocation(line: 2059, column: 24, scope: !3421, inlinedAt: !3426)
!3428 = !DILocation(line: 2059, column: 10, scope: !3421, inlinedAt: !3426)
!3429 = !DILocation(line: 0, scope: !3346, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 70, column: 10, scope: !3413)
!3431 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3430)
!3432 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3430)
!3433 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3430)
!3434 = !DILocation(line: 70, column: 3, scope: !3413)
!3435 = !DISubprogram(name: "realloc", scope: !1032, file: !1032, line: 551, type: !3414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3436 = distinct !DISubprogram(name: "xirealloc", scope: !776, file: !776, line: 74, type: !3437, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!133, !133, !795}
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !776, line: 74, type: !133)
!3441 = !DILocalVariable(name: "s", arg: 2, scope: !3436, file: !776, line: 74, type: !795)
!3442 = !DILocation(line: 0, scope: !3436)
!3443 = !DILocalVariable(name: "p", arg: 1, scope: !3444, file: !3387, line: 66, type: !133)
!3444 = distinct !DISubprogram(name: "irealloc", scope: !3387, file: !3387, line: 66, type: !3437, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3445)
!3445 = !{!3443, !3446}
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3444, file: !3387, line: 66, type: !795)
!3447 = !DILocation(line: 0, scope: !3444, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 76, column: 25, scope: !3436)
!3449 = !DILocation(line: 0, scope: !3421, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 68, column: 26, scope: !3444, inlinedAt: !3448)
!3451 = !DILocation(line: 2059, column: 24, scope: !3421, inlinedAt: !3450)
!3452 = !DILocation(line: 2059, column: 10, scope: !3421, inlinedAt: !3450)
!3453 = !DILocation(line: 0, scope: !3346, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 76, column: 10, scope: !3436)
!3455 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3454)
!3456 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3454)
!3457 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3454)
!3458 = !DILocation(line: 76, column: 3, scope: !3436)
!3459 = distinct !DISubprogram(name: "xireallocarray", scope: !776, file: !776, line: 89, type: !3460, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!133, !133, !795, !795}
!3462 = !{!3463, !3464, !3465}
!3463 = !DILocalVariable(name: "p", arg: 1, scope: !3459, file: !776, line: 89, type: !133)
!3464 = !DILocalVariable(name: "n", arg: 2, scope: !3459, file: !776, line: 89, type: !795)
!3465 = !DILocalVariable(name: "s", arg: 3, scope: !3459, file: !776, line: 89, type: !795)
!3466 = !DILocation(line: 0, scope: !3459)
!3467 = !DILocalVariable(name: "p", arg: 1, scope: !3468, file: !3387, line: 98, type: !133)
!3468 = distinct !DISubprogram(name: "ireallocarray", scope: !3387, file: !3387, line: 98, type: !3460, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3469)
!3469 = !{!3467, !3470, !3471}
!3470 = !DILocalVariable(name: "n", arg: 2, scope: !3468, file: !3387, line: 98, type: !795)
!3471 = !DILocalVariable(name: "s", arg: 3, scope: !3468, file: !3387, line: 98, type: !795)
!3472 = !DILocation(line: 0, scope: !3468, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 91, column: 25, scope: !3459)
!3474 = !DILocation(line: 101, column: 13, scope: !3468, inlinedAt: !3473)
!3475 = !DILocation(line: 0, scope: !3346, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 91, column: 10, scope: !3459)
!3477 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3476)
!3478 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3476)
!3479 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3476)
!3480 = !DILocation(line: 91, column: 3, scope: !3459)
!3481 = distinct !DISubprogram(name: "xnmalloc", scope: !776, file: !776, line: 98, type: !3482, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!133, !135, !135}
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !776, line: 98, type: !135)
!3486 = !DILocalVariable(name: "s", arg: 2, scope: !3481, file: !776, line: 98, type: !135)
!3487 = !DILocation(line: 0, scope: !3481)
!3488 = !DILocation(line: 0, scope: !3338, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 100, column: 10, scope: !3481)
!3490 = !DILocation(line: 85, column: 25, scope: !3338, inlinedAt: !3489)
!3491 = !DILocation(line: 0, scope: !3346, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 85, column: 10, scope: !3338, inlinedAt: !3489)
!3493 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3492)
!3494 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3492)
!3495 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3492)
!3496 = !DILocation(line: 100, column: 3, scope: !3481)
!3497 = distinct !DISubprogram(name: "xinmalloc", scope: !776, file: !776, line: 104, type: !3498, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!133, !795, !795}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "n", arg: 1, scope: !3497, file: !776, line: 104, type: !795)
!3502 = !DILocalVariable(name: "s", arg: 2, scope: !3497, file: !776, line: 104, type: !795)
!3503 = !DILocation(line: 0, scope: !3497)
!3504 = !DILocation(line: 0, scope: !3459, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 106, column: 10, scope: !3497)
!3506 = !DILocation(line: 0, scope: !3468, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 91, column: 25, scope: !3459, inlinedAt: !3505)
!3508 = !DILocation(line: 101, column: 13, scope: !3468, inlinedAt: !3507)
!3509 = !DILocation(line: 0, scope: !3346, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 91, column: 10, scope: !3459, inlinedAt: !3505)
!3511 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3510)
!3512 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3510)
!3513 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3510)
!3514 = !DILocation(line: 106, column: 3, scope: !3497)
!3515 = distinct !DISubprogram(name: "x2realloc", scope: !776, file: !776, line: 116, type: !3516, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!133, !133, !782}
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "p", arg: 1, scope: !3515, file: !776, line: 116, type: !133)
!3520 = !DILocalVariable(name: "ps", arg: 2, scope: !3515, file: !776, line: 116, type: !782)
!3521 = !DILocation(line: 0, scope: !3515)
!3522 = !DILocation(line: 0, scope: !779, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 118, column: 10, scope: !3515)
!3524 = !DILocation(line: 178, column: 14, scope: !779, inlinedAt: !3523)
!3525 = !DILocation(line: 180, column: 9, scope: !3526, inlinedAt: !3523)
!3526 = distinct !DILexicalBlock(scope: !779, file: !776, line: 180, column: 7)
!3527 = !DILocation(line: 180, column: 7, scope: !779, inlinedAt: !3523)
!3528 = !DILocation(line: 182, column: 13, scope: !3529, inlinedAt: !3523)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !776, line: 182, column: 11)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !776, line: 181, column: 5)
!3531 = !DILocation(line: 182, column: 11, scope: !3530, inlinedAt: !3523)
!3532 = !DILocation(line: 197, column: 11, scope: !3533, inlinedAt: !3523)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !776, line: 197, column: 11)
!3534 = distinct !DILexicalBlock(scope: !3526, file: !776, line: 195, column: 5)
!3535 = !DILocation(line: 197, column: 11, scope: !3534, inlinedAt: !3523)
!3536 = !DILocation(line: 198, column: 9, scope: !3533, inlinedAt: !3523)
!3537 = !DILocation(line: 0, scope: !3338, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 201, column: 7, scope: !779, inlinedAt: !3523)
!3539 = !DILocation(line: 85, column: 25, scope: !3338, inlinedAt: !3538)
!3540 = !DILocation(line: 0, scope: !3346, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 85, column: 10, scope: !3338, inlinedAt: !3538)
!3542 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3541)
!3545 = !DILocation(line: 202, column: 7, scope: !779, inlinedAt: !3523)
!3546 = !DILocation(line: 118, column: 3, scope: !3515)
!3547 = !DILocation(line: 0, scope: !779)
!3548 = !DILocation(line: 178, column: 14, scope: !779)
!3549 = !DILocation(line: 180, column: 9, scope: !3526)
!3550 = !DILocation(line: 180, column: 7, scope: !779)
!3551 = !DILocation(line: 182, column: 13, scope: !3529)
!3552 = !DILocation(line: 182, column: 11, scope: !3530)
!3553 = !DILocation(line: 190, column: 30, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3529, file: !776, line: 183, column: 9)
!3555 = !DILocation(line: 191, column: 16, scope: !3554)
!3556 = !DILocation(line: 191, column: 13, scope: !3554)
!3557 = !DILocation(line: 192, column: 9, scope: !3554)
!3558 = !DILocation(line: 197, column: 11, scope: !3533)
!3559 = !DILocation(line: 197, column: 11, scope: !3534)
!3560 = !DILocation(line: 198, column: 9, scope: !3533)
!3561 = !DILocation(line: 0, scope: !3338, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 201, column: 7, scope: !779)
!3563 = !DILocation(line: 85, column: 25, scope: !3338, inlinedAt: !3562)
!3564 = !DILocation(line: 0, scope: !3346, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 85, column: 10, scope: !3338, inlinedAt: !3562)
!3566 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3565)
!3567 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3565)
!3568 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3565)
!3569 = !DILocation(line: 202, column: 7, scope: !779)
!3570 = !DILocation(line: 203, column: 3, scope: !779)
!3571 = !DILocation(line: 0, scope: !791)
!3572 = !DILocation(line: 230, column: 14, scope: !791)
!3573 = !DILocation(line: 238, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !791, file: !776, line: 238, column: 7)
!3575 = !DILocation(line: 238, column: 7, scope: !791)
!3576 = !DILocation(line: 240, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !791, file: !776, line: 240, column: 7)
!3578 = !DILocation(line: 240, column: 18, scope: !3577)
!3579 = !DILocation(line: 253, column: 8, scope: !791)
!3580 = !DILocation(line: 256, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !791, file: !776, line: 256, column: 7)
!3582 = !DILocation(line: 256, column: 7, scope: !791)
!3583 = !DILocation(line: 258, column: 27, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !776, line: 257, column: 5)
!3585 = !DILocation(line: 259, column: 32, scope: !3584)
!3586 = !DILocation(line: 260, column: 5, scope: !3584)
!3587 = !DILocation(line: 262, column: 9, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !791, file: !776, line: 262, column: 7)
!3589 = !DILocation(line: 262, column: 7, scope: !791)
!3590 = !DILocation(line: 263, column: 9, scope: !3588)
!3591 = !DILocation(line: 263, column: 5, scope: !3588)
!3592 = !DILocation(line: 264, column: 9, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !791, file: !776, line: 264, column: 7)
!3594 = !DILocation(line: 264, column: 14, scope: !3593)
!3595 = !DILocation(line: 265, column: 7, scope: !3593)
!3596 = !DILocation(line: 265, column: 11, scope: !3593)
!3597 = !DILocation(line: 266, column: 11, scope: !3593)
!3598 = !DILocation(line: 267, column: 14, scope: !3593)
!3599 = !DILocation(line: 264, column: 7, scope: !791)
!3600 = !DILocation(line: 268, column: 5, scope: !3593)
!3601 = !DILocation(line: 0, scope: !3413, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 269, column: 8, scope: !791)
!3603 = !DILocation(line: 0, scope: !3421, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 70, column: 25, scope: !3413, inlinedAt: !3602)
!3605 = !DILocation(line: 2059, column: 24, scope: !3421, inlinedAt: !3604)
!3606 = !DILocation(line: 2059, column: 10, scope: !3421, inlinedAt: !3604)
!3607 = !DILocation(line: 0, scope: !3346, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 70, column: 10, scope: !3413, inlinedAt: !3602)
!3609 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3608)
!3610 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3608)
!3611 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3608)
!3612 = !DILocation(line: 270, column: 7, scope: !791)
!3613 = !DILocation(line: 271, column: 3, scope: !791)
!3614 = distinct !DISubprogram(name: "xzalloc", scope: !776, file: !776, line: 279, type: !3366, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3615)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "s", arg: 1, scope: !3614, file: !776, line: 279, type: !135)
!3617 = !DILocation(line: 0, scope: !3614)
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !776, line: 294, type: !135)
!3619 = distinct !DISubprogram(name: "xcalloc", scope: !776, file: !776, line: 294, type: !3482, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3620)
!3620 = !{!3618, !3621}
!3621 = !DILocalVariable(name: "s", arg: 2, scope: !3619, file: !776, line: 294, type: !135)
!3622 = !DILocation(line: 0, scope: !3619, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 281, column: 10, scope: !3614)
!3624 = !DILocation(line: 296, column: 25, scope: !3619, inlinedAt: !3623)
!3625 = !DILocation(line: 0, scope: !3346, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 296, column: 10, scope: !3619, inlinedAt: !3623)
!3627 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3626)
!3628 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3626)
!3629 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3626)
!3630 = !DILocation(line: 281, column: 3, scope: !3614)
!3631 = !DISubprogram(name: "calloc", scope: !1032, file: !1032, line: 543, type: !3482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3632 = !DILocation(line: 0, scope: !3619)
!3633 = !DILocation(line: 296, column: 25, scope: !3619)
!3634 = !DILocation(line: 0, scope: !3346, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 296, column: 10, scope: !3619)
!3636 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3635)
!3639 = !DILocation(line: 296, column: 3, scope: !3619)
!3640 = distinct !DISubprogram(name: "xizalloc", scope: !776, file: !776, line: 285, type: !3380, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3641)
!3641 = !{!3642}
!3642 = !DILocalVariable(name: "s", arg: 1, scope: !3640, file: !776, line: 285, type: !795)
!3643 = !DILocation(line: 0, scope: !3640)
!3644 = !DILocalVariable(name: "n", arg: 1, scope: !3645, file: !776, line: 300, type: !795)
!3645 = distinct !DISubprogram(name: "xicalloc", scope: !776, file: !776, line: 300, type: !3498, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3646)
!3646 = !{!3644, !3647}
!3647 = !DILocalVariable(name: "s", arg: 2, scope: !3645, file: !776, line: 300, type: !795)
!3648 = !DILocation(line: 0, scope: !3645, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 287, column: 10, scope: !3640)
!3650 = !DILocalVariable(name: "n", arg: 1, scope: !3651, file: !3387, line: 77, type: !795)
!3651 = distinct !DISubprogram(name: "icalloc", scope: !3387, file: !3387, line: 77, type: !3498, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3652)
!3652 = !{!3650, !3653}
!3653 = !DILocalVariable(name: "s", arg: 2, scope: !3651, file: !3387, line: 77, type: !795)
!3654 = !DILocation(line: 0, scope: !3651, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 302, column: 25, scope: !3645, inlinedAt: !3649)
!3656 = !DILocation(line: 91, column: 10, scope: !3651, inlinedAt: !3655)
!3657 = !DILocation(line: 0, scope: !3346, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 302, column: 10, scope: !3645, inlinedAt: !3649)
!3659 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3658)
!3660 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3658)
!3661 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3658)
!3662 = !DILocation(line: 287, column: 3, scope: !3640)
!3663 = !DILocation(line: 0, scope: !3645)
!3664 = !DILocation(line: 0, scope: !3651, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 302, column: 25, scope: !3645)
!3666 = !DILocation(line: 91, column: 10, scope: !3651, inlinedAt: !3665)
!3667 = !DILocation(line: 0, scope: !3346, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 302, column: 10, scope: !3645)
!3669 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3668)
!3672 = !DILocation(line: 302, column: 3, scope: !3645)
!3673 = distinct !DISubprogram(name: "xmemdup", scope: !776, file: !776, line: 310, type: !3674, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!133, !1056, !135}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "p", arg: 1, scope: !3673, file: !776, line: 310, type: !1056)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !776, line: 310, type: !135)
!3679 = !DILocation(line: 0, scope: !3673)
!3680 = !DILocation(line: 0, scope: !3365, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 312, column: 18, scope: !3673)
!3682 = !DILocation(line: 49, column: 25, scope: !3365, inlinedAt: !3681)
!3683 = !DILocation(line: 0, scope: !3346, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 49, column: 10, scope: !3365, inlinedAt: !3681)
!3685 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3684)
!3686 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3684)
!3687 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3684)
!3688 = !DILocalVariable(name: "__dest", arg: 1, scope: !3689, file: !1265, line: 26, type: !3692)
!3689 = distinct !DISubprogram(name: "memcpy", scope: !1265, file: !1265, line: 26, type: !3690, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3693)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!133, !3692, !1055, !135}
!3692 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!3693 = !{!3688, !3694, !3695}
!3694 = !DILocalVariable(name: "__src", arg: 2, scope: !3689, file: !1265, line: 26, type: !1055)
!3695 = !DILocalVariable(name: "__len", arg: 3, scope: !3689, file: !1265, line: 26, type: !135)
!3696 = !DILocation(line: 0, scope: !3689, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 312, column: 10, scope: !3673)
!3698 = !DILocation(line: 29, column: 10, scope: !3689, inlinedAt: !3697)
!3699 = !DILocation(line: 312, column: 3, scope: !3673)
!3700 = distinct !DISubprogram(name: "ximemdup", scope: !776, file: !776, line: 316, type: !3701, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!133, !1056, !795}
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "p", arg: 1, scope: !3700, file: !776, line: 316, type: !1056)
!3705 = !DILocalVariable(name: "s", arg: 2, scope: !3700, file: !776, line: 316, type: !795)
!3706 = !DILocation(line: 0, scope: !3700)
!3707 = !DILocation(line: 0, scope: !3379, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 318, column: 18, scope: !3700)
!3709 = !DILocation(line: 0, scope: !3386, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 55, column: 25, scope: !3379, inlinedAt: !3708)
!3711 = !DILocation(line: 57, column: 26, scope: !3386, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3346, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 55, column: 10, scope: !3379, inlinedAt: !3708)
!3714 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3713)
!3717 = !DILocation(line: 0, scope: !3689, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 318, column: 10, scope: !3700)
!3719 = !DILocation(line: 29, column: 10, scope: !3689, inlinedAt: !3718)
!3720 = !DILocation(line: 318, column: 3, scope: !3700)
!3721 = distinct !DISubprogram(name: "ximemdup0", scope: !776, file: !776, line: 325, type: !3722, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!132, !1056, !795}
!3724 = !{!3725, !3726, !3727}
!3725 = !DILocalVariable(name: "p", arg: 1, scope: !3721, file: !776, line: 325, type: !1056)
!3726 = !DILocalVariable(name: "s", arg: 2, scope: !3721, file: !776, line: 325, type: !795)
!3727 = !DILocalVariable(name: "result", scope: !3721, file: !776, line: 327, type: !132)
!3728 = !DILocation(line: 0, scope: !3721)
!3729 = !DILocation(line: 327, column: 30, scope: !3721)
!3730 = !DILocation(line: 0, scope: !3379, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 327, column: 18, scope: !3721)
!3732 = !DILocation(line: 0, scope: !3386, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 55, column: 25, scope: !3379, inlinedAt: !3731)
!3734 = !DILocation(line: 57, column: 26, scope: !3386, inlinedAt: !3733)
!3735 = !DILocation(line: 0, scope: !3346, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 55, column: 10, scope: !3379, inlinedAt: !3731)
!3737 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3736)
!3738 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3736)
!3739 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3736)
!3740 = !DILocation(line: 328, column: 3, scope: !3721)
!3741 = !DILocation(line: 328, column: 13, scope: !3721)
!3742 = !DILocation(line: 0, scope: !3689, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 329, column: 10, scope: !3721)
!3744 = !DILocation(line: 29, column: 10, scope: !3689, inlinedAt: !3743)
!3745 = !DILocation(line: 329, column: 3, scope: !3721)
!3746 = distinct !DISubprogram(name: "xstrdup", scope: !776, file: !776, line: 335, type: !1034, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3747)
!3747 = !{!3748}
!3748 = !DILocalVariable(name: "string", arg: 1, scope: !3746, file: !776, line: 335, type: !138)
!3749 = !DILocation(line: 0, scope: !3746)
!3750 = !DILocation(line: 337, column: 27, scope: !3746)
!3751 = !DILocation(line: 337, column: 43, scope: !3746)
!3752 = !DILocation(line: 0, scope: !3673, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 337, column: 10, scope: !3746)
!3754 = !DILocation(line: 0, scope: !3365, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 312, column: 18, scope: !3673, inlinedAt: !3753)
!3756 = !DILocation(line: 49, column: 25, scope: !3365, inlinedAt: !3755)
!3757 = !DILocation(line: 0, scope: !3346, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 49, column: 10, scope: !3365, inlinedAt: !3755)
!3759 = !DILocation(line: 39, column: 8, scope: !3353, inlinedAt: !3758)
!3760 = !DILocation(line: 39, column: 7, scope: !3346, inlinedAt: !3758)
!3761 = !DILocation(line: 40, column: 5, scope: !3353, inlinedAt: !3758)
!3762 = !DILocation(line: 0, scope: !3689, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 312, column: 10, scope: !3673, inlinedAt: !3753)
!3764 = !DILocation(line: 29, column: 10, scope: !3689, inlinedAt: !3763)
!3765 = !DILocation(line: 337, column: 3, scope: !3746)
!3766 = distinct !DISubprogram(name: "xalloc_die", scope: !736, file: !736, line: 32, type: !483, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3767)
!3767 = !{!3768}
!3768 = !DILocalVariable(name: "__errstatus", scope: !3769, file: !736, line: 34, type: !3770)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !736, line: 34, column: 3)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3771 = !DILocation(line: 34, column: 3, scope: !3769)
!3772 = !DILocation(line: 0, scope: !3769)
!3773 = !DILocation(line: 40, column: 3, scope: !3766)
!3774 = distinct !DISubprogram(name: "close_stream", scope: !813, file: !813, line: 55, type: !3775, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3811)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!74, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !193, line: 51, baseType: !74, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3779, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3779, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3779, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3779, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3779, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3779, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3779, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3779, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3779, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3779, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3779, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3779, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3779, file: !193, line: 70, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3779, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3779, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3779, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3779, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3779, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3779, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3779, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3779, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3779, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3779, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3779, file: !193, line: 93, baseType: !3795, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3779, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3779, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3779, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3779, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3811 = !{!3812, !3813, !3815, !3816}
!3812 = !DILocalVariable(name: "stream", arg: 1, scope: !3774, file: !813, line: 55, type: !3777)
!3813 = !DILocalVariable(name: "some_pending", scope: !3774, file: !813, line: 57, type: !3814)
!3814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3815 = !DILocalVariable(name: "prev_fail", scope: !3774, file: !813, line: 58, type: !3814)
!3816 = !DILocalVariable(name: "fclose_fail", scope: !3774, file: !813, line: 59, type: !3814)
!3817 = !DILocation(line: 0, scope: !3774)
!3818 = !DILocation(line: 57, column: 30, scope: !3774)
!3819 = !DILocalVariable(name: "__stream", arg: 1, scope: !3820, file: !1608, line: 135, type: !3777)
!3820 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1608, file: !1608, line: 135, type: !3775, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3821)
!3821 = !{!3819}
!3822 = !DILocation(line: 0, scope: !3820, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 58, column: 27, scope: !3774)
!3824 = !DILocation(line: 137, column: 10, scope: !3820, inlinedAt: !3823)
!3825 = !{!1617, !912, i64 0}
!3826 = !DILocation(line: 58, column: 43, scope: !3774)
!3827 = !DILocation(line: 59, column: 29, scope: !3774)
!3828 = !DILocation(line: 59, column: 45, scope: !3774)
!3829 = !DILocation(line: 69, column: 17, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3774, file: !813, line: 69, column: 7)
!3831 = !DILocation(line: 57, column: 50, scope: !3774)
!3832 = !DILocation(line: 69, column: 33, scope: !3830)
!3833 = !DILocation(line: 69, column: 53, scope: !3830)
!3834 = !DILocation(line: 69, column: 59, scope: !3830)
!3835 = !DILocation(line: 69, column: 7, scope: !3774)
!3836 = !DILocation(line: 71, column: 11, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !813, line: 70, column: 5)
!3838 = !DILocation(line: 72, column: 9, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3837, file: !813, line: 71, column: 11)
!3840 = !DILocation(line: 72, column: 15, scope: !3839)
!3841 = !DILocation(line: 77, column: 1, scope: !3774)
!3842 = !DISubprogram(name: "__fpending", scope: !3843, file: !3843, line: 75, type: !3844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3843 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!135, !3777}
!3846 = distinct !DISubprogram(name: "rpl_fclose", scope: !815, file: !815, line: 58, type: !3847, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3883)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!74, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3852)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3851, file: !193, line: 51, baseType: !74, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3851, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3851, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3851, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3851, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3851, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3851, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3851, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3851, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3851, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3851, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3851, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3851, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3851, file: !193, line: 70, baseType: !3867, size: 64, offset: 832)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3851, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3851, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3851, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3851, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3851, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3851, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3851, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3851, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3851, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3851, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3851, file: !193, line: 93, baseType: !3867, size: 64, offset: 1344)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3851, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3851, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3851, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3851, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DILocalVariable(name: "fp", arg: 1, scope: !3846, file: !815, line: 58, type: !3849)
!3885 = !DILocalVariable(name: "saved_errno", scope: !3846, file: !815, line: 60, type: !74)
!3886 = !DILocalVariable(name: "fd", scope: !3846, file: !815, line: 63, type: !74)
!3887 = !DILocalVariable(name: "result", scope: !3846, file: !815, line: 74, type: !74)
!3888 = !DILocation(line: 0, scope: !3846)
!3889 = !DILocation(line: 63, column: 12, scope: !3846)
!3890 = !DILocation(line: 64, column: 10, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3846, file: !815, line: 64, column: 7)
!3892 = !DILocation(line: 64, column: 7, scope: !3846)
!3893 = !DILocation(line: 65, column: 12, scope: !3891)
!3894 = !DILocation(line: 65, column: 5, scope: !3891)
!3895 = !DILocation(line: 70, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3846, file: !815, line: 70, column: 7)
!3897 = !DILocation(line: 70, column: 23, scope: !3896)
!3898 = !DILocation(line: 70, column: 33, scope: !3896)
!3899 = !DILocation(line: 70, column: 26, scope: !3896)
!3900 = !DILocation(line: 70, column: 59, scope: !3896)
!3901 = !DILocation(line: 71, column: 7, scope: !3896)
!3902 = !DILocation(line: 71, column: 10, scope: !3896)
!3903 = !DILocation(line: 70, column: 7, scope: !3846)
!3904 = !DILocation(line: 100, column: 12, scope: !3846)
!3905 = !DILocation(line: 105, column: 7, scope: !3846)
!3906 = !DILocation(line: 72, column: 19, scope: !3896)
!3907 = !DILocation(line: 105, column: 19, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3846, file: !815, line: 105, column: 7)
!3909 = !DILocation(line: 107, column: 13, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !815, line: 106, column: 5)
!3911 = !DILocation(line: 109, column: 5, scope: !3910)
!3912 = !DILocation(line: 112, column: 1, scope: !3846)
!3913 = !DISubprogram(name: "fileno", scope: !443, file: !443, line: 809, type: !3847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3914 = !DISubprogram(name: "fclose", scope: !443, file: !443, line: 178, type: !3847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3915 = !DISubprogram(name: "__freading", scope: !3843, file: !3843, line: 51, type: !3847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3916 = !DISubprogram(name: "lseek", scope: !1433, file: !1433, line: 339, type: !3917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!215, !74, !215, !74}
!3919 = distinct !DISubprogram(name: "rpl_fflush", scope: !817, file: !817, line: 130, type: !3920, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !3956)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!74, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3924, file: !193, line: 51, baseType: !74, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3924, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3924, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3924, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3924, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3924, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3924, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3924, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3924, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3924, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3924, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3924, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3924, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3924, file: !193, line: 70, baseType: !3940, size: 64, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3924, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3924, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3924, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3924, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3924, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3924, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3924, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3924, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3924, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3924, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3924, file: !193, line: 93, baseType: !3940, size: 64, offset: 1344)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3924, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3924, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3924, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3924, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3956 = !{!3957}
!3957 = !DILocalVariable(name: "stream", arg: 1, scope: !3919, file: !817, line: 130, type: !3922)
!3958 = !DILocation(line: 0, scope: !3919)
!3959 = !DILocation(line: 151, column: 14, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3919, file: !817, line: 151, column: 7)
!3961 = !DILocation(line: 151, column: 22, scope: !3960)
!3962 = !DILocation(line: 151, column: 27, scope: !3960)
!3963 = !DILocation(line: 151, column: 7, scope: !3919)
!3964 = !DILocation(line: 152, column: 12, scope: !3960)
!3965 = !DILocation(line: 152, column: 5, scope: !3960)
!3966 = !DILocalVariable(name: "fp", arg: 1, scope: !3967, file: !817, line: 42, type: !3922)
!3967 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !817, file: !817, line: 42, type: !3968, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !3922}
!3970 = !{!3966}
!3971 = !DILocation(line: 0, scope: !3967, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 157, column: 3, scope: !3919)
!3973 = !DILocation(line: 44, column: 12, scope: !3974, inlinedAt: !3972)
!3974 = distinct !DILexicalBlock(scope: !3967, file: !817, line: 44, column: 7)
!3975 = !DILocation(line: 44, column: 19, scope: !3974, inlinedAt: !3972)
!3976 = !DILocation(line: 44, column: 7, scope: !3967, inlinedAt: !3972)
!3977 = !DILocation(line: 46, column: 5, scope: !3974, inlinedAt: !3972)
!3978 = !DILocation(line: 159, column: 10, scope: !3919)
!3979 = !DILocation(line: 159, column: 3, scope: !3919)
!3980 = !DILocation(line: 236, column: 1, scope: !3919)
!3981 = !DISubprogram(name: "fflush", scope: !443, file: !443, line: 230, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3982 = distinct !DISubprogram(name: "rpl_fseeko", scope: !819, file: !819, line: 28, type: !3983, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4020)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!74, !3985, !4019, !74}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3987)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3987, file: !193, line: 51, baseType: !74, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3987, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3987, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3987, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3987, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3987, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3987, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3987, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3987, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3987, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3987, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3987, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3987, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3987, file: !193, line: 70, baseType: !4003, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3987, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3987, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3987, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3987, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3987, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3987, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3987, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3987, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3987, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3987, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3987, file: !193, line: 93, baseType: !4003, size: 64, offset: 1344)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3987, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3987, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3987, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3987, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !443, line: 63, baseType: !215)
!4020 = !{!4021, !4022, !4023, !4024}
!4021 = !DILocalVariable(name: "fp", arg: 1, scope: !3982, file: !819, line: 28, type: !3985)
!4022 = !DILocalVariable(name: "offset", arg: 2, scope: !3982, file: !819, line: 28, type: !4019)
!4023 = !DILocalVariable(name: "whence", arg: 3, scope: !3982, file: !819, line: 28, type: !74)
!4024 = !DILocalVariable(name: "pos", scope: !4025, file: !819, line: 123, type: !4019)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !819, line: 119, column: 5)
!4026 = distinct !DILexicalBlock(scope: !3982, file: !819, line: 55, column: 7)
!4027 = !DILocation(line: 0, scope: !3982)
!4028 = !DILocation(line: 55, column: 12, scope: !4026)
!4029 = !{!1617, !849, i64 16}
!4030 = !DILocation(line: 55, column: 33, scope: !4026)
!4031 = !{!1617, !849, i64 8}
!4032 = !DILocation(line: 55, column: 25, scope: !4026)
!4033 = !DILocation(line: 56, column: 7, scope: !4026)
!4034 = !DILocation(line: 56, column: 15, scope: !4026)
!4035 = !DILocation(line: 56, column: 37, scope: !4026)
!4036 = !{!1617, !849, i64 32}
!4037 = !DILocation(line: 56, column: 29, scope: !4026)
!4038 = !DILocation(line: 57, column: 7, scope: !4026)
!4039 = !DILocation(line: 57, column: 15, scope: !4026)
!4040 = !{!1617, !849, i64 72}
!4041 = !DILocation(line: 57, column: 29, scope: !4026)
!4042 = !DILocation(line: 55, column: 7, scope: !3982)
!4043 = !DILocation(line: 123, column: 26, scope: !4025)
!4044 = !DILocation(line: 123, column: 19, scope: !4025)
!4045 = !DILocation(line: 0, scope: !4025)
!4046 = !DILocation(line: 124, column: 15, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4025, file: !819, line: 124, column: 11)
!4048 = !DILocation(line: 124, column: 11, scope: !4025)
!4049 = !DILocation(line: 135, column: 19, scope: !4025)
!4050 = !DILocation(line: 136, column: 12, scope: !4025)
!4051 = !DILocation(line: 136, column: 20, scope: !4025)
!4052 = !{!1617, !1618, i64 144}
!4053 = !DILocation(line: 167, column: 7, scope: !4025)
!4054 = !DILocation(line: 169, column: 10, scope: !3982)
!4055 = !DILocation(line: 169, column: 3, scope: !3982)
!4056 = !DILocation(line: 170, column: 1, scope: !3982)
!4057 = !DISubprogram(name: "fseeko", scope: !443, file: !443, line: 736, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!74, !3985, !215, !74}
!4060 = distinct !DISubprogram(name: "hard_locale", scope: !743, file: !743, line: 28, type: !4061, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!176, !74}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "category", arg: 1, scope: !4060, file: !743, line: 28, type: !74)
!4065 = !DILocalVariable(name: "locale", scope: !4060, file: !743, line: 30, type: !4066)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4067)
!4067 = !{!4068}
!4068 = !DISubrange(count: 257)
!4069 = distinct !DIAssignID()
!4070 = !DILocation(line: 0, scope: !4060)
!4071 = !DILocation(line: 30, column: 3, scope: !4060)
!4072 = !DILocation(line: 32, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4060, file: !743, line: 32, column: 7)
!4074 = !DILocation(line: 32, column: 7, scope: !4060)
!4075 = !DILocalVariable(name: "__s1", arg: 1, scope: !4076, file: !924, line: 1359, type: !138)
!4076 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4077)
!4077 = !{!4075, !4078}
!4078 = !DILocalVariable(name: "__s2", arg: 2, scope: !4076, file: !924, line: 1359, type: !138)
!4079 = !DILocation(line: 0, scope: !4076, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 35, column: 9, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4060, file: !743, line: 35, column: 7)
!4082 = !DILocation(line: 1361, column: 11, scope: !4076, inlinedAt: !4080)
!4083 = !DILocation(line: 1361, column: 10, scope: !4076, inlinedAt: !4080)
!4084 = !DILocation(line: 35, column: 29, scope: !4081)
!4085 = !DILocation(line: 0, scope: !4076, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 35, column: 32, scope: !4081)
!4087 = !DILocation(line: 1361, column: 11, scope: !4076, inlinedAt: !4086)
!4088 = !DILocation(line: 1361, column: 10, scope: !4076, inlinedAt: !4086)
!4089 = !DILocation(line: 35, column: 7, scope: !4060)
!4090 = !DILocation(line: 46, column: 3, scope: !4060)
!4091 = !DILocation(line: 47, column: 1, scope: !4060)
!4092 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !748, file: !748, line: 100, type: !4093, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !4096)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!135, !1842, !138, !135, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!4096 = !{!4097, !4098, !4099, !4100, !4101}
!4097 = !DILocalVariable(name: "pwc", arg: 1, scope: !4092, file: !748, line: 100, type: !1842)
!4098 = !DILocalVariable(name: "s", arg: 2, scope: !4092, file: !748, line: 100, type: !138)
!4099 = !DILocalVariable(name: "n", arg: 3, scope: !4092, file: !748, line: 100, type: !135)
!4100 = !DILocalVariable(name: "ps", arg: 4, scope: !4092, file: !748, line: 100, type: !4095)
!4101 = !DILocalVariable(name: "ret", scope: !4092, file: !748, line: 130, type: !135)
!4102 = !DILocation(line: 0, scope: !4092)
!4103 = !DILocation(line: 105, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4092, file: !748, line: 105, column: 7)
!4105 = !DILocation(line: 105, column: 7, scope: !4092)
!4106 = !DILocation(line: 117, column: 10, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4092, file: !748, line: 117, column: 7)
!4108 = !DILocation(line: 117, column: 7, scope: !4092)
!4109 = !DILocation(line: 130, column: 16, scope: !4092)
!4110 = !DILocation(line: 135, column: 11, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4092, file: !748, line: 135, column: 7)
!4112 = !DILocation(line: 135, column: 25, scope: !4111)
!4113 = !DILocation(line: 135, column: 30, scope: !4111)
!4114 = !DILocation(line: 135, column: 7, scope: !4092)
!4115 = !DILocalVariable(name: "ps", arg: 1, scope: !4116, file: !1256, line: 1135, type: !4095)
!4116 = distinct !DISubprogram(name: "mbszero", scope: !1256, file: !1256, line: 1135, type: !4117, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !4095}
!4119 = !{!4115}
!4120 = !DILocation(line: 0, scope: !4116, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 137, column: 5, scope: !4111)
!4122 = !DILocalVariable(name: "__dest", arg: 1, scope: !4123, file: !1265, line: 57, type: !133)
!4123 = distinct !DISubprogram(name: "memset", scope: !1265, file: !1265, line: 57, type: !1266, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !4124)
!4124 = !{!4122, !4125, !4126}
!4125 = !DILocalVariable(name: "__ch", arg: 2, scope: !4123, file: !1265, line: 57, type: !74)
!4126 = !DILocalVariable(name: "__len", arg: 3, scope: !4123, file: !1265, line: 57, type: !135)
!4127 = !DILocation(line: 0, scope: !4123, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 1137, column: 3, scope: !4116, inlinedAt: !4121)
!4129 = !DILocation(line: 59, column: 10, scope: !4123, inlinedAt: !4128)
!4130 = !DILocation(line: 137, column: 5, scope: !4111)
!4131 = !DILocation(line: 138, column: 11, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4092, file: !748, line: 138, column: 7)
!4133 = !DILocation(line: 138, column: 7, scope: !4092)
!4134 = !DILocation(line: 139, column: 5, scope: !4132)
!4135 = !DILocation(line: 143, column: 26, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4092, file: !748, line: 143, column: 7)
!4137 = !DILocation(line: 143, column: 41, scope: !4136)
!4138 = !DILocation(line: 143, column: 7, scope: !4092)
!4139 = !DILocation(line: 145, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !748, line: 145, column: 11)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !748, line: 144, column: 5)
!4142 = !DILocation(line: 145, column: 11, scope: !4141)
!4143 = !DILocation(line: 146, column: 32, scope: !4140)
!4144 = !DILocation(line: 146, column: 16, scope: !4140)
!4145 = !DILocation(line: 146, column: 14, scope: !4140)
!4146 = !DILocation(line: 146, column: 9, scope: !4140)
!4147 = !DILocation(line: 286, column: 1, scope: !4092)
!4148 = !DISubprogram(name: "mbsinit", scope: !1768, file: !1768, line: 293, type: !4149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!74, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!4153 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !823, file: !823, line: 27, type: !3330, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4154)
!4154 = !{!4155, !4156, !4157, !4158}
!4155 = !DILocalVariable(name: "ptr", arg: 1, scope: !4153, file: !823, line: 27, type: !133)
!4156 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4153, file: !823, line: 27, type: !135)
!4157 = !DILocalVariable(name: "size", arg: 3, scope: !4153, file: !823, line: 27, type: !135)
!4158 = !DILocalVariable(name: "nbytes", scope: !4153, file: !823, line: 29, type: !135)
!4159 = !DILocation(line: 0, scope: !4153)
!4160 = !DILocation(line: 30, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4153, file: !823, line: 30, column: 7)
!4162 = !DILocation(line: 30, column: 7, scope: !4153)
!4163 = !DILocation(line: 32, column: 7, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !823, line: 31, column: 5)
!4165 = !DILocation(line: 32, column: 13, scope: !4164)
!4166 = !DILocation(line: 33, column: 7, scope: !4164)
!4167 = !DILocalVariable(name: "ptr", arg: 1, scope: !4168, file: !3422, line: 2057, type: !133)
!4168 = distinct !DISubprogram(name: "rpl_realloc", scope: !3422, file: !3422, line: 2057, type: !3414, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4169)
!4169 = !{!4167, !4170}
!4170 = !DILocalVariable(name: "size", arg: 2, scope: !4168, file: !3422, line: 2057, type: !135)
!4171 = !DILocation(line: 0, scope: !4168, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 37, column: 10, scope: !4153)
!4173 = !DILocation(line: 2059, column: 24, scope: !4168, inlinedAt: !4172)
!4174 = !DILocation(line: 2059, column: 10, scope: !4168, inlinedAt: !4172)
!4175 = !DILocation(line: 37, column: 3, scope: !4153)
!4176 = !DILocation(line: 38, column: 1, scope: !4153)
!4177 = distinct !DISubprogram(name: "setlocale_null_r", scope: !825, file: !825, line: 154, type: !4178, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!74, !74, !132, !135}
!4180 = !{!4181, !4182, !4183}
!4181 = !DILocalVariable(name: "category", arg: 1, scope: !4177, file: !825, line: 154, type: !74)
!4182 = !DILocalVariable(name: "buf", arg: 2, scope: !4177, file: !825, line: 154, type: !132)
!4183 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4177, file: !825, line: 154, type: !135)
!4184 = !DILocation(line: 0, scope: !4177)
!4185 = !DILocation(line: 159, column: 10, scope: !4177)
!4186 = !DILocation(line: 159, column: 3, scope: !4177)
!4187 = distinct !DISubprogram(name: "setlocale_null", scope: !825, file: !825, line: 186, type: !4188, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!138, !74}
!4190 = !{!4191}
!4191 = !DILocalVariable(name: "category", arg: 1, scope: !4187, file: !825, line: 186, type: !74)
!4192 = !DILocation(line: 0, scope: !4187)
!4193 = !DILocation(line: 189, column: 10, scope: !4187)
!4194 = !DILocation(line: 189, column: 3, scope: !4187)
!4195 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !827, file: !827, line: 35, type: !4188, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4196)
!4196 = !{!4197, !4198}
!4197 = !DILocalVariable(name: "category", arg: 1, scope: !4195, file: !827, line: 35, type: !74)
!4198 = !DILocalVariable(name: "result", scope: !4195, file: !827, line: 37, type: !138)
!4199 = !DILocation(line: 0, scope: !4195)
!4200 = !DILocation(line: 37, column: 24, scope: !4195)
!4201 = !DILocation(line: 62, column: 3, scope: !4195)
!4202 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !827, file: !827, line: 66, type: !4178, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4203)
!4203 = !{!4204, !4205, !4206, !4207, !4208}
!4204 = !DILocalVariable(name: "category", arg: 1, scope: !4202, file: !827, line: 66, type: !74)
!4205 = !DILocalVariable(name: "buf", arg: 2, scope: !4202, file: !827, line: 66, type: !132)
!4206 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4202, file: !827, line: 66, type: !135)
!4207 = !DILocalVariable(name: "result", scope: !4202, file: !827, line: 111, type: !138)
!4208 = !DILocalVariable(name: "length", scope: !4209, file: !827, line: 125, type: !135)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !827, line: 124, column: 5)
!4210 = distinct !DILexicalBlock(scope: !4202, file: !827, line: 113, column: 7)
!4211 = !DILocation(line: 0, scope: !4202)
!4212 = !DILocation(line: 0, scope: !4195, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 111, column: 24, scope: !4202)
!4214 = !DILocation(line: 37, column: 24, scope: !4195, inlinedAt: !4213)
!4215 = !DILocation(line: 113, column: 14, scope: !4210)
!4216 = !DILocation(line: 113, column: 7, scope: !4202)
!4217 = !DILocation(line: 116, column: 19, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !827, line: 116, column: 11)
!4219 = distinct !DILexicalBlock(scope: !4210, file: !827, line: 114, column: 5)
!4220 = !DILocation(line: 116, column: 11, scope: !4219)
!4221 = !DILocation(line: 120, column: 16, scope: !4218)
!4222 = !DILocation(line: 120, column: 9, scope: !4218)
!4223 = !DILocation(line: 125, column: 23, scope: !4209)
!4224 = !DILocation(line: 0, scope: !4209)
!4225 = !DILocation(line: 126, column: 18, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4209, file: !827, line: 126, column: 11)
!4227 = !DILocation(line: 126, column: 11, scope: !4209)
!4228 = !DILocation(line: 128, column: 39, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !827, line: 127, column: 9)
!4230 = !DILocalVariable(name: "__dest", arg: 1, scope: !4231, file: !1265, line: 26, type: !3692)
!4231 = distinct !DISubprogram(name: "memcpy", scope: !1265, file: !1265, line: 26, type: !3690, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4232)
!4232 = !{!4230, !4233, !4234}
!4233 = !DILocalVariable(name: "__src", arg: 2, scope: !4231, file: !1265, line: 26, type: !1055)
!4234 = !DILocalVariable(name: "__len", arg: 3, scope: !4231, file: !1265, line: 26, type: !135)
!4235 = !DILocation(line: 0, scope: !4231, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 128, column: 11, scope: !4229)
!4237 = !DILocation(line: 29, column: 10, scope: !4231, inlinedAt: !4236)
!4238 = !DILocation(line: 129, column: 11, scope: !4229)
!4239 = !DILocation(line: 133, column: 23, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !827, line: 133, column: 15)
!4241 = distinct !DILexicalBlock(scope: !4226, file: !827, line: 132, column: 9)
!4242 = !DILocation(line: 133, column: 15, scope: !4241)
!4243 = !DILocation(line: 138, column: 44, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4240, file: !827, line: 134, column: 13)
!4245 = !DILocation(line: 0, scope: !4231, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 138, column: 15, scope: !4244)
!4247 = !DILocation(line: 29, column: 10, scope: !4231, inlinedAt: !4246)
!4248 = !DILocation(line: 139, column: 15, scope: !4244)
!4249 = !DILocation(line: 139, column: 32, scope: !4244)
!4250 = !DILocation(line: 140, column: 13, scope: !4244)
!4251 = !DILocation(line: 0, scope: !4210)
!4252 = !DILocation(line: 145, column: 1, scope: !4202)
