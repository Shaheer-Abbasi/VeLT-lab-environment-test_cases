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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !472
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !437
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !462
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !464
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !466
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !468
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !470
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !474
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !476
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !481
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !486
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !504
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !510
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !512
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !514
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !543
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !546
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !548
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !550
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !552
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !554
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !556
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !558
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !560
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !562
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 8, !dbg !564
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !575
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !589
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !627
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !634
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !591
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !636
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !579
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !596
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !598
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !600
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !602
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !604
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !642
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !645
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !647
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !649
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !651
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !653
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !658
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !663
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !665
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !670
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !675
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !680
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !685
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !687
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !692
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !694
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !699
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !704
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !706
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !708
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !710
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !712
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !714
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !716
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !721
@exit_failure = dso_local global i32 1, align 4, !dbg !727
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !733
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !736
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !738
@.str.146 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !740
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !743
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !745
@internal_state.151 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !748

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !839, metadata !DIExpression()), !dbg !840
  %2 = icmp eq i32 %0, 0, !dbg !841
  br i1 %2, label %8, label %3, !dbg !843

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !844, !tbaa !846
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !844
  %6 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !846
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !844
  br label %34, !dbg !844

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !850
  %10 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !846
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !850
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !852
  %13 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !846
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !852
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !853
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !853
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !854
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !854
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !855
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !855
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !856
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !857
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !858, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr poison, metadata !870, metadata !DIExpression()), !dbg !875
  tail call void @emit_bug_reporting_address() #36, !dbg !877
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !878
  call void @llvm.dbg.value(metadata ptr %20, metadata !873, metadata !DIExpression()), !dbg !875
  %21 = icmp eq ptr %20, null, !dbg !879
  br i1 %21, label %29, label %22, !dbg !881

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #37, !dbg !882
  %24 = icmp eq i32 %23, 0, !dbg !882
  br i1 %24, label %29, label %25, !dbg !883

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !884
  %27 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !846
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !884
  br label %29, !dbg !886

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !875
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #36, !dbg !887
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #36, !dbg !887
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #36, !dbg !888
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #36, !dbg !888
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !889
  unreachable, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !890 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !895 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !901 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !904 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !166 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !170, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !907
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !908, !tbaa !909
  %3 = icmp eq i32 %2, -1, !dbg !911
  br i1 %3, label %4, label %16, !dbg !912

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #36, !dbg !913
  call void @llvm.dbg.value(metadata ptr %5, metadata !172, metadata !DIExpression()), !dbg !914
  %6 = icmp eq ptr %5, null, !dbg !915
  br i1 %6, label %14, label %7, !dbg !916

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !917, !tbaa !918
  %9 = icmp eq i8 %8, 0, !dbg !917
  br i1 %9, label %14, label %10, !dbg !919

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !920, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !926, metadata !DIExpression()), !dbg !927
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #37, !dbg !929
  %12 = icmp eq i32 %11, 0, !dbg !930
  %13 = zext i1 %12 to i32, !dbg !919
  br label %14, !dbg !919

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !931, !tbaa !909
  br label %16, !dbg !932

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !933
  %18 = icmp eq i32 %17, 0, !dbg !933
  br i1 %18, label %22, label %19, !dbg !935

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !846
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !936
  br label %122, !dbg !938

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !907
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #37, !dbg !939
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !940
  call void @llvm.dbg.value(metadata ptr %24, metadata !177, metadata !DIExpression()), !dbg !907
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !941
  call void @llvm.dbg.value(metadata ptr %25, metadata !178, metadata !DIExpression()), !dbg !907
  %26 = icmp eq ptr %25, null, !dbg !942
  br i1 %26, label %54, label %27, !dbg !943

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !944
  br i1 %28, label %54, label %29, !dbg !945

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !179, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !946
  %30 = icmp ult ptr %24, %25, !dbg !947
  br i1 %30, label %31, label %52, !dbg !948

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !907
  %33 = load ptr, ptr %32, align 8, !tbaa !846
  br label %34, !dbg !948

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !179, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %36, metadata !183, metadata !DIExpression()), !dbg !946
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !949
  call void @llvm.dbg.value(metadata ptr %37, metadata !179, metadata !DIExpression()), !dbg !946
  %38 = load i8, ptr %35, align 1, !dbg !949, !tbaa !918
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !949
  %41 = load i16, ptr %40, align 2, !dbg !949, !tbaa !950
  %42 = freeze i16 %41, !dbg !952
  %43 = lshr i16 %42, 13, !dbg !952
  %44 = and i16 %43, 1, !dbg !952
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !953
  call void @llvm.dbg.value(metadata i64 %46, metadata !183, metadata !DIExpression()), !dbg !946
  %47 = icmp ult ptr %37, %25, !dbg !947
  %48 = icmp ult i64 %46, 2, !dbg !954
  %49 = select i1 %47, i1 %48, i1 false, !dbg !954
  br i1 %49, label %34, label %50, !dbg !948, !llvm.loop !955

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !957
  br i1 %51, label %52, label %54, !dbg !959

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !959

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !907
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %55, metadata !178, metadata !DIExpression()), !dbg !907
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #37, !dbg !960
  call void @llvm.dbg.value(metadata i64 %57, metadata !184, metadata !DIExpression()), !dbg !907
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !961
  call void @llvm.dbg.value(metadata ptr %58, metadata !185, metadata !DIExpression()), !dbg !907
  br label %59, !dbg !962

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !907
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %60, metadata !185, metadata !DIExpression()), !dbg !907
  %62 = load i8, ptr %60, align 1, !dbg !963, !tbaa !918
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !964

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !965
  %65 = load i8, ptr %64, align 1, !dbg !968, !tbaa !918
  %66 = icmp ne i8 %65, 45, !dbg !969
  %67 = select i1 %66, i1 %61, i1 false, !dbg !970
  br label %68, !dbg !970

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !907
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !971
  %71 = load ptr, ptr %70, align 8, !dbg !971, !tbaa !846
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !971
  %74 = load i16, ptr %73, align 2, !dbg !971, !tbaa !950
  %75 = and i16 %74, 8192, !dbg !971
  %76 = icmp eq i16 %75, 0, !dbg !971
  br i1 %76, label %90, label %77, !dbg !973

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !974
  br i1 %78, label %92, label %79, !dbg !977

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !978
  %81 = load i8, ptr %80, align 1, !dbg !978, !tbaa !918
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !978
  %84 = load i16, ptr %83, align 2, !dbg !978, !tbaa !950
  %85 = and i16 %84, 8192, !dbg !978
  %86 = icmp eq i16 %85, 0, !dbg !978
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !979
  br i1 %89, label %90, label %92, !dbg !979

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !980
  call void @llvm.dbg.value(metadata ptr %91, metadata !185, metadata !DIExpression()), !dbg !907
  br label %59, !dbg !962, !llvm.loop !981

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !983
  %94 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !846
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !242, metadata !DIExpression()), !dbg !907
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #37, !dbg !1004
  %97 = icmp eq i32 %96, 0, !dbg !1004
  br i1 %97, label %101, label %98, !dbg !1006

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #37, !dbg !1007
  %100 = icmp eq i32 %99, 0, !dbg !1007
  br i1 %100, label %101, label %104, !dbg !1008

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1009
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !1009
  br label %107, !dbg !1011

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1012
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !1012
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !846
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %108), !dbg !1014
  %110 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !846
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !1015
  %112 = ptrtoint ptr %60 to i64, !dbg !1016
  %113 = sub i64 %112, %93, !dbg !1016
  %114 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !846
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1016
  %116 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !846
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !1017
  %118 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !846
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !1018
  %120 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !846
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1019
  br label %122, !dbg !1020

122:                                              ; preds = %107, %19
  ret void, !dbg !1020
}

; Function Attrs: nounwind
declare !dbg !1021 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1025 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1029 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1031 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1034 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1037 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1040 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1043 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1049 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1050 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1056 {
  %3 = alloca %struct.__mbstate_t, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1061, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr %1, metadata !1062, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 1, metadata !1063, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, metadata !1065, metadata !DIExpression()), !dbg !1067
  %5 = load ptr, ptr %1, align 8, !dbg !1068, !tbaa !846
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !1069
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #36, !dbg !1070
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #36, !dbg !1071
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #36, !dbg !1072
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1073
  br label %10, !dbg !1074

10:                                               ; preds = %18, %2
  %11 = phi i1 [ false, %2 ], [ true, %18 ]
  %12 = phi i1 [ false, %2 ], [ %19, %18 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 poison, metadata !1064, metadata !DIExpression()), !dbg !1067
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %13, metadata !1066, metadata !DIExpression()), !dbg !1067
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 256, label %18
    i32 112, label %16
    i32 80, label %14
    i32 -2, label %21
    i32 -3, label %22
  ], !dbg !1074, !llvm.loop !1076

14:                                               ; preds = %10, %20
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 poison, metadata !1064, metadata !DIExpression()), !dbg !1067
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %15, metadata !1066, metadata !DIExpression()), !dbg !1067
  switch i32 %15, label %28 [
    i32 -1, label %29
    i32 256, label %18
    i32 112, label %16
    i32 80, label %20
    i32 -2, label %21
    i32 -3, label %22
  ], !dbg !1074, !llvm.loop !1076

16:                                               ; preds = %14, %10
  %17 = phi i1 [ %12, %10 ], [ true, %14 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()), !dbg !1067
  br label %18, !dbg !1078

18:                                               ; preds = %10, %14, %16
  %19 = phi i1 [ %17, %16 ], [ true, %14 ], [ true, %10 ]
  br label %10, !dbg !1074, !llvm.loop !1076

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1067
  br label %14, !dbg !1081, !llvm.loop !1082

21:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 0) #40, !dbg !1084
  unreachable, !dbg !1084

22:                                               ; preds = %10, %14
  %23 = load ptr, ptr @stdout, align 8, !dbg !1085, !tbaa !846
  %24 = load ptr, ptr @Version, align 8, !dbg !1085, !tbaa !846
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #36, !dbg !1085
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #36, !dbg !1085
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #36, !dbg !1085
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #36, !dbg !1085
  tail call void @exit(i32 noundef 0) #38, !dbg !1085
  unreachable, !dbg !1085

28:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 1) #40, !dbg !1086
  unreachable, !dbg !1086

29:                                               ; preds = %10, %14
  %30 = phi i1 [ true, %14 ], [ %12, %10 ]
  %31 = load i32, ptr @optind, align 4, !dbg !1087, !tbaa !909
  %32 = icmp eq i32 %31, %0, !dbg !1089
  br i1 %32, label %35, label %33, !dbg !1090

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1067
  %34 = icmp slt i32 %31, %0, !dbg !1091
  br i1 %34, label %37, label %179, !dbg !1094

35:                                               ; preds = %29
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #36, !dbg !1095
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #36, !dbg !1095
  tail call void @usage(i32 noundef 1) #40, !dbg !1097
  unreachable, !dbg !1097

37:                                               ; preds = %33, %170
  %38 = phi i32 [ %174, %170 ], [ %31, %33 ]
  %39 = phi i1 [ %172, %170 ], [ true, %33 ]
  %40 = sext i32 %38 to i64, !dbg !1098
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40, !dbg !1098
  %42 = load ptr, ptr %41, align 8, !dbg !1098, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %42, metadata !1099, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i1 %11, metadata !1104, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1178
  call void @llvm.dbg.value(metadata i1 %30, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1178
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #37, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %43, metadata !1106, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, metadata !1108, metadata !DIExpression()), !dbg !1178
  br i1 %30, label %44, label %61, !dbg !1181

44:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %42, metadata !1183, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %42, metadata !1188, metadata !DIExpression()), !dbg !1192
  %45 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %42, i32 noundef 45) #37, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %45, metadata !1188, metadata !DIExpression()), !dbg !1192
  %46 = icmp eq ptr %45, null, !dbg !1195
  br i1 %46, label %61, label %51, !dbg !1195

47:                                               ; preds = %54
  %48 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %48, metadata !1188, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %52, metadata !1188, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1192
  %49 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %48, i32 noundef 45) #37, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %49, metadata !1188, metadata !DIExpression()), !dbg !1192
  %50 = icmp eq ptr %49, null, !dbg !1195
  br i1 %50, label %61, label %51, !dbg !1195, !llvm.loop !1197

51:                                               ; preds = %44, %47
  %52 = phi ptr [ %49, %47 ], [ %45, %44 ]
  %53 = icmp eq ptr %52, %42, !dbg !1199
  br i1 %53, label %58, label %54, !dbg !1201

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 -1, !dbg !1202
  %56 = load i8, ptr %55, align 1, !dbg !1202, !tbaa !918
  %57 = icmp eq i8 %56, 47, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %52, metadata !1188, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1192
  br i1 %57, label %58, label %47, !dbg !1204

58:                                               ; preds = %54, %51
  %59 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #36, !dbg !1205
  %60 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %42) #36, !dbg !1205
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %59, ptr noundef %60) #36, !dbg !1205
  br label %170, !dbg !1207

61:                                               ; preds = %47, %44, %37
  %62 = icmp eq i64 %43, 0
  br i1 %11, label %65, label %63, !dbg !1208

63:                                               ; preds = %61
  %64 = select i1 %30, i1 %62, i1 false, !dbg !1210
  br i1 %64, label %66, label %81, !dbg !1210

65:                                               ; preds = %61
  br i1 %62, label %66, label %68, !dbg !1211

66:                                               ; preds = %65, %63
  %67 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #36, !dbg !1212
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67) #36, !dbg !1212
  br label %170, !dbg !1214

68:                                               ; preds = %65
  call void @llvm.dbg.value(metadata ptr %42, metadata !1215, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %43, metadata !1220, metadata !DIExpression()), !dbg !1237
  %69 = call i64 @strspn(ptr noundef %42, ptr noundef nonnull @.str.64) #37, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %69, metadata !1221, metadata !DIExpression()), !dbg !1237
  %70 = getelementptr inbounds i8, ptr %42, i64 %69, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %70, metadata !1222, metadata !DIExpression()), !dbg !1237
  %71 = load i8, ptr %70, align 1, !dbg !1243, !tbaa !918
  %72 = icmp eq i8 %71, 0, !dbg !1243
  br i1 %72, label %107, label %73, !dbg !1244

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #36, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1223, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr %3, metadata !1247, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr %3, metadata !1256, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 0, metadata !1262, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 8, metadata !1263, metadata !DIExpression()), !dbg !1264
  store i64 0, ptr %3, align 8, !dbg !1266
  %74 = sub i64 %43, %69, !dbg !1267
  %75 = call i64 @rpl_mbrlen(ptr noundef nonnull %70, i64 noundef %74, ptr noundef nonnull %3) #36, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %75, metadata !1236, metadata !DIExpression()), !dbg !1269
  %76 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #36, !dbg !1270
  %77 = icmp ult i64 %75, 17, !dbg !1270
  %78 = select i1 %77, i64 %75, i64 1, !dbg !1270
  %79 = call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef nonnull %70, i64 noundef %78) #36, !dbg !1270
  %80 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %42) #36, !dbg !1270
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %76, ptr noundef %79, ptr noundef %80) #36, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #36, !dbg !1271
  br label %170, !dbg !1272

81:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #36, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1109, metadata !DIExpression()), !dbg !1274
  %82 = call i32 @lstat(ptr noundef %42, ptr noundef nonnull %4) #36, !dbg !1275
  %83 = icmp eq i32 %82, 0, !dbg !1277
  br i1 %83, label %84, label %85, !dbg !1278

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8 poison, metadata !1108, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #36, !dbg !1279
  call void @llvm.dbg.value(metadata i8 poison, metadata !1107, metadata !DIExpression()), !dbg !1178
  br label %170, !dbg !1280

85:                                               ; preds = %81
  %86 = tail call ptr @__errno_location() #39, !dbg !1281
  %87 = load i32, ptr %86, align 4, !dbg !1281, !tbaa !909
  %88 = icmp ne i32 %87, 2, !dbg !1283
  %89 = select i1 %88, i1 true, i1 %62, !dbg !1284
  br i1 %89, label %90, label %92, !dbg !1284

90:                                               ; preds = %85
  %91 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %42) #36, !dbg !1285
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %87, ptr noundef nonnull @.str.57, ptr noundef %91) #36, !dbg !1285
  call void @llvm.dbg.value(metadata i8 poison, metadata !1108, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #36, !dbg !1279
  br label %170

92:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 poison, metadata !1108, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #36, !dbg !1279
  %93 = icmp slt i64 %43, 256
  br i1 %93, label %115, label %94, !dbg !1287

94:                                               ; preds = %92
  %95 = load i8, ptr %42, align 1, !dbg !1288, !tbaa !918
  %96 = icmp eq i8 %95, 47, !dbg !1289
  %97 = select i1 %96, ptr @.str.58, ptr @.str.59, !dbg !1288
  call void @llvm.dbg.value(metadata ptr %97, metadata !1153, metadata !DIExpression()), !dbg !1290
  store i32 0, ptr %86, align 4, !dbg !1291, !tbaa !909
  %98 = call i64 @pathconf(ptr noundef nonnull %97, i32 noundef 4) #36, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %98, metadata !1150, metadata !DIExpression()), !dbg !1290
  %99 = icmp slt i64 %98, 0, !dbg !1293
  br i1 %99, label %100, label %105, !dbg !1295

100:                                              ; preds = %94
  %101 = load i32, ptr %86, align 4, !dbg !1296, !tbaa !909
  %102 = icmp eq i32 %101, 0, !dbg !1297
  br i1 %102, label %105, label %103, !dbg !1298

103:                                              ; preds = %100
  %104 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #36, !dbg !1299
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %101, ptr noundef %104, ptr noundef nonnull %97) #36, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %98, metadata !1147, metadata !DIExpression()), !dbg !1301
  br label %170

105:                                              ; preds = %100, %94
  call void @llvm.dbg.value(metadata i64 %98, metadata !1147, metadata !DIExpression()), !dbg !1301
  %106 = icmp sgt i64 %98, %43, !dbg !1302
  br i1 %106, label %114, label %109, !dbg !1304

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 256, metadata !1147, metadata !DIExpression()), !dbg !1301
  %108 = icmp slt i64 %43, 256, !dbg !1302
  br i1 %108, label %131, label %109, !dbg !1304

109:                                              ; preds = %107, %105
  %110 = phi i64 [ 256, %107 ], [ %98, %105 ]
  %111 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #36, !dbg !1305
  %112 = add nsw i64 %110, -1, !dbg !1305
  %113 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %42) #36, !dbg !1305
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %111, i64 noundef %112, i64 noundef %43, ptr noundef %113) #36, !dbg !1305
  br label %170, !dbg !1307

114:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i1 %11, metadata !1107, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1178
  br i1 %11, label %131, label %115, !dbg !1308

115:                                              ; preds = %114, %92
  br label %116, !dbg !1309

116:                                              ; preds = %120, %115
  %117 = phi ptr [ %42, %115 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata ptr %117, metadata !1314, metadata !DIExpression()), !dbg !1316
  %118 = load i8, ptr %117, align 1, !dbg !1317, !tbaa !918
  %119 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !1318
  call void @llvm.dbg.value(metadata ptr %119, metadata !1314, metadata !DIExpression()), !dbg !1316
  switch i8 %118, label %122 [
    i8 47, label %120
    i8 0, label %170
  ], !dbg !1309

120:                                              ; preds = %116, %128
  %121 = phi ptr [ %119, %116 ], [ %129, %128 ]
  br label %116, !dbg !1316, !llvm.loop !1319

122:                                              ; preds = %116, %126
  %123 = phi i64 [ %127, %126 ], [ 1, %116 ], !dbg !1322
  call void @llvm.dbg.value(metadata i64 %123, metadata !1329, metadata !DIExpression()), !dbg !1331
  %124 = getelementptr inbounds i8, ptr %117, i64 %123, !dbg !1332
  %125 = load i8, ptr %124, align 1, !dbg !1332, !tbaa !918
  switch i8 %125, label %126 [
    i8 47, label %128
    i8 0, label %128
  ], !dbg !1334

126:                                              ; preds = %122
  %127 = add i64 %123, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %127, metadata !1329, metadata !DIExpression()), !dbg !1331
  br label %122, !dbg !1336, !llvm.loop !1337

128:                                              ; preds = %122, %122
  %129 = getelementptr inbounds i8, ptr %117, i64 %123, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %123, metadata !1158, metadata !DIExpression()), !dbg !1340
  %130 = icmp ult i64 %123, 15, !dbg !1341
  call void @llvm.dbg.value(metadata i8 poison, metadata !1107, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata ptr poison, metadata !1154, metadata !DIExpression()), !dbg !1343
  br i1 %130, label %120, label %131

131:                                              ; preds = %128, %107, %114
  %132 = phi i64 [ 14, %114 ], [ 14, %107 ], [ 0, %128 ]
  br label %133, !dbg !1344

133:                                              ; preds = %131, %164
  %134 = phi i64 [ %156, %164 ], [ 14, %131 ], !dbg !1345
  %135 = phi i64 [ %157, %164 ], [ %132, %131 ], !dbg !1346
  %136 = phi ptr [ %165, %164 ], [ %42, %131 ], !dbg !1347
  call void @llvm.dbg.value(metadata ptr %136, metadata !1165, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %135, metadata !1164, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %134, metadata !1161, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %136, metadata !1314, metadata !DIExpression()), !dbg !1349
  br label %137, !dbg !1351

137:                                              ; preds = %137, %133
  %138 = phi ptr [ %136, %133 ], [ %140, %137 ]
  call void @llvm.dbg.value(metadata ptr %138, metadata !1314, metadata !DIExpression()), !dbg !1349
  %139 = load i8, ptr %138, align 1, !dbg !1352, !tbaa !918
  %140 = getelementptr inbounds i8, ptr %138, i64 1, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %140, metadata !1314, metadata !DIExpression()), !dbg !1349
  switch i8 %139, label %141 [
    i8 47, label %137
    i8 0, label %170
  ], !dbg !1351

141:                                              ; preds = %137
  %142 = icmp eq i64 %135, 0, !dbg !1354
  br i1 %142, label %143, label %155, !dbg !1355

143:                                              ; preds = %141
  %144 = icmp eq ptr %138, %42, !dbg !1356
  %145 = select i1 %144, ptr @.str.59, ptr %42, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %145, metadata !1173, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %139, metadata !1174, metadata !DIExpression()), !dbg !1358
  %146 = tail call ptr @__errno_location() #39, !dbg !1359
  store i32 0, ptr %146, align 4, !dbg !1360, !tbaa !909
  store i8 0, ptr %138, align 1, !dbg !1361, !tbaa !918
  %147 = call i64 @pathconf(ptr noundef %145, i32 noundef 3) #36, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %147, metadata !1170, metadata !DIExpression()), !dbg !1358
  store i8 %139, ptr %138, align 1, !dbg !1363, !tbaa !918
  %148 = icmp sgt i64 %147, -1, !dbg !1364
  br i1 %148, label %155, label %149, !dbg !1366

149:                                              ; preds = %143
  %150 = load i32, ptr %146, align 4, !dbg !1367, !tbaa !909
  switch i32 %150, label %152 [
    i32 0, label %155
    i32 2, label %151
  ], !dbg !1368

151:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 %134, metadata !1164, metadata !DIExpression()), !dbg !1345
  br label %155, !dbg !1369

152:                                              ; preds = %149
  store i8 0, ptr %138, align 1, !dbg !1371, !tbaa !918
  %153 = load i32, ptr %146, align 4, !dbg !1372, !tbaa !909
  %154 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %145) #36, !dbg !1372
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %153, ptr noundef nonnull @.str.57, ptr noundef %154) #36, !dbg !1372
  store i8 %139, ptr %138, align 1, !dbg !1373, !tbaa !918
  call void @llvm.dbg.value(metadata i64 0, metadata !1164, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %134, metadata !1161, metadata !DIExpression()), !dbg !1345
  br label %170

155:                                              ; preds = %151, %149, %143, %141
  %156 = phi i64 [ %135, %141 ], [ 9223372036854775807, %149 ], [ %147, %143 ], [ %134, %151 ], !dbg !1374
  %157 = phi i64 [ %135, %141 ], [ 0, %149 ], [ 0, %143 ], [ %134, %151 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 %157, metadata !1164, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %156, metadata !1161, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %138, metadata !1328, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i64 1, metadata !1329, metadata !DIExpression()), !dbg !1375
  br label %158, !dbg !1377

158:                                              ; preds = %162, %155
  %159 = phi i64 [ 1, %155 ], [ %163, %162 ], !dbg !1378
  call void @llvm.dbg.value(metadata i64 %159, metadata !1329, metadata !DIExpression()), !dbg !1375
  %160 = getelementptr inbounds i8, ptr %138, i64 %159, !dbg !1379
  %161 = load i8, ptr %160, align 1, !dbg !1379, !tbaa !918
  switch i8 %161, label %162 [
    i8 47, label %164
    i8 0, label %164
  ], !dbg !1380

162:                                              ; preds = %158
  %163 = add i64 %159, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %163, metadata !1329, metadata !DIExpression()), !dbg !1375
  br label %158, !dbg !1382, !llvm.loop !1383

164:                                              ; preds = %158, %158
  %165 = getelementptr inbounds i8, ptr %138, i64 %159, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %159, metadata !1167, metadata !DIExpression()), !dbg !1386
  %166 = icmp slt i64 %156, %159, !dbg !1387
  br i1 %166, label %167, label %133, !dbg !1388, !llvm.loop !1389

167:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i8 %161, metadata !1175, metadata !DIExpression()), !dbg !1391
  store i8 0, ptr %165, align 1, !dbg !1392, !tbaa !918
  %168 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #36, !dbg !1393
  %169 = call ptr @quote(ptr noundef nonnull %138) #36, !dbg !1393
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %168, i64 noundef %156, i64 noundef %159, ptr noundef %169) #36, !dbg !1393
  store i8 %161, ptr %165, align 1, !dbg !1394, !tbaa !918
  br label %170

170:                                              ; preds = %116, %137, %58, %66, %73, %84, %90, %103, %109, %152, %167
  %171 = phi i1 [ false, %66 ], [ false, %90 ], [ false, %58 ], [ false, %73 ], [ false, %103 ], [ false, %109 ], [ false, %167 ], [ false, %152 ], [ true, %84 ], [ true, %137 ], [ true, %116 ]
  %172 = and i1 %39, %171, !dbg !1395
  call void @llvm.dbg.value(metadata i1 %172, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  %173 = load i32, ptr @optind, align 4, !dbg !1396, !tbaa !909
  %174 = add nsw i32 %173, 1, !dbg !1396
  store i32 %174, ptr @optind, align 4, !dbg !1396, !tbaa !909
  call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1067
  %175 = icmp slt i32 %174, %0, !dbg !1091
  br i1 %175, label %37, label %176, !dbg !1094, !llvm.loop !1397

176:                                              ; preds = %170
  %177 = xor i1 %172, true, !dbg !1399
  %178 = zext i1 %177 to i32, !dbg !1399
  br label %179, !dbg !1399

179:                                              ; preds = %176, %33
  %180 = phi i32 [ 0, %33 ], [ %178, %176 ]
  ret i32 %180, !dbg !1400
}

; Function Attrs: nounwind
declare !dbg !1401 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1404 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1405 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1408 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1414 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1417 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1423 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1427 i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1431 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1434
  store ptr %0, ptr @file_name, align 8, !dbg !1435, !tbaa !846
  ret void, !dbg !1436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1437 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1443, !tbaa !1444
  ret void, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1447 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1452, !tbaa !846
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1453
  %3 = icmp eq i32 %2, 0, !dbg !1454
  br i1 %3, label %22, label %4, !dbg !1455

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1456, !tbaa !1444, !range !1457, !noundef !894
  %6 = icmp eq i8 %5, 0, !dbg !1456
  br i1 %6, label %11, label %7, !dbg !1458

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1459
  %9 = load i32, ptr %8, align 4, !dbg !1459, !tbaa !909
  %10 = icmp eq i32 %9, 32, !dbg !1460
  br i1 %10, label %22, label %11, !dbg !1461

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #36, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %12, metadata !1449, metadata !DIExpression()), !dbg !1463
  %13 = load ptr, ptr @file_name, align 8, !dbg !1464, !tbaa !846
  %14 = icmp eq ptr %13, null, !dbg !1464
  %15 = tail call ptr @__errno_location() #39, !dbg !1466
  %16 = load i32, ptr %15, align 4, !dbg !1466, !tbaa !909
  br i1 %14, label %19, label %17, !dbg !1467

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1468
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #36, !dbg !1468
  br label %20, !dbg !1468

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #36, !dbg !1469
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1470, !tbaa !909
  tail call void @_exit(i32 noundef %21) #38, !dbg !1471
  unreachable, !dbg !1471

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1472, !tbaa !846
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1474
  %25 = icmp eq i32 %24, 0, !dbg !1475
  br i1 %25, label %28, label %26, !dbg !1476

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1477, !tbaa !909
  tail call void @_exit(i32 noundef %27) #38, !dbg !1478
  unreachable, !dbg !1478

28:                                               ; preds = %22
  ret void, !dbg !1479
}

; Function Attrs: noreturn
declare !dbg !1480 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1481 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1485, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %1, metadata !1486, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr %2, metadata !1487, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1488, metadata !DIExpression()), !dbg !1490
  tail call fastcc void @flush_stdout(), !dbg !1491
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1492, !tbaa !846
  %7 = icmp eq ptr %6, null, !dbg !1492
  br i1 %7, label %9, label %8, !dbg !1494

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1495
  br label %13, !dbg !1495

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !846
  %11 = tail call ptr @getprogname() #37, !dbg !1496
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #36, !dbg !1496
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1498, !tbaa.struct !1499
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1498
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1498
  ret void, !dbg !1500
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1501 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1503, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !1510
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1513
  %2 = icmp slt i32 %1, 0, !dbg !1514
  br i1 %2, label %6, label %3, !dbg !1515

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1516, !tbaa !846
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1516
  br label %6, !dbg !1516

6:                                                ; preds = %3, %0
  ret void, !dbg !1517
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1518 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1520, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1523, metadata !DIExpression()), !dbg !1525
  %7 = load ptr, ptr @stderr, align 8, !dbg !1526, !tbaa !846
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1527, !noalias !1571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1575
  call void @llvm.dbg.value(metadata ptr %7, metadata !1567, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1569, metadata !DIExpression()), !dbg !1577
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1527
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1527, !noalias !1571
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1578, !tbaa !909
  %10 = add i32 %9, 1, !dbg !1578
  store i32 %10, ptr @error_message_count, align 4, !dbg !1578, !tbaa !909
  %11 = icmp eq i32 %1, 0, !dbg !1579
  br i1 %11, label %21, label %12, !dbg !1581

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1590
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1586, metadata !DIExpression()), !dbg !1593
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %13, metadata !1585, metadata !DIExpression()), !dbg !1590
  %14 = icmp eq ptr %13, null, !dbg !1595
  br i1 %14, label %15, label %17, !dbg !1597

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #36, !dbg !1598
  call void @llvm.dbg.value(metadata ptr %16, metadata !1585, metadata !DIExpression()), !dbg !1590
  br label %17, !dbg !1599

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1590
  call void @llvm.dbg.value(metadata ptr %18, metadata !1585, metadata !DIExpression()), !dbg !1590
  %19 = load ptr, ptr @stderr, align 8, !dbg !1600, !tbaa !846
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #36, !dbg !1600
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1601
  br label %21, !dbg !1602

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1603, !tbaa !846
  call void @llvm.dbg.value(metadata i32 10, metadata !1604, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %22, metadata !1610, metadata !DIExpression()), !dbg !1611
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1613
  %24 = load ptr, ptr %23, align 8, !dbg !1613, !tbaa !1614
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1613
  %26 = load ptr, ptr %25, align 8, !dbg !1613, !tbaa !1617
  %27 = icmp ult ptr %24, %26, !dbg !1613
  br i1 %27, label %30, label %28, !dbg !1613, !prof !1618

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1613
  br label %32, !dbg !1613

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1613
  store ptr %31, ptr %23, align 8, !dbg !1613, !tbaa !1614
  store i8 10, ptr %24, align 1, !dbg !1613, !tbaa !918
  br label %32, !dbg !1613

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1619, !tbaa !846
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1619
  %35 = icmp eq i32 %0, 0, !dbg !1620
  br i1 %35, label %37, label %36, !dbg !1622

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1623
  unreachable, !dbg !1623

37:                                               ; preds = %32
  ret void, !dbg !1624
}

declare !dbg !1625 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1628 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1631 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1634 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1637 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1641 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %1, metadata !1646, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %2, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1648, metadata !DIExpression()), !dbg !1651
  call void @llvm.va_start(ptr nonnull %4), !dbg !1652
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1653, !tbaa.struct !1499
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1653
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1653
  call void @llvm.va_end(ptr nonnull %4), !dbg !1654
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1655
  ret void, !dbg !1655
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !439 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %1, metadata !457, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %2, metadata !458, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %3, metadata !459, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %4, metadata !460, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %5, metadata !461, metadata !DIExpression()), !dbg !1657
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1658, !tbaa !909
  %9 = icmp eq i32 %8, 0, !dbg !1658
  br i1 %9, label %24, label %10, !dbg !1660

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1661, !tbaa !909
  %12 = icmp eq i32 %11, %3, !dbg !1664
  br i1 %12, label %13, label %23, !dbg !1665

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1666, !tbaa !846
  %15 = icmp eq ptr %14, %2, !dbg !1667
  br i1 %15, label %37, label %16, !dbg !1668

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1669
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1670
  br i1 %19, label %20, label %23, !dbg !1670

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1671
  %22 = icmp eq i32 %21, 0, !dbg !1672
  br i1 %22, label %37, label %23, !dbg !1673

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1674, !tbaa !846
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1675, !tbaa !909
  br label %24, !dbg !1676

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1677
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1678, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !1678
  br i1 %26, label %28, label %27, !dbg !1680

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1681
  br label %32, !dbg !1681

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1682, !tbaa !846
  %30 = tail call ptr @getprogname() #37, !dbg !1682
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #36, !dbg !1682
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1684, !tbaa !846
  %34 = icmp eq ptr %2, null, !dbg !1684
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1684
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1684
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1685, !tbaa.struct !1499
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1685
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1685
  br label %37, !dbg !1686

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1686
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1687 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1691, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %2, metadata !1693, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %3, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %4, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.va_start(ptr nonnull %6), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1701, !tbaa.struct !1499
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1701
  call void @llvm.va_end(ptr nonnull %6), !dbg !1702
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1703
  ret void, !dbg !1703
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1704 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1707, !tbaa !846
  ret ptr %1, !dbg !1708
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1714, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %1, metadata !1715, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %2, metadata !1716, metadata !DIExpression()), !dbg !1717
  %4 = icmp eq ptr %2, null, !dbg !1718
  %5 = select i1 %4, ptr @internal_state, ptr %2, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %5, metadata !1716, metadata !DIExpression()), !dbg !1717
  %6 = tail call i64 @rpl_mbrtowc(ptr noundef null, ptr noundef %0, i64 noundef %1, ptr noundef %5) #36, !dbg !1721
  ret i64 %6, !dbg !1722
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !1723 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1740, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata ptr %1, metadata !1741, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i64 %2, metadata !1742, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata ptr %3, metadata !1743, metadata !DIExpression()), !dbg !1749
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #36, !dbg !1750
  %6 = icmp eq ptr %0, null, !dbg !1751
  %7 = select i1 %6, ptr %5, ptr %0, !dbg !1753
  call void @llvm.dbg.value(metadata ptr %7, metadata !1740, metadata !DIExpression()), !dbg !1749
  %8 = call i64 @mbrtowc(ptr noundef %7, ptr noundef %1, i64 noundef %2, ptr noundef %3) #36, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %8, metadata !1745, metadata !DIExpression()), !dbg !1749
  %9 = icmp ugt i64 %8, -3, !dbg !1755
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9, !dbg !1756
  br i1 %11, label %12, label %17, !dbg !1756

12:                                               ; preds = %4
  %13 = call i1 @hard_locale(i32 noundef 0) #36, !dbg !1757
  br i1 %13, label %17, label %14, !dbg !1758

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 1, !dbg !1759, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %15, metadata !1746, metadata !DIExpression()), !dbg !1760
  %16 = zext i8 %15 to i32, !dbg !1761
  store i32 %16, ptr %7, align 4, !dbg !1762, !tbaa !909
  br label %17

17:                                               ; preds = %4, %12, %14
  %18 = phi i64 [ 1, %14 ], [ %8, %12 ], [ %8, %4 ], !dbg !1749
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #36, !dbg !1763
  ret i64 %18, !dbg !1763
}

; Function Attrs: nounwind
declare !dbg !1764 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1770 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1772, metadata !DIExpression()), !dbg !1775
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %2, metadata !1773, metadata !DIExpression()), !dbg !1775
  %3 = icmp eq ptr %2, null, !dbg !1777
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1777
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %5, metadata !1774, metadata !DIExpression()), !dbg !1775
  %6 = ptrtoint ptr %5 to i64, !dbg !1778
  %7 = ptrtoint ptr %0 to i64, !dbg !1778
  %8 = sub i64 %6, %7, !dbg !1778
  %9 = icmp sgt i64 %8, 6, !dbg !1780
  br i1 %9, label %10, label %19, !dbg !1781

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %11, metadata !1783, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !1788, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 7, metadata !1789, metadata !DIExpression()), !dbg !1790
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !1792
  %13 = icmp eq i32 %12, 0, !dbg !1793
  br i1 %13, label %14, label %19, !dbg !1794

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1772, metadata !DIExpression()), !dbg !1775
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #37, !dbg !1795
  %16 = icmp eq i32 %15, 0, !dbg !1798
  %17 = select i1 %16, i64 3, i64 0, !dbg !1799
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1799
  br label %19, !dbg !1799

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %21, metadata !1774, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr %20, metadata !1772, metadata !DIExpression()), !dbg !1775
  store ptr %20, ptr @program_name, align 8, !dbg !1800, !tbaa !846
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1801, !tbaa !846
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1802, !tbaa !846
  ret void, !dbg !1803
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1804 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !516 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !523, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %1, metadata !524, metadata !DIExpression()), !dbg !1805
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1806
  call void @llvm.dbg.value(metadata ptr %5, metadata !525, metadata !DIExpression()), !dbg !1805
  %6 = icmp eq ptr %5, %0, !dbg !1807
  br i1 %6, label %7, label %14, !dbg !1809

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1811
  call void @llvm.dbg.declare(metadata ptr %4, metadata !531, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata ptr %4, metadata !1813, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %4, metadata !1821, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 0, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 8, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i64 0, ptr %4, align 8, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %3, metadata !526, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1829
  %9 = icmp eq i64 %8, 2, !dbg !1831
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !526, metadata !DIExpression()), !dbg !1805
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1832
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1833
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1833
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1805
  ret ptr %15, !dbg !1833
}

; Function Attrs: nounwind
declare !dbg !1834 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1840 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1845, metadata !DIExpression()), !dbg !1848
  %2 = tail call ptr @__errno_location() #39, !dbg !1849
  %3 = load i32, ptr %2, align 4, !dbg !1849, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %3, metadata !1846, metadata !DIExpression()), !dbg !1848
  %4 = icmp eq ptr %0, null, !dbg !1850
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1850
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %6, metadata !1847, metadata !DIExpression()), !dbg !1848
  store i32 %3, ptr %2, align 4, !dbg !1852, !tbaa !909
  ret ptr %6, !dbg !1853
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1854 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1860, metadata !DIExpression()), !dbg !1861
  %2 = icmp eq ptr %0, null, !dbg !1862
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1862
  %4 = load i32, ptr %3, align 8, !dbg !1863, !tbaa !1864
  ret i32 %4, !dbg !1866
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %1, metadata !1872, metadata !DIExpression()), !dbg !1873
  %3 = icmp eq ptr %0, null, !dbg !1874
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1874
  store i32 %1, ptr %4, align 8, !dbg !1875, !tbaa !1864
  ret void, !dbg !1876
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1881, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %1, metadata !1882, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %2, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %1, metadata !1884, metadata !DIExpression()), !dbg !1889
  %4 = icmp eq ptr %0, null, !dbg !1890
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1890
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1891
  %7 = lshr i8 %1, 5, !dbg !1892
  %8 = zext i8 %7 to i64, !dbg !1892
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %9, metadata !1885, metadata !DIExpression()), !dbg !1889
  %10 = and i8 %1, 31, !dbg !1894
  %11 = zext i8 %10 to i32, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %11, metadata !1887, metadata !DIExpression()), !dbg !1889
  %12 = load i32, ptr %9, align 4, !dbg !1895, !tbaa !909
  %13 = lshr i32 %12, %11, !dbg !1896
  %14 = and i32 %13, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %14, metadata !1888, metadata !DIExpression()), !dbg !1889
  %15 = xor i32 %13, %2, !dbg !1898
  %16 = and i32 %15, 1, !dbg !1898
  %17 = shl nuw i32 %16, %11, !dbg !1899
  %18 = xor i32 %17, %12, !dbg !1900
  store i32 %18, ptr %9, align 4, !dbg !1900, !tbaa !909
  ret i32 %14, !dbg !1901
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1902 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %1, metadata !1907, metadata !DIExpression()), !dbg !1909
  %3 = icmp eq ptr %0, null, !dbg !1910
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1912
  call void @llvm.dbg.value(metadata ptr %4, metadata !1906, metadata !DIExpression()), !dbg !1909
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1913
  %6 = load i32, ptr %5, align 4, !dbg !1913, !tbaa !1914
  call void @llvm.dbg.value(metadata i32 %6, metadata !1908, metadata !DIExpression()), !dbg !1909
  store i32 %1, ptr %5, align 4, !dbg !1915, !tbaa !1914
  ret i32 %6, !dbg !1916
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1922, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %2, metadata !1923, metadata !DIExpression()), !dbg !1924
  %4 = icmp eq ptr %0, null, !dbg !1925
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %5, metadata !1921, metadata !DIExpression()), !dbg !1924
  store i32 10, ptr %5, align 8, !dbg !1928, !tbaa !1864
  %6 = icmp ne ptr %1, null, !dbg !1929
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1931
  br i1 %8, label %10, label %9, !dbg !1931

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1932
  unreachable, !dbg !1932

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1933
  store ptr %1, ptr %11, align 8, !dbg !1934, !tbaa !1935
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1936
  store ptr %2, ptr %12, align 8, !dbg !1937, !tbaa !1938
  ret void, !dbg !1939
}

; Function Attrs: noreturn nounwind
declare !dbg !1940 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1941 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1945, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %1, metadata !1946, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr %2, metadata !1947, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %3, metadata !1948, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr %4, metadata !1949, metadata !DIExpression()), !dbg !1953
  %6 = icmp eq ptr %4, null, !dbg !1954
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %7, metadata !1950, metadata !DIExpression()), !dbg !1953
  %8 = tail call ptr @__errno_location() #39, !dbg !1955
  %9 = load i32, ptr %8, align 4, !dbg !1955, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %9, metadata !1951, metadata !DIExpression()), !dbg !1953
  %10 = load i32, ptr %7, align 8, !dbg !1956, !tbaa !1864
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1957
  %12 = load i32, ptr %11, align 4, !dbg !1957, !tbaa !1914
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1958
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1959
  %15 = load ptr, ptr %14, align 8, !dbg !1959, !tbaa !1935
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1960
  %17 = load ptr, ptr %16, align 8, !dbg !1960, !tbaa !1938
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %18, metadata !1952, metadata !DIExpression()), !dbg !1953
  store i32 %9, ptr %8, align 4, !dbg !1962, !tbaa !909
  ret i64 %18, !dbg !1963
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1964 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1970, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %1, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %2, metadata !1972, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %3, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %4, metadata !1974, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %5, metadata !1975, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %6, metadata !1976, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %7, metadata !1977, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %8, metadata !1978, metadata !DIExpression()), !dbg !2032
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2033
  %17 = icmp eq i64 %16, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i1 %17, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2032
  call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr null, metadata !1982, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %5, metadata !1985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2032
  %18 = and i32 %5, 2, !dbg !2035
  %19 = icmp ne i32 %18, 0, !dbg !2035
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2035

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2036
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2037
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2038
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %34, metadata !1983, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %33, metadata !1982, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %32, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %31, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %30, metadata !1978, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %29, metadata !1977, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %28, metadata !1974, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.label(metadata !2025), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2032
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
  ], !dbg !2040

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 5, metadata !1974, metadata !DIExpression()), !dbg !2032
  br label %102, !dbg !2041

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 5, metadata !1974, metadata !DIExpression()), !dbg !2032
  br i1 %36, label %102, label %42, !dbg !2041

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2042
  br i1 %43, label %102, label %44, !dbg !2046

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2042, !tbaa !918
  br label %102, !dbg !2042

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !610, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %28, metadata !611, metadata !DIExpression()), !dbg !2047
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #36, !dbg !2051
  call void @llvm.dbg.value(metadata ptr %46, metadata !612, metadata !DIExpression()), !dbg !2047
  %47 = icmp eq ptr %46, @.str.11.80, !dbg !2052
  br i1 %47, label %48, label %57, !dbg !2054

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %13, metadata !614, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr %13, metadata !2058, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %13, metadata !2066, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i64 0, ptr %13, align 8, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %12, metadata !613, metadata !DIExpression(DW_OP_deref)), !dbg !2047
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2074
  %50 = icmp eq i64 %49, 3, !dbg !2076
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !613, metadata !DIExpression()), !dbg !2047
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2077
  %54 = icmp eq i32 %28, 9, !dbg !2077
  %55 = select i1 %54, ptr @.str.10.82, ptr @.str.12.83, !dbg !2077
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2078
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2047
  call void @llvm.dbg.value(metadata ptr %58, metadata !1977, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !610, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %28, metadata !611, metadata !DIExpression()), !dbg !2079
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #36, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %59, metadata !612, metadata !DIExpression()), !dbg !2079
  %60 = icmp eq ptr %59, @.str.12.83, !dbg !2082
  br i1 %60, label %61, label %70, !dbg !2083

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %11, metadata !614, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %11, metadata !2058, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata ptr %11, metadata !2066, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2089
  store i64 0, ptr %11, align 8, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %10, metadata !613, metadata !DIExpression(DW_OP_deref)), !dbg !2079
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2092
  %63 = icmp eq i64 %62, 3, !dbg !2093
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !613, metadata !DIExpression()), !dbg !2079
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2094
  %67 = icmp eq i32 %28, 9, !dbg !2094
  %68 = select i1 %67, ptr @.str.10.82, ptr @.str.12.83, !dbg !2094
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2094
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2095
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1978, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %71, metadata !1977, metadata !DIExpression()), !dbg !2032
  br i1 %36, label %88, label %73, !dbg !2096

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1989, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !2032
  %74 = load i8, ptr %71, align 1, !dbg !2098, !tbaa !918
  %75 = icmp eq i8 %74, 0, !dbg !2100
  br i1 %75, label %88, label %76, !dbg !2100

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1989, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %79, metadata !1980, metadata !DIExpression()), !dbg !2032
  %80 = icmp ult i64 %79, %39, !dbg !2101
  br i1 %80, label %81, label %83, !dbg !2104

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2101
  store i8 %77, ptr %82, align 1, !dbg !2101, !tbaa !918
  br label %83, !dbg !2101

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %84, metadata !1980, metadata !DIExpression()), !dbg !2032
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2105
  call void @llvm.dbg.value(metadata ptr %85, metadata !1989, metadata !DIExpression()), !dbg !2097
  %86 = load i8, ptr %85, align 1, !dbg !2098, !tbaa !918
  %87 = icmp eq i8 %86, 0, !dbg !2100
  br i1 %87, label %88, label %76, !dbg !2100, !llvm.loop !2106

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2108
  call void @llvm.dbg.value(metadata i64 %89, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %72, metadata !1982, metadata !DIExpression()), !dbg !2032
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %90, metadata !1983, metadata !DIExpression()), !dbg !2032
  br label %102, !dbg !2110

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2032
  br label %93, !dbg !2111

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1984, metadata !DIExpression()), !dbg !2032
  br i1 %36, label %102, label %96, !dbg !2112

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 2, metadata !1974, metadata !DIExpression()), !dbg !2032
  br label %102, !dbg !2113

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 2, metadata !1974, metadata !DIExpression()), !dbg !2032
  br i1 %36, label %102, label %96, !dbg !2113

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2114
  br i1 %98, label %102, label %99, !dbg !2118

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2114, !tbaa !918
  br label %102, !dbg !2114

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2032
  br label %102, !dbg !2119

101:                                              ; preds = %27
  call void @abort() #38, !dbg !2120
  unreachable, !dbg !2120

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2108
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.82, %42 ], [ @.str.10.82, %44 ], [ @.str.10.82, %41 ], [ %33, %27 ], [ @.str.12.83, %96 ], [ @.str.12.83, %99 ], [ @.str.12.83, %95 ], [ @.str.10.82, %40 ], [ @.str.12.83, %93 ], [ @.str.12.83, %92 ], !dbg !2032
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2032
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1984, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %108, metadata !1983, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %107, metadata !1982, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %106, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %105, metadata !1978, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %104, metadata !1977, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %103, metadata !1974, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2121
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
  br label %122, !dbg !2122

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2108
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2036
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2123
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %129, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %125, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %124, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %123, metadata !1973, metadata !DIExpression()), !dbg !2032
  %131 = icmp eq i64 %123, -1, !dbg !2124
  br i1 %131, label %132, label %136, !dbg !2125

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2126
  %134 = load i8, ptr %133, align 1, !dbg !2126, !tbaa !918
  %135 = icmp eq i8 %134, 0, !dbg !2127
  br i1 %135, label %579, label %138, !dbg !2128

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2129
  br i1 %137, label %579, label %138, !dbg !2128

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2130
  br i1 %114, label %139, label %152, !dbg !2131

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2133
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2134
  br i1 %141, label %142, label %144, !dbg !2134

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %143, metadata !1973, metadata !DIExpression()), !dbg !2032
  br label %144, !dbg !2136

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2136
  call void @llvm.dbg.value(metadata i64 %145, metadata !1973, metadata !DIExpression()), !dbg !2032
  %146 = icmp ugt i64 %140, %145, !dbg !2137
  br i1 %146, label %152, label %147, !dbg !2138

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %148, metadata !2140, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %107, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %108, metadata !2144, metadata !DIExpression()), !dbg !2145
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2147
  %150 = icmp eq i32 %149, 0, !dbg !2148
  %151 = and i1 %150, %110, !dbg !2149
  br i1 %151, label %630, label %152, !dbg !2149

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %153, metadata !1973, metadata !DIExpression()), !dbg !2032
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2150
  %156 = load i8, ptr %155, align 1, !dbg !2150, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %156, metadata !2001, metadata !DIExpression()), !dbg !2130
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
  ], !dbg !2151

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2152

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2153

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2130
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2157
  br i1 %160, label %177, label %161, !dbg !2157

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2159
  br i1 %162, label %163, label %165, !dbg !2163

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2159
  store i8 39, ptr %164, align 1, !dbg !2159, !tbaa !918
  br label %165, !dbg !2159

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %166, metadata !1980, metadata !DIExpression()), !dbg !2032
  %167 = icmp ult i64 %166, %130, !dbg !2164
  br i1 %167, label %168, label %170, !dbg !2167

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2164
  store i8 36, ptr %169, align 1, !dbg !2164, !tbaa !918
  br label %170, !dbg !2164

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %171, metadata !1980, metadata !DIExpression()), !dbg !2032
  %172 = icmp ult i64 %171, %130, !dbg !2168
  br i1 %172, label %173, label %175, !dbg !2171

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2168
  store i8 39, ptr %174, align 1, !dbg !2168, !tbaa !918
  br label %175, !dbg !2168

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %176, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %177, !dbg !2172

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2032
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %178, metadata !1980, metadata !DIExpression()), !dbg !2032
  %180 = icmp ult i64 %178, %130, !dbg !2173
  br i1 %180, label %181, label %183, !dbg !2176

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2173
  store i8 92, ptr %182, align 1, !dbg !2173, !tbaa !918
  br label %183, !dbg !2173

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %184, metadata !1980, metadata !DIExpression()), !dbg !2032
  br i1 %111, label %185, label %482, !dbg !2177

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2179
  %187 = icmp ult i64 %186, %153, !dbg !2180
  br i1 %187, label %188, label %439, !dbg !2181

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2182
  %190 = load i8, ptr %189, align 1, !dbg !2182, !tbaa !918
  %191 = add i8 %190, -48, !dbg !2183
  %192 = icmp ult i8 %191, 10, !dbg !2183
  br i1 %192, label %193, label %439, !dbg !2183

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2184
  br i1 %194, label %195, label %197, !dbg !2188

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2184
  store i8 48, ptr %196, align 1, !dbg !2184, !tbaa !918
  br label %197, !dbg !2184

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %198, metadata !1980, metadata !DIExpression()), !dbg !2032
  %199 = icmp ult i64 %198, %130, !dbg !2189
  br i1 %199, label %200, label %202, !dbg !2192

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2189
  store i8 48, ptr %201, align 1, !dbg !2189, !tbaa !918
  br label %202, !dbg !2189

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %203, metadata !1980, metadata !DIExpression()), !dbg !2032
  br label %439, !dbg !2193

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2194

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2195

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2196

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2198

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2200
  %210 = icmp ult i64 %209, %153, !dbg !2201
  br i1 %210, label %211, label %439, !dbg !2202

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2203
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2204
  %214 = load i8, ptr %213, align 1, !dbg !2204, !tbaa !918
  %215 = icmp eq i8 %214, 63, !dbg !2205
  br i1 %215, label %216, label %439, !dbg !2206

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2207
  %218 = load i8, ptr %217, align 1, !dbg !2207, !tbaa !918
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
  ], !dbg !2208

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2209

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %209, metadata !1994, metadata !DIExpression()), !dbg !2121
  %221 = icmp ult i64 %124, %130, !dbg !2211
  br i1 %221, label %222, label %224, !dbg !2214

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2211
  store i8 63, ptr %223, align 1, !dbg !2211, !tbaa !918
  br label %224, !dbg !2211

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %225, metadata !1980, metadata !DIExpression()), !dbg !2032
  %226 = icmp ult i64 %225, %130, !dbg !2215
  br i1 %226, label %227, label %229, !dbg !2218

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2215
  store i8 34, ptr %228, align 1, !dbg !2215, !tbaa !918
  br label %229, !dbg !2215

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %230, metadata !1980, metadata !DIExpression()), !dbg !2032
  %231 = icmp ult i64 %230, %130, !dbg !2219
  br i1 %231, label %232, label %234, !dbg !2222

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2219
  store i8 34, ptr %233, align 1, !dbg !2219, !tbaa !918
  br label %234, !dbg !2219

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %235, metadata !1980, metadata !DIExpression()), !dbg !2032
  %236 = icmp ult i64 %235, %130, !dbg !2223
  br i1 %236, label %237, label %239, !dbg !2226

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2223
  store i8 63, ptr %238, align 1, !dbg !2223, !tbaa !918
  br label %239, !dbg !2223

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %240, metadata !1980, metadata !DIExpression()), !dbg !2032
  br label %439, !dbg !2227

241:                                              ; preds = %152
  br label %251, !dbg !2228

242:                                              ; preds = %152
  br label %251, !dbg !2229

243:                                              ; preds = %152
  br label %249, !dbg !2230

244:                                              ; preds = %152
  br label %249, !dbg !2231

245:                                              ; preds = %152
  br label %251, !dbg !2232

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2233

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2234

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2237

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2239
  call void @llvm.dbg.label(metadata !2026), !dbg !2240
  br i1 %119, label %621, label %251, !dbg !2241

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2239
  call void @llvm.dbg.label(metadata !2028), !dbg !2243
  br i1 %109, label %493, label %450, !dbg !2244

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2245

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2246, !tbaa !918
  %256 = icmp eq i8 %255, 0, !dbg !2248
  br i1 %256, label %257, label %439, !dbg !2249

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2250
  br i1 %258, label %259, label %439, !dbg !2252

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2130
  br label %260, !dbg !2253

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2000, metadata !DIExpression()), !dbg !2130
  br i1 %116, label %262, label %439, !dbg !2254

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2256

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2130
  br i1 %116, label %264, label %439, !dbg !2257

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2258

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2261
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2263
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2263
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %270, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %269, metadata !1981, metadata !DIExpression()), !dbg !2032
  %271 = icmp ult i64 %124, %270, !dbg !2264
  br i1 %271, label %272, label %274, !dbg !2267

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2264
  store i8 39, ptr %273, align 1, !dbg !2264, !tbaa !918
  br label %274, !dbg !2264

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %275, metadata !1980, metadata !DIExpression()), !dbg !2032
  %276 = icmp ult i64 %275, %270, !dbg !2268
  br i1 %276, label %277, label %279, !dbg !2271

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2268
  store i8 92, ptr %278, align 1, !dbg !2268, !tbaa !918
  br label %279, !dbg !2268

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %280, metadata !1980, metadata !DIExpression()), !dbg !2032
  %281 = icmp ult i64 %280, %270, !dbg !2272
  br i1 %281, label %282, label %284, !dbg !2275

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2272
  store i8 39, ptr %283, align 1, !dbg !2272, !tbaa !918
  br label %284, !dbg !2272

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %285, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %439, !dbg !2276

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2277

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2002, metadata !DIExpression()), !dbg !2278
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2279
  %289 = load ptr, ptr %288, align 8, !dbg !2279, !tbaa !846
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2279
  %292 = load i16, ptr %291, align 2, !dbg !2279, !tbaa !950
  %293 = and i16 %292, 16384, !dbg !2279
  %294 = icmp ne i16 %293, 0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %294, metadata !2005, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2278
  br label %337, !dbg !2282

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2006, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %14, metadata !2058, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata ptr %14, metadata !2066, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2287
  store i64 0, ptr %14, align 8, !dbg !2289
  call void @llvm.dbg.value(metadata i64 0, metadata !2002, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 1, metadata !2005, metadata !DIExpression()), !dbg !2278
  %296 = icmp eq i64 %153, -1, !dbg !2290
  br i1 %296, label %297, label %299, !dbg !2292

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %298, metadata !1973, metadata !DIExpression()), !dbg !2032
  br label %299, !dbg !2294

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2130
  call void @llvm.dbg.value(metadata i64 %300, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2295
  %301 = sub i64 %300, %129, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %15, metadata !2009, metadata !DIExpression(DW_OP_deref)), !dbg !2297
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %302, metadata !2013, metadata !DIExpression()), !dbg !2297
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2299

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2002, metadata !DIExpression()), !dbg !2278
  %304 = icmp ugt i64 %300, %129, !dbg !2300
  br i1 %304, label %306, label %332, !dbg !2302

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2278
  br label %332, !dbg !2303

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2002, metadata !DIExpression()), !dbg !2278
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2305
  %310 = load i8, ptr %309, align 1, !dbg !2305, !tbaa !918
  %311 = icmp eq i8 %310, 0, !dbg !2302
  br i1 %311, label %332, label %312, !dbg !2306

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2002, metadata !DIExpression()), !dbg !2278
  %314 = add i64 %313, %129, !dbg !2308
  %315 = icmp eq i64 %313, %301, !dbg !2300
  br i1 %315, label %332, label %306, !dbg !2302, !llvm.loop !2309

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2310
  %319 = and i1 %318, %110, !dbg !2310
  call void @llvm.dbg.value(metadata i64 1, metadata !2014, metadata !DIExpression()), !dbg !2311
  br i1 %319, label %320, label %328, !dbg !2310

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2014, metadata !DIExpression()), !dbg !2311
  %322 = add i64 %321, %129, !dbg !2312
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2314
  %324 = load i8, ptr %323, align 1, !dbg !2314, !tbaa !918
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2315

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %326, metadata !2014, metadata !DIExpression()), !dbg !2311
  %327 = icmp eq i64 %326, %302, !dbg !2317
  br i1 %327, label %328, label %320, !dbg !2318, !llvm.loop !2319

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2321, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %329, metadata !2009, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %329, metadata !2323, metadata !DIExpression()), !dbg !2331
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !2333
  %331 = icmp ne i32 %330, 0, !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %302, metadata !2002, metadata !DIExpression()), !dbg !2278
  br label %332, !dbg !2335

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %333, metadata !2002, metadata !DIExpression()), !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2337
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 0, metadata !2002, metadata !DIExpression()), !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2337
  call void @llvm.dbg.label(metadata !2031), !dbg !2338
  %336 = select i1 %109, i32 4, i32 2, !dbg !2339
  br label %626, !dbg !2339

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2130
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2341
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2005, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %339, metadata !2002, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %338, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i1 %340, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2130
  %341 = icmp ult i64 %339, 2, !dbg !2342
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2343
  br i1 %343, label %439, label %344, !dbg !2343

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %345, metadata !2022, metadata !DIExpression()), !dbg !2345
  br label %346, !dbg !2346

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2032
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2121
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2347
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2130
  call void @llvm.dbg.value(metadata i8 %352, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %351, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %349, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %347, metadata !1980, metadata !DIExpression()), !dbg !2032
  br i1 %342, label %397, label %353, !dbg !2348

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2353

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2130
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2356
  br i1 %355, label %372, label %356, !dbg !2356

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2358
  br i1 %357, label %358, label %360, !dbg !2362

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2358
  store i8 39, ptr %359, align 1, !dbg !2358, !tbaa !918
  br label %360, !dbg !2358

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %361, metadata !1980, metadata !DIExpression()), !dbg !2032
  %362 = icmp ult i64 %361, %130, !dbg !2363
  br i1 %362, label %363, label %365, !dbg !2366

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2363
  store i8 36, ptr %364, align 1, !dbg !2363, !tbaa !918
  br label %365, !dbg !2363

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %366, metadata !1980, metadata !DIExpression()), !dbg !2032
  %367 = icmp ult i64 %366, %130, !dbg !2367
  br i1 %367, label %368, label %370, !dbg !2370

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2367
  store i8 39, ptr %369, align 1, !dbg !2367, !tbaa !918
  br label %370, !dbg !2367

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %371, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %372, !dbg !2371

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2032
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %373, metadata !1980, metadata !DIExpression()), !dbg !2032
  %375 = icmp ult i64 %373, %130, !dbg !2372
  br i1 %375, label %376, label %378, !dbg !2375

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2372
  store i8 92, ptr %377, align 1, !dbg !2372, !tbaa !918
  br label %378, !dbg !2372

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %379, metadata !1980, metadata !DIExpression()), !dbg !2032
  %380 = icmp ult i64 %379, %130, !dbg !2376
  br i1 %380, label %381, label %385, !dbg !2379

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2376
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2376
  store i8 %383, ptr %384, align 1, !dbg !2376, !tbaa !918
  br label %385, !dbg !2376

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %386, metadata !1980, metadata !DIExpression()), !dbg !2032
  %387 = icmp ult i64 %386, %130, !dbg !2380
  br i1 %387, label %388, label %393, !dbg !2383

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2380
  %391 = or i8 %390, 48, !dbg !2380
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2380
  store i8 %391, ptr %392, align 1, !dbg !2380, !tbaa !918
  br label %393, !dbg !2380

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %394, metadata !1980, metadata !DIExpression()), !dbg !2032
  %395 = and i8 %352, 7, !dbg !2384
  %396 = or i8 %395, 48, !dbg !2385
  call void @llvm.dbg.value(metadata i8 %396, metadata !2001, metadata !DIExpression()), !dbg !2130
  br label %404, !dbg !2386

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2387

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2388
  br i1 %399, label %400, label %402, !dbg !2393

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2388
  store i8 92, ptr %401, align 1, !dbg !2388, !tbaa !918
  br label %402, !dbg !2388

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %403, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2130
  br label %404, !dbg !2394

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2032
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2130
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2130
  call void @llvm.dbg.value(metadata i8 %409, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %408, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %405, metadata !1980, metadata !DIExpression()), !dbg !2032
  %410 = add i64 %349, 1, !dbg !2395
  %411 = icmp ugt i64 %345, %410, !dbg !2397
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2398

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2399
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2399
  br i1 %415, label %416, label %427, !dbg !2399

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2402
  br i1 %417, label %418, label %420, !dbg !2406

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2402
  store i8 39, ptr %419, align 1, !dbg !2402, !tbaa !918
  br label %420, !dbg !2402

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %421, metadata !1980, metadata !DIExpression()), !dbg !2032
  %422 = icmp ult i64 %421, %130, !dbg !2407
  br i1 %422, label %423, label %425, !dbg !2410

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2407
  store i8 39, ptr %424, align 1, !dbg !2407, !tbaa !918
  br label %425, !dbg !2407

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %426, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %427, !dbg !2411

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2412
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %428, metadata !1980, metadata !DIExpression()), !dbg !2032
  %430 = icmp ult i64 %428, %130, !dbg !2413
  br i1 %430, label %431, label %433, !dbg !2416

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2413
  store i8 %409, ptr %432, align 1, !dbg !2413, !tbaa !918
  br label %433, !dbg !2413

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %434, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %410, metadata !1994, metadata !DIExpression()), !dbg !2121
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2417
  %436 = load i8, ptr %435, align 1, !dbg !2417, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %436, metadata !2001, metadata !DIExpression()), !dbg !2130
  br label %346, !dbg !2418, !llvm.loop !2419

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i1 %340, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %408, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %349, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %405, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %338, metadata !1973, metadata !DIExpression()), !dbg !2032
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2422
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2032
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2036
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2121
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2130
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 %448, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !2000, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1996, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %445, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %442, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %441, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %440, metadata !1973, metadata !DIExpression()), !dbg !2032
  br i1 %112, label %461, label %450, !dbg !2423

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
  br i1 %121, label %462, label %482, !dbg !2425

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2426

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
  %473 = lshr i8 %464, 5, !dbg !2427
  %474 = zext i8 %473 to i64, !dbg !2427
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2428
  %476 = load i32, ptr %475, align 4, !dbg !2428, !tbaa !909
  %477 = and i8 %464, 31, !dbg !2429
  %478 = zext i8 %477 to i32, !dbg !2429
  %479 = shl nuw i32 1, %478, !dbg !2430
  %480 = and i32 %476, %479, !dbg !2430
  %481 = icmp eq i32 %480, 0, !dbg !2430
  br i1 %481, label %482, label %493, !dbg !2431

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
  br i1 %154, label %493, label %529, !dbg !2432

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2422
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2032
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2036
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2433
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2130
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 %501, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !2000, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %499, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %496, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %495, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %494, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.label(metadata !2029), !dbg !2434
  br i1 %110, label %621, label %503, !dbg !2435

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2130
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2437
  br i1 %504, label %521, label %505, !dbg !2437

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2439
  br i1 %506, label %507, label %509, !dbg !2443

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2439
  store i8 39, ptr %508, align 1, !dbg !2439, !tbaa !918
  br label %509, !dbg !2439

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %510, metadata !1980, metadata !DIExpression()), !dbg !2032
  %511 = icmp ult i64 %510, %502, !dbg !2444
  br i1 %511, label %512, label %514, !dbg !2447

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2444
  store i8 36, ptr %513, align 1, !dbg !2444, !tbaa !918
  br label %514, !dbg !2444

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %515, metadata !1980, metadata !DIExpression()), !dbg !2032
  %516 = icmp ult i64 %515, %502, !dbg !2448
  br i1 %516, label %517, label %519, !dbg !2451

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2448
  store i8 39, ptr %518, align 1, !dbg !2448, !tbaa !918
  br label %519, !dbg !2448

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %520, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %521, !dbg !2452

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2130
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %522, metadata !1980, metadata !DIExpression()), !dbg !2032
  %524 = icmp ult i64 %522, %502, !dbg !2453
  br i1 %524, label %525, label %527, !dbg !2456

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2453
  store i8 92, ptr %526, align 1, !dbg !2453, !tbaa !918
  br label %527, !dbg !2453

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %502, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 %501, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !2000, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %499, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %496, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %528, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %494, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.label(metadata !2030), !dbg !2457
  br label %553, !dbg !2458

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2422
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2032
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2036
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2433
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2461
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 %538, metadata !2001, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !2000, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %535, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %532, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %531, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %530, metadata !1973, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.label(metadata !2030), !dbg !2457
  %540 = xor i1 %534, true, !dbg !2458
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2458
  br i1 %541, label %553, label %542, !dbg !2458

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2462
  br i1 %543, label %544, label %546, !dbg !2466

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2462
  store i8 39, ptr %545, align 1, !dbg !2462, !tbaa !918
  br label %546, !dbg !2462

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %547, metadata !1980, metadata !DIExpression()), !dbg !2032
  %548 = icmp ult i64 %547, %539, !dbg !2467
  br i1 %548, label %549, label %551, !dbg !2470

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2467
  store i8 39, ptr %550, align 1, !dbg !2467, !tbaa !918
  br label %551, !dbg !2467

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %552, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2032
  br label %553, !dbg !2471

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2130
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %561, metadata !1980, metadata !DIExpression()), !dbg !2032
  %563 = icmp ult i64 %561, %554, !dbg !2472
  br i1 %563, label %564, label %566, !dbg !2475

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2472
  store i8 %555, ptr %565, align 1, !dbg !2472, !tbaa !918
  br label %566, !dbg !2472

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %567, metadata !1980, metadata !DIExpression()), !dbg !2032
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !2032
  br label %569, !dbg !2477

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2422
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2032
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2036
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2433
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %576, metadata !1994, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %572, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %571, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %570, metadata !1973, metadata !DIExpression()), !dbg !2032
  %578 = add i64 %576, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %578, metadata !1994, metadata !DIExpression()), !dbg !2121
  br label %122, !dbg !2479, !llvm.loop !2480

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1971, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %125, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %124, metadata !1980, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %123, metadata !1973, metadata !DIExpression()), !dbg !2032
  %580 = icmp ne i64 %124, 0, !dbg !2482
  %581 = xor i1 %110, true, !dbg !2484
  %582 = or i1 %580, %581, !dbg !2484
  %583 = or i1 %582, %111, !dbg !2484
  br i1 %583, label %584, label %621, !dbg !2484

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2485
  %586 = xor i1 %126, true, !dbg !2485
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2485
  br i1 %587, label %595, label %588, !dbg !2485

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2487

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2489
  br label %636, !dbg !2491

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2492
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2494
  br i1 %594, label %27, label %595, !dbg !2494

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2495
  %598 = or i1 %597, %596, !dbg !2497
  br i1 %598, label %614, label %599, !dbg !2497

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1982, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %124, metadata !1980, metadata !DIExpression()), !dbg !2032
  %600 = load i8, ptr %107, align 1, !dbg !2498, !tbaa !918
  %601 = icmp eq i8 %600, 0, !dbg !2501
  br i1 %601, label %614, label %602, !dbg !2501

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1982, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %605, metadata !1980, metadata !DIExpression()), !dbg !2032
  %606 = icmp ult i64 %605, %130, !dbg !2502
  br i1 %606, label %607, label %609, !dbg !2505

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2502
  store i8 %603, ptr %608, align 1, !dbg !2502, !tbaa !918
  br label %609, !dbg !2502

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %610, metadata !1980, metadata !DIExpression()), !dbg !2032
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2506
  call void @llvm.dbg.value(metadata ptr %611, metadata !1982, metadata !DIExpression()), !dbg !2032
  %612 = load i8, ptr %611, align 1, !dbg !2498, !tbaa !918
  %613 = icmp eq i8 %612, 0, !dbg !2501
  br i1 %613, label %614, label %602, !dbg !2501, !llvm.loop !2507

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2108
  call void @llvm.dbg.value(metadata i64 %615, metadata !1980, metadata !DIExpression()), !dbg !2032
  %616 = icmp ult i64 %615, %130, !dbg !2509
  br i1 %616, label %617, label %636, !dbg !2511

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2512
  store i8 0, ptr %618, align 1, !dbg !2513, !tbaa !918
  br label %636, !dbg !2512

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2031), !dbg !2338
  %620 = icmp eq i32 %103, 2, !dbg !2514
  br i1 %620, label %626, label %630, !dbg !2339

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2031), !dbg !2338
  %624 = icmp eq i32 %103, 2, !dbg !2514
  %625 = select i1 %109, i32 4, i32 2, !dbg !2339
  br i1 %624, label %626, label %630, !dbg !2339

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2339

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1974, metadata !DIExpression()), !dbg !2032
  %634 = and i32 %5, -3, !dbg !2515
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2516
  br label %636, !dbg !2517

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2518
}

; Function Attrs: nounwind
declare !dbg !2519 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2521 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %2, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2536, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr null, metadata !2537, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %2, metadata !2538, metadata !DIExpression()), !dbg !2544
  %4 = icmp eq ptr %2, null, !dbg !2546
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2546
  call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !2544
  %6 = tail call ptr @__errno_location() #39, !dbg !2547
  %7 = load i32, ptr %6, align 4, !dbg !2547, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %7, metadata !2540, metadata !DIExpression()), !dbg !2544
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2548
  %9 = load i32, ptr %8, align 4, !dbg !2548, !tbaa !1914
  %10 = or i32 %9, 1, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %10, metadata !2541, metadata !DIExpression()), !dbg !2544
  %11 = load i32, ptr %5, align 8, !dbg !2550, !tbaa !1864
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2551
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2552
  %14 = load ptr, ptr %13, align 8, !dbg !2552, !tbaa !1935
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2553
  %16 = load ptr, ptr %15, align 8, !dbg !2553, !tbaa !1938
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2554
  %18 = add i64 %17, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %18, metadata !2542, metadata !DIExpression()), !dbg !2544
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %19, metadata !2543, metadata !DIExpression()), !dbg !2544
  %20 = load i32, ptr %5, align 8, !dbg !2557, !tbaa !1864
  %21 = load ptr, ptr %13, align 8, !dbg !2558, !tbaa !1935
  %22 = load ptr, ptr %15, align 8, !dbg !2559, !tbaa !1938
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2560
  store i32 %7, ptr %6, align 4, !dbg !2561, !tbaa !909
  ret ptr %19, !dbg !2562
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2532 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %1, metadata !2536, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !2563
  %5 = icmp eq ptr %3, null, !dbg !2564
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %6, metadata !2539, metadata !DIExpression()), !dbg !2563
  %7 = tail call ptr @__errno_location() #39, !dbg !2565
  %8 = load i32, ptr %7, align 4, !dbg !2565, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %8, metadata !2540, metadata !DIExpression()), !dbg !2563
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2566
  %10 = load i32, ptr %9, align 4, !dbg !2566, !tbaa !1914
  %11 = icmp eq ptr %2, null, !dbg !2567
  %12 = zext i1 %11 to i32, !dbg !2567
  %13 = or i32 %10, %12, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %13, metadata !2541, metadata !DIExpression()), !dbg !2563
  %14 = load i32, ptr %6, align 8, !dbg !2569, !tbaa !1864
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2570
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2571
  %17 = load ptr, ptr %16, align 8, !dbg !2571, !tbaa !1935
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2572
  %19 = load ptr, ptr %18, align 8, !dbg !2572, !tbaa !1938
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2573
  %21 = add i64 %20, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %21, metadata !2542, metadata !DIExpression()), !dbg !2563
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %22, metadata !2543, metadata !DIExpression()), !dbg !2563
  %23 = load i32, ptr %6, align 8, !dbg !2576, !tbaa !1864
  %24 = load ptr, ptr %16, align 8, !dbg !2577, !tbaa !1935
  %25 = load ptr, ptr %18, align 8, !dbg !2578, !tbaa !1938
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2579
  store i32 %8, ptr %7, align 4, !dbg !2580, !tbaa !909
  br i1 %11, label %28, label %27, !dbg !2581

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2582, !tbaa !2584
  br label %28, !dbg !2585

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2587 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2592, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %1, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 1, metadata !2590, metadata !DIExpression()), !dbg !2594
  %2 = load i32, ptr @nslots, align 4, !tbaa !909
  call void @llvm.dbg.value(metadata i32 1, metadata !2590, metadata !DIExpression()), !dbg !2594
  %3 = icmp sgt i32 %2, 1, !dbg !2595
  br i1 %3, label %4, label %6, !dbg !2597

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2595
  br label %10, !dbg !2597

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2598
  %8 = load ptr, ptr %7, align 8, !dbg !2598, !tbaa !2600
  %9 = icmp eq ptr %8, @slot0, !dbg !2602
  br i1 %9, label %17, label %16, !dbg !2603

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2590, metadata !DIExpression()), !dbg !2594
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2604
  %13 = load ptr, ptr %12, align 8, !dbg !2604, !tbaa !2600
  tail call void @free(ptr noundef %13) #36, !dbg !2605
  %14 = add nuw nsw i64 %11, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %14, metadata !2590, metadata !DIExpression()), !dbg !2594
  %15 = icmp eq i64 %14, %5, !dbg !2595
  br i1 %15, label %6, label %10, !dbg !2597, !llvm.loop !2607

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2609
  store i64 256, ptr @slotvec0, align 8, !dbg !2611, !tbaa !2612
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2613, !tbaa !2600
  br label %17, !dbg !2614

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2615
  br i1 %18, label %20, label %19, !dbg !2617

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2618
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2620, !tbaa !846
  br label %20, !dbg !2621

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2622, !tbaa !909
  ret void, !dbg !2623
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2624 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2631
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2632
  ret ptr %3, !dbg !2633
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2634 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %2, metadata !2640, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %3, metadata !2641, metadata !DIExpression()), !dbg !2654
  %6 = tail call ptr @__errno_location() #39, !dbg !2655
  %7 = load i32, ptr %6, align 4, !dbg !2655, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %7, metadata !2642, metadata !DIExpression()), !dbg !2654
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2656, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %8, metadata !2643, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2644, metadata !DIExpression()), !dbg !2654
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2657
  br i1 %9, label %10, label %11, !dbg !2657

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2659
  unreachable, !dbg !2659

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2660, !tbaa !909
  %13 = icmp sgt i32 %12, %0, !dbg !2661
  br i1 %13, label %32, label %14, !dbg !2662

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2663
  call void @llvm.dbg.value(metadata i1 %15, metadata !2645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2665
  %16 = sext i32 %12 to i64, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %16, metadata !2648, metadata !DIExpression()), !dbg !2664
  store i64 %16, ptr %5, align 8, !dbg !2667, !tbaa !2584
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2668
  %18 = add nuw nsw i32 %0, 1, !dbg !2669
  %19 = sub i32 %18, %12, !dbg !2670
  %20 = sext i32 %19 to i64, !dbg !2671
  call void @llvm.dbg.value(metadata ptr %5, metadata !2648, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %21, metadata !2643, metadata !DIExpression()), !dbg !2654
  store ptr %21, ptr @slotvec, align 8, !dbg !2673, !tbaa !846
  br i1 %15, label %22, label %23, !dbg !2674

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2675, !tbaa.struct !2677
  br label %23, !dbg !2678

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2679, !tbaa !909
  %25 = sext i32 %24 to i64, !dbg !2680
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2680
  %27 = load i64, ptr %5, align 8, !dbg !2681, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %27, metadata !2648, metadata !DIExpression()), !dbg !2664
  %28 = sub nsw i64 %27, %25, !dbg !2682
  %29 = shl i64 %28, 4, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %26, metadata !2066, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %29, metadata !2070, metadata !DIExpression()), !dbg !2684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2686
  %30 = load i64, ptr %5, align 8, !dbg !2687, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %30, metadata !2648, metadata !DIExpression()), !dbg !2664
  %31 = trunc i64 %30 to i32, !dbg !2687
  store i32 %31, ptr @nslots, align 4, !dbg !2688, !tbaa !909
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2689
  br label %32, !dbg !2690

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2654
  call void @llvm.dbg.value(metadata ptr %33, metadata !2643, metadata !DIExpression()), !dbg !2654
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2691
  %36 = load i64, ptr %35, align 8, !dbg !2692, !tbaa !2612
  call void @llvm.dbg.value(metadata i64 %36, metadata !2649, metadata !DIExpression()), !dbg !2693
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2694
  %38 = load ptr, ptr %37, align 8, !dbg !2694, !tbaa !2600
  call void @llvm.dbg.value(metadata ptr %38, metadata !2651, metadata !DIExpression()), !dbg !2693
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2695
  %40 = load i32, ptr %39, align 4, !dbg !2695, !tbaa !1914
  %41 = or i32 %40, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %41, metadata !2652, metadata !DIExpression()), !dbg !2693
  %42 = load i32, ptr %3, align 8, !dbg !2697, !tbaa !1864
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2698
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2699
  %45 = load ptr, ptr %44, align 8, !dbg !2699, !tbaa !1935
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2700
  %47 = load ptr, ptr %46, align 8, !dbg !2700, !tbaa !1938
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %48, metadata !2653, metadata !DIExpression()), !dbg !2693
  %49 = icmp ugt i64 %36, %48, !dbg !2702
  br i1 %49, label %60, label %50, !dbg !2704

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %51, metadata !2649, metadata !DIExpression()), !dbg !2693
  store i64 %51, ptr %35, align 8, !dbg !2707, !tbaa !2612
  %52 = icmp eq ptr %38, @slot0, !dbg !2708
  br i1 %52, label %54, label %53, !dbg !2710

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2711
  br label %54, !dbg !2711

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2712
  call void @llvm.dbg.value(metadata ptr %55, metadata !2651, metadata !DIExpression()), !dbg !2693
  store ptr %55, ptr %37, align 8, !dbg !2713, !tbaa !2600
  %56 = load i32, ptr %3, align 8, !dbg !2714, !tbaa !1864
  %57 = load ptr, ptr %44, align 8, !dbg !2715, !tbaa !1935
  %58 = load ptr, ptr %46, align 8, !dbg !2716, !tbaa !1938
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2717
  br label %60, !dbg !2718

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2693
  call void @llvm.dbg.value(metadata ptr %61, metadata !2651, metadata !DIExpression()), !dbg !2693
  store i32 %7, ptr %6, align 4, !dbg !2719, !tbaa !909
  ret ptr %61, !dbg !2720
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %1, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %2, metadata !2727, metadata !DIExpression()), !dbg !2728
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2729
  ret ptr %4, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2735
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2737
  ret ptr %2, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()), !dbg !2746
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2748
  ret ptr %3, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2750 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %1, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %2, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2757, metadata !DIExpression()), !dbg !2760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2773, !alias.scope !2761
  %5 = icmp eq i32 %1, 10, !dbg !2774
  br i1 %5, label %6, label %7, !dbg !2776

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2777, !noalias !2761
  unreachable, !dbg !2777

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2778, !tbaa !1864, !alias.scope !2761
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2779
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2780
  ret ptr %8, !dbg !2781
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2782 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %2, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %3, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2790, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2770, metadata !DIExpression()), !dbg !2800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2800, !alias.scope !2794
  %6 = icmp eq i32 %1, 10, !dbg !2801
  br i1 %6, label %7, label %8, !dbg !2802

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2803, !noalias !2794
  unreachable, !dbg !2803

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2804, !tbaa !1864, !alias.scope !2794
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2805
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2806
  ret ptr %9, !dbg !2807
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2808 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %1, metadata !2756, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2757, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2770, metadata !DIExpression()), !dbg !2825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2825, !alias.scope !2819
  %4 = icmp eq i32 %0, 10, !dbg !2826
  br i1 %4, label %5, label %6, !dbg !2827

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2828, !noalias !2819
  unreachable, !dbg !2828

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2829, !tbaa !1864, !alias.scope !2819
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2830
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2831
  ret ptr %7, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2833 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %2, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %1, metadata !2788, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2789, metadata !DIExpression()), !dbg !2841
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2843
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2790, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845), !dbg !2848
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2770, metadata !DIExpression()), !dbg !2851
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2851, !alias.scope !2845
  %5 = icmp eq i32 %0, 10, !dbg !2852
  br i1 %5, label %6, label %7, !dbg !2853

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2854, !noalias !2845
  unreachable, !dbg !2854

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2855, !tbaa !1864, !alias.scope !2845
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2857
  ret ptr %8, !dbg !2858
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2859 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %2, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2868
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2870, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %4, metadata !1881, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 %2, metadata !1882, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 %2, metadata !1884, metadata !DIExpression()), !dbg !2872
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2874
  %6 = lshr i8 %2, 5, !dbg !2875
  %7 = zext i8 %6 to i64, !dbg !2875
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2876
  call void @llvm.dbg.value(metadata ptr %8, metadata !1885, metadata !DIExpression()), !dbg !2872
  %9 = and i8 %2, 31, !dbg !2877
  %10 = zext i8 %9 to i32, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %10, metadata !1887, metadata !DIExpression()), !dbg !2872
  %11 = load i32, ptr %8, align 4, !dbg !2878, !tbaa !909
  %12 = lshr i32 %11, %10, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %12, metadata !1888, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2872
  %13 = and i32 %12, 1, !dbg !2880
  %14 = xor i32 %13, 1, !dbg !2880
  %15 = shl nuw i32 %14, %10, !dbg !2881
  %16 = xor i32 %15, %11, !dbg !2882
  store i32 %16, ptr %8, align 4, !dbg !2882, !tbaa !909
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2883
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2884
  ret ptr %17, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2886 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %1, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 -1, metadata !2864, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 %1, metadata !2865, metadata !DIExpression()), !dbg !2893
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2895
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2866, metadata !DIExpression()), !dbg !2896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2897, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %3, metadata !1881, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 %1, metadata !1882, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 %1, metadata !1884, metadata !DIExpression()), !dbg !2898
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2900
  %5 = lshr i8 %1, 5, !dbg !2901
  %6 = zext i8 %5 to i64, !dbg !2901
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %7, metadata !1885, metadata !DIExpression()), !dbg !2898
  %8 = and i8 %1, 31, !dbg !2903
  %9 = zext i8 %8 to i32, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %9, metadata !1887, metadata !DIExpression()), !dbg !2898
  %10 = load i32, ptr %7, align 4, !dbg !2904, !tbaa !909
  %11 = lshr i32 %10, %9, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %11, metadata !1888, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2898
  %12 = and i32 %11, 1, !dbg !2906
  %13 = xor i32 %12, 1, !dbg !2906
  %14 = shl nuw i32 %13, %9, !dbg !2907
  %15 = xor i32 %14, %10, !dbg !2908
  store i32 %15, ptr %7, align 4, !dbg !2908, !tbaa !909
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2909
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2910
  ret ptr %16, !dbg !2911
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2912 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 58, metadata !2891, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 -1, metadata !2864, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 58, metadata !2865, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2866, metadata !DIExpression()), !dbg !2921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2922, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %2, metadata !1881, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 58, metadata !1882, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()), !dbg !2923
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2925
  call void @llvm.dbg.value(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 26, metadata !1887, metadata !DIExpression()), !dbg !2923
  %4 = load i32, ptr %3, align 4, !dbg !2926, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %4, metadata !1888, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2923
  %5 = or i32 %4, 67108864, !dbg !2927
  store i32 %5, ptr %3, align 4, !dbg !2927, !tbaa !909
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2928
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2929
  ret ptr %6, !dbg !2930
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2931 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !2865, metadata !DIExpression()), !dbg !2936
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2866, metadata !DIExpression()), !dbg !2939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2940, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %3, metadata !1881, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1882, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()), !dbg !2941
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 26, metadata !1887, metadata !DIExpression()), !dbg !2941
  %5 = load i32, ptr %4, align 4, !dbg !2944, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %5, metadata !1888, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2941
  %6 = or i32 %5, 67108864, !dbg !2945
  store i32 %6, ptr %4, align 4, !dbg !2945, !tbaa !909
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2946
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2947
  ret ptr %7, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2949 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %0, metadata !2951, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 %1, metadata !2952, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata ptr %2, metadata !2953, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2954, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2960
  %5 = icmp eq i32 %1, 10, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2962

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2963, !noalias !2964
  unreachable, !dbg !2963

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2960
  store i32 %1, ptr %4, align 8, !dbg !2967, !tbaa.struct !2871
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2967
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %4, metadata !1881, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8 58, metadata !1882, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()), !dbg !2968
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %9, metadata !1885, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 26, metadata !1887, metadata !DIExpression()), !dbg !2968
  %10 = load i32, ptr %9, align 4, !dbg !2971, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %10, metadata !1888, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2968
  %11 = or i32 %10, 67108864, !dbg !2972
  store i32 %11, ptr %9, align 4, !dbg !2972, !tbaa !909
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2973
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2974
  ret ptr %12, !dbg !2975
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2976 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %1, metadata !2981, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %2, metadata !2982, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %3, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %0, metadata !2985, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %1, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %2, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %3, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 -1, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2999, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %5, metadata !1921, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %1, metadata !1922, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %2, metadata !1923, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %5, metadata !1921, metadata !DIExpression()), !dbg !3000
  store i32 10, ptr %5, align 8, !dbg !3002, !tbaa !1864
  %6 = icmp ne ptr %1, null, !dbg !3003
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3004
  br i1 %8, label %10, label %9, !dbg !3004

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3005
  unreachable, !dbg !3005

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3006
  store ptr %1, ptr %11, align 8, !dbg !3007, !tbaa !1935
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3008
  store ptr %2, ptr %12, align 8, !dbg !3009, !tbaa !1938
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3010
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3011
  ret ptr %13, !dbg !3012
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2986 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2985, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !2990, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %2, metadata !2991, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %3, metadata !2992, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %4, metadata !2993, metadata !DIExpression()), !dbg !3013
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3014
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2994, metadata !DIExpression()), !dbg !3015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3016, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %6, metadata !1921, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %1, metadata !1922, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %2, metadata !1923, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %6, metadata !1921, metadata !DIExpression()), !dbg !3017
  store i32 10, ptr %6, align 8, !dbg !3019, !tbaa !1864
  %7 = icmp ne ptr %1, null, !dbg !3020
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3021
  br i1 %9, label %11, label %10, !dbg !3021

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3022
  unreachable, !dbg !3022

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3023
  store ptr %1, ptr %12, align 8, !dbg !3024, !tbaa !1935
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3025
  store ptr %2, ptr %13, align 8, !dbg !3026, !tbaa !1938
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3027
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3028
  ret ptr %14, !dbg !3029
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3030 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %1, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %2, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %0, metadata !2981, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %2, metadata !2983, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2985, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 -1, metadata !2993, metadata !DIExpression()), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !3043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3044, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %4, metadata !1921, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %0, metadata !1922, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %1, metadata !1923, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %4, metadata !1921, metadata !DIExpression()), !dbg !3045
  store i32 10, ptr %4, align 8, !dbg !3047, !tbaa !1864
  %5 = icmp ne ptr %0, null, !dbg !3048
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3049
  br i1 %7, label %9, label %8, !dbg !3049

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3050
  unreachable, !dbg !3050

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3051
  store ptr %0, ptr %10, align 8, !dbg !3052, !tbaa !1935
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3053
  store ptr %1, ptr %11, align 8, !dbg !3054, !tbaa !1938
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3055
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3056
  ret ptr %12, !dbg !3057
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3058 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %1, metadata !3063, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %2, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %3, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !2985, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %3, metadata !2993, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3069
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2994, metadata !DIExpression()), !dbg !3070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3071, !tbaa.struct !2871
  call void @llvm.dbg.value(metadata ptr %5, metadata !1921, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %0, metadata !1922, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %1, metadata !1923, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %5, metadata !1921, metadata !DIExpression()), !dbg !3072
  store i32 10, ptr %5, align 8, !dbg !3074, !tbaa !1864
  %6 = icmp ne ptr %0, null, !dbg !3075
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3076
  br i1 %8, label %10, label %9, !dbg !3076

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3077
  unreachable, !dbg !3077

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3078
  store ptr %0, ptr %11, align 8, !dbg !3079, !tbaa !1935
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3080
  store ptr %1, ptr %12, align 8, !dbg !3081, !tbaa !1938
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3082
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3083
  ret ptr %13, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %1, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !3091, metadata !DIExpression()), !dbg !3092
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3093
  ret ptr %4, !dbg !3094
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3095 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3099, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3102
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3104
  ret ptr %3, !dbg !3105
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %1, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %1, metadata !3090, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 -1, metadata !3091, metadata !DIExpression()), !dbg !3113
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3115
  ret ptr %3, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 0, metadata !3110, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 -1, metadata !3091, metadata !DIExpression()), !dbg !3125
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3127
  ret ptr %2, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %2, metadata !3170, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %3, metadata !3171, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %4, metadata !3172, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %5, metadata !3173, metadata !DIExpression()), !dbg !3174
  %7 = icmp eq ptr %1, null, !dbg !3175
  br i1 %7, label %10, label %8, !dbg !3177

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3178
  br label %12, !dbg !3178

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.97, ptr noundef %2, ptr noundef %3) #36, !dbg !3179
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.3.99, i32 noundef 5) #36, !dbg !3180
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3180
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3181
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.5.101, i32 noundef 5) #36, !dbg !3182
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.102) #36, !dbg !3182
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3183
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
  ], !dbg !3184

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.7.103, i32 noundef 5) #36, !dbg !3185
  %21 = load ptr, ptr %4, align 8, !dbg !3185, !tbaa !846
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3185
  br label %147, !dbg !3187

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.8.104, i32 noundef 5) #36, !dbg !3188
  %25 = load ptr, ptr %4, align 8, !dbg !3188, !tbaa !846
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3188
  %27 = load ptr, ptr %26, align 8, !dbg !3188, !tbaa !846
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3188
  br label %147, !dbg !3189

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.9.105, i32 noundef 5) #36, !dbg !3190
  %31 = load ptr, ptr %4, align 8, !dbg !3190, !tbaa !846
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3190
  %33 = load ptr, ptr %32, align 8, !dbg !3190, !tbaa !846
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3190
  %35 = load ptr, ptr %34, align 8, !dbg !3190, !tbaa !846
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3190
  br label %147, !dbg !3191

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.10.106, i32 noundef 5) #36, !dbg !3192
  %39 = load ptr, ptr %4, align 8, !dbg !3192, !tbaa !846
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3192
  %41 = load ptr, ptr %40, align 8, !dbg !3192, !tbaa !846
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3192
  %43 = load ptr, ptr %42, align 8, !dbg !3192, !tbaa !846
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3192
  %45 = load ptr, ptr %44, align 8, !dbg !3192, !tbaa !846
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3192
  br label %147, !dbg !3193

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.11.107, i32 noundef 5) #36, !dbg !3194
  %49 = load ptr, ptr %4, align 8, !dbg !3194, !tbaa !846
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3194
  %51 = load ptr, ptr %50, align 8, !dbg !3194, !tbaa !846
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3194
  %53 = load ptr, ptr %52, align 8, !dbg !3194, !tbaa !846
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3194
  %55 = load ptr, ptr %54, align 8, !dbg !3194, !tbaa !846
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3194
  %57 = load ptr, ptr %56, align 8, !dbg !3194, !tbaa !846
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3194
  br label %147, !dbg !3195

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.12.108, i32 noundef 5) #36, !dbg !3196
  %61 = load ptr, ptr %4, align 8, !dbg !3196, !tbaa !846
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3196
  %63 = load ptr, ptr %62, align 8, !dbg !3196, !tbaa !846
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3196
  %65 = load ptr, ptr %64, align 8, !dbg !3196, !tbaa !846
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3196
  %67 = load ptr, ptr %66, align 8, !dbg !3196, !tbaa !846
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3196
  %69 = load ptr, ptr %68, align 8, !dbg !3196, !tbaa !846
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3196
  %71 = load ptr, ptr %70, align 8, !dbg !3196, !tbaa !846
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3196
  br label %147, !dbg !3197

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.13.109, i32 noundef 5) #36, !dbg !3198
  %75 = load ptr, ptr %4, align 8, !dbg !3198, !tbaa !846
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3198
  %77 = load ptr, ptr %76, align 8, !dbg !3198, !tbaa !846
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3198
  %79 = load ptr, ptr %78, align 8, !dbg !3198, !tbaa !846
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3198
  %81 = load ptr, ptr %80, align 8, !dbg !3198, !tbaa !846
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3198
  %83 = load ptr, ptr %82, align 8, !dbg !3198, !tbaa !846
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3198
  %85 = load ptr, ptr %84, align 8, !dbg !3198, !tbaa !846
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3198
  %87 = load ptr, ptr %86, align 8, !dbg !3198, !tbaa !846
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3198
  br label %147, !dbg !3199

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.14.110, i32 noundef 5) #36, !dbg !3200
  %91 = load ptr, ptr %4, align 8, !dbg !3200, !tbaa !846
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3200
  %93 = load ptr, ptr %92, align 8, !dbg !3200, !tbaa !846
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3200
  %95 = load ptr, ptr %94, align 8, !dbg !3200, !tbaa !846
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3200
  %97 = load ptr, ptr %96, align 8, !dbg !3200, !tbaa !846
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3200
  %99 = load ptr, ptr %98, align 8, !dbg !3200, !tbaa !846
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3200
  %101 = load ptr, ptr %100, align 8, !dbg !3200, !tbaa !846
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3200
  %103 = load ptr, ptr %102, align 8, !dbg !3200, !tbaa !846
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3200
  %105 = load ptr, ptr %104, align 8, !dbg !3200, !tbaa !846
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3200
  br label %147, !dbg !3201

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.15.111, i32 noundef 5) #36, !dbg !3202
  %109 = load ptr, ptr %4, align 8, !dbg !3202, !tbaa !846
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3202
  %111 = load ptr, ptr %110, align 8, !dbg !3202, !tbaa !846
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3202
  %113 = load ptr, ptr %112, align 8, !dbg !3202, !tbaa !846
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3202
  %115 = load ptr, ptr %114, align 8, !dbg !3202, !tbaa !846
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3202
  %117 = load ptr, ptr %116, align 8, !dbg !3202, !tbaa !846
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3202
  %119 = load ptr, ptr %118, align 8, !dbg !3202, !tbaa !846
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3202
  %121 = load ptr, ptr %120, align 8, !dbg !3202, !tbaa !846
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3202
  %123 = load ptr, ptr %122, align 8, !dbg !3202, !tbaa !846
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3202
  %125 = load ptr, ptr %124, align 8, !dbg !3202, !tbaa !846
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3202
  br label %147, !dbg !3203

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.16.112, i32 noundef 5) #36, !dbg !3204
  %129 = load ptr, ptr %4, align 8, !dbg !3204, !tbaa !846
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3204
  %131 = load ptr, ptr %130, align 8, !dbg !3204, !tbaa !846
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3204
  %133 = load ptr, ptr %132, align 8, !dbg !3204, !tbaa !846
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3204
  %135 = load ptr, ptr %134, align 8, !dbg !3204, !tbaa !846
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3204
  %137 = load ptr, ptr %136, align 8, !dbg !3204, !tbaa !846
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3204
  %139 = load ptr, ptr %138, align 8, !dbg !3204, !tbaa !846
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3204
  %141 = load ptr, ptr %140, align 8, !dbg !3204, !tbaa !846
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3204
  %143 = load ptr, ptr %142, align 8, !dbg !3204, !tbaa !846
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3204
  %145 = load ptr, ptr %144, align 8, !dbg !3204, !tbaa !846
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3204
  br label %147, !dbg !3205

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3206
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3207 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3211, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %1, metadata !3212, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %2, metadata !3213, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %3, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %4, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 0, metadata !3216, metadata !DIExpression()), !dbg !3217
  br label %6, !dbg !3218

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3220
  call void @llvm.dbg.value(metadata i64 %7, metadata !3216, metadata !DIExpression()), !dbg !3217
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3221
  %9 = load ptr, ptr %8, align 8, !dbg !3221, !tbaa !846
  %10 = icmp eq ptr %9, null, !dbg !3223
  %11 = add i64 %7, 1, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %11, metadata !3216, metadata !DIExpression()), !dbg !3217
  br i1 %10, label %12, label %6, !dbg !3223, !llvm.loop !3225

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3227
  ret void, !dbg !3228
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3229 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3244, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata ptr %1, metadata !3245, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata ptr %2, metadata !3246, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3253
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3254
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 0, metadata !3249, metadata !DIExpression()), !dbg !3252
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3249, metadata !DIExpression()), !dbg !3252
  %10 = icmp sgt i32 %9, -1, !dbg !3256
  br i1 %10, label %18, label %11, !dbg !3256

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3256
  store i32 %12, ptr %7, align 8, !dbg !3256
  %13 = icmp ult i32 %9, -7, !dbg !3256
  br i1 %13, label %14, label %18, !dbg !3256

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3256
  %16 = sext i32 %9 to i64, !dbg !3256
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3256
  br label %22, !dbg !3256

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3256
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3256
  store ptr %21, ptr %4, align 8, !dbg !3256
  br label %22, !dbg !3256

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3256
  %25 = load ptr, ptr %24, align 8, !dbg !3256
  store ptr %25, ptr %6, align 8, !dbg !3259, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !3260
  br i1 %26, label %197, label %27, !dbg !3261

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 1, metadata !3249, metadata !DIExpression()), !dbg !3252
  %28 = icmp sgt i32 %23, -1, !dbg !3256
  br i1 %28, label %36, label %29, !dbg !3256

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3256
  store i32 %30, ptr %7, align 8, !dbg !3256
  %31 = icmp ult i32 %23, -7, !dbg !3256
  br i1 %31, label %32, label %36, !dbg !3256

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3256
  %34 = sext i32 %23 to i64, !dbg !3256
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3256
  br label %40, !dbg !3256

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3256
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3256
  store ptr %39, ptr %4, align 8, !dbg !3256
  br label %40, !dbg !3256

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3256
  %43 = load ptr, ptr %42, align 8, !dbg !3256
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3262
  store ptr %43, ptr %44, align 8, !dbg !3259, !tbaa !846
  %45 = icmp eq ptr %43, null, !dbg !3260
  br i1 %45, label %197, label %46, !dbg !3261

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 2, metadata !3249, metadata !DIExpression()), !dbg !3252
  %47 = icmp sgt i32 %41, -1, !dbg !3256
  br i1 %47, label %55, label %48, !dbg !3256

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3256
  store i32 %49, ptr %7, align 8, !dbg !3256
  %50 = icmp ult i32 %41, -7, !dbg !3256
  br i1 %50, label %51, label %55, !dbg !3256

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3256
  %53 = sext i32 %41 to i64, !dbg !3256
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3256
  br label %59, !dbg !3256

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3256
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3256
  store ptr %58, ptr %4, align 8, !dbg !3256
  br label %59, !dbg !3256

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3256
  %62 = load ptr, ptr %61, align 8, !dbg !3256
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3262
  store ptr %62, ptr %63, align 8, !dbg !3259, !tbaa !846
  %64 = icmp eq ptr %62, null, !dbg !3260
  br i1 %64, label %197, label %65, !dbg !3261

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 3, metadata !3249, metadata !DIExpression()), !dbg !3252
  %66 = icmp sgt i32 %60, -1, !dbg !3256
  br i1 %66, label %74, label %67, !dbg !3256

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3256
  store i32 %68, ptr %7, align 8, !dbg !3256
  %69 = icmp ult i32 %60, -7, !dbg !3256
  br i1 %69, label %70, label %74, !dbg !3256

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3256
  %72 = sext i32 %60 to i64, !dbg !3256
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3256
  br label %78, !dbg !3256

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3256
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3256
  store ptr %77, ptr %4, align 8, !dbg !3256
  br label %78, !dbg !3256

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3256
  %81 = load ptr, ptr %80, align 8, !dbg !3256
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3262
  store ptr %81, ptr %82, align 8, !dbg !3259, !tbaa !846
  %83 = icmp eq ptr %81, null, !dbg !3260
  br i1 %83, label %197, label %84, !dbg !3261

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 4, metadata !3249, metadata !DIExpression()), !dbg !3252
  %85 = icmp sgt i32 %79, -1, !dbg !3256
  br i1 %85, label %93, label %86, !dbg !3256

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3256
  store i32 %87, ptr %7, align 8, !dbg !3256
  %88 = icmp ult i32 %79, -7, !dbg !3256
  br i1 %88, label %89, label %93, !dbg !3256

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3256
  %91 = sext i32 %79 to i64, !dbg !3256
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3256
  br label %97, !dbg !3256

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3256
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3256
  store ptr %96, ptr %4, align 8, !dbg !3256
  br label %97, !dbg !3256

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3256
  %100 = load ptr, ptr %99, align 8, !dbg !3256
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3262
  store ptr %100, ptr %101, align 8, !dbg !3259, !tbaa !846
  %102 = icmp eq ptr %100, null, !dbg !3260
  br i1 %102, label %197, label %103, !dbg !3261

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 5, metadata !3249, metadata !DIExpression()), !dbg !3252
  %104 = icmp sgt i32 %98, -1, !dbg !3256
  br i1 %104, label %112, label %105, !dbg !3256

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3256
  store i32 %106, ptr %7, align 8, !dbg !3256
  %107 = icmp ult i32 %98, -7, !dbg !3256
  br i1 %107, label %108, label %112, !dbg !3256

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3256
  %110 = sext i32 %98 to i64, !dbg !3256
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3256
  br label %116, !dbg !3256

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3256
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3256
  store ptr %115, ptr %4, align 8, !dbg !3256
  br label %116, !dbg !3256

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3256
  %119 = load ptr, ptr %118, align 8, !dbg !3256
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3262
  store ptr %119, ptr %120, align 8, !dbg !3259, !tbaa !846
  %121 = icmp eq ptr %119, null, !dbg !3260
  br i1 %121, label %197, label %122, !dbg !3261

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 6, metadata !3249, metadata !DIExpression()), !dbg !3252
  %123 = icmp sgt i32 %117, -1, !dbg !3256
  br i1 %123, label %131, label %124, !dbg !3256

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3256
  store i32 %125, ptr %7, align 8, !dbg !3256
  %126 = icmp ult i32 %117, -7, !dbg !3256
  br i1 %126, label %127, label %131, !dbg !3256

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3256
  %129 = sext i32 %117 to i64, !dbg !3256
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3256
  br label %135, !dbg !3256

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3256
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3256
  store ptr %134, ptr %4, align 8, !dbg !3256
  br label %135, !dbg !3256

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3256
  %138 = load ptr, ptr %137, align 8, !dbg !3256
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3262
  store ptr %138, ptr %139, align 8, !dbg !3259, !tbaa !846
  %140 = icmp eq ptr %138, null, !dbg !3260
  br i1 %140, label %197, label %141, !dbg !3261

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 7, metadata !3249, metadata !DIExpression()), !dbg !3252
  %142 = icmp sgt i32 %136, -1, !dbg !3256
  br i1 %142, label %150, label %143, !dbg !3256

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3256
  store i32 %144, ptr %7, align 8, !dbg !3256
  %145 = icmp ult i32 %136, -7, !dbg !3256
  br i1 %145, label %146, label %150, !dbg !3256

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3256
  %148 = sext i32 %136 to i64, !dbg !3256
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3256
  br label %154, !dbg !3256

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3256
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3256
  store ptr %153, ptr %4, align 8, !dbg !3256
  br label %154, !dbg !3256

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3256
  %157 = load ptr, ptr %156, align 8, !dbg !3256
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3262
  store ptr %157, ptr %158, align 8, !dbg !3259, !tbaa !846
  %159 = icmp eq ptr %157, null, !dbg !3260
  br i1 %159, label %197, label %160, !dbg !3261

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 8, metadata !3249, metadata !DIExpression()), !dbg !3252
  %161 = icmp sgt i32 %155, -1, !dbg !3256
  br i1 %161, label %169, label %162, !dbg !3256

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3256
  store i32 %163, ptr %7, align 8, !dbg !3256
  %164 = icmp ult i32 %155, -7, !dbg !3256
  br i1 %164, label %165, label %169, !dbg !3256

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3256
  %167 = sext i32 %155 to i64, !dbg !3256
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3256
  br label %173, !dbg !3256

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3256
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3256
  store ptr %172, ptr %4, align 8, !dbg !3256
  br label %173, !dbg !3256

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3256
  %176 = load ptr, ptr %175, align 8, !dbg !3256
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3262
  store ptr %176, ptr %177, align 8, !dbg !3259, !tbaa !846
  %178 = icmp eq ptr %176, null, !dbg !3260
  br i1 %178, label %197, label %179, !dbg !3261

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 9, metadata !3249, metadata !DIExpression()), !dbg !3252
  %180 = icmp sgt i32 %174, -1, !dbg !3256
  br i1 %180, label %188, label %181, !dbg !3256

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3256
  store i32 %182, ptr %7, align 8, !dbg !3256
  %183 = icmp ult i32 %174, -7, !dbg !3256
  br i1 %183, label %184, label %188, !dbg !3256

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3256
  %186 = sext i32 %174 to i64, !dbg !3256
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3256
  br label %191, !dbg !3256

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3256
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3256
  store ptr %190, ptr %4, align 8, !dbg !3256
  br label %191, !dbg !3256

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3256
  %193 = load ptr, ptr %192, align 8, !dbg !3256
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3262
  store ptr %193, ptr %194, align 8, !dbg !3259, !tbaa !846
  %195 = icmp eq ptr %193, null, !dbg !3260
  %196 = select i1 %195, i64 9, i64 10, !dbg !3261
  br label %197, !dbg !3261

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3263
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3264
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3265
  ret void, !dbg !3265
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3266 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.va_start(ptr nonnull %5), !dbg !3278
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !3279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3279, !tbaa.struct !1499
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3279
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !3279
  call void @llvm.va_end(ptr nonnull %5), !dbg !3280
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !3281
  ret void, !dbg !3281
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3282 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3283, !tbaa !846
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %1), !dbg !3283
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.17.117, i32 noundef 5) #36, !dbg !3284
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.118) #36, !dbg !3284
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.19.119, i32 noundef 5) #36, !dbg !3285
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.120, ptr noundef nonnull @.str.21.121) #36, !dbg !3285
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.22.122, i32 noundef 5) #36, !dbg !3286
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3286
  ret void, !dbg !3287
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3288 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %2, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3302
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3310
  %5 = icmp eq ptr %4, null, !dbg !3312
  br i1 %5, label %6, label %7, !dbg !3314

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3315
  unreachable, !dbg !3315

7:                                                ; preds = %3
  ret ptr %4, !dbg !3316
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3300, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3317
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3318
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3319
  %5 = icmp eq ptr %4, null, !dbg !3321
  br i1 %5, label %6, label %7, !dbg !3322

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3323
  unreachable, !dbg !3323

7:                                                ; preds = %3
  ret ptr %4, !dbg !3324
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3325 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3329, metadata !DIExpression()), !dbg !3330
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3331
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3332
  %3 = icmp eq ptr %2, null, !dbg !3334
  br i1 %3, label %4, label %5, !dbg !3335

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3336
  unreachable, !dbg !3336

5:                                                ; preds = %1
  ret ptr %2, !dbg !3337
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3338 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3339 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %0, metadata !3345, metadata !DIExpression()), !dbg !3349
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3352
  %3 = icmp eq ptr %2, null, !dbg !3354
  br i1 %3, label %4, label %5, !dbg !3355

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3356
  unreachable, !dbg !3356

5:                                                ; preds = %1
  ret ptr %2, !dbg !3357
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3358 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %0, metadata !3329, metadata !DIExpression()), !dbg !3364
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3367
  %3 = icmp eq ptr %2, null, !dbg !3369
  br i1 %3, label %4, label %5, !dbg !3370

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3371
  unreachable, !dbg !3371

5:                                                ; preds = %1
  ret ptr %2, !dbg !3372
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3385
  %3 = icmp eq i64 %1, 0, !dbg !3387
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3387
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3388
  call void @llvm.dbg.value(metadata ptr %5, metadata !3305, metadata !DIExpression()), !dbg !3389
  %6 = icmp eq ptr %5, null, !dbg !3391
  br i1 %6, label %7, label %8, !dbg !3392

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3393
  unreachable, !dbg !3393

8:                                                ; preds = %2
  ret ptr %5, !dbg !3394
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3395 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3396 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3409
  %3 = icmp eq i64 %1, 0, !dbg !3411
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3411
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3412
  call void @llvm.dbg.value(metadata ptr %5, metadata !3305, metadata !DIExpression()), !dbg !3413
  %6 = icmp eq ptr %5, null, !dbg !3415
  br i1 %6, label %7, label %8, !dbg !3416

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3417
  unreachable, !dbg !3417

8:                                                ; preds = %2
  ret ptr %5, !dbg !3418
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3419 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %2, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %2, metadata !3431, metadata !DIExpression()), !dbg !3432
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3435
  %5 = icmp eq ptr %4, null, !dbg !3437
  br i1 %5, label %6, label %7, !dbg !3438

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3439
  unreachable, !dbg !3439

7:                                                ; preds = %3
  ret ptr %4, !dbg !3440
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3441 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3445, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata ptr null, metadata !3297, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %0, metadata !3300, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3448
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3450
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3451
  %4 = icmp eq ptr %3, null, !dbg !3453
  br i1 %4, label %5, label %6, !dbg !3454

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3455
  unreachable, !dbg !3455

6:                                                ; preds = %2
  ret ptr %3, !dbg !3456
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3457 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %1, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr null, metadata !3423, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %0, metadata !3424, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3425, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr null, metadata !3427, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3466
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3468
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3469
  %4 = icmp eq ptr %3, null, !dbg !3471
  br i1 %4, label %5, label %6, !dbg !3472

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3473
  unreachable, !dbg !3473

6:                                                ; preds = %2
  ret ptr %3, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %1, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 1, metadata !785, metadata !DIExpression()), !dbg !3482
  %3 = load i64, ptr %1, align 8, !dbg !3484, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %3, metadata !786, metadata !DIExpression()), !dbg !3482
  %4 = icmp eq ptr %0, null, !dbg !3485
  br i1 %4, label %5, label %8, !dbg !3487

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3488
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3491
  br label %15, !dbg !3491

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3492
  %10 = add nuw i64 %9, 1, !dbg !3492
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3492
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3492
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %13, metadata !786, metadata !DIExpression()), !dbg !3482
  br i1 %12, label %14, label %15, !dbg !3495

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3496
  unreachable, !dbg !3496

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3482
  call void @llvm.dbg.value(metadata i64 %16, metadata !786, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %16, metadata !3300, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 1, metadata !3301, metadata !DIExpression()), !dbg !3497
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %17, metadata !3305, metadata !DIExpression()), !dbg !3500
  %18 = icmp eq ptr %17, null, !dbg !3502
  br i1 %18, label %19, label %20, !dbg !3503

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3504
  unreachable, !dbg !3504

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !3482
  store i64 %16, ptr %1, align 8, !dbg !3505, !tbaa !2584
  ret ptr %17, !dbg !3506
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !778 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %2, metadata !785, metadata !DIExpression()), !dbg !3507
  %4 = load i64, ptr %1, align 8, !dbg !3508, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %4, metadata !786, metadata !DIExpression()), !dbg !3507
  %5 = icmp eq ptr %0, null, !dbg !3509
  br i1 %5, label %6, label %13, !dbg !3510

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3511
  br i1 %7, label %8, label %20, !dbg !3512

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %9, metadata !786, metadata !DIExpression()), !dbg !3507
  %10 = icmp ugt i64 %2, 128, !dbg !3515
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %12, metadata !786, metadata !DIExpression()), !dbg !3507
  br label %20, !dbg !3517

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3518
  %15 = add nuw i64 %14, 1, !dbg !3518
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3518
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3518
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %18, metadata !786, metadata !DIExpression()), !dbg !3507
  br i1 %17, label %19, label %20, !dbg !3519

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3520
  unreachable, !dbg !3520

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3507
  call void @llvm.dbg.value(metadata i64 %21, metadata !786, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %21, metadata !3300, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3521
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3523
  call void @llvm.dbg.value(metadata ptr %22, metadata !3305, metadata !DIExpression()), !dbg !3524
  %23 = icmp eq ptr %22, null, !dbg !3526
  br i1 %23, label %24, label %25, !dbg !3527

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3528
  unreachable, !dbg !3528

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !783, metadata !DIExpression()), !dbg !3507
  store i64 %21, ptr %1, align 8, !dbg !3529, !tbaa !2584
  ret ptr %22, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !798, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %1, metadata !799, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %2, metadata !800, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %3, metadata !801, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %4, metadata !802, metadata !DIExpression()), !dbg !3531
  %6 = load i64, ptr %1, align 8, !dbg !3532, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %6, metadata !803, metadata !DIExpression()), !dbg !3531
  %7 = ashr i64 %6, 1, !dbg !3533
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3533
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3533
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %10, metadata !804, metadata !DIExpression()), !dbg !3531
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !3531
  %12 = icmp sgt i64 %3, -1, !dbg !3536
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3538
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %15, metadata !804, metadata !DIExpression()), !dbg !3531
  %16 = icmp slt i64 %4, 0, !dbg !3539
  br i1 %16, label %17, label %30, !dbg !3539

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3539
  br i1 %18, label %19, label %24, !dbg !3539

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3539
  %21 = udiv i64 9223372036854775807, %20, !dbg !3539
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3539
  br i1 %23, label %46, label %43, !dbg !3539

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3539
  br i1 %25, label %43, label %26, !dbg !3539

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3539
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3539
  %29 = icmp ult i64 %28, %15, !dbg !3539
  br i1 %29, label %46, label %43, !dbg !3539

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3539
  br i1 %31, label %43, label %32, !dbg !3539

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3539
  br i1 %33, label %34, label %40, !dbg !3539

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3539
  br i1 %35, label %43, label %36, !dbg !3539

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3539
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3539
  %39 = icmp ult i64 %38, %4, !dbg !3539
  br i1 %39, label %46, label %43, !dbg !3539

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3539
  br i1 %42, label %46, label %43, !dbg !3539

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !805, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3531
  %44 = mul i64 %15, %4, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %44, metadata !805, metadata !DIExpression()), !dbg !3531
  %45 = icmp slt i64 %44, 128, !dbg !3539
  br i1 %45, label %46, label %52, !dbg !3539

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !806, metadata !DIExpression()), !dbg !3531
  %48 = sdiv i64 %47, %4, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %48, metadata !804, metadata !DIExpression()), !dbg !3531
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %51, metadata !805, metadata !DIExpression()), !dbg !3531
  br label %52, !dbg !3544

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3531
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3531
  call void @llvm.dbg.value(metadata i64 %54, metadata !805, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %53, metadata !804, metadata !DIExpression()), !dbg !3531
  %55 = icmp eq ptr %0, null, !dbg !3545
  br i1 %55, label %56, label %57, !dbg !3547

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3548, !tbaa !2584
  br label %57, !dbg !3549

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3550
  %59 = icmp slt i64 %58, %2, !dbg !3552
  br i1 %59, label %60, label %97, !dbg !3553

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3554
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3554
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %63, metadata !804, metadata !DIExpression()), !dbg !3531
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3555
  br i1 %66, label %96, label %67, !dbg !3555

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3556

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3556
  br i1 %69, label %70, label %75, !dbg !3556

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3556
  %72 = udiv i64 9223372036854775807, %71, !dbg !3556
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3556
  br i1 %74, label %96, label %94, !dbg !3556

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3556
  br i1 %76, label %94, label %77, !dbg !3556

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3556
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3556
  %80 = icmp ult i64 %79, %63, !dbg !3556
  br i1 %80, label %96, label %94, !dbg !3556

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3556
  br i1 %82, label %94, label %83, !dbg !3556

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3556
  br i1 %84, label %85, label %91, !dbg !3556

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3556
  br i1 %86, label %94, label %87, !dbg !3556

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3556
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3556
  %90 = icmp ult i64 %89, %4, !dbg !3556
  br i1 %90, label %96, label %94, !dbg !3556

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3556
  br i1 %93, label %96, label %94, !dbg !3556

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !805, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3531
  %95 = mul i64 %63, %4, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %95, metadata !805, metadata !DIExpression()), !dbg !3531
  br label %97, !dbg !3557

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3558
  unreachable, !dbg !3558

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3531
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3531
  call void @llvm.dbg.value(metadata i64 %99, metadata !805, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %98, metadata !804, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %99, metadata !3378, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %99, metadata !3384, metadata !DIExpression()), !dbg !3561
  %100 = icmp eq i64 %99, 0, !dbg !3563
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3563
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %102, metadata !3305, metadata !DIExpression()), !dbg !3565
  %103 = icmp eq ptr %102, null, !dbg !3567
  br i1 %103, label %104, label %105, !dbg !3568

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3569
  unreachable, !dbg !3569

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !798, metadata !DIExpression()), !dbg !3531
  store i64 %98, ptr %1, align 8, !dbg !3570, !tbaa !2584
  ret ptr %102, !dbg !3571
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3572 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %0, metadata !3576, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 1, metadata !3579, metadata !DIExpression()), !dbg !3580
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3582
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3583
  %3 = icmp eq ptr %2, null, !dbg !3585
  br i1 %3, label %4, label %5, !dbg !3586

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3587
  unreachable, !dbg !3587

5:                                                ; preds = %1
  ret ptr %2, !dbg !3588
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3589 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3577 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3576, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3590
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3592
  %4 = icmp eq ptr %3, null, !dbg !3594
  br i1 %4, label %5, label %6, !dbg !3595

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3596
  unreachable, !dbg !3596

6:                                                ; preds = %2
  ret ptr %3, !dbg !3597
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3598 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 1, metadata !3611, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 1, metadata !3611, metadata !DIExpression()), !dbg !3612
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3615
  %3 = icmp eq ptr %2, null, !dbg !3617
  br i1 %3, label %4, label %5, !dbg !3618

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3619
  unreachable, !dbg !3619

5:                                                ; preds = %1
  ret ptr %2, !dbg !3620
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3603 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()), !dbg !3622
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3624
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3625
  %4 = icmp eq ptr %3, null, !dbg !3627
  br i1 %4, label %5, label %6, !dbg !3628

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3629
  unreachable, !dbg !3629

6:                                                ; preds = %2
  ret ptr %3, !dbg !3630
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3631 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3635, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3638
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3641
  %4 = icmp eq ptr %3, null, !dbg !3643
  br i1 %4, label %5, label %6, !dbg !3644

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3645
  unreachable, !dbg !3645

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3646, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3656
  ret ptr %3, !dbg !3657
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3658 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3662, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %1, metadata !3345, metadata !DIExpression()), !dbg !3667
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3669
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3670
  %4 = icmp eq ptr %3, null, !dbg !3672
  br i1 %4, label %5, label %6, !dbg !3673

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3674
  unreachable, !dbg !3674

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3646, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3675
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3677
  ret ptr %3, !dbg !3678
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3679 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %1, metadata !3684, metadata !DIExpression()), !dbg !3686
  %3 = add nsw i64 %1, 1, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %3, metadata !3343, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %3, metadata !3345, metadata !DIExpression()), !dbg !3690
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3692
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3693
  %5 = icmp eq ptr %4, null, !dbg !3695
  br i1 %5, label %6, label %7, !dbg !3696

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3697
  unreachable, !dbg !3697

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3685, metadata !DIExpression()), !dbg !3686
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3698
  store i8 0, ptr %8, align 1, !dbg !3699, !tbaa !918
  call void @llvm.dbg.value(metadata ptr %4, metadata !3646, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3700
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3702
  ret ptr %4, !dbg !3703
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3706, metadata !DIExpression()), !dbg !3707
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3708
  %3 = add i64 %2, 1, !dbg !3709
  call void @llvm.dbg.value(metadata ptr %0, metadata !3635, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %3, metadata !3636, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %3, metadata !3329, metadata !DIExpression()), !dbg !3712
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3714
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3715
  %5 = icmp eq ptr %4, null, !dbg !3717
  br i1 %5, label %6, label %7, !dbg !3718

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3719
  unreachable, !dbg !3719

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3646, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %3, metadata !3653, metadata !DIExpression()), !dbg !3720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3722
  ret ptr %4, !dbg !3723
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3724 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3729, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %1, metadata !3726, metadata !DIExpression()), !dbg !3730
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #36, !dbg !3729
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #36, !dbg !3729
  %3 = icmp eq i32 %1, 0, !dbg !3729
  tail call void @llvm.assume(i1 %3), !dbg !3729
  tail call void @abort() #38, !dbg !3731
  unreachable, !dbg !3731
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3770, metadata !DIExpression()), !dbg !3775
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3776
  call void @llvm.dbg.value(metadata i1 poison, metadata !3771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %0, metadata !3777, metadata !DIExpression()), !dbg !3780
  %3 = load i32, ptr %0, align 8, !dbg !3782, !tbaa !3783
  %4 = and i32 %3, 32, !dbg !3784
  %5 = icmp eq i32 %4, 0, !dbg !3784
  call void @llvm.dbg.value(metadata i1 %5, metadata !3773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3785
  %7 = icmp eq i32 %6, 0, !dbg !3786
  call void @llvm.dbg.value(metadata i1 %7, metadata !3774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br i1 %5, label %8, label %18, !dbg !3787

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3789
  call void @llvm.dbg.value(metadata i1 %9, metadata !3771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3790
  %11 = xor i1 %7, true, !dbg !3790
  %12 = sext i1 %11 to i32, !dbg !3790
  br i1 %10, label %21, label %13, !dbg !3790

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3791
  %15 = load i32, ptr %14, align 4, !dbg !3791, !tbaa !909
  %16 = icmp ne i32 %15, 9, !dbg !3792
  %17 = sext i1 %16 to i32, !dbg !3793
  br label %21, !dbg !3793

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3794

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3796
  store i32 0, ptr %20, align 4, !dbg !3798, !tbaa !909
  br label %21, !dbg !3796

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3775
  ret i32 %22, !dbg !3799
}

; Function Attrs: nounwind
declare !dbg !3800 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3804 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3842, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3843, metadata !DIExpression()), !dbg !3846
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %2, metadata !3844, metadata !DIExpression()), !dbg !3846
  %3 = icmp slt i32 %2, 0, !dbg !3848
  br i1 %3, label %4, label %6, !dbg !3850

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3851
  br label %24, !dbg !3852

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3853
  %8 = icmp eq i32 %7, 0, !dbg !3853
  br i1 %8, label %13, label %9, !dbg !3855

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3856
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3857
  %12 = icmp eq i64 %11, -1, !dbg !3858
  br i1 %12, label %16, label %13, !dbg !3859

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3860
  %15 = icmp eq i32 %14, 0, !dbg !3860
  br i1 %15, label %16, label %18, !dbg !3861

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3843, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()), !dbg !3846
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %17, metadata !3845, metadata !DIExpression()), !dbg !3846
  br label %24, !dbg !3863

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3864
  %20 = load i32, ptr %19, align 4, !dbg !3864, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %20, metadata !3843, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()), !dbg !3846
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %21, metadata !3845, metadata !DIExpression()), !dbg !3846
  %22 = icmp eq i32 %20, 0, !dbg !3865
  br i1 %22, label %24, label %23, !dbg !3863

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3867, !tbaa !909
  call void @llvm.dbg.value(metadata i32 -1, metadata !3845, metadata !DIExpression()), !dbg !3846
  br label %24, !dbg !3869

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3846
  ret i32 %25, !dbg !3870
}

; Function Attrs: nofree nounwind
declare !dbg !3871 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3872 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3873 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3874 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3915, metadata !DIExpression()), !dbg !3916
  %2 = icmp eq ptr %0, null, !dbg !3917
  br i1 %2, label %6, label %3, !dbg !3919

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3920
  %5 = icmp eq i32 %4, 0, !dbg !3920
  br i1 %5, label %6, label %8, !dbg !3921

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3922
  br label %16, !dbg !3923

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3924, metadata !DIExpression()), !dbg !3929
  %9 = load i32, ptr %0, align 8, !dbg !3931, !tbaa !3783
  %10 = and i32 %9, 256, !dbg !3933
  %11 = icmp eq i32 %10, 0, !dbg !3933
  br i1 %11, label %14, label %12, !dbg !3934

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3935
  br label %14, !dbg !3935

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3936
  br label %16, !dbg !3937

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3916
  ret i32 %17, !dbg !3938
}

; Function Attrs: nofree nounwind
declare !dbg !3939 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3940 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3979, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3980, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 %2, metadata !3981, metadata !DIExpression()), !dbg !3985
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3986
  %5 = load ptr, ptr %4, align 8, !dbg !3986, !tbaa !3987
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3988
  %7 = load ptr, ptr %6, align 8, !dbg !3988, !tbaa !3989
  %8 = icmp eq ptr %5, %7, !dbg !3990
  br i1 %8, label %9, label %27, !dbg !3991

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3992
  %11 = load ptr, ptr %10, align 8, !dbg !3992, !tbaa !1614
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3993
  %13 = load ptr, ptr %12, align 8, !dbg !3993, !tbaa !3994
  %14 = icmp eq ptr %11, %13, !dbg !3995
  br i1 %14, label %15, label %27, !dbg !3996

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3997
  %17 = load ptr, ptr %16, align 8, !dbg !3997, !tbaa !3998
  %18 = icmp eq ptr %17, null, !dbg !3999
  br i1 %18, label %19, label %27, !dbg !4000

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4001
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %21, metadata !3982, metadata !DIExpression()), !dbg !4003
  %22 = icmp eq i64 %21, -1, !dbg !4004
  br i1 %22, label %29, label %23, !dbg !4006

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4007, !tbaa !3783
  %25 = and i32 %24, -17, !dbg !4007
  store i32 %25, ptr %0, align 8, !dbg !4007, !tbaa !3783
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4008
  store i64 %21, ptr %26, align 8, !dbg !4009, !tbaa !4010
  br label %29, !dbg !4011

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4012
  br label %29, !dbg !4013

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3985
  ret i32 %30, !dbg !4014
}

; Function Attrs: nofree nounwind
declare !dbg !4015 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4018 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()), !dbg !4027
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4028
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4023, metadata !DIExpression()), !dbg !4029
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4030
  %4 = icmp eq i32 %3, 0, !dbg !4030
  br i1 %4, label %5, label %12, !dbg !4032

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4033, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr @.str.146, metadata !4036, metadata !DIExpression()), !dbg !4037
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.146, i64 2), !dbg !4040
  %7 = icmp eq i32 %6, 0, !dbg !4041
  br i1 %7, label %11, label %8, !dbg !4042

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4033, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr @.str.1.147, metadata !4036, metadata !DIExpression()), !dbg !4043
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.147, i64 6), !dbg !4045
  %10 = icmp eq i32 %9, 0, !dbg !4046
  br i1 %10, label %11, label %12, !dbg !4047

11:                                               ; preds = %8, %5
  br label %12, !dbg !4048

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4027
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4049
  ret i1 %13, !dbg !4049
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %2, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %3, metadata !4058, metadata !DIExpression()), !dbg !4060
  %5 = icmp eq ptr %1, null, !dbg !4061
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4063
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4063
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %8, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %7, metadata !4056, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %6, metadata !4055, metadata !DIExpression()), !dbg !4060
  %9 = icmp eq ptr %3, null, !dbg !4064
  %10 = select i1 %9, ptr @internal_state.151, ptr %3, !dbg !4066
  call void @llvm.dbg.value(metadata ptr %10, metadata !4058, metadata !DIExpression()), !dbg !4060
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %11, metadata !4059, metadata !DIExpression()), !dbg !4060
  %12 = icmp ult i64 %11, -3, !dbg !4068
  br i1 %12, label %13, label %17, !dbg !4070

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4071
  %15 = icmp eq i32 %14, 0, !dbg !4071
  br i1 %15, label %16, label %29, !dbg !4072

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4073, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %10, metadata !4080, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 0, metadata !4083, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 8, metadata !4084, metadata !DIExpression()), !dbg !4085
  store i64 0, ptr %10, align 1, !dbg !4087
  br label %29, !dbg !4088

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4089
  br i1 %18, label %19, label %20, !dbg !4091

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4092
  unreachable, !dbg !4092

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4093

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !4095
  br i1 %23, label %29, label %24, !dbg !4096

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4097
  br i1 %25, label %29, label %26, !dbg !4100

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4101, !tbaa !918
  %28 = zext i8 %27 to i32, !dbg !4102
  store i32 %28, ptr %6, align 4, !dbg !4103, !tbaa !909
  br label %29, !dbg !4104

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4060
  ret i64 %30, !dbg !4105
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4106 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %2, metadata !4115, metadata !DIExpression()), !dbg !4117
  %4 = icmp eq i64 %2, 0, !dbg !4118
  br i1 %4, label %8, label %5, !dbg !4118

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4118
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4118
  br i1 %7, label %13, label %8, !dbg !4118

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  %9 = mul i64 %2, %1, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %9, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %0, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %9, metadata !4123, metadata !DIExpression()), !dbg !4124
  %10 = icmp eq i64 %9, 0, !dbg !4126
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4126
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !4127
  br label %15, !dbg !4128

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4117
  %14 = tail call ptr @__errno_location() #39, !dbg !4129
  store i32 12, ptr %14, align 4, !dbg !4131, !tbaa !909
  br label %15, !dbg !4132

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4117
  ret ptr %16, !dbg !4133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %1, metadata !4139, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 %2, metadata !4140, metadata !DIExpression()), !dbg !4141
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4142
  ret i32 %4, !dbg !4143
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4149
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4150
  ret ptr %2, !dbg !4151
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4156
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4157
  call void @llvm.dbg.value(metadata ptr %2, metadata !4155, metadata !DIExpression()), !dbg !4156
  ret ptr %2, !dbg !4158
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %1, metadata !4162, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 %2, metadata !4163, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4169
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4171
  call void @llvm.dbg.value(metadata ptr %4, metadata !4155, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %4, metadata !4164, metadata !DIExpression()), !dbg !4168
  %5 = icmp eq ptr %4, null, !dbg !4172
  br i1 %5, label %6, label %9, !dbg !4173

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4174
  br i1 %7, label %19, label %8, !dbg !4177

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4178, !tbaa !918
  br label %19, !dbg !4179

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %10, metadata !4165, metadata !DIExpression()), !dbg !4181
  %11 = icmp ult i64 %10, %2, !dbg !4182
  br i1 %11, label %12, label %14, !dbg !4184

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %1, metadata !4187, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %4, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %13, metadata !4191, metadata !DIExpression()), !dbg !4192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4194
  br label %19, !dbg !4195

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4196
  br i1 %15, label %19, label %16, !dbg !4199

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %1, metadata !4187, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %4, metadata !4190, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %17, metadata !4191, metadata !DIExpression()), !dbg !4202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4204
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4205
  store i8 0, ptr %18, align 1, !dbg !4206, !tbaa !918
  br label %19, !dbg !4207

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4208
  ret i32 %20, !dbg !4209
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !412, !416, !431, !729, !763, !488, !765, !506, !520, !566, !768, !723, !774, !808, !810, !812, !814, !816, !818, !750, !820, !823, !825}
!llvm.ident = !{!827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827}
!llvm.module.flags = !{!828, !829, !830, !831, !832, !833, !834}

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
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !131, globals: !141, splitDebugInlining: false, nameTableKind: None)
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
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 46, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !413, splitDebugInlining: false, nameTableKind: None)
!413 = !{!407, !410}
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "file_name", scope: !416, file: !417, line: 45, type: !138, isLocal: true, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C11, file: !417, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !418, splitDebugInlining: false, nameTableKind: None)
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
!430 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !431, file: !432, line: 66, type: !483, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, globals: !434, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!433 = !{!133, !140}
!434 = !{!435, !437, !462, !464, !466, !468, !429, !470, !472, !474, !476, !481}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !432, line: 272, type: !249, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "old_file_name", scope: !439, file: !432, line: 304, type: !138, isLocal: true, isDefinition: true)
!439 = distinct !DISubprogram(name: "verror_at_line", scope: !432, file: !432, line: 298, type: !440, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !455)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !74, !74, !138, !69, !138, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !443, line: 52, baseType: !444)
!443 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !445, line: 14, baseType: !446)
!445 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !447, baseType: !448)
!447 = !DIFile(filename: "lib/error.c", directory: "/src")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !449)
!449 = !{!450, !451, !452, !453, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !448, file: !447, baseType: !133, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !448, file: !447, baseType: !133, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !448, file: !447, baseType: !133, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !448, file: !447, baseType: !74, size: 32, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !448, file: !447, baseType: !74, size: 32, offset: 224)
!455 = !{!456, !457, !458, !459, !460, !461}
!456 = !DILocalVariable(name: "status", arg: 1, scope: !439, file: !432, line: 298, type: !74)
!457 = !DILocalVariable(name: "errnum", arg: 2, scope: !439, file: !432, line: 298, type: !74)
!458 = !DILocalVariable(name: "file_name", arg: 3, scope: !439, file: !432, line: 298, type: !138)
!459 = !DILocalVariable(name: "line_number", arg: 4, scope: !439, file: !432, line: 298, type: !69)
!460 = !DILocalVariable(name: "message", arg: 5, scope: !439, file: !432, line: 298, type: !138)
!461 = !DILocalVariable(name: "args", arg: 6, scope: !439, file: !432, line: 298, type: !442)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "old_line_number", scope: !439, file: !432, line: 305, type: !69, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !432, line: 338, type: !61, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !19, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !263, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "error_message_count", scope: !431, file: !432, line: 69, type: !69, isLocal: false, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !431, file: !432, line: 295, type: !74, isLocal: false, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !283, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !478, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 21)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !432, line: 214, type: !249, isLocal: true, isDefinition: true)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null}
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "internal_state", scope: !488, file: !489, line: 24, type: !492, isLocal: true, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!490 = !{!133}
!491 = !{!486}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !494)
!493 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !496)
!495 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !496, file: !495, line: 15, baseType: !74, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !496, file: !495, line: 20, baseType: !500, size: 32, offset: 32)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !495, line: 16, size: 32, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !500, file: !495, line: 18, baseType: !69, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !500, file: !495, line: 19, baseType: !61, size: 32)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "program_name", scope: !506, file: !507, line: 31, type: !138, isLocal: false, isDefinition: true)
!506 = distinct !DICompileUnit(language: DW_LANG_C11, file: !507, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !508, globals: !509, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!508 = !{!132}
!509 = !{!504, !510, !512}
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !507, line: 46, type: !19, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !507, line: 49, type: !61, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "utf07FF", scope: !516, file: !517, line: 46, type: !542, isLocal: true, isDefinition: true)
!516 = distinct !DISubprogram(name: "proper_name_lite", scope: !517, file: !517, line: 38, type: !518, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !522)
!517 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!518 = !DISubroutineType(types: !519)
!519 = !{!138, !138, !138}
!520 = distinct !DICompileUnit(language: DW_LANG_C11, file: !517, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !521, splitDebugInlining: false, nameTableKind: None)
!521 = !{!514}
!522 = !{!523, !524, !525, !526, !531}
!523 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !516, file: !517, line: 38, type: !138)
!524 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !516, file: !517, line: 38, type: !138)
!525 = !DILocalVariable(name: "translation", scope: !516, file: !517, line: 40, type: !138)
!526 = !DILocalVariable(name: "w", scope: !516, file: !517, line: 47, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !528, line: 37, baseType: !529)
!528 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !216, line: 57, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !216, line: 42, baseType: !69)
!531 = !DILocalVariable(name: "mbs", scope: !516, file: !517, line: 48, type: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !534, file: !495, line: 15, baseType: !74, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !534, file: !495, line: 20, baseType: !538, size: 32, offset: 32)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !495, line: 16, size: 32, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !538, file: !495, line: 18, baseType: !69, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !538, file: !495, line: 19, baseType: !61, size: 32)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !264)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !545, line: 78, type: !19, isLocal: true, isDefinition: true)
!545 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !545, line: 79, type: !258, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !545, line: 80, type: !159, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !545, line: 81, type: !159, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !545, line: 82, type: !238, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !545, line: 83, type: !263, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !545, line: 84, type: !19, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !545, line: 85, type: !283, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !545, line: 86, type: !283, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !545, line: 87, type: !19, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !566, file: !545, line: 76, type: !638, isLocal: false, isDefinition: true)
!566 = distinct !DICompileUnit(language: DW_LANG_C11, file: !545, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !573, globals: !574, splitDebugInlining: false, nameTableKind: None)
!567 = !{!93, !568, !78}
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !94, line: 254, baseType: !69, size: 32, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!571 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!572 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!573 = !{!74, !134, !135}
!574 = !{!543, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !575, !579, !589, !591, !596, !598, !600, !602, !604, !627, !634, !636}
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !566, file: !545, line: 92, type: !577, isLocal: false, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 320, elements: !52)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !566, file: !545, line: 1040, type: !581, isLocal: false, isDefinition: true)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !545, line: 56, size: 448, elements: !582)
!582 = !{!583, !584, !585, !587, !588}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !581, file: !545, line: 59, baseType: !93, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !545, line: 62, baseType: !74, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !581, file: !545, line: 66, baseType: !586, size: 256, offset: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !20)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !581, file: !545, line: 69, baseType: !138, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !581, file: !545, line: 72, baseType: !138, size: 64, offset: 384)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !566, file: !545, line: 107, type: !581, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "slot0", scope: !566, file: !545, line: 831, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 256)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !545, line: 321, type: !263, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !545, line: 357, type: !263, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !545, line: 358, type: !263, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !545, line: 199, type: !283, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "quote", scope: !606, file: !545, line: 228, type: !625, isLocal: true, isDefinition: true)
!606 = distinct !DISubprogram(name: "gettext_quote", scope: !545, file: !545, line: 197, type: !607, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{!138, !138, !93}
!609 = !{!610, !611, !612, !613, !614}
!610 = !DILocalVariable(name: "msgid", arg: 1, scope: !606, file: !545, line: 197, type: !138)
!611 = !DILocalVariable(name: "s", arg: 2, scope: !606, file: !545, line: 197, type: !93)
!612 = !DILocalVariable(name: "translation", scope: !606, file: !545, line: 199, type: !138)
!613 = !DILocalVariable(name: "w", scope: !606, file: !545, line: 229, type: !527)
!614 = !DILocalVariable(name: "mbs", scope: !606, file: !545, line: 230, type: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !617, file: !495, line: 15, baseType: !74, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !617, file: !495, line: 20, baseType: !621, size: 32, offset: 32)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !495, line: 16, size: 32, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !621, file: !495, line: 18, baseType: !69, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !621, file: !495, line: 19, baseType: !61, size: 32)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !626)
!626 = !{!265, !63}
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "slotvec", scope: !566, file: !545, line: 834, type: !629, isLocal: true, isDefinition: true)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !545, line: 823, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !545, line: 825, baseType: !135, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !630, file: !545, line: 826, baseType: !132, size: 64, offset: 64)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "nslots", scope: !566, file: !545, line: 832, type: !74, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "slotvec0", scope: !566, file: !545, line: 833, type: !630, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 704, elements: !640)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!640 = !{!641}
!641 = !DISubrange(count: 11)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 67, type: !149, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 69, type: !283, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !644, line: 83, type: !283, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !644, line: 83, type: !61, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !644, line: 85, type: !263, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !644, line: 88, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 171)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !644, line: 88, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 34)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !644, line: 105, type: !154, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !644, line: 109, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 23)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !644, line: 113, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 28)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !644, line: 120, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 32)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !644, line: 127, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 36)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !644, line: 134, type: !307, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !644, line: 142, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 44)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !644, line: 150, type: !26, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !644, line: 159, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 52)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !644, line: 170, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 60)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !644, line: 248, type: !238, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !644, line: 248, type: !332, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !644, line: 254, type: !238, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !644, line: 254, type: !144, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !644, line: 254, type: !307, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !644, line: 259, type: !3, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !644, line: 259, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 29)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !723, file: !724, line: 26, type: !726, isLocal: false, isDefinition: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!725 = !{!721}
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !15)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "exit_failure", scope: !729, file: !730, line: 24, type: !732, isLocal: false, isDefinition: true)
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !731, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!731 = !{!727}
!732 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !272, isLocal: true, isDefinition: true)
!735 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !283, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !302, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !742, line: 35, type: !263, isLocal: true, isDefinition: true)
!742 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !742, line: 35, type: !258, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !747, line: 108, type: !46, isLocal: true, isDefinition: true)
!747 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "internal_state", scope: !750, file: !747, line: 97, type: !753, isLocal: true, isDefinition: true)
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !751, globals: !752, splitDebugInlining: false, nameTableKind: None)
!751 = !{!133, !135, !140}
!752 = !{!745, !748}
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !755, file: !495, line: 15, baseType: !74, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !755, file: !495, line: 20, baseType: !759, size: 32, offset: 32)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !495, line: 16, size: 32, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !759, file: !495, line: 18, baseType: !69, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !759, file: !495, line: 19, baseType: !61, size: 32)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!767 = !{!135}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !490, globals: !773, splitDebugInlining: false, nameTableKind: None)
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !644, line: 40, baseType: !69, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!773 = !{!642, !645, !647, !649, !651, !653, !658, !663, !665, !670, !675, !680, !685, !687, !692, !694, !699, !704, !706, !708, !710, !712, !714, !716}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !776, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!776 = !{!777, !789}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !778, file: !775, line: 188, baseType: !69, size: 32, elements: !787)
!778 = distinct !DISubprogram(name: "x2nrealloc", scope: !775, file: !775, line: 176, type: !779, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !782)
!779 = !DISubroutineType(types: !780)
!780 = !{!133, !133, !781, !135}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!782 = !{!783, !784, !785, !786}
!783 = !DILocalVariable(name: "p", arg: 1, scope: !778, file: !775, line: 176, type: !133)
!784 = !DILocalVariable(name: "pn", arg: 2, scope: !778, file: !775, line: 176, type: !781)
!785 = !DILocalVariable(name: "s", arg: 3, scope: !778, file: !775, line: 176, type: !135)
!786 = !DILocalVariable(name: "n", scope: !778, file: !775, line: 178, type: !135)
!787 = !{!788}
!788 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !790, file: !775, line: 228, baseType: !69, size: 32, elements: !787)
!790 = distinct !DISubprogram(name: "xpalloc", scope: !775, file: !775, line: 223, type: !791, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !797)
!791 = !DISubroutineType(types: !792)
!792 = !{!133, !133, !793, !794, !796, !794}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !795, line: 130, baseType: !796)
!795 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !136, line: 35, baseType: !217)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806}
!798 = !DILocalVariable(name: "pa", arg: 1, scope: !790, file: !775, line: 223, type: !133)
!799 = !DILocalVariable(name: "pn", arg: 2, scope: !790, file: !775, line: 223, type: !793)
!800 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !790, file: !775, line: 223, type: !794)
!801 = !DILocalVariable(name: "n_max", arg: 4, scope: !790, file: !775, line: 223, type: !796)
!802 = !DILocalVariable(name: "s", arg: 5, scope: !790, file: !775, line: 223, type: !794)
!803 = !DILocalVariable(name: "n0", scope: !790, file: !775, line: 230, type: !794)
!804 = !DILocalVariable(name: "n", scope: !790, file: !775, line: 237, type: !794)
!805 = !DILocalVariable(name: "nbytes", scope: !790, file: !775, line: 248, type: !794)
!806 = !DILocalVariable(name: "adjusted_nbytes", scope: !790, file: !775, line: 252, type: !794)
!807 = !{!132, !133, !176, !217, !137}
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !809, splitDebugInlining: false, nameTableKind: None)
!809 = !{!733, !736, !738}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !742, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !819, splitDebugInlining: false, nameTableKind: None)
!819 = !{!740, !743}
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !822, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!822 = !{!176, !137, !133}
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!827 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!828 = !{i32 7, !"Dwarf Version", i32 5}
!829 = !{i32 2, !"Debug Info Version", i32 3}
!830 = !{i32 1, !"wchar_size", i32 4}
!831 = !{i32 8, !"PIC Level", i32 2}
!832 = !{i32 7, !"PIE Level", i32 2}
!833 = !{i32 7, !"uwtable", i32 2}
!834 = !{i32 7, !"frame-pointer", i32 1}
!835 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !836, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !74}
!838 = !{!839}
!839 = !DILocalVariable(name: "status", arg: 1, scope: !835, file: !2, line: 81, type: !74)
!840 = !DILocation(line: 0, scope: !835)
!841 = !DILocation(line: 83, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !835, file: !2, line: 83, column: 7)
!843 = !DILocation(line: 83, column: 7, scope: !835)
!844 = !DILocation(line: 84, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 84, column: 5)
!846 = !{!847, !847, i64 0}
!847 = !{!"any pointer", !848, i64 0}
!848 = !{!"omnipotent char", !849, i64 0}
!849 = !{!"Simple C/C++ TBAA"}
!850 = !DILocation(line: 87, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !2, line: 86, column: 5)
!852 = !DILocation(line: 88, column: 7, scope: !851)
!853 = !DILocation(line: 92, column: 7, scope: !851)
!854 = !DILocation(line: 95, column: 7, scope: !851)
!855 = !DILocation(line: 98, column: 7, scope: !851)
!856 = !DILocation(line: 102, column: 7, scope: !851)
!857 = !DILocation(line: 103, column: 7, scope: !851)
!858 = !DILocalVariable(name: "program", arg: 1, scope: !859, file: !73, line: 836, type: !138)
!859 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !73, file: !73, line: 836, type: !860, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !138}
!862 = !{!858, !863, !870, !871, !873, !874}
!863 = !DILocalVariable(name: "infomap", scope: !859, file: !73, line: 838, type: !864)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 896, elements: !284)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !859, file: !73, line: 838, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !866, file: !73, line: 838, baseType: !138, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !866, file: !73, line: 838, baseType: !138, size: 64, offset: 64)
!870 = !DILocalVariable(name: "node", scope: !859, file: !73, line: 848, type: !138)
!871 = !DILocalVariable(name: "map_prog", scope: !859, file: !73, line: 849, type: !872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!873 = !DILocalVariable(name: "lc_messages", scope: !859, file: !73, line: 861, type: !138)
!874 = !DILocalVariable(name: "url_program", scope: !859, file: !73, line: 874, type: !138)
!875 = !DILocation(line: 0, scope: !859, inlinedAt: !876)
!876 = distinct !DILocation(line: 104, column: 7, scope: !851)
!877 = !DILocation(line: 857, column: 3, scope: !859, inlinedAt: !876)
!878 = !DILocation(line: 861, column: 29, scope: !859, inlinedAt: !876)
!879 = !DILocation(line: 862, column: 7, scope: !880, inlinedAt: !876)
!880 = distinct !DILexicalBlock(scope: !859, file: !73, line: 862, column: 7)
!881 = !DILocation(line: 862, column: 19, scope: !880, inlinedAt: !876)
!882 = !DILocation(line: 862, column: 22, scope: !880, inlinedAt: !876)
!883 = !DILocation(line: 862, column: 7, scope: !859, inlinedAt: !876)
!884 = !DILocation(line: 868, column: 7, scope: !885, inlinedAt: !876)
!885 = distinct !DILexicalBlock(scope: !880, file: !73, line: 863, column: 5)
!886 = !DILocation(line: 870, column: 5, scope: !885, inlinedAt: !876)
!887 = !DILocation(line: 875, column: 3, scope: !859, inlinedAt: !876)
!888 = !DILocation(line: 877, column: 3, scope: !859, inlinedAt: !876)
!889 = !DILocation(line: 106, column: 3, scope: !835)
!890 = !DISubprogram(name: "dcgettext", scope: !891, file: !891, line: 51, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!891 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!892 = !DISubroutineType(types: !893)
!893 = !{!132, !138, !138, !74}
!894 = !{}
!895 = !DISubprogram(name: "__fprintf_chk", scope: !896, file: !896, line: 93, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!896 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!897 = !DISubroutineType(types: !898)
!898 = !{!74, !899, !74, !900, null}
!899 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !189)
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!901 = !DISubprogram(name: "__printf_chk", scope: !896, file: !896, line: 95, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!902 = !DISubroutineType(types: !903)
!903 = !{!74, !74, !900, null}
!904 = !DISubprogram(name: "fputs_unlocked", scope: !443, file: !443, line: 691, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!905 = !DISubroutineType(types: !906)
!906 = !{!74, !900, !899}
!907 = !DILocation(line: 0, scope: !166)
!908 = !DILocation(line: 581, column: 7, scope: !174)
!909 = !{!910, !910, i64 0}
!910 = !{!"int", !848, i64 0}
!911 = !DILocation(line: 581, column: 19, scope: !174)
!912 = !DILocation(line: 581, column: 7, scope: !166)
!913 = !DILocation(line: 585, column: 26, scope: !173)
!914 = !DILocation(line: 0, scope: !173)
!915 = !DILocation(line: 586, column: 23, scope: !173)
!916 = !DILocation(line: 586, column: 28, scope: !173)
!917 = !DILocation(line: 586, column: 32, scope: !173)
!918 = !{!848, !848, i64 0}
!919 = !DILocation(line: 586, column: 38, scope: !173)
!920 = !DILocalVariable(name: "__s1", arg: 1, scope: !921, file: !922, line: 1359, type: !138)
!921 = distinct !DISubprogram(name: "streq", scope: !922, file: !922, line: 1359, type: !923, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !925)
!922 = !DIFile(filename: "./lib/string.h", directory: "/src")
!923 = !DISubroutineType(types: !924)
!924 = !{!176, !138, !138}
!925 = !{!920, !926}
!926 = !DILocalVariable(name: "__s2", arg: 2, scope: !921, file: !922, line: 1359, type: !138)
!927 = !DILocation(line: 0, scope: !921, inlinedAt: !928)
!928 = distinct !DILocation(line: 586, column: 41, scope: !173)
!929 = !DILocation(line: 1361, column: 11, scope: !921, inlinedAt: !928)
!930 = !DILocation(line: 1361, column: 10, scope: !921, inlinedAt: !928)
!931 = !DILocation(line: 586, column: 19, scope: !173)
!932 = !DILocation(line: 587, column: 5, scope: !173)
!933 = !DILocation(line: 588, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !166, file: !73, line: 588, column: 7)
!935 = !DILocation(line: 588, column: 7, scope: !166)
!936 = !DILocation(line: 590, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !73, line: 589, column: 5)
!938 = !DILocation(line: 591, column: 7, scope: !937)
!939 = !DILocation(line: 595, column: 37, scope: !166)
!940 = !DILocation(line: 595, column: 35, scope: !166)
!941 = !DILocation(line: 596, column: 29, scope: !166)
!942 = !DILocation(line: 597, column: 8, scope: !182)
!943 = !DILocation(line: 597, column: 7, scope: !166)
!944 = !DILocation(line: 604, column: 24, scope: !181)
!945 = !DILocation(line: 604, column: 12, scope: !182)
!946 = !DILocation(line: 0, scope: !180)
!947 = !DILocation(line: 610, column: 16, scope: !180)
!948 = !DILocation(line: 610, column: 7, scope: !180)
!949 = !DILocation(line: 611, column: 21, scope: !180)
!950 = !{!951, !951, i64 0}
!951 = !{!"short", !848, i64 0}
!952 = !DILocation(line: 611, column: 19, scope: !180)
!953 = !DILocation(line: 611, column: 16, scope: !180)
!954 = !DILocation(line: 610, column: 30, scope: !180)
!955 = distinct !{!955, !948, !949, !956}
!956 = !{!"llvm.loop.mustprogress"}
!957 = !DILocation(line: 612, column: 18, scope: !958)
!958 = distinct !DILexicalBlock(scope: !180, file: !73, line: 612, column: 11)
!959 = !DILocation(line: 612, column: 11, scope: !180)
!960 = !DILocation(line: 620, column: 23, scope: !166)
!961 = !DILocation(line: 625, column: 39, scope: !166)
!962 = !DILocation(line: 626, column: 3, scope: !166)
!963 = !DILocation(line: 626, column: 10, scope: !166)
!964 = !DILocation(line: 626, column: 21, scope: !166)
!965 = !DILocation(line: 628, column: 44, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !73, line: 628, column: 11)
!967 = distinct !DILexicalBlock(scope: !166, file: !73, line: 627, column: 5)
!968 = !DILocation(line: 628, column: 32, scope: !966)
!969 = !DILocation(line: 628, column: 49, scope: !966)
!970 = !DILocation(line: 628, column: 11, scope: !967)
!971 = !DILocation(line: 630, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !73, line: 630, column: 11)
!973 = !DILocation(line: 630, column: 11, scope: !967)
!974 = !DILocation(line: 632, column: 26, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !73, line: 632, column: 15)
!976 = distinct !DILexicalBlock(scope: !972, file: !73, line: 631, column: 9)
!977 = !DILocation(line: 632, column: 34, scope: !975)
!978 = !DILocation(line: 632, column: 37, scope: !975)
!979 = !DILocation(line: 632, column: 15, scope: !976)
!980 = !DILocation(line: 640, column: 16, scope: !967)
!981 = distinct !{!981, !962, !982, !956}
!982 = !DILocation(line: 641, column: 5, scope: !166)
!983 = !DILocation(line: 644, column: 3, scope: !166)
!984 = !DILocation(line: 0, scope: !921, inlinedAt: !985)
!985 = distinct !DILocation(line: 648, column: 31, scope: !166)
!986 = !DILocation(line: 0, scope: !921, inlinedAt: !987)
!987 = distinct !DILocation(line: 649, column: 31, scope: !166)
!988 = !DILocation(line: 0, scope: !921, inlinedAt: !989)
!989 = distinct !DILocation(line: 650, column: 31, scope: !166)
!990 = !DILocation(line: 0, scope: !921, inlinedAt: !991)
!991 = distinct !DILocation(line: 651, column: 31, scope: !166)
!992 = !DILocation(line: 0, scope: !921, inlinedAt: !993)
!993 = distinct !DILocation(line: 652, column: 31, scope: !166)
!994 = !DILocation(line: 0, scope: !921, inlinedAt: !995)
!995 = distinct !DILocation(line: 653, column: 31, scope: !166)
!996 = !DILocation(line: 0, scope: !921, inlinedAt: !997)
!997 = distinct !DILocation(line: 654, column: 31, scope: !166)
!998 = !DILocation(line: 0, scope: !921, inlinedAt: !999)
!999 = distinct !DILocation(line: 655, column: 31, scope: !166)
!1000 = !DILocation(line: 0, scope: !921, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 656, column: 31, scope: !166)
!1002 = !DILocation(line: 0, scope: !921, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 657, column: 31, scope: !166)
!1004 = !DILocation(line: 663, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !166, file: !73, line: 663, column: 7)
!1006 = !DILocation(line: 664, column: 7, scope: !1005)
!1007 = !DILocation(line: 664, column: 10, scope: !1005)
!1008 = !DILocation(line: 663, column: 7, scope: !166)
!1009 = !DILocation(line: 669, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !73, line: 665, column: 5)
!1011 = !DILocation(line: 671, column: 5, scope: !1010)
!1012 = !DILocation(line: 676, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1005, file: !73, line: 673, column: 5)
!1014 = !DILocation(line: 679, column: 3, scope: !166)
!1015 = !DILocation(line: 683, column: 3, scope: !166)
!1016 = !DILocation(line: 686, column: 3, scope: !166)
!1017 = !DILocation(line: 688, column: 3, scope: !166)
!1018 = !DILocation(line: 691, column: 3, scope: !166)
!1019 = !DILocation(line: 695, column: 3, scope: !166)
!1020 = !DILocation(line: 696, column: 1, scope: !166)
!1021 = !DISubprogram(name: "setlocale", scope: !1022, file: !1022, line: 122, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1022 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!132, !74, !138}
!1025 = !DISubprogram(name: "strncmp", scope: !1026, file: !1026, line: 159, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1026 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!74, !138, !138, !135}
!1029 = !DISubprogram(name: "exit", scope: !1030, file: !1030, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1030 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1031 = !DISubprogram(name: "getenv", scope: !1030, file: !1030, line: 641, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!132, !138}
!1034 = !DISubprogram(name: "strcmp", scope: !1026, file: !1026, line: 156, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!74, !138, !138}
!1037 = !DISubprogram(name: "strspn", scope: !1026, file: !1026, line: 297, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!137, !138, !138}
!1040 = !DISubprogram(name: "strchr", scope: !1026, file: !1026, line: 246, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!132, !138, !74}
!1043 = !DISubprogram(name: "__ctype_b_loc", scope: !79, file: !79, line: 79, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1049 = !DISubprogram(name: "strcspn", scope: !1026, file: !1026, line: 293, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1050 = !DISubprogram(name: "fwrite_unlocked", scope: !443, file: !443, line: 704, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!135, !1053, !135, !135, !899}
!1053 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1056 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 110, type: !1057, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1060)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!74, !74, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066}
!1061 = !DILocalVariable(name: "argc", arg: 1, scope: !1056, file: !2, line: 110, type: !74)
!1062 = !DILocalVariable(name: "argv", arg: 2, scope: !1056, file: !2, line: 110, type: !1059)
!1063 = !DILocalVariable(name: "ok", scope: !1056, file: !2, line: 112, type: !176)
!1064 = !DILocalVariable(name: "check_basic_portability", scope: !1056, file: !2, line: 113, type: !176)
!1065 = !DILocalVariable(name: "check_extra_portability", scope: !1056, file: !2, line: 114, type: !176)
!1066 = !DILocalVariable(name: "optc", scope: !1056, file: !2, line: 115, type: !74)
!1067 = !DILocation(line: 0, scope: !1056)
!1068 = !DILocation(line: 118, column: 21, scope: !1056)
!1069 = !DILocation(line: 118, column: 3, scope: !1056)
!1070 = !DILocation(line: 119, column: 3, scope: !1056)
!1071 = !DILocation(line: 120, column: 3, scope: !1056)
!1072 = !DILocation(line: 121, column: 3, scope: !1056)
!1073 = !DILocation(line: 123, column: 3, scope: !1056)
!1074 = !DILocation(line: 125, column: 3, scope: !1056)
!1075 = !DILocation(line: 125, column: 18, scope: !1056)
!1076 = distinct !{!1076, !1074, !1077, !956}
!1077 = !DILocation(line: 149, column: 5, scope: !1056)
!1078 = !DILocation(line: 136, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 128, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 126, column: 5)
!1081 = !DILocation(line: 140, column: 11, scope: !1079)
!1082 = distinct !{!1082, !1074, !1077, !956, !1083}
!1083 = !{!"llvm.loop.peeled.count", i32 1}
!1084 = !DILocation(line: 142, column: 9, scope: !1079)
!1085 = !DILocation(line: 144, column: 9, scope: !1079)
!1086 = !DILocation(line: 147, column: 11, scope: !1079)
!1087 = !DILocation(line: 151, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 151, column: 7)
!1089 = !DILocation(line: 151, column: 14, scope: !1088)
!1090 = !DILocation(line: 151, column: 7, scope: !1056)
!1091 = !DILocation(line: 157, column: 17, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 157, column: 3)
!1093 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 157, column: 3)
!1094 = !DILocation(line: 157, column: 3, scope: !1093)
!1095 = !DILocation(line: 153, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 152, column: 5)
!1097 = !DILocation(line: 154, column: 7, scope: !1096)
!1098 = !DILocation(line: 158, column: 31, scope: !1092)
!1099 = !DILocalVariable(name: "file", arg: 1, scope: !1100, file: !2, line: 253, type: !132)
!1100 = distinct !DISubprogram(name: "validate_file_name", scope: !2, file: !2, line: 253, type: !1101, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!176, !132, !176, !176}
!1103 = !{!1099, !1104, !1105, !1106, !1107, !1108, !1109, !1147, !1150, !1153, !1154, !1158, !1161, !1164, !1165, !1167, !1170, !1173, !1174, !1175}
!1104 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !1100, file: !2, line: 253, type: !176)
!1105 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !1100, file: !2, line: 254, type: !176)
!1106 = !DILocalVariable(name: "filelen", scope: !1100, file: !2, line: 256, type: !794)
!1107 = !DILocalVariable(name: "check_component_lengths", scope: !1100, file: !2, line: 259, type: !176)
!1108 = !DILocalVariable(name: "file_exists", scope: !1100, file: !2, line: 262, type: !176)
!1109 = !DILocalVariable(name: "st", scope: !1110, file: !2, line: 290, type: !1112)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 284, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 278, column: 7)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1113, line: 44, size: 1024, elements: !1114)
!1113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1114 = !{!1115, !1117, !1119, !1121, !1123, !1125, !1127, !1128, !1129, !1130, !1132, !1133, !1135, !1143, !1144, !1145}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1112, file: !1113, line: 46, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !216, line: 145, baseType: !137)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1112, file: !1113, line: 47, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !216, line: 148, baseType: !137)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1112, file: !1113, line: 48, baseType: !1120, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !216, line: 150, baseType: !69)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1112, file: !1113, line: 49, baseType: !1122, size: 32, offset: 160)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !216, line: 151, baseType: !69)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1112, file: !1113, line: 50, baseType: !1124, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !216, line: 146, baseType: !69)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1112, file: !1113, line: 51, baseType: !1126, size: 32, offset: 224)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !216, line: 147, baseType: !69)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1112, file: !1113, line: 52, baseType: !1116, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1112, file: !1113, line: 53, baseType: !1116, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1112, file: !1113, line: 54, baseType: !215, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1112, file: !1113, line: 55, baseType: !1131, size: 32, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !216, line: 175, baseType: !74)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1112, file: !1113, line: 56, baseType: !74, size: 32, offset: 480)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1112, file: !1113, line: 57, baseType: !1134, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !216, line: 180, baseType: !217)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1112, file: !1113, line: 65, baseType: !1136, size: 128, offset: 576)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1137, line: 11, size: 128, elements: !1138)
!1137 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1138 = !{!1139, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1136, file: !1137, line: 16, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !216, line: 160, baseType: !217)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1136, file: !1137, line: 21, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !216, line: 197, baseType: !217)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1112, file: !1113, line: 66, baseType: !1136, size: 128, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1112, file: !1113, line: 67, baseType: !1136, size: 128, offset: 832)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1112, file: !1113, line: 79, baseType: !1146, size: 64, offset: 960)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !264)
!1147 = !DILocalVariable(name: "maxsize", scope: !1148, file: !2, line: 303, type: !794)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 302, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 300, column: 7)
!1150 = !DILocalVariable(name: "size", scope: !1151, file: !2, line: 309, type: !217)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 308, column: 9)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 305, column: 11)
!1153 = !DILocalVariable(name: "dir", scope: !1151, file: !2, line: 310, type: !138)
!1154 = !DILocalVariable(name: "start", scope: !1155, file: !2, line: 339, type: !132)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 339, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 338, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 337, column: 7)
!1158 = !DILocalVariable(name: "length", scope: !1159, file: !2, line: 341, type: !135)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 340, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 339, column: 7)
!1161 = !DILocalVariable(name: "name_max", scope: !1162, file: !2, line: 359, type: !794)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 354, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 353, column: 7)
!1164 = !DILocalVariable(name: "known_name_max", scope: !1162, file: !2, line: 362, type: !794)
!1165 = !DILocalVariable(name: "start", scope: !1166, file: !2, line: 364, type: !132)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 364, column: 7)
!1167 = !DILocalVariable(name: "length", scope: !1168, file: !2, line: 366, type: !794)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 365, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 364, column: 7)
!1170 = !DILocalVariable(name: "len", scope: !1171, file: !2, line: 372, type: !217)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 371, column: 13)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 368, column: 15)
!1173 = !DILocalVariable(name: "dir", scope: !1171, file: !2, line: 373, type: !138)
!1174 = !DILocalVariable(name: "c", scope: !1171, file: !2, line: 374, type: !4)
!1175 = !DILocalVariable(name: "c", scope: !1176, file: !2, line: 406, type: !4)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 405, column: 13)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 404, column: 15)
!1178 = !DILocation(line: 0, scope: !1100, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 158, column: 11, scope: !1092)
!1180 = !DILocation(line: 256, column: 19, scope: !1100, inlinedAt: !1179)
!1181 = !DILocation(line: 264, column: 31, scope: !1182, inlinedAt: !1179)
!1182 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 264, column: 7)
!1183 = !DILocalVariable(name: "file", arg: 1, scope: !1184, file: !2, line: 168, type: !138)
!1184 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !2, file: !2, line: 168, type: !1185, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!176, !138}
!1187 = !{!1183, !1188}
!1188 = !DILocalVariable(name: "p", scope: !1189, file: !2, line: 170, type: !138)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 170, column: 3)
!1190 = !DILocation(line: 0, scope: !1184, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 264, column: 36, scope: !1182, inlinedAt: !1179)
!1192 = !DILocation(line: 0, scope: !1189, inlinedAt: !1191)
!1193 = !DILocation(line: 170, column: 36, scope: !1194, inlinedAt: !1191)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 170, column: 3)
!1195 = !DILocation(line: 170, column: 3, scope: !1189, inlinedAt: !1191)
!1196 = !DILocation(line: 170, column: 56, scope: !1194, inlinedAt: !1191)
!1197 = distinct !{!1197, !1195, !1198, !956}
!1198 = !DILocation(line: 176, column: 7, scope: !1189, inlinedAt: !1191)
!1199 = !DILocation(line: 171, column: 11, scope: !1200, inlinedAt: !1191)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 171, column: 9)
!1201 = !DILocation(line: 171, column: 19, scope: !1200, inlinedAt: !1191)
!1202 = !DILocation(line: 171, column: 22, scope: !1200, inlinedAt: !1191)
!1203 = !DILocation(line: 171, column: 28, scope: !1200, inlinedAt: !1191)
!1204 = !DILocation(line: 171, column: 9, scope: !1194, inlinedAt: !1191)
!1205 = !DILocation(line: 173, column: 9, scope: !1206, inlinedAt: !1191)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 172, column: 7)
!1207 = !DILocation(line: 264, column: 7, scope: !1100, inlinedAt: !1179)
!1208 = !DILocation(line: 267, column: 32, scope: !1209, inlinedAt: !1179)
!1209 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 267, column: 7)
!1210 = !DILocation(line: 268, column: 7, scope: !1209, inlinedAt: !1179)
!1211 = !DILocation(line: 267, column: 7, scope: !1100, inlinedAt: !1179)
!1212 = !DILocation(line: 274, column: 7, scope: !1213, inlinedAt: !1179)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 269, column: 5)
!1214 = !DILocation(line: 275, column: 7, scope: !1213, inlinedAt: !1179)
!1215 = !DILocalVariable(name: "file", arg: 1, scope: !1216, file: !2, line: 185, type: !138)
!1216 = distinct !DISubprogram(name: "portable_chars_only", scope: !2, file: !2, line: 185, type: !1217, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!176, !138, !135}
!1219 = !{!1215, !1220, !1221, !1222, !1223, !1236}
!1220 = !DILocalVariable(name: "filelen", arg: 2, scope: !1216, file: !2, line: 185, type: !135)
!1221 = !DILocalVariable(name: "validlen", scope: !1216, file: !2, line: 187, type: !135)
!1222 = !DILocalVariable(name: "invalid", scope: !1216, file: !2, line: 192, type: !138)
!1223 = !DILocalVariable(name: "mbstate", scope: !1224, file: !2, line: 196, type: !1226)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 195, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 194, column: 7)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1228, file: !495, line: 15, baseType: !74, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1228, file: !495, line: 20, baseType: !1232, size: 32, offset: 32)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !495, line: 16, size: 32, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1232, file: !495, line: 18, baseType: !69, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1232, file: !495, line: 19, baseType: !61, size: 32)
!1236 = !DILocalVariable(name: "charlen", scope: !1224, file: !2, line: 197, type: !135)
!1237 = !DILocation(line: 0, scope: !1216, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 280, column: 13, scope: !1239, inlinedAt: !1179)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 280, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 279, column: 5)
!1241 = !DILocation(line: 187, column: 21, scope: !1216, inlinedAt: !1238)
!1242 = !DILocation(line: 192, column: 30, scope: !1216, inlinedAt: !1238)
!1243 = !DILocation(line: 194, column: 7, scope: !1225, inlinedAt: !1238)
!1244 = !DILocation(line: 194, column: 7, scope: !1216, inlinedAt: !1238)
!1245 = !DILocation(line: 196, column: 7, scope: !1224, inlinedAt: !1238)
!1246 = !DILocation(line: 196, column: 17, scope: !1224, inlinedAt: !1238)
!1247 = !DILocalVariable(name: "ps", arg: 1, scope: !1248, file: !1249, line: 1135, type: !1252)
!1248 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !1250, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1253)
!1249 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1253 = !{!1247}
!1254 = !DILocation(line: 0, scope: !1248, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 196, column: 26, scope: !1224, inlinedAt: !1238)
!1256 = !DILocalVariable(name: "__dest", arg: 1, scope: !1257, file: !1258, line: 57, type: !133)
!1257 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1261)
!1258 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!133, !133, !74, !135}
!1261 = !{!1256, !1262, !1263}
!1262 = !DILocalVariable(name: "__ch", arg: 2, scope: !1257, file: !1258, line: 57, type: !74)
!1263 = !DILocalVariable(name: "__len", arg: 3, scope: !1257, file: !1258, line: 57, type: !135)
!1264 = !DILocation(line: 0, scope: !1257, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 1137, column: 3, scope: !1248, inlinedAt: !1255)
!1266 = !DILocation(line: 59, column: 10, scope: !1257, inlinedAt: !1265)
!1267 = !DILocation(line: 197, column: 49, scope: !1224, inlinedAt: !1238)
!1268 = !DILocation(line: 197, column: 24, scope: !1224, inlinedAt: !1238)
!1269 = !DILocation(line: 0, scope: !1224, inlinedAt: !1238)
!1270 = !DILocation(line: 198, column: 7, scope: !1224, inlinedAt: !1238)
!1271 = !DILocation(line: 204, column: 5, scope: !1225, inlinedAt: !1238)
!1272 = !DILocation(line: 280, column: 11, scope: !1240, inlinedAt: !1179)
!1273 = !DILocation(line: 290, column: 7, scope: !1110, inlinedAt: !1179)
!1274 = !DILocation(line: 290, column: 19, scope: !1110, inlinedAt: !1179)
!1275 = !DILocation(line: 291, column: 11, scope: !1276, inlinedAt: !1179)
!1276 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 291, column: 11)
!1277 = !DILocation(line: 291, column: 29, scope: !1276, inlinedAt: !1179)
!1278 = !DILocation(line: 291, column: 11, scope: !1110, inlinedAt: !1179)
!1279 = !DILocation(line: 298, column: 5, scope: !1111, inlinedAt: !1179)
!1280 = !DILocation(line: 353, column: 7, scope: !1100, inlinedAt: !1179)
!1281 = !DILocation(line: 293, column: 16, scope: !1282, inlinedAt: !1179)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 293, column: 16)
!1283 = !DILocation(line: 293, column: 22, scope: !1282, inlinedAt: !1179)
!1284 = !DILocation(line: 293, column: 32, scope: !1282, inlinedAt: !1179)
!1285 = !DILocation(line: 295, column: 11, scope: !1286, inlinedAt: !1179)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 294, column: 9)
!1287 = !DILocation(line: 301, column: 7, scope: !1149, inlinedAt: !1179)
!1288 = !DILocation(line: 310, column: 30, scope: !1151, inlinedAt: !1179)
!1289 = !DILocation(line: 310, column: 36, scope: !1151, inlinedAt: !1179)
!1290 = !DILocation(line: 0, scope: !1151, inlinedAt: !1179)
!1291 = !DILocation(line: 311, column: 17, scope: !1151, inlinedAt: !1179)
!1292 = !DILocation(line: 312, column: 18, scope: !1151, inlinedAt: !1179)
!1293 = !DILocation(line: 313, column: 20, scope: !1294, inlinedAt: !1179)
!1294 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 313, column: 15)
!1295 = !DILocation(line: 313, column: 24, scope: !1294, inlinedAt: !1179)
!1296 = !DILocation(line: 313, column: 27, scope: !1294, inlinedAt: !1179)
!1297 = !DILocation(line: 313, column: 33, scope: !1294, inlinedAt: !1179)
!1298 = !DILocation(line: 313, column: 15, scope: !1151, inlinedAt: !1179)
!1299 = !DILocation(line: 315, column: 15, scope: !1300, inlinedAt: !1179)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 314, column: 13)
!1301 = !DILocation(line: 0, scope: !1148, inlinedAt: !1179)
!1302 = !DILocation(line: 323, column: 19, scope: !1303, inlinedAt: !1179)
!1303 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 323, column: 11)
!1304 = !DILocation(line: 323, column: 11, scope: !1148, inlinedAt: !1179)
!1305 = !DILocation(line: 325, column: 11, scope: !1306, inlinedAt: !1179)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 324, column: 9)
!1307 = !DILocation(line: 327, column: 11, scope: !1306, inlinedAt: !1179)
!1308 = !DILocation(line: 337, column: 33, scope: !1157, inlinedAt: !1179)
!1309 = !DILocation(line: 215, column: 3, scope: !1310, inlinedAt: !1315)
!1310 = distinct !DISubprogram(name: "component_start", scope: !2, file: !2, line: 213, type: !1311, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!132, !132}
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "f", arg: 1, scope: !1310, file: !2, line: 213, type: !132)
!1315 = distinct !DILocation(line: 339, column: 42, scope: !1160, inlinedAt: !1179)
!1316 = !DILocation(line: 0, scope: !1310, inlinedAt: !1315)
!1317 = !DILocation(line: 215, column: 10, scope: !1310, inlinedAt: !1315)
!1318 = !DILocation(line: 216, column: 6, scope: !1310, inlinedAt: !1315)
!1319 = distinct !{!1319, !1320, !1321, !956}
!1320 = !DILocation(line: 339, column: 7, scope: !1155, inlinedAt: !1179)
!1321 = !DILocation(line: 350, column: 9, scope: !1155, inlinedAt: !1179)
!1322 = !DILocation(line: 227, scope: !1323, inlinedAt: !1330)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 227, column: 3)
!1324 = distinct !DISubprogram(name: "component_len", scope: !2, file: !2, line: 224, type: !1325, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!135, !138}
!1327 = !{!1328, !1329}
!1328 = !DILocalVariable(name: "f", arg: 1, scope: !1324, file: !2, line: 224, type: !138)
!1329 = !DILocalVariable(name: "len", scope: !1324, file: !2, line: 226, type: !135)
!1330 = distinct !DILocation(line: 341, column: 27, scope: !1159, inlinedAt: !1179)
!1331 = !DILocation(line: 0, scope: !1324, inlinedAt: !1330)
!1332 = !DILocation(line: 227, column: 17, scope: !1333, inlinedAt: !1330)
!1333 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 227, column: 3)
!1334 = !DILocation(line: 227, column: 31, scope: !1333, inlinedAt: !1330)
!1335 = !DILocation(line: 227, column: 45, scope: !1333, inlinedAt: !1330)
!1336 = !DILocation(line: 227, column: 3, scope: !1333, inlinedAt: !1330)
!1337 = distinct !{!1337, !1338, !1339, !956}
!1338 = !DILocation(line: 227, column: 3, scope: !1323, inlinedAt: !1330)
!1339 = !DILocation(line: 228, column: 5, scope: !1323, inlinedAt: !1330)
!1340 = !DILocation(line: 0, scope: !1159, inlinedAt: !1179)
!1341 = !DILocation(line: 343, column: 32, scope: !1342, inlinedAt: !1179)
!1342 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 343, column: 15)
!1343 = !DILocation(line: 0, scope: !1155, inlinedAt: !1179)
!1344 = !DILocation(line: 364, column: 7, scope: !1166, inlinedAt: !1179)
!1345 = !DILocation(line: 0, scope: !1162, inlinedAt: !1179)
!1346 = !DILocation(line: 362, column: 13, scope: !1162, inlinedAt: !1179)
!1347 = !DILocation(line: 364, scope: !1166, inlinedAt: !1179)
!1348 = !DILocation(line: 0, scope: !1166, inlinedAt: !1179)
!1349 = !DILocation(line: 0, scope: !1310, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 364, column: 42, scope: !1169, inlinedAt: !1179)
!1351 = !DILocation(line: 215, column: 3, scope: !1310, inlinedAt: !1350)
!1352 = !DILocation(line: 215, column: 10, scope: !1310, inlinedAt: !1350)
!1353 = !DILocation(line: 216, column: 6, scope: !1310, inlinedAt: !1350)
!1354 = !DILocation(line: 368, column: 15, scope: !1172, inlinedAt: !1179)
!1355 = !DILocation(line: 368, column: 15, scope: !1168, inlinedAt: !1179)
!1356 = !DILocation(line: 373, column: 40, scope: !1171, inlinedAt: !1179)
!1357 = !DILocation(line: 373, column: 34, scope: !1171, inlinedAt: !1179)
!1358 = !DILocation(line: 0, scope: !1171, inlinedAt: !1179)
!1359 = !DILocation(line: 375, column: 15, scope: !1171, inlinedAt: !1179)
!1360 = !DILocation(line: 375, column: 21, scope: !1171, inlinedAt: !1179)
!1361 = !DILocation(line: 376, column: 22, scope: !1171, inlinedAt: !1179)
!1362 = !DILocation(line: 377, column: 21, scope: !1171, inlinedAt: !1179)
!1363 = !DILocation(line: 378, column: 22, scope: !1171, inlinedAt: !1179)
!1364 = !DILocation(line: 379, column: 21, scope: !1365, inlinedAt: !1179)
!1365 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 379, column: 19)
!1366 = !DILocation(line: 379, column: 19, scope: !1171, inlinedAt: !1179)
!1367 = !DILocation(line: 382, column: 25, scope: !1365, inlinedAt: !1179)
!1368 = !DILocation(line: 382, column: 17, scope: !1365, inlinedAt: !1179)
!1369 = !DILocation(line: 392, column: 21, scope: !1370, inlinedAt: !1179)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 383, column: 19)
!1371 = !DILocation(line: 395, column: 28, scope: !1370, inlinedAt: !1179)
!1372 = !DILocation(line: 396, column: 21, scope: !1370, inlinedAt: !1179)
!1373 = !DILocation(line: 397, column: 28, scope: !1370, inlinedAt: !1179)
!1374 = !DILocation(line: 0, scope: !1172, inlinedAt: !1179)
!1375 = !DILocation(line: 0, scope: !1324, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 402, column: 20, scope: !1168, inlinedAt: !1179)
!1377 = !DILocation(line: 227, column: 8, scope: !1323, inlinedAt: !1376)
!1378 = !DILocation(line: 227, scope: !1323, inlinedAt: !1376)
!1379 = !DILocation(line: 227, column: 17, scope: !1333, inlinedAt: !1376)
!1380 = !DILocation(line: 227, column: 31, scope: !1333, inlinedAt: !1376)
!1381 = !DILocation(line: 227, column: 45, scope: !1333, inlinedAt: !1376)
!1382 = !DILocation(line: 227, column: 3, scope: !1333, inlinedAt: !1376)
!1383 = distinct !{!1383, !1384, !1385, !956}
!1384 = !DILocation(line: 227, column: 3, scope: !1323, inlinedAt: !1376)
!1385 = !DILocation(line: 228, column: 5, scope: !1323, inlinedAt: !1376)
!1386 = !DILocation(line: 0, scope: !1168, inlinedAt: !1179)
!1387 = !DILocation(line: 404, column: 24, scope: !1177, inlinedAt: !1179)
!1388 = !DILocation(line: 404, column: 15, scope: !1168, inlinedAt: !1179)
!1389 = distinct !{!1389, !1344, !1390, !956}
!1390 = !DILocation(line: 417, column: 9, scope: !1166, inlinedAt: !1179)
!1391 = !DILocation(line: 0, scope: !1176, inlinedAt: !1179)
!1392 = !DILocation(line: 407, column: 29, scope: !1176, inlinedAt: !1179)
!1393 = !DILocation(line: 408, column: 15, scope: !1176, inlinedAt: !1179)
!1394 = !DILocation(line: 412, column: 29, scope: !1176, inlinedAt: !1179)
!1395 = !DILocation(line: 158, column: 8, scope: !1092)
!1396 = !DILocation(line: 157, column: 25, scope: !1092)
!1397 = distinct !{!1397, !1094, !1398, !956}
!1398 = !DILocation(line: 159, column: 79, scope: !1093)
!1399 = !DILocation(line: 161, column: 10, scope: !1056)
!1400 = !DILocation(line: 161, column: 3, scope: !1056)
!1401 = !DISubprogram(name: "bindtextdomain", scope: !891, file: !891, line: 86, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!132, !138, !138}
!1404 = !DISubprogram(name: "textdomain", scope: !891, file: !891, line: 82, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1405 = !DISubprogram(name: "atexit", scope: !1030, file: !1030, line: 602, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!74, !483}
!1408 = !DISubprogram(name: "getopt_long", scope: !400, file: !400, line: 66, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!74, !74, !1411, !138, !1413, !405}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1414 = !DISubprogram(name: "strlen", scope: !1026, file: !1026, line: 407, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!137, !138}
!1417 = !DISubprogram(name: "lstat", scope: !1418, file: !1418, line: 313, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1418 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!74, !900, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1423 = !DISubprogram(name: "__errno_location", scope: !1424, file: !1424, line: 37, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1424 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!405}
!1427 = !DISubprogram(name: "pathconf", scope: !1428, file: !1428, line: 633, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1428 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!217, !138, !74}
!1431 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !417, file: !417, line: 50, type: !860, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1432)
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "file", arg: 1, scope: !1431, file: !417, line: 50, type: !138)
!1434 = !DILocation(line: 0, scope: !1431)
!1435 = !DILocation(line: 52, column: 13, scope: !1431)
!1436 = !DILocation(line: 53, column: 1, scope: !1431)
!1437 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !417, file: !417, line: 87, type: !1438, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !176}
!1440 = !{!1441}
!1441 = !DILocalVariable(name: "ignore", arg: 1, scope: !1437, file: !417, line: 87, type: !176)
!1442 = !DILocation(line: 0, scope: !1437)
!1443 = !DILocation(line: 89, column: 16, scope: !1437)
!1444 = !{!1445, !1445, i64 0}
!1445 = !{!"_Bool", !848, i64 0}
!1446 = !DILocation(line: 90, column: 1, scope: !1437)
!1447 = distinct !DISubprogram(name: "close_stdout", scope: !417, file: !417, line: 116, type: !484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1448)
!1448 = !{!1449}
!1449 = !DILocalVariable(name: "write_error", scope: !1450, file: !417, line: 121, type: !138)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !417, line: 120, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !417, line: 118, column: 7)
!1452 = !DILocation(line: 118, column: 21, scope: !1451)
!1453 = !DILocation(line: 118, column: 7, scope: !1451)
!1454 = !DILocation(line: 118, column: 29, scope: !1451)
!1455 = !DILocation(line: 119, column: 7, scope: !1451)
!1456 = !DILocation(line: 119, column: 12, scope: !1451)
!1457 = !{i8 0, i8 2}
!1458 = !DILocation(line: 119, column: 25, scope: !1451)
!1459 = !DILocation(line: 119, column: 28, scope: !1451)
!1460 = !DILocation(line: 119, column: 34, scope: !1451)
!1461 = !DILocation(line: 118, column: 7, scope: !1447)
!1462 = !DILocation(line: 121, column: 33, scope: !1450)
!1463 = !DILocation(line: 0, scope: !1450)
!1464 = !DILocation(line: 122, column: 11, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1450, file: !417, line: 122, column: 11)
!1466 = !DILocation(line: 0, scope: !1465)
!1467 = !DILocation(line: 122, column: 11, scope: !1450)
!1468 = !DILocation(line: 123, column: 9, scope: !1465)
!1469 = !DILocation(line: 126, column: 9, scope: !1465)
!1470 = !DILocation(line: 128, column: 14, scope: !1450)
!1471 = !DILocation(line: 128, column: 7, scope: !1450)
!1472 = !DILocation(line: 133, column: 42, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1447, file: !417, line: 133, column: 7)
!1474 = !DILocation(line: 133, column: 28, scope: !1473)
!1475 = !DILocation(line: 133, column: 50, scope: !1473)
!1476 = !DILocation(line: 133, column: 7, scope: !1447)
!1477 = !DILocation(line: 134, column: 12, scope: !1473)
!1478 = !DILocation(line: 134, column: 5, scope: !1473)
!1479 = !DILocation(line: 135, column: 1, scope: !1447)
!1480 = !DISubprogram(name: "_exit", scope: !1428, file: !1428, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1481 = distinct !DISubprogram(name: "verror", scope: !432, file: !432, line: 251, type: !1482, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !74, !74, !138, !442}
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DILocalVariable(name: "status", arg: 1, scope: !1481, file: !432, line: 251, type: !74)
!1486 = !DILocalVariable(name: "errnum", arg: 2, scope: !1481, file: !432, line: 251, type: !74)
!1487 = !DILocalVariable(name: "message", arg: 3, scope: !1481, file: !432, line: 251, type: !138)
!1488 = !DILocalVariable(name: "args", arg: 4, scope: !1481, file: !432, line: 251, type: !442)
!1489 = !DILocation(line: 0, scope: !1481)
!1490 = !DILocation(line: 251, column: 1, scope: !1481)
!1491 = !DILocation(line: 261, column: 3, scope: !1481)
!1492 = !DILocation(line: 265, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1481, file: !432, line: 265, column: 7)
!1494 = !DILocation(line: 265, column: 7, scope: !1481)
!1495 = !DILocation(line: 266, column: 5, scope: !1493)
!1496 = !DILocation(line: 272, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !432, line: 268, column: 5)
!1498 = !DILocation(line: 276, column: 3, scope: !1481)
!1499 = !{i64 0, i64 8, !846, i64 8, i64 8, !846, i64 16, i64 8, !846, i64 24, i64 4, !909, i64 28, i64 4, !909}
!1500 = !DILocation(line: 282, column: 1, scope: !1481)
!1501 = distinct !DISubprogram(name: "flush_stdout", scope: !432, file: !432, line: 163, type: !484, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1502)
!1502 = !{!1503}
!1503 = !DILocalVariable(name: "stdout_fd", scope: !1501, file: !432, line: 166, type: !74)
!1504 = !DILocation(line: 0, scope: !1501)
!1505 = !DILocalVariable(name: "fd", arg: 1, scope: !1506, file: !432, line: 145, type: !74)
!1506 = distinct !DISubprogram(name: "is_open", scope: !432, file: !432, line: 145, type: !1507, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!74, !74}
!1509 = !{!1505}
!1510 = !DILocation(line: 0, scope: !1506, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 182, column: 25, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1501, file: !432, line: 182, column: 7)
!1513 = !DILocation(line: 157, column: 15, scope: !1506, inlinedAt: !1511)
!1514 = !DILocation(line: 157, column: 12, scope: !1506, inlinedAt: !1511)
!1515 = !DILocation(line: 182, column: 7, scope: !1501)
!1516 = !DILocation(line: 184, column: 5, scope: !1512)
!1517 = !DILocation(line: 185, column: 1, scope: !1501)
!1518 = distinct !DISubprogram(name: "error_tail", scope: !432, file: !432, line: 219, type: !1482, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523}
!1520 = !DILocalVariable(name: "status", arg: 1, scope: !1518, file: !432, line: 219, type: !74)
!1521 = !DILocalVariable(name: "errnum", arg: 2, scope: !1518, file: !432, line: 219, type: !74)
!1522 = !DILocalVariable(name: "message", arg: 3, scope: !1518, file: !432, line: 219, type: !138)
!1523 = !DILocalVariable(name: "args", arg: 4, scope: !1518, file: !432, line: 219, type: !442)
!1524 = !DILocation(line: 0, scope: !1518)
!1525 = !DILocation(line: 219, column: 1, scope: !1518)
!1526 = !DILocation(line: 229, column: 13, scope: !1518)
!1527 = !DILocation(line: 135, column: 10, scope: !1528, inlinedAt: !1570)
!1528 = distinct !DISubprogram(name: "vfprintf", scope: !896, file: !896, line: 132, type: !1529, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1566)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!74, !1531, !900, !444}
!1531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1534, file: !193, line: 51, baseType: !74, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1534, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1534, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1534, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1534, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1534, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1534, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1534, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1534, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1534, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1534, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1534, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1534, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1534, file: !193, line: 70, baseType: !1550, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1534, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1534, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1534, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1534, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1534, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1534, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1534, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1534, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1534, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1534, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1534, file: !193, line: 93, baseType: !1550, size: 64, offset: 1344)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1534, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1534, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1534, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1534, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!1566 = !{!1567, !1568, !1569}
!1567 = !DILocalVariable(name: "__stream", arg: 1, scope: !1528, file: !896, line: 132, type: !1531)
!1568 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1528, file: !896, line: 133, type: !900)
!1569 = !DILocalVariable(name: "__ap", arg: 3, scope: !1528, file: !896, line: 133, type: !444)
!1570 = distinct !DILocation(line: 229, column: 3, scope: !1518)
!1571 = !{!1572, !1574}
!1572 = distinct !{!1572, !1573, !"vfprintf.inline: argument 0"}
!1573 = distinct !{!1573, !"vfprintf.inline"}
!1574 = distinct !{!1574, !1573, !"vfprintf.inline: argument 1"}
!1575 = !DILocation(line: 229, column: 3, scope: !1518)
!1576 = !DILocation(line: 0, scope: !1528, inlinedAt: !1570)
!1577 = !DILocation(line: 133, column: 49, scope: !1528, inlinedAt: !1570)
!1578 = !DILocation(line: 232, column: 3, scope: !1518)
!1579 = !DILocation(line: 233, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1518, file: !432, line: 233, column: 7)
!1581 = !DILocation(line: 233, column: 7, scope: !1518)
!1582 = !DILocalVariable(name: "errnum", arg: 1, scope: !1583, file: !432, line: 188, type: !74)
!1583 = distinct !DISubprogram(name: "print_errno_message", scope: !432, file: !432, line: 188, type: !836, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1584)
!1584 = !{!1582, !1585, !1586}
!1585 = !DILocalVariable(name: "s", scope: !1583, file: !432, line: 190, type: !138)
!1586 = !DILocalVariable(name: "errbuf", scope: !1583, file: !432, line: 193, type: !1587)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 1024)
!1590 = !DILocation(line: 0, scope: !1583, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 234, column: 5, scope: !1580)
!1592 = !DILocation(line: 193, column: 3, scope: !1583, inlinedAt: !1591)
!1593 = !DILocation(line: 193, column: 8, scope: !1583, inlinedAt: !1591)
!1594 = !DILocation(line: 195, column: 7, scope: !1583, inlinedAt: !1591)
!1595 = !DILocation(line: 207, column: 9, scope: !1596, inlinedAt: !1591)
!1596 = distinct !DILexicalBlock(scope: !1583, file: !432, line: 207, column: 7)
!1597 = !DILocation(line: 207, column: 7, scope: !1583, inlinedAt: !1591)
!1598 = !DILocation(line: 208, column: 9, scope: !1596, inlinedAt: !1591)
!1599 = !DILocation(line: 208, column: 5, scope: !1596, inlinedAt: !1591)
!1600 = !DILocation(line: 214, column: 3, scope: !1583, inlinedAt: !1591)
!1601 = !DILocation(line: 216, column: 1, scope: !1583, inlinedAt: !1591)
!1602 = !DILocation(line: 234, column: 5, scope: !1580)
!1603 = !DILocation(line: 238, column: 3, scope: !1518)
!1604 = !DILocalVariable(name: "__c", arg: 1, scope: !1605, file: !1606, line: 101, type: !74)
!1605 = distinct !DISubprogram(name: "putc_unlocked", scope: !1606, file: !1606, line: 101, type: !1607, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1609)
!1606 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!74, !74, !1532}
!1609 = !{!1604, !1610}
!1610 = !DILocalVariable(name: "__stream", arg: 2, scope: !1605, file: !1606, line: 101, type: !1532)
!1611 = !DILocation(line: 0, scope: !1605, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 238, column: 3, scope: !1518)
!1613 = !DILocation(line: 103, column: 10, scope: !1605, inlinedAt: !1612)
!1614 = !{!1615, !847, i64 40}
!1615 = !{!"_IO_FILE", !910, i64 0, !847, i64 8, !847, i64 16, !847, i64 24, !847, i64 32, !847, i64 40, !847, i64 48, !847, i64 56, !847, i64 64, !847, i64 72, !847, i64 80, !847, i64 88, !847, i64 96, !847, i64 104, !910, i64 112, !910, i64 116, !1616, i64 120, !951, i64 128, !848, i64 130, !848, i64 131, !847, i64 136, !1616, i64 144, !847, i64 152, !847, i64 160, !847, i64 168, !847, i64 176, !1616, i64 184, !910, i64 192, !848, i64 196}
!1616 = !{!"long", !848, i64 0}
!1617 = !{!1615, !847, i64 48}
!1618 = !{!"branch_weights", i32 2000, i32 1}
!1619 = !DILocation(line: 240, column: 3, scope: !1518)
!1620 = !DILocation(line: 241, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1518, file: !432, line: 241, column: 7)
!1622 = !DILocation(line: 241, column: 7, scope: !1518)
!1623 = !DILocation(line: 242, column: 5, scope: !1621)
!1624 = !DILocation(line: 243, column: 1, scope: !1518)
!1625 = !DISubprogram(name: "__vfprintf_chk", scope: !896, file: !896, line: 96, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!74, !1531, !74, !900, !444}
!1628 = !DISubprogram(name: "strerror_r", scope: !1026, file: !1026, line: 444, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!132, !74, !132, !135}
!1631 = !DISubprogram(name: "__overflow", scope: !443, file: !443, line: 886, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!74, !1532, !74}
!1634 = !DISubprogram(name: "fflush_unlocked", scope: !443, file: !443, line: 239, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!74, !1532}
!1637 = !DISubprogram(name: "fcntl", scope: !1638, file: !1638, line: 149, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1638 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!74, !74, !74, null}
!1641 = distinct !DISubprogram(name: "error", scope: !432, file: !432, line: 285, type: !1642, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !74, !74, !138, null}
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "status", arg: 1, scope: !1641, file: !432, line: 285, type: !74)
!1646 = !DILocalVariable(name: "errnum", arg: 2, scope: !1641, file: !432, line: 285, type: !74)
!1647 = !DILocalVariable(name: "message", arg: 3, scope: !1641, file: !432, line: 285, type: !138)
!1648 = !DILocalVariable(name: "ap", scope: !1641, file: !432, line: 287, type: !442)
!1649 = !DILocation(line: 0, scope: !1641)
!1650 = !DILocation(line: 287, column: 3, scope: !1641)
!1651 = !DILocation(line: 287, column: 11, scope: !1641)
!1652 = !DILocation(line: 288, column: 3, scope: !1641)
!1653 = !DILocation(line: 289, column: 3, scope: !1641)
!1654 = !DILocation(line: 290, column: 3, scope: !1641)
!1655 = !DILocation(line: 291, column: 1, scope: !1641)
!1656 = !DILocation(line: 0, scope: !439)
!1657 = !DILocation(line: 298, column: 1, scope: !439)
!1658 = !DILocation(line: 302, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !439, file: !432, line: 302, column: 7)
!1660 = !DILocation(line: 302, column: 7, scope: !439)
!1661 = !DILocation(line: 307, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !432, line: 307, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !432, line: 303, column: 5)
!1664 = !DILocation(line: 307, column: 27, scope: !1662)
!1665 = !DILocation(line: 308, column: 11, scope: !1662)
!1666 = !DILocation(line: 308, column: 28, scope: !1662)
!1667 = !DILocation(line: 308, column: 25, scope: !1662)
!1668 = !DILocation(line: 309, column: 15, scope: !1662)
!1669 = !DILocation(line: 309, column: 33, scope: !1662)
!1670 = !DILocation(line: 310, column: 19, scope: !1662)
!1671 = !DILocation(line: 311, column: 22, scope: !1662)
!1672 = !DILocation(line: 311, column: 56, scope: !1662)
!1673 = !DILocation(line: 307, column: 11, scope: !1663)
!1674 = !DILocation(line: 316, column: 21, scope: !1663)
!1675 = !DILocation(line: 317, column: 23, scope: !1663)
!1676 = !DILocation(line: 318, column: 5, scope: !1663)
!1677 = !DILocation(line: 327, column: 3, scope: !439)
!1678 = !DILocation(line: 331, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !439, file: !432, line: 331, column: 7)
!1680 = !DILocation(line: 331, column: 7, scope: !439)
!1681 = !DILocation(line: 332, column: 5, scope: !1679)
!1682 = !DILocation(line: 338, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !432, line: 334, column: 5)
!1684 = !DILocation(line: 346, column: 3, scope: !439)
!1685 = !DILocation(line: 350, column: 3, scope: !439)
!1686 = !DILocation(line: 356, column: 1, scope: !439)
!1687 = distinct !DISubprogram(name: "error_at_line", scope: !432, file: !432, line: 359, type: !1688, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !74, !74, !138, !69, !138, null}
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696}
!1691 = !DILocalVariable(name: "status", arg: 1, scope: !1687, file: !432, line: 359, type: !74)
!1692 = !DILocalVariable(name: "errnum", arg: 2, scope: !1687, file: !432, line: 359, type: !74)
!1693 = !DILocalVariable(name: "file_name", arg: 3, scope: !1687, file: !432, line: 359, type: !138)
!1694 = !DILocalVariable(name: "line_number", arg: 4, scope: !1687, file: !432, line: 360, type: !69)
!1695 = !DILocalVariable(name: "message", arg: 5, scope: !1687, file: !432, line: 360, type: !138)
!1696 = !DILocalVariable(name: "ap", scope: !1687, file: !432, line: 362, type: !442)
!1697 = !DILocation(line: 0, scope: !1687)
!1698 = !DILocation(line: 362, column: 3, scope: !1687)
!1699 = !DILocation(line: 362, column: 11, scope: !1687)
!1700 = !DILocation(line: 363, column: 3, scope: !1687)
!1701 = !DILocation(line: 364, column: 3, scope: !1687)
!1702 = !DILocation(line: 366, column: 3, scope: !1687)
!1703 = !DILocation(line: 367, column: 1, scope: !1687)
!1704 = distinct !DISubprogram(name: "getprogname", scope: !764, file: !764, line: 54, type: !1705, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !894)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!138}
!1707 = !DILocation(line: 58, column: 10, scope: !1704)
!1708 = !DILocation(line: 58, column: 3, scope: !1704)
!1709 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !489, file: !489, line: 27, type: !1710, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1713)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!135, !138, !135, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1713 = !{!1714, !1715, !1716}
!1714 = !DILocalVariable(name: "s", arg: 1, scope: !1709, file: !489, line: 27, type: !138)
!1715 = !DILocalVariable(name: "n", arg: 2, scope: !1709, file: !489, line: 27, type: !135)
!1716 = !DILocalVariable(name: "ps", arg: 3, scope: !1709, file: !489, line: 27, type: !1712)
!1717 = !DILocation(line: 0, scope: !1709)
!1718 = !DILocation(line: 29, column: 10, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1709, file: !489, line: 29, column: 7)
!1720 = !DILocation(line: 29, column: 7, scope: !1709)
!1721 = !DILocation(line: 31, column: 10, scope: !1709)
!1722 = !DILocation(line: 31, column: 3, scope: !1709)
!1723 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !766, file: !766, line: 82, type: !1724, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1739)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!135, !1726, !138, !135, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !136, line: 74, baseType: !69)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !493, line: 6, baseType: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !495, line: 21, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 13, size: 64, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1731, file: !495, line: 15, baseType: !74, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1731, file: !495, line: 20, baseType: !1735, size: 32, offset: 32)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !495, line: 16, size: 32, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1735, file: !495, line: 18, baseType: !69, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1735, file: !495, line: 19, baseType: !61, size: 32)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1740 = !DILocalVariable(name: "pwc", arg: 1, scope: !1723, file: !766, line: 82, type: !1726)
!1741 = !DILocalVariable(name: "s", arg: 2, scope: !1723, file: !766, line: 82, type: !138)
!1742 = !DILocalVariable(name: "n", arg: 3, scope: !1723, file: !766, line: 82, type: !135)
!1743 = !DILocalVariable(name: "ps", arg: 4, scope: !1723, file: !766, line: 82, type: !1728)
!1744 = !DILocalVariable(name: "wc", scope: !1723, file: !766, line: 98, type: !1727)
!1745 = !DILocalVariable(name: "ret", scope: !1723, file: !766, line: 134, type: !135)
!1746 = !DILocalVariable(name: "uc", scope: !1747, file: !766, line: 151, type: !140)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !766, line: 150, column: 5)
!1748 = distinct !DILexicalBlock(scope: !1723, file: !766, line: 149, column: 7)
!1749 = !DILocation(line: 0, scope: !1723)
!1750 = !DILocation(line: 98, column: 3, scope: !1723)
!1751 = !DILocation(line: 99, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1723, file: !766, line: 99, column: 7)
!1753 = !DILocation(line: 99, column: 7, scope: !1723)
!1754 = !DILocation(line: 140, column: 9, scope: !1723)
!1755 = !DILocation(line: 149, column: 19, scope: !1748)
!1756 = !DILocation(line: 149, column: 26, scope: !1748)
!1757 = !DILocation(line: 149, column: 41, scope: !1748)
!1758 = !DILocation(line: 149, column: 7, scope: !1723)
!1759 = !DILocation(line: 151, column: 26, scope: !1747)
!1760 = !DILocation(line: 0, scope: !1747)
!1761 = !DILocation(line: 152, column: 14, scope: !1747)
!1762 = !DILocation(line: 152, column: 12, scope: !1747)
!1763 = !DILocation(line: 158, column: 1, scope: !1723)
!1764 = !DISubprogram(name: "mbrtowc", scope: !1765, file: !1765, line: 297, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1765 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!135, !1768, !900, !135, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1726)
!1769 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1728)
!1770 = distinct !DISubprogram(name: "set_program_name", scope: !507, file: !507, line: 37, type: !860, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DILocalVariable(name: "argv0", arg: 1, scope: !1770, file: !507, line: 37, type: !138)
!1773 = !DILocalVariable(name: "slash", scope: !1770, file: !507, line: 44, type: !138)
!1774 = !DILocalVariable(name: "base", scope: !1770, file: !507, line: 45, type: !138)
!1775 = !DILocation(line: 0, scope: !1770)
!1776 = !DILocation(line: 44, column: 23, scope: !1770)
!1777 = !DILocation(line: 45, column: 22, scope: !1770)
!1778 = !DILocation(line: 46, column: 17, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !507, line: 46, column: 7)
!1780 = !DILocation(line: 46, column: 9, scope: !1779)
!1781 = !DILocation(line: 46, column: 25, scope: !1779)
!1782 = !DILocation(line: 46, column: 40, scope: !1779)
!1783 = !DILocalVariable(name: "__s1", arg: 1, scope: !1784, file: !922, line: 974, type: !1054)
!1784 = distinct !DISubprogram(name: "memeq", scope: !922, file: !922, line: 974, type: !1785, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!176, !1054, !1054, !135}
!1787 = !{!1783, !1788, !1789}
!1788 = !DILocalVariable(name: "__s2", arg: 2, scope: !1784, file: !922, line: 974, type: !1054)
!1789 = !DILocalVariable(name: "__n", arg: 3, scope: !1784, file: !922, line: 974, type: !135)
!1790 = !DILocation(line: 0, scope: !1784, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 46, column: 28, scope: !1779)
!1792 = !DILocation(line: 976, column: 11, scope: !1784, inlinedAt: !1791)
!1793 = !DILocation(line: 976, column: 10, scope: !1784, inlinedAt: !1791)
!1794 = !DILocation(line: 46, column: 7, scope: !1770)
!1795 = !DILocation(line: 49, column: 11, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !507, line: 49, column: 11)
!1797 = distinct !DILexicalBlock(scope: !1779, file: !507, line: 47, column: 5)
!1798 = !DILocation(line: 49, column: 36, scope: !1796)
!1799 = !DILocation(line: 49, column: 11, scope: !1797)
!1800 = !DILocation(line: 65, column: 16, scope: !1770)
!1801 = !DILocation(line: 71, column: 27, scope: !1770)
!1802 = !DILocation(line: 74, column: 33, scope: !1770)
!1803 = !DILocation(line: 76, column: 1, scope: !1770)
!1804 = !DISubprogram(name: "strrchr", scope: !1026, file: !1026, line: 273, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1805 = !DILocation(line: 0, scope: !516)
!1806 = !DILocation(line: 40, column: 29, scope: !516)
!1807 = !DILocation(line: 41, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !516, file: !517, line: 41, column: 7)
!1809 = !DILocation(line: 41, column: 7, scope: !516)
!1810 = !DILocation(line: 47, column: 3, scope: !516)
!1811 = !DILocation(line: 48, column: 3, scope: !516)
!1812 = !DILocation(line: 48, column: 13, scope: !516)
!1813 = !DILocalVariable(name: "ps", arg: 1, scope: !1814, file: !1249, line: 1135, type: !1817)
!1814 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !1815, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !1818)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1818 = !{!1813}
!1819 = !DILocation(line: 0, scope: !1814, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 48, column: 18, scope: !516)
!1821 = !DILocalVariable(name: "__dest", arg: 1, scope: !1822, file: !1258, line: 57, type: !133)
!1822 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !1823)
!1823 = !{!1821, !1824, !1825}
!1824 = !DILocalVariable(name: "__ch", arg: 2, scope: !1822, file: !1258, line: 57, type: !74)
!1825 = !DILocalVariable(name: "__len", arg: 3, scope: !1822, file: !1258, line: 57, type: !135)
!1826 = !DILocation(line: 0, scope: !1822, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1137, column: 3, scope: !1814, inlinedAt: !1820)
!1828 = !DILocation(line: 59, column: 10, scope: !1822, inlinedAt: !1827)
!1829 = !DILocation(line: 49, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !516, file: !517, line: 49, column: 7)
!1831 = !DILocation(line: 49, column: 39, scope: !1830)
!1832 = !DILocation(line: 49, column: 44, scope: !1830)
!1833 = !DILocation(line: 54, column: 1, scope: !516)
!1834 = !DISubprogram(name: "mbrtoc32", scope: !528, file: !528, line: 57, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!135, !1837, !900, !135, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1817)
!1840 = distinct !DISubprogram(name: "clone_quoting_options", scope: !545, file: !545, line: 113, type: !1841, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1844)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1843, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!1844 = !{!1845, !1846, !1847}
!1845 = !DILocalVariable(name: "o", arg: 1, scope: !1840, file: !545, line: 113, type: !1843)
!1846 = !DILocalVariable(name: "saved_errno", scope: !1840, file: !545, line: 115, type: !74)
!1847 = !DILocalVariable(name: "p", scope: !1840, file: !545, line: 116, type: !1843)
!1848 = !DILocation(line: 0, scope: !1840)
!1849 = !DILocation(line: 115, column: 21, scope: !1840)
!1850 = !DILocation(line: 116, column: 40, scope: !1840)
!1851 = !DILocation(line: 116, column: 31, scope: !1840)
!1852 = !DILocation(line: 118, column: 9, scope: !1840)
!1853 = !DILocation(line: 119, column: 3, scope: !1840)
!1854 = distinct !DISubprogram(name: "get_quoting_style", scope: !545, file: !545, line: 124, type: !1855, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1859)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!93, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!1859 = !{!1860}
!1860 = !DILocalVariable(name: "o", arg: 1, scope: !1854, file: !545, line: 124, type: !1857)
!1861 = !DILocation(line: 0, scope: !1854)
!1862 = !DILocation(line: 126, column: 11, scope: !1854)
!1863 = !DILocation(line: 126, column: 46, scope: !1854)
!1864 = !{!1865, !848, i64 0}
!1865 = !{!"quoting_options", !848, i64 0, !910, i64 4, !848, i64 8, !847, i64 40, !847, i64 48}
!1866 = !DILocation(line: 126, column: 3, scope: !1854)
!1867 = distinct !DISubprogram(name: "set_quoting_style", scope: !545, file: !545, line: 132, type: !1868, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1843, !93}
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !545, line: 132, type: !1843)
!1872 = !DILocalVariable(name: "s", arg: 2, scope: !1867, file: !545, line: 132, type: !93)
!1873 = !DILocation(line: 0, scope: !1867)
!1874 = !DILocation(line: 134, column: 4, scope: !1867)
!1875 = !DILocation(line: 134, column: 45, scope: !1867)
!1876 = !DILocation(line: 135, column: 1, scope: !1867)
!1877 = distinct !DISubprogram(name: "set_char_quoting", scope: !545, file: !545, line: 143, type: !1878, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!74, !1843, !4, !74}
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1887, !1888}
!1881 = !DILocalVariable(name: "o", arg: 1, scope: !1877, file: !545, line: 143, type: !1843)
!1882 = !DILocalVariable(name: "c", arg: 2, scope: !1877, file: !545, line: 143, type: !4)
!1883 = !DILocalVariable(name: "i", arg: 3, scope: !1877, file: !545, line: 143, type: !74)
!1884 = !DILocalVariable(name: "uc", scope: !1877, file: !545, line: 145, type: !140)
!1885 = !DILocalVariable(name: "p", scope: !1877, file: !545, line: 146, type: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1887 = !DILocalVariable(name: "shift", scope: !1877, file: !545, line: 148, type: !74)
!1888 = !DILocalVariable(name: "r", scope: !1877, file: !545, line: 149, type: !69)
!1889 = !DILocation(line: 0, scope: !1877)
!1890 = !DILocation(line: 147, column: 6, scope: !1877)
!1891 = !DILocation(line: 147, column: 41, scope: !1877)
!1892 = !DILocation(line: 147, column: 62, scope: !1877)
!1893 = !DILocation(line: 147, column: 57, scope: !1877)
!1894 = !DILocation(line: 148, column: 15, scope: !1877)
!1895 = !DILocation(line: 149, column: 21, scope: !1877)
!1896 = !DILocation(line: 149, column: 24, scope: !1877)
!1897 = !DILocation(line: 149, column: 34, scope: !1877)
!1898 = !DILocation(line: 150, column: 19, scope: !1877)
!1899 = !DILocation(line: 150, column: 24, scope: !1877)
!1900 = !DILocation(line: 150, column: 6, scope: !1877)
!1901 = !DILocation(line: 151, column: 3, scope: !1877)
!1902 = distinct !DISubprogram(name: "set_quoting_flags", scope: !545, file: !545, line: 159, type: !1903, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!74, !1843, !74}
!1905 = !{!1906, !1907, !1908}
!1906 = !DILocalVariable(name: "o", arg: 1, scope: !1902, file: !545, line: 159, type: !1843)
!1907 = !DILocalVariable(name: "i", arg: 2, scope: !1902, file: !545, line: 159, type: !74)
!1908 = !DILocalVariable(name: "r", scope: !1902, file: !545, line: 163, type: !74)
!1909 = !DILocation(line: 0, scope: !1902)
!1910 = !DILocation(line: 161, column: 8, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1902, file: !545, line: 161, column: 7)
!1912 = !DILocation(line: 161, column: 7, scope: !1902)
!1913 = !DILocation(line: 163, column: 14, scope: !1902)
!1914 = !{!1865, !910, i64 4}
!1915 = !DILocation(line: 164, column: 12, scope: !1902)
!1916 = !DILocation(line: 165, column: 3, scope: !1902)
!1917 = distinct !DISubprogram(name: "set_custom_quoting", scope: !545, file: !545, line: 169, type: !1918, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1843, !138, !138}
!1920 = !{!1921, !1922, !1923}
!1921 = !DILocalVariable(name: "o", arg: 1, scope: !1917, file: !545, line: 169, type: !1843)
!1922 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1917, file: !545, line: 170, type: !138)
!1923 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1917, file: !545, line: 170, type: !138)
!1924 = !DILocation(line: 0, scope: !1917)
!1925 = !DILocation(line: 172, column: 8, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1917, file: !545, line: 172, column: 7)
!1927 = !DILocation(line: 172, column: 7, scope: !1917)
!1928 = !DILocation(line: 174, column: 12, scope: !1917)
!1929 = !DILocation(line: 175, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1917, file: !545, line: 175, column: 7)
!1931 = !DILocation(line: 175, column: 19, scope: !1930)
!1932 = !DILocation(line: 176, column: 5, scope: !1930)
!1933 = !DILocation(line: 177, column: 6, scope: !1917)
!1934 = !DILocation(line: 177, column: 17, scope: !1917)
!1935 = !{!1865, !847, i64 40}
!1936 = !DILocation(line: 178, column: 6, scope: !1917)
!1937 = !DILocation(line: 178, column: 18, scope: !1917)
!1938 = !{!1865, !847, i64 48}
!1939 = !DILocation(line: 179, column: 1, scope: !1917)
!1940 = !DISubprogram(name: "abort", scope: !1030, file: !1030, line: 598, type: !484, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !894)
!1941 = distinct !DISubprogram(name: "quotearg_buffer", scope: !545, file: !545, line: 774, type: !1942, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!135, !132, !135, !138, !135, !1857}
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1945 = !DILocalVariable(name: "buffer", arg: 1, scope: !1941, file: !545, line: 774, type: !132)
!1946 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1941, file: !545, line: 774, type: !135)
!1947 = !DILocalVariable(name: "arg", arg: 3, scope: !1941, file: !545, line: 775, type: !138)
!1948 = !DILocalVariable(name: "argsize", arg: 4, scope: !1941, file: !545, line: 775, type: !135)
!1949 = !DILocalVariable(name: "o", arg: 5, scope: !1941, file: !545, line: 776, type: !1857)
!1950 = !DILocalVariable(name: "p", scope: !1941, file: !545, line: 778, type: !1857)
!1951 = !DILocalVariable(name: "saved_errno", scope: !1941, file: !545, line: 779, type: !74)
!1952 = !DILocalVariable(name: "r", scope: !1941, file: !545, line: 780, type: !135)
!1953 = !DILocation(line: 0, scope: !1941)
!1954 = !DILocation(line: 778, column: 37, scope: !1941)
!1955 = !DILocation(line: 779, column: 21, scope: !1941)
!1956 = !DILocation(line: 781, column: 43, scope: !1941)
!1957 = !DILocation(line: 781, column: 53, scope: !1941)
!1958 = !DILocation(line: 781, column: 63, scope: !1941)
!1959 = !DILocation(line: 782, column: 43, scope: !1941)
!1960 = !DILocation(line: 782, column: 58, scope: !1941)
!1961 = !DILocation(line: 780, column: 14, scope: !1941)
!1962 = !DILocation(line: 783, column: 9, scope: !1941)
!1963 = !DILocation(line: 784, column: 3, scope: !1941)
!1964 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !545, file: !545, line: 251, type: !1965, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !1969)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!135, !132, !135, !138, !135, !93, !74, !1967, !138, !138}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1994, !1996, !1999, !2000, !2001, !2002, !2005, !2006, !2009, !2013, !2014, !2022, !2025, !2026, !2028, !2029, !2030, !2031}
!1970 = !DILocalVariable(name: "buffer", arg: 1, scope: !1964, file: !545, line: 251, type: !132)
!1971 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1964, file: !545, line: 251, type: !135)
!1972 = !DILocalVariable(name: "arg", arg: 3, scope: !1964, file: !545, line: 252, type: !138)
!1973 = !DILocalVariable(name: "argsize", arg: 4, scope: !1964, file: !545, line: 252, type: !135)
!1974 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1964, file: !545, line: 253, type: !93)
!1975 = !DILocalVariable(name: "flags", arg: 6, scope: !1964, file: !545, line: 253, type: !74)
!1976 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1964, file: !545, line: 254, type: !1967)
!1977 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1964, file: !545, line: 255, type: !138)
!1978 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1964, file: !545, line: 256, type: !138)
!1979 = !DILocalVariable(name: "unibyte_locale", scope: !1964, file: !545, line: 258, type: !176)
!1980 = !DILocalVariable(name: "len", scope: !1964, file: !545, line: 260, type: !135)
!1981 = !DILocalVariable(name: "orig_buffersize", scope: !1964, file: !545, line: 261, type: !135)
!1982 = !DILocalVariable(name: "quote_string", scope: !1964, file: !545, line: 262, type: !138)
!1983 = !DILocalVariable(name: "quote_string_len", scope: !1964, file: !545, line: 263, type: !135)
!1984 = !DILocalVariable(name: "backslash_escapes", scope: !1964, file: !545, line: 264, type: !176)
!1985 = !DILocalVariable(name: "elide_outer_quotes", scope: !1964, file: !545, line: 265, type: !176)
!1986 = !DILocalVariable(name: "encountered_single_quote", scope: !1964, file: !545, line: 266, type: !176)
!1987 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1964, file: !545, line: 267, type: !176)
!1988 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1964, file: !545, line: 309, type: !176)
!1989 = !DILocalVariable(name: "lq", scope: !1990, file: !545, line: 361, type: !138)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !545, line: 361, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !545, line: 360, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !545, line: 333, column: 7)
!1993 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 312, column: 5)
!1994 = !DILocalVariable(name: "i", scope: !1995, file: !545, line: 395, type: !135)
!1995 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 395, column: 3)
!1996 = !DILocalVariable(name: "is_right_quote", scope: !1997, file: !545, line: 397, type: !176)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !545, line: 396, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !545, line: 395, column: 3)
!1999 = !DILocalVariable(name: "escaping", scope: !1997, file: !545, line: 398, type: !176)
!2000 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1997, file: !545, line: 399, type: !176)
!2001 = !DILocalVariable(name: "c", scope: !1997, file: !545, line: 417, type: !140)
!2002 = !DILocalVariable(name: "m", scope: !2003, file: !545, line: 598, type: !135)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 596, column: 11)
!2004 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 419, column: 9)
!2005 = !DILocalVariable(name: "printable", scope: !2003, file: !545, line: 600, type: !176)
!2006 = !DILocalVariable(name: "mbs", scope: !2007, file: !545, line: 609, type: !615)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !545, line: 608, column: 15)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !545, line: 602, column: 17)
!2009 = !DILocalVariable(name: "w", scope: !2010, file: !545, line: 618, type: !527)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !545, line: 617, column: 19)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !545, line: 616, column: 17)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !545, line: 616, column: 17)
!2013 = !DILocalVariable(name: "bytes", scope: !2010, file: !545, line: 619, type: !135)
!2014 = !DILocalVariable(name: "j", scope: !2015, file: !545, line: 648, type: !135)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !545, line: 648, column: 29)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !545, line: 647, column: 27)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !545, line: 645, column: 29)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !545, line: 636, column: 23)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !545, line: 628, column: 30)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !545, line: 623, column: 30)
!2021 = distinct !DILexicalBlock(scope: !2010, file: !545, line: 621, column: 25)
!2022 = !DILocalVariable(name: "ilim", scope: !2023, file: !545, line: 674, type: !135)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !545, line: 671, column: 15)
!2024 = distinct !DILexicalBlock(scope: !2003, file: !545, line: 670, column: 17)
!2025 = !DILabel(scope: !1964, name: "process_input", file: !545, line: 308)
!2026 = !DILabel(scope: !2027, name: "c_and_shell_escape", file: !545, line: 502)
!2027 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 478, column: 9)
!2028 = !DILabel(scope: !2027, name: "c_escape", file: !545, line: 507)
!2029 = !DILabel(scope: !1997, name: "store_escape", file: !545, line: 709)
!2030 = !DILabel(scope: !1997, name: "store_c", file: !545, line: 712)
!2031 = !DILabel(scope: !1964, name: "force_outer_quoting_style", file: !545, line: 753)
!2032 = !DILocation(line: 0, scope: !1964)
!2033 = !DILocation(line: 258, column: 25, scope: !1964)
!2034 = !DILocation(line: 258, column: 36, scope: !1964)
!2035 = !DILocation(line: 267, column: 3, scope: !1964)
!2036 = !DILocation(line: 261, column: 10, scope: !1964)
!2037 = !DILocation(line: 262, column: 15, scope: !1964)
!2038 = !DILocation(line: 263, column: 10, scope: !1964)
!2039 = !DILocation(line: 308, column: 2, scope: !1964)
!2040 = !DILocation(line: 311, column: 3, scope: !1964)
!2041 = !DILocation(line: 318, column: 11, scope: !1993)
!2042 = !DILocation(line: 319, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !545, line: 319, column: 9)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !545, line: 319, column: 9)
!2045 = distinct !DILexicalBlock(scope: !1993, file: !545, line: 318, column: 11)
!2046 = !DILocation(line: 319, column: 9, scope: !2044)
!2047 = !DILocation(line: 0, scope: !606, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 357, column: 26, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !545, line: 335, column: 11)
!2050 = distinct !DILexicalBlock(scope: !1992, file: !545, line: 334, column: 13)
!2051 = !DILocation(line: 199, column: 29, scope: !606, inlinedAt: !2048)
!2052 = !DILocation(line: 201, column: 19, scope: !2053, inlinedAt: !2048)
!2053 = distinct !DILexicalBlock(scope: !606, file: !545, line: 201, column: 7)
!2054 = !DILocation(line: 201, column: 7, scope: !606, inlinedAt: !2048)
!2055 = !DILocation(line: 229, column: 3, scope: !606, inlinedAt: !2048)
!2056 = !DILocation(line: 230, column: 3, scope: !606, inlinedAt: !2048)
!2057 = !DILocation(line: 230, column: 13, scope: !606, inlinedAt: !2048)
!2058 = !DILocalVariable(name: "ps", arg: 1, scope: !2059, file: !1249, line: 1135, type: !2062)
!2059 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !2060, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2063)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!2063 = !{!2058}
!2064 = !DILocation(line: 0, scope: !2059, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 230, column: 18, scope: !606, inlinedAt: !2048)
!2066 = !DILocalVariable(name: "__dest", arg: 1, scope: !2067, file: !1258, line: 57, type: !133)
!2067 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2068)
!2068 = !{!2066, !2069, !2070}
!2069 = !DILocalVariable(name: "__ch", arg: 2, scope: !2067, file: !1258, line: 57, type: !74)
!2070 = !DILocalVariable(name: "__len", arg: 3, scope: !2067, file: !1258, line: 57, type: !135)
!2071 = !DILocation(line: 0, scope: !2067, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2065)
!2073 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2072)
!2074 = !DILocation(line: 231, column: 7, scope: !2075, inlinedAt: !2048)
!2075 = distinct !DILexicalBlock(scope: !606, file: !545, line: 231, column: 7)
!2076 = !DILocation(line: 231, column: 40, scope: !2075, inlinedAt: !2048)
!2077 = !DILocation(line: 231, column: 45, scope: !2075, inlinedAt: !2048)
!2078 = !DILocation(line: 235, column: 1, scope: !606, inlinedAt: !2048)
!2079 = !DILocation(line: 0, scope: !606, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 358, column: 27, scope: !2049)
!2081 = !DILocation(line: 199, column: 29, scope: !606, inlinedAt: !2080)
!2082 = !DILocation(line: 201, column: 19, scope: !2053, inlinedAt: !2080)
!2083 = !DILocation(line: 201, column: 7, scope: !606, inlinedAt: !2080)
!2084 = !DILocation(line: 229, column: 3, scope: !606, inlinedAt: !2080)
!2085 = !DILocation(line: 230, column: 3, scope: !606, inlinedAt: !2080)
!2086 = !DILocation(line: 230, column: 13, scope: !606, inlinedAt: !2080)
!2087 = !DILocation(line: 0, scope: !2059, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 230, column: 18, scope: !606, inlinedAt: !2080)
!2089 = !DILocation(line: 0, scope: !2067, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2088)
!2091 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2090)
!2092 = !DILocation(line: 231, column: 7, scope: !2075, inlinedAt: !2080)
!2093 = !DILocation(line: 231, column: 40, scope: !2075, inlinedAt: !2080)
!2094 = !DILocation(line: 231, column: 45, scope: !2075, inlinedAt: !2080)
!2095 = !DILocation(line: 235, column: 1, scope: !606, inlinedAt: !2080)
!2096 = !DILocation(line: 360, column: 13, scope: !1992)
!2097 = !DILocation(line: 0, scope: !1990)
!2098 = !DILocation(line: 361, column: 45, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1990, file: !545, line: 361, column: 11)
!2100 = !DILocation(line: 361, column: 11, scope: !1990)
!2101 = !DILocation(line: 362, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !545, line: 362, column: 13)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !545, line: 362, column: 13)
!2104 = !DILocation(line: 362, column: 13, scope: !2103)
!2105 = !DILocation(line: 361, column: 52, scope: !2099)
!2106 = distinct !{!2106, !2100, !2107, !956}
!2107 = !DILocation(line: 362, column: 13, scope: !1990)
!2108 = !DILocation(line: 260, column: 10, scope: !1964)
!2109 = !DILocation(line: 365, column: 28, scope: !1992)
!2110 = !DILocation(line: 367, column: 7, scope: !1993)
!2111 = !DILocation(line: 370, column: 7, scope: !1993)
!2112 = !DILocation(line: 376, column: 11, scope: !1993)
!2113 = !DILocation(line: 381, column: 11, scope: !1993)
!2114 = !DILocation(line: 382, column: 9, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !545, line: 382, column: 9)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !545, line: 382, column: 9)
!2117 = distinct !DILexicalBlock(scope: !1993, file: !545, line: 381, column: 11)
!2118 = !DILocation(line: 382, column: 9, scope: !2116)
!2119 = !DILocation(line: 389, column: 7, scope: !1993)
!2120 = !DILocation(line: 392, column: 7, scope: !1993)
!2121 = !DILocation(line: 0, scope: !1995)
!2122 = !DILocation(line: 395, column: 8, scope: !1995)
!2123 = !DILocation(line: 395, scope: !1995)
!2124 = !DILocation(line: 395, column: 34, scope: !1998)
!2125 = !DILocation(line: 395, column: 26, scope: !1998)
!2126 = !DILocation(line: 395, column: 48, scope: !1998)
!2127 = !DILocation(line: 395, column: 55, scope: !1998)
!2128 = !DILocation(line: 395, column: 3, scope: !1995)
!2129 = !DILocation(line: 395, column: 67, scope: !1998)
!2130 = !DILocation(line: 0, scope: !1997)
!2131 = !DILocation(line: 402, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 401, column: 11)
!2133 = !DILocation(line: 404, column: 17, scope: !2132)
!2134 = !DILocation(line: 405, column: 39, scope: !2132)
!2135 = !DILocation(line: 409, column: 32, scope: !2132)
!2136 = !DILocation(line: 405, column: 19, scope: !2132)
!2137 = !DILocation(line: 405, column: 15, scope: !2132)
!2138 = !DILocation(line: 410, column: 11, scope: !2132)
!2139 = !DILocation(line: 410, column: 25, scope: !2132)
!2140 = !DILocalVariable(name: "__s1", arg: 1, scope: !2141, file: !922, line: 974, type: !1054)
!2141 = distinct !DISubprogram(name: "memeq", scope: !922, file: !922, line: 974, type: !1785, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2142)
!2142 = !{!2140, !2143, !2144}
!2143 = !DILocalVariable(name: "__s2", arg: 2, scope: !2141, file: !922, line: 974, type: !1054)
!2144 = !DILocalVariable(name: "__n", arg: 3, scope: !2141, file: !922, line: 974, type: !135)
!2145 = !DILocation(line: 0, scope: !2141, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 410, column: 14, scope: !2132)
!2147 = !DILocation(line: 976, column: 11, scope: !2141, inlinedAt: !2146)
!2148 = !DILocation(line: 976, column: 10, scope: !2141, inlinedAt: !2146)
!2149 = !DILocation(line: 401, column: 11, scope: !1997)
!2150 = !DILocation(line: 417, column: 25, scope: !1997)
!2151 = !DILocation(line: 418, column: 7, scope: !1997)
!2152 = !DILocation(line: 421, column: 15, scope: !2004)
!2153 = !DILocation(line: 423, column: 15, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !545, line: 423, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !545, line: 422, column: 13)
!2156 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 421, column: 15)
!2157 = !DILocation(line: 423, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !545, line: 423, column: 15)
!2159 = !DILocation(line: 423, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !545, line: 423, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !545, line: 423, column: 15)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !545, line: 423, column: 15)
!2163 = !DILocation(line: 423, column: 15, scope: !2161)
!2164 = !DILocation(line: 423, column: 15, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !545, line: 423, column: 15)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !545, line: 423, column: 15)
!2167 = !DILocation(line: 423, column: 15, scope: !2166)
!2168 = !DILocation(line: 423, column: 15, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !545, line: 423, column: 15)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !545, line: 423, column: 15)
!2171 = !DILocation(line: 423, column: 15, scope: !2170)
!2172 = !DILocation(line: 423, column: 15, scope: !2162)
!2173 = !DILocation(line: 423, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !545, line: 423, column: 15)
!2175 = distinct !DILexicalBlock(scope: !2154, file: !545, line: 423, column: 15)
!2176 = !DILocation(line: 423, column: 15, scope: !2175)
!2177 = !DILocation(line: 431, column: 19, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2155, file: !545, line: 430, column: 19)
!2179 = !DILocation(line: 431, column: 24, scope: !2178)
!2180 = !DILocation(line: 431, column: 28, scope: !2178)
!2181 = !DILocation(line: 431, column: 38, scope: !2178)
!2182 = !DILocation(line: 431, column: 48, scope: !2178)
!2183 = !DILocation(line: 431, column: 59, scope: !2178)
!2184 = !DILocation(line: 433, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !545, line: 433, column: 19)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !545, line: 433, column: 19)
!2187 = distinct !DILexicalBlock(scope: !2178, file: !545, line: 432, column: 17)
!2188 = !DILocation(line: 433, column: 19, scope: !2186)
!2189 = !DILocation(line: 434, column: 19, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !545, line: 434, column: 19)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !545, line: 434, column: 19)
!2192 = !DILocation(line: 434, column: 19, scope: !2191)
!2193 = !DILocation(line: 435, column: 17, scope: !2187)
!2194 = !DILocation(line: 442, column: 20, scope: !2156)
!2195 = !DILocation(line: 447, column: 11, scope: !2004)
!2196 = !DILocation(line: 450, column: 19, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 448, column: 13)
!2198 = !DILocation(line: 456, column: 19, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2197, file: !545, line: 455, column: 19)
!2200 = !DILocation(line: 456, column: 24, scope: !2199)
!2201 = !DILocation(line: 456, column: 28, scope: !2199)
!2202 = !DILocation(line: 456, column: 38, scope: !2199)
!2203 = !DILocation(line: 456, column: 47, scope: !2199)
!2204 = !DILocation(line: 456, column: 41, scope: !2199)
!2205 = !DILocation(line: 456, column: 52, scope: !2199)
!2206 = !DILocation(line: 455, column: 19, scope: !2197)
!2207 = !DILocation(line: 457, column: 25, scope: !2199)
!2208 = !DILocation(line: 457, column: 17, scope: !2199)
!2209 = !DILocation(line: 464, column: 25, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2199, file: !545, line: 458, column: 19)
!2211 = !DILocation(line: 468, column: 21, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !545, line: 468, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !545, line: 468, column: 21)
!2214 = !DILocation(line: 468, column: 21, scope: !2213)
!2215 = !DILocation(line: 469, column: 21, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !545, line: 469, column: 21)
!2217 = distinct !DILexicalBlock(scope: !2210, file: !545, line: 469, column: 21)
!2218 = !DILocation(line: 469, column: 21, scope: !2217)
!2219 = !DILocation(line: 470, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !545, line: 470, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2210, file: !545, line: 470, column: 21)
!2222 = !DILocation(line: 470, column: 21, scope: !2221)
!2223 = !DILocation(line: 471, column: 21, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !545, line: 471, column: 21)
!2225 = distinct !DILexicalBlock(scope: !2210, file: !545, line: 471, column: 21)
!2226 = !DILocation(line: 471, column: 21, scope: !2225)
!2227 = !DILocation(line: 472, column: 21, scope: !2210)
!2228 = !DILocation(line: 482, column: 33, scope: !2027)
!2229 = !DILocation(line: 483, column: 33, scope: !2027)
!2230 = !DILocation(line: 485, column: 33, scope: !2027)
!2231 = !DILocation(line: 486, column: 33, scope: !2027)
!2232 = !DILocation(line: 487, column: 33, scope: !2027)
!2233 = !DILocation(line: 490, column: 17, scope: !2027)
!2234 = !DILocation(line: 492, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !545, line: 491, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2027, file: !545, line: 490, column: 17)
!2237 = !DILocation(line: 499, column: 35, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2027, file: !545, line: 499, column: 17)
!2239 = !DILocation(line: 0, scope: !2027)
!2240 = !DILocation(line: 502, column: 11, scope: !2027)
!2241 = !DILocation(line: 504, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2027, file: !545, line: 503, column: 17)
!2243 = !DILocation(line: 507, column: 11, scope: !2027)
!2244 = !DILocation(line: 508, column: 17, scope: !2027)
!2245 = !DILocation(line: 517, column: 15, scope: !2004)
!2246 = !DILocation(line: 517, column: 40, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 517, column: 15)
!2248 = !DILocation(line: 517, column: 47, scope: !2247)
!2249 = !DILocation(line: 517, column: 18, scope: !2247)
!2250 = !DILocation(line: 521, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 521, column: 15)
!2252 = !DILocation(line: 521, column: 15, scope: !2004)
!2253 = !DILocation(line: 525, column: 11, scope: !2004)
!2254 = !DILocation(line: 537, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 536, column: 15)
!2256 = !DILocation(line: 536, column: 15, scope: !2004)
!2257 = !DILocation(line: 544, column: 15, scope: !2004)
!2258 = !DILocation(line: 546, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !545, line: 545, column: 13)
!2260 = distinct !DILexicalBlock(scope: !2004, file: !545, line: 544, column: 15)
!2261 = !DILocation(line: 549, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !545, line: 549, column: 19)
!2263 = !DILocation(line: 549, column: 30, scope: !2262)
!2264 = !DILocation(line: 558, column: 15, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !545, line: 558, column: 15)
!2266 = distinct !DILexicalBlock(scope: !2259, file: !545, line: 558, column: 15)
!2267 = !DILocation(line: 558, column: 15, scope: !2266)
!2268 = !DILocation(line: 559, column: 15, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !545, line: 559, column: 15)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !545, line: 559, column: 15)
!2271 = !DILocation(line: 559, column: 15, scope: !2270)
!2272 = !DILocation(line: 560, column: 15, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !545, line: 560, column: 15)
!2274 = distinct !DILexicalBlock(scope: !2259, file: !545, line: 560, column: 15)
!2275 = !DILocation(line: 560, column: 15, scope: !2274)
!2276 = !DILocation(line: 562, column: 13, scope: !2259)
!2277 = !DILocation(line: 602, column: 17, scope: !2003)
!2278 = !DILocation(line: 0, scope: !2003)
!2279 = !DILocation(line: 605, column: 29, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2008, file: !545, line: 603, column: 15)
!2281 = !DILocation(line: 605, column: 41, scope: !2280)
!2282 = !DILocation(line: 606, column: 15, scope: !2280)
!2283 = !DILocation(line: 609, column: 17, scope: !2007)
!2284 = !DILocation(line: 609, column: 27, scope: !2007)
!2285 = !DILocation(line: 0, scope: !2059, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 609, column: 32, scope: !2007)
!2287 = !DILocation(line: 0, scope: !2067, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2286)
!2289 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2288)
!2290 = !DILocation(line: 613, column: 29, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2007, file: !545, line: 613, column: 21)
!2292 = !DILocation(line: 613, column: 21, scope: !2007)
!2293 = !DILocation(line: 614, column: 29, scope: !2291)
!2294 = !DILocation(line: 614, column: 19, scope: !2291)
!2295 = !DILocation(line: 618, column: 21, scope: !2010)
!2296 = !DILocation(line: 620, column: 54, scope: !2010)
!2297 = !DILocation(line: 0, scope: !2010)
!2298 = !DILocation(line: 619, column: 36, scope: !2010)
!2299 = !DILocation(line: 621, column: 25, scope: !2010)
!2300 = !DILocation(line: 631, column: 38, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2019, file: !545, line: 629, column: 23)
!2302 = !DILocation(line: 631, column: 48, scope: !2301)
!2303 = !DILocation(line: 626, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2020, file: !545, line: 624, column: 23)
!2305 = !DILocation(line: 631, column: 51, scope: !2301)
!2306 = !DILocation(line: 631, column: 25, scope: !2301)
!2307 = !DILocation(line: 632, column: 28, scope: !2301)
!2308 = !DILocation(line: 631, column: 34, scope: !2301)
!2309 = distinct !{!2309, !2306, !2307, !956}
!2310 = !DILocation(line: 646, column: 29, scope: !2017)
!2311 = !DILocation(line: 0, scope: !2015)
!2312 = !DILocation(line: 649, column: 49, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2015, file: !545, line: 648, column: 29)
!2314 = !DILocation(line: 649, column: 39, scope: !2313)
!2315 = !DILocation(line: 649, column: 31, scope: !2313)
!2316 = !DILocation(line: 648, column: 60, scope: !2313)
!2317 = !DILocation(line: 648, column: 50, scope: !2313)
!2318 = !DILocation(line: 648, column: 29, scope: !2015)
!2319 = distinct !{!2319, !2318, !2320, !956}
!2320 = !DILocation(line: 654, column: 33, scope: !2015)
!2321 = !DILocation(line: 657, column: 43, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2018, file: !545, line: 657, column: 29)
!2323 = !DILocalVariable(name: "wc", arg: 1, scope: !2324, file: !2325, line: 865, type: !2328)
!2324 = distinct !DISubprogram(name: "c32isprint", scope: !2325, file: !2325, line: 865, type: !2326, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2330)
!2325 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!74, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2329, line: 20, baseType: !69)
!2329 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2330 = !{!2323}
!2331 = !DILocation(line: 0, scope: !2324, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 657, column: 31, scope: !2322)
!2333 = !DILocation(line: 871, column: 10, scope: !2324, inlinedAt: !2332)
!2334 = !DILocation(line: 657, column: 31, scope: !2322)
!2335 = !DILocation(line: 664, column: 23, scope: !2010)
!2336 = !DILocation(line: 665, column: 19, scope: !2011)
!2337 = !DILocation(line: 666, column: 15, scope: !2008)
!2338 = !DILocation(line: 753, column: 2, scope: !1964)
!2339 = !DILocation(line: 756, column: 51, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 756, column: 7)
!2341 = !DILocation(line: 0, scope: !2008)
!2342 = !DILocation(line: 670, column: 19, scope: !2024)
!2343 = !DILocation(line: 670, column: 23, scope: !2024)
!2344 = !DILocation(line: 674, column: 33, scope: !2023)
!2345 = !DILocation(line: 0, scope: !2023)
!2346 = !DILocation(line: 676, column: 17, scope: !2023)
!2347 = !DILocation(line: 398, column: 12, scope: !1997)
!2348 = !DILocation(line: 678, column: 43, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !545, line: 678, column: 25)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !545, line: 677, column: 19)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !545, line: 676, column: 17)
!2352 = distinct !DILexicalBlock(scope: !2023, file: !545, line: 676, column: 17)
!2353 = !DILocation(line: 680, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !545, line: 680, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !545, line: 679, column: 23)
!2356 = !DILocation(line: 680, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !545, line: 680, column: 25)
!2358 = !DILocation(line: 680, column: 25, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !545, line: 680, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !545, line: 680, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !545, line: 680, column: 25)
!2362 = !DILocation(line: 680, column: 25, scope: !2360)
!2363 = !DILocation(line: 680, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !545, line: 680, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !545, line: 680, column: 25)
!2366 = !DILocation(line: 680, column: 25, scope: !2365)
!2367 = !DILocation(line: 680, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !545, line: 680, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !545, line: 680, column: 25)
!2370 = !DILocation(line: 680, column: 25, scope: !2369)
!2371 = !DILocation(line: 680, column: 25, scope: !2361)
!2372 = !DILocation(line: 680, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !545, line: 680, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2354, file: !545, line: 680, column: 25)
!2375 = !DILocation(line: 680, column: 25, scope: !2374)
!2376 = !DILocation(line: 681, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !545, line: 681, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !545, line: 681, column: 25)
!2379 = !DILocation(line: 681, column: 25, scope: !2378)
!2380 = !DILocation(line: 682, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !545, line: 682, column: 25)
!2382 = distinct !DILexicalBlock(scope: !2355, file: !545, line: 682, column: 25)
!2383 = !DILocation(line: 682, column: 25, scope: !2382)
!2384 = !DILocation(line: 683, column: 38, scope: !2355)
!2385 = !DILocation(line: 683, column: 33, scope: !2355)
!2386 = !DILocation(line: 684, column: 23, scope: !2355)
!2387 = !DILocation(line: 685, column: 30, scope: !2349)
!2388 = !DILocation(line: 687, column: 25, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !545, line: 687, column: 25)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !545, line: 687, column: 25)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !545, line: 686, column: 23)
!2392 = distinct !DILexicalBlock(scope: !2349, file: !545, line: 685, column: 30)
!2393 = !DILocation(line: 687, column: 25, scope: !2390)
!2394 = !DILocation(line: 689, column: 23, scope: !2391)
!2395 = !DILocation(line: 690, column: 35, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2350, file: !545, line: 690, column: 25)
!2397 = !DILocation(line: 690, column: 30, scope: !2396)
!2398 = !DILocation(line: 690, column: 25, scope: !2350)
!2399 = !DILocation(line: 692, column: 21, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !545, line: 692, column: 21)
!2401 = distinct !DILexicalBlock(scope: !2350, file: !545, line: 692, column: 21)
!2402 = !DILocation(line: 692, column: 21, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !545, line: 692, column: 21)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !545, line: 692, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2400, file: !545, line: 692, column: 21)
!2406 = !DILocation(line: 692, column: 21, scope: !2404)
!2407 = !DILocation(line: 692, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !545, line: 692, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !545, line: 692, column: 21)
!2410 = !DILocation(line: 692, column: 21, scope: !2409)
!2411 = !DILocation(line: 692, column: 21, scope: !2405)
!2412 = !DILocation(line: 0, scope: !2350)
!2413 = !DILocation(line: 693, column: 21, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !545, line: 693, column: 21)
!2415 = distinct !DILexicalBlock(scope: !2350, file: !545, line: 693, column: 21)
!2416 = !DILocation(line: 693, column: 21, scope: !2415)
!2417 = !DILocation(line: 694, column: 25, scope: !2350)
!2418 = !DILocation(line: 676, column: 17, scope: !2351)
!2419 = distinct !{!2419, !2420, !2421}
!2420 = !DILocation(line: 676, column: 17, scope: !2352)
!2421 = !DILocation(line: 695, column: 19, scope: !2352)
!2422 = !DILocation(line: 409, column: 30, scope: !2132)
!2423 = !DILocation(line: 702, column: 34, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 702, column: 11)
!2425 = !DILocation(line: 704, column: 14, scope: !2424)
!2426 = !DILocation(line: 705, column: 14, scope: !2424)
!2427 = !DILocation(line: 705, column: 35, scope: !2424)
!2428 = !DILocation(line: 705, column: 17, scope: !2424)
!2429 = !DILocation(line: 705, column: 47, scope: !2424)
!2430 = !DILocation(line: 705, column: 65, scope: !2424)
!2431 = !DILocation(line: 706, column: 11, scope: !2424)
!2432 = !DILocation(line: 702, column: 11, scope: !1997)
!2433 = !DILocation(line: 395, column: 15, scope: !1995)
!2434 = !DILocation(line: 709, column: 5, scope: !1997)
!2435 = !DILocation(line: 710, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 710, column: 7)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2436, file: !545, line: 710, column: 7)
!2439 = !DILocation(line: 710, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !545, line: 710, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !545, line: 710, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !545, line: 710, column: 7)
!2443 = !DILocation(line: 710, column: 7, scope: !2441)
!2444 = !DILocation(line: 710, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !545, line: 710, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !545, line: 710, column: 7)
!2447 = !DILocation(line: 710, column: 7, scope: !2446)
!2448 = !DILocation(line: 710, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !545, line: 710, column: 7)
!2450 = distinct !DILexicalBlock(scope: !2442, file: !545, line: 710, column: 7)
!2451 = !DILocation(line: 710, column: 7, scope: !2450)
!2452 = !DILocation(line: 710, column: 7, scope: !2442)
!2453 = !DILocation(line: 710, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !545, line: 710, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2436, file: !545, line: 710, column: 7)
!2456 = !DILocation(line: 710, column: 7, scope: !2455)
!2457 = !DILocation(line: 712, column: 5, scope: !1997)
!2458 = !DILocation(line: 713, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !545, line: 713, column: 7)
!2460 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 713, column: 7)
!2461 = !DILocation(line: 417, column: 21, scope: !1997)
!2462 = !DILocation(line: 713, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !545, line: 713, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !545, line: 713, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !545, line: 713, column: 7)
!2466 = !DILocation(line: 713, column: 7, scope: !2464)
!2467 = !DILocation(line: 713, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !545, line: 713, column: 7)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !545, line: 713, column: 7)
!2470 = !DILocation(line: 713, column: 7, scope: !2469)
!2471 = !DILocation(line: 713, column: 7, scope: !2465)
!2472 = !DILocation(line: 714, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !545, line: 714, column: 7)
!2474 = distinct !DILexicalBlock(scope: !1997, file: !545, line: 714, column: 7)
!2475 = !DILocation(line: 714, column: 7, scope: !2474)
!2476 = !DILocation(line: 716, column: 11, scope: !1997)
!2477 = !DILocation(line: 718, column: 5, scope: !1998)
!2478 = !DILocation(line: 395, column: 82, scope: !1998)
!2479 = !DILocation(line: 395, column: 3, scope: !1998)
!2480 = distinct !{!2480, !2128, !2481, !956}
!2481 = !DILocation(line: 718, column: 5, scope: !1995)
!2482 = !DILocation(line: 720, column: 11, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 720, column: 7)
!2484 = !DILocation(line: 720, column: 16, scope: !2483)
!2485 = !DILocation(line: 728, column: 51, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 728, column: 7)
!2487 = !DILocation(line: 731, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !545, line: 730, column: 5)
!2489 = !DILocation(line: 732, column: 16, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2488, file: !545, line: 731, column: 11)
!2491 = !DILocation(line: 732, column: 9, scope: !2490)
!2492 = !DILocation(line: 736, column: 18, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !545, line: 736, column: 16)
!2494 = !DILocation(line: 736, column: 29, scope: !2493)
!2495 = !DILocation(line: 745, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 745, column: 7)
!2497 = !DILocation(line: 745, column: 20, scope: !2496)
!2498 = !DILocation(line: 746, column: 12, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !545, line: 746, column: 5)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !545, line: 746, column: 5)
!2501 = !DILocation(line: 746, column: 5, scope: !2500)
!2502 = !DILocation(line: 747, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !545, line: 747, column: 7)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !545, line: 747, column: 7)
!2505 = !DILocation(line: 747, column: 7, scope: !2504)
!2506 = !DILocation(line: 746, column: 39, scope: !2499)
!2507 = distinct !{!2507, !2501, !2508, !956}
!2508 = !DILocation(line: 747, column: 7, scope: !2500)
!2509 = !DILocation(line: 749, column: 11, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !1964, file: !545, line: 749, column: 7)
!2511 = !DILocation(line: 749, column: 7, scope: !1964)
!2512 = !DILocation(line: 750, column: 5, scope: !2510)
!2513 = !DILocation(line: 750, column: 17, scope: !2510)
!2514 = !DILocation(line: 756, column: 21, scope: !2340)
!2515 = !DILocation(line: 760, column: 42, scope: !1964)
!2516 = !DILocation(line: 758, column: 10, scope: !1964)
!2517 = !DILocation(line: 758, column: 3, scope: !1964)
!2518 = !DILocation(line: 762, column: 1, scope: !1964)
!2519 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1030, file: !1030, line: 98, type: !2520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!2520 = !DISubroutineType(types: !767)
!2521 = !DISubprogram(name: "iswprint", scope: !2522, file: !2522, line: 120, type: !2326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!2522 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2523 = distinct !DISubprogram(name: "quotearg_alloc", scope: !545, file: !545, line: 788, type: !2524, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!132, !138, !135, !1857}
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2523, file: !545, line: 788, type: !138)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2523, file: !545, line: 788, type: !135)
!2529 = !DILocalVariable(name: "o", arg: 3, scope: !2523, file: !545, line: 789, type: !1857)
!2530 = !DILocation(line: 0, scope: !2523)
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2532, file: !545, line: 801, type: !138)
!2532 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !545, file: !545, line: 801, type: !2533, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!132, !138, !135, !781, !1857}
!2535 = !{!2531, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543}
!2536 = !DILocalVariable(name: "argsize", arg: 2, scope: !2532, file: !545, line: 801, type: !135)
!2537 = !DILocalVariable(name: "size", arg: 3, scope: !2532, file: !545, line: 801, type: !781)
!2538 = !DILocalVariable(name: "o", arg: 4, scope: !2532, file: !545, line: 802, type: !1857)
!2539 = !DILocalVariable(name: "p", scope: !2532, file: !545, line: 804, type: !1857)
!2540 = !DILocalVariable(name: "saved_errno", scope: !2532, file: !545, line: 805, type: !74)
!2541 = !DILocalVariable(name: "flags", scope: !2532, file: !545, line: 807, type: !74)
!2542 = !DILocalVariable(name: "bufsize", scope: !2532, file: !545, line: 808, type: !135)
!2543 = !DILocalVariable(name: "buf", scope: !2532, file: !545, line: 812, type: !132)
!2544 = !DILocation(line: 0, scope: !2532, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 791, column: 10, scope: !2523)
!2546 = !DILocation(line: 804, column: 37, scope: !2532, inlinedAt: !2545)
!2547 = !DILocation(line: 805, column: 21, scope: !2532, inlinedAt: !2545)
!2548 = !DILocation(line: 807, column: 18, scope: !2532, inlinedAt: !2545)
!2549 = !DILocation(line: 807, column: 24, scope: !2532, inlinedAt: !2545)
!2550 = !DILocation(line: 808, column: 72, scope: !2532, inlinedAt: !2545)
!2551 = !DILocation(line: 809, column: 56, scope: !2532, inlinedAt: !2545)
!2552 = !DILocation(line: 810, column: 49, scope: !2532, inlinedAt: !2545)
!2553 = !DILocation(line: 811, column: 49, scope: !2532, inlinedAt: !2545)
!2554 = !DILocation(line: 808, column: 20, scope: !2532, inlinedAt: !2545)
!2555 = !DILocation(line: 811, column: 62, scope: !2532, inlinedAt: !2545)
!2556 = !DILocation(line: 812, column: 15, scope: !2532, inlinedAt: !2545)
!2557 = !DILocation(line: 813, column: 60, scope: !2532, inlinedAt: !2545)
!2558 = !DILocation(line: 815, column: 32, scope: !2532, inlinedAt: !2545)
!2559 = !DILocation(line: 815, column: 47, scope: !2532, inlinedAt: !2545)
!2560 = !DILocation(line: 813, column: 3, scope: !2532, inlinedAt: !2545)
!2561 = !DILocation(line: 816, column: 9, scope: !2532, inlinedAt: !2545)
!2562 = !DILocation(line: 791, column: 3, scope: !2523)
!2563 = !DILocation(line: 0, scope: !2532)
!2564 = !DILocation(line: 804, column: 37, scope: !2532)
!2565 = !DILocation(line: 805, column: 21, scope: !2532)
!2566 = !DILocation(line: 807, column: 18, scope: !2532)
!2567 = !DILocation(line: 807, column: 27, scope: !2532)
!2568 = !DILocation(line: 807, column: 24, scope: !2532)
!2569 = !DILocation(line: 808, column: 72, scope: !2532)
!2570 = !DILocation(line: 809, column: 56, scope: !2532)
!2571 = !DILocation(line: 810, column: 49, scope: !2532)
!2572 = !DILocation(line: 811, column: 49, scope: !2532)
!2573 = !DILocation(line: 808, column: 20, scope: !2532)
!2574 = !DILocation(line: 811, column: 62, scope: !2532)
!2575 = !DILocation(line: 812, column: 15, scope: !2532)
!2576 = !DILocation(line: 813, column: 60, scope: !2532)
!2577 = !DILocation(line: 815, column: 32, scope: !2532)
!2578 = !DILocation(line: 815, column: 47, scope: !2532)
!2579 = !DILocation(line: 813, column: 3, scope: !2532)
!2580 = !DILocation(line: 816, column: 9, scope: !2532)
!2581 = !DILocation(line: 817, column: 7, scope: !2532)
!2582 = !DILocation(line: 818, column: 11, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2532, file: !545, line: 817, column: 7)
!2584 = !{!1616, !1616, i64 0}
!2585 = !DILocation(line: 818, column: 5, scope: !2583)
!2586 = !DILocation(line: 819, column: 3, scope: !2532)
!2587 = distinct !DISubprogram(name: "quotearg_free", scope: !545, file: !545, line: 837, type: !484, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2588)
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "sv", scope: !2587, file: !545, line: 839, type: !629)
!2590 = !DILocalVariable(name: "i", scope: !2591, file: !545, line: 840, type: !74)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !545, line: 840, column: 3)
!2592 = !DILocation(line: 839, column: 24, scope: !2587)
!2593 = !DILocation(line: 0, scope: !2587)
!2594 = !DILocation(line: 0, scope: !2591)
!2595 = !DILocation(line: 840, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !545, line: 840, column: 3)
!2597 = !DILocation(line: 840, column: 3, scope: !2591)
!2598 = !DILocation(line: 842, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2587, file: !545, line: 842, column: 7)
!2600 = !{!2601, !847, i64 8}
!2601 = !{!"slotvec", !1616, i64 0, !847, i64 8}
!2602 = !DILocation(line: 842, column: 17, scope: !2599)
!2603 = !DILocation(line: 842, column: 7, scope: !2587)
!2604 = !DILocation(line: 841, column: 17, scope: !2596)
!2605 = !DILocation(line: 841, column: 5, scope: !2596)
!2606 = !DILocation(line: 840, column: 32, scope: !2596)
!2607 = distinct !{!2607, !2597, !2608, !956}
!2608 = !DILocation(line: 841, column: 20, scope: !2591)
!2609 = !DILocation(line: 844, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2599, file: !545, line: 843, column: 5)
!2611 = !DILocation(line: 845, column: 21, scope: !2610)
!2612 = !{!2601, !1616, i64 0}
!2613 = !DILocation(line: 846, column: 20, scope: !2610)
!2614 = !DILocation(line: 847, column: 5, scope: !2610)
!2615 = !DILocation(line: 848, column: 10, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2587, file: !545, line: 848, column: 7)
!2617 = !DILocation(line: 848, column: 7, scope: !2587)
!2618 = !DILocation(line: 850, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !545, line: 849, column: 5)
!2620 = !DILocation(line: 851, column: 15, scope: !2619)
!2621 = !DILocation(line: 852, column: 5, scope: !2619)
!2622 = !DILocation(line: 853, column: 10, scope: !2587)
!2623 = !DILocation(line: 854, column: 1, scope: !2587)
!2624 = !DISubprogram(name: "free", scope: !1249, file: !1249, line: 786, type: !2625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !133}
!2627 = distinct !DISubprogram(name: "quotearg_n", scope: !545, file: !545, line: 919, type: !1023, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2628)
!2628 = !{!2629, !2630}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !545, line: 919, type: !74)
!2630 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !545, line: 919, type: !138)
!2631 = !DILocation(line: 0, scope: !2627)
!2632 = !DILocation(line: 921, column: 10, scope: !2627)
!2633 = !DILocation(line: 921, column: 3, scope: !2627)
!2634 = distinct !DISubprogram(name: "quotearg_n_options", scope: !545, file: !545, line: 866, type: !2635, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!132, !74, !138, !135, !1857}
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2648, !2649, !2651, !2652, !2653}
!2638 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !545, line: 866, type: !74)
!2639 = !DILocalVariable(name: "arg", arg: 2, scope: !2634, file: !545, line: 866, type: !138)
!2640 = !DILocalVariable(name: "argsize", arg: 3, scope: !2634, file: !545, line: 866, type: !135)
!2641 = !DILocalVariable(name: "options", arg: 4, scope: !2634, file: !545, line: 867, type: !1857)
!2642 = !DILocalVariable(name: "saved_errno", scope: !2634, file: !545, line: 869, type: !74)
!2643 = !DILocalVariable(name: "sv", scope: !2634, file: !545, line: 871, type: !629)
!2644 = !DILocalVariable(name: "nslots_max", scope: !2634, file: !545, line: 873, type: !74)
!2645 = !DILocalVariable(name: "preallocated", scope: !2646, file: !545, line: 879, type: !176)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !545, line: 878, column: 5)
!2647 = distinct !DILexicalBlock(scope: !2634, file: !545, line: 877, column: 7)
!2648 = !DILocalVariable(name: "new_nslots", scope: !2646, file: !545, line: 880, type: !794)
!2649 = !DILocalVariable(name: "size", scope: !2650, file: !545, line: 891, type: !135)
!2650 = distinct !DILexicalBlock(scope: !2634, file: !545, line: 890, column: 3)
!2651 = !DILocalVariable(name: "val", scope: !2650, file: !545, line: 892, type: !132)
!2652 = !DILocalVariable(name: "flags", scope: !2650, file: !545, line: 894, type: !74)
!2653 = !DILocalVariable(name: "qsize", scope: !2650, file: !545, line: 895, type: !135)
!2654 = !DILocation(line: 0, scope: !2634)
!2655 = !DILocation(line: 869, column: 21, scope: !2634)
!2656 = !DILocation(line: 871, column: 24, scope: !2634)
!2657 = !DILocation(line: 874, column: 17, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2634, file: !545, line: 874, column: 7)
!2659 = !DILocation(line: 875, column: 5, scope: !2658)
!2660 = !DILocation(line: 877, column: 7, scope: !2647)
!2661 = !DILocation(line: 877, column: 14, scope: !2647)
!2662 = !DILocation(line: 877, column: 7, scope: !2634)
!2663 = !DILocation(line: 879, column: 31, scope: !2646)
!2664 = !DILocation(line: 0, scope: !2646)
!2665 = !DILocation(line: 880, column: 7, scope: !2646)
!2666 = !DILocation(line: 880, column: 26, scope: !2646)
!2667 = !DILocation(line: 880, column: 13, scope: !2646)
!2668 = !DILocation(line: 882, column: 31, scope: !2646)
!2669 = !DILocation(line: 883, column: 33, scope: !2646)
!2670 = !DILocation(line: 883, column: 42, scope: !2646)
!2671 = !DILocation(line: 883, column: 31, scope: !2646)
!2672 = !DILocation(line: 882, column: 22, scope: !2646)
!2673 = !DILocation(line: 882, column: 15, scope: !2646)
!2674 = !DILocation(line: 884, column: 11, scope: !2646)
!2675 = !DILocation(line: 885, column: 15, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2646, file: !545, line: 884, column: 11)
!2677 = !{i64 0, i64 8, !2584, i64 8, i64 8, !846}
!2678 = !DILocation(line: 885, column: 9, scope: !2676)
!2679 = !DILocation(line: 886, column: 20, scope: !2646)
!2680 = !DILocation(line: 886, column: 18, scope: !2646)
!2681 = !DILocation(line: 886, column: 32, scope: !2646)
!2682 = !DILocation(line: 886, column: 43, scope: !2646)
!2683 = !DILocation(line: 886, column: 53, scope: !2646)
!2684 = !DILocation(line: 0, scope: !2067, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 886, column: 7, scope: !2646)
!2686 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2685)
!2687 = !DILocation(line: 887, column: 16, scope: !2646)
!2688 = !DILocation(line: 887, column: 14, scope: !2646)
!2689 = !DILocation(line: 888, column: 5, scope: !2647)
!2690 = !DILocation(line: 888, column: 5, scope: !2646)
!2691 = !DILocation(line: 891, column: 19, scope: !2650)
!2692 = !DILocation(line: 891, column: 25, scope: !2650)
!2693 = !DILocation(line: 0, scope: !2650)
!2694 = !DILocation(line: 892, column: 23, scope: !2650)
!2695 = !DILocation(line: 894, column: 26, scope: !2650)
!2696 = !DILocation(line: 894, column: 32, scope: !2650)
!2697 = !DILocation(line: 896, column: 55, scope: !2650)
!2698 = !DILocation(line: 897, column: 55, scope: !2650)
!2699 = !DILocation(line: 898, column: 55, scope: !2650)
!2700 = !DILocation(line: 899, column: 55, scope: !2650)
!2701 = !DILocation(line: 895, column: 20, scope: !2650)
!2702 = !DILocation(line: 901, column: 14, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2650, file: !545, line: 901, column: 9)
!2704 = !DILocation(line: 901, column: 9, scope: !2650)
!2705 = !DILocation(line: 903, column: 35, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !545, line: 902, column: 7)
!2707 = !DILocation(line: 903, column: 20, scope: !2706)
!2708 = !DILocation(line: 904, column: 17, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !545, line: 904, column: 13)
!2710 = !DILocation(line: 904, column: 13, scope: !2706)
!2711 = !DILocation(line: 905, column: 11, scope: !2709)
!2712 = !DILocation(line: 906, column: 27, scope: !2706)
!2713 = !DILocation(line: 906, column: 19, scope: !2706)
!2714 = !DILocation(line: 907, column: 69, scope: !2706)
!2715 = !DILocation(line: 909, column: 44, scope: !2706)
!2716 = !DILocation(line: 910, column: 44, scope: !2706)
!2717 = !DILocation(line: 907, column: 9, scope: !2706)
!2718 = !DILocation(line: 911, column: 7, scope: !2706)
!2719 = !DILocation(line: 913, column: 11, scope: !2650)
!2720 = !DILocation(line: 914, column: 5, scope: !2650)
!2721 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !545, file: !545, line: 925, type: !2722, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!132, !74, !138, !135}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !545, line: 925, type: !74)
!2726 = !DILocalVariable(name: "arg", arg: 2, scope: !2721, file: !545, line: 925, type: !138)
!2727 = !DILocalVariable(name: "argsize", arg: 3, scope: !2721, file: !545, line: 925, type: !135)
!2728 = !DILocation(line: 0, scope: !2721)
!2729 = !DILocation(line: 927, column: 10, scope: !2721)
!2730 = !DILocation(line: 927, column: 3, scope: !2721)
!2731 = distinct !DISubprogram(name: "quotearg", scope: !545, file: !545, line: 931, type: !1032, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2732)
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !545, line: 931, type: !138)
!2734 = !DILocation(line: 0, scope: !2731)
!2735 = !DILocation(line: 0, scope: !2627, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 933, column: 10, scope: !2731)
!2737 = !DILocation(line: 921, column: 10, scope: !2627, inlinedAt: !2736)
!2738 = !DILocation(line: 933, column: 3, scope: !2731)
!2739 = distinct !DISubprogram(name: "quotearg_mem", scope: !545, file: !545, line: 937, type: !2740, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!132, !138, !135}
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !545, line: 937, type: !138)
!2744 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !545, line: 937, type: !135)
!2745 = !DILocation(line: 0, scope: !2739)
!2746 = !DILocation(line: 0, scope: !2721, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 939, column: 10, scope: !2739)
!2748 = !DILocation(line: 927, column: 10, scope: !2721, inlinedAt: !2747)
!2749 = !DILocation(line: 939, column: 3, scope: !2739)
!2750 = distinct !DISubprogram(name: "quotearg_n_style", scope: !545, file: !545, line: 943, type: !2751, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!132, !74, !93, !138}
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !545, line: 943, type: !74)
!2755 = !DILocalVariable(name: "s", arg: 2, scope: !2750, file: !545, line: 943, type: !93)
!2756 = !DILocalVariable(name: "arg", arg: 3, scope: !2750, file: !545, line: 943, type: !138)
!2757 = !DILocalVariable(name: "o", scope: !2750, file: !545, line: 945, type: !1858)
!2758 = !DILocation(line: 0, scope: !2750)
!2759 = !DILocation(line: 945, column: 3, scope: !2750)
!2760 = !DILocation(line: 945, column: 32, scope: !2750)
!2761 = !{!2762}
!2762 = distinct !{!2762, !2763, !"quoting_options_from_style: argument 0"}
!2763 = distinct !{!2763, !"quoting_options_from_style"}
!2764 = !DILocation(line: 945, column: 36, scope: !2750)
!2765 = !DILocalVariable(name: "style", arg: 1, scope: !2766, file: !545, line: 183, type: !93)
!2766 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !545, file: !545, line: 183, type: !2767, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!581, !93}
!2769 = !{!2765, !2770}
!2770 = !DILocalVariable(name: "o", scope: !2766, file: !545, line: 185, type: !581)
!2771 = !DILocation(line: 0, scope: !2766, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 945, column: 36, scope: !2750)
!2773 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2772)
!2774 = !DILocation(line: 186, column: 13, scope: !2775, inlinedAt: !2772)
!2775 = distinct !DILexicalBlock(scope: !2766, file: !545, line: 186, column: 7)
!2776 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2772)
!2777 = !DILocation(line: 187, column: 5, scope: !2775, inlinedAt: !2772)
!2778 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2772)
!2779 = !DILocation(line: 946, column: 10, scope: !2750)
!2780 = !DILocation(line: 947, column: 1, scope: !2750)
!2781 = !DILocation(line: 946, column: 3, scope: !2750)
!2782 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !545, file: !545, line: 950, type: !2783, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!132, !74, !93, !138, !135}
!2785 = !{!2786, !2787, !2788, !2789, !2790}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !545, line: 950, type: !74)
!2787 = !DILocalVariable(name: "s", arg: 2, scope: !2782, file: !545, line: 950, type: !93)
!2788 = !DILocalVariable(name: "arg", arg: 3, scope: !2782, file: !545, line: 951, type: !138)
!2789 = !DILocalVariable(name: "argsize", arg: 4, scope: !2782, file: !545, line: 951, type: !135)
!2790 = !DILocalVariable(name: "o", scope: !2782, file: !545, line: 953, type: !1858)
!2791 = !DILocation(line: 0, scope: !2782)
!2792 = !DILocation(line: 953, column: 3, scope: !2782)
!2793 = !DILocation(line: 953, column: 32, scope: !2782)
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"quoting_options_from_style: argument 0"}
!2796 = distinct !{!2796, !"quoting_options_from_style"}
!2797 = !DILocation(line: 953, column: 36, scope: !2782)
!2798 = !DILocation(line: 0, scope: !2766, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 953, column: 36, scope: !2782)
!2800 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2799)
!2801 = !DILocation(line: 186, column: 13, scope: !2775, inlinedAt: !2799)
!2802 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2799)
!2803 = !DILocation(line: 187, column: 5, scope: !2775, inlinedAt: !2799)
!2804 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2799)
!2805 = !DILocation(line: 954, column: 10, scope: !2782)
!2806 = !DILocation(line: 955, column: 1, scope: !2782)
!2807 = !DILocation(line: 954, column: 3, scope: !2782)
!2808 = distinct !DISubprogram(name: "quotearg_style", scope: !545, file: !545, line: 958, type: !2809, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!132, !93, !138}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "s", arg: 1, scope: !2808, file: !545, line: 958, type: !93)
!2813 = !DILocalVariable(name: "arg", arg: 2, scope: !2808, file: !545, line: 958, type: !138)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 0, scope: !2750, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 960, column: 10, scope: !2808)
!2817 = !DILocation(line: 945, column: 3, scope: !2750, inlinedAt: !2816)
!2818 = !DILocation(line: 945, column: 32, scope: !2750, inlinedAt: !2816)
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"quoting_options_from_style: argument 0"}
!2821 = distinct !{!2821, !"quoting_options_from_style"}
!2822 = !DILocation(line: 945, column: 36, scope: !2750, inlinedAt: !2816)
!2823 = !DILocation(line: 0, scope: !2766, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 945, column: 36, scope: !2750, inlinedAt: !2816)
!2825 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2824)
!2826 = !DILocation(line: 186, column: 13, scope: !2775, inlinedAt: !2824)
!2827 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2824)
!2828 = !DILocation(line: 187, column: 5, scope: !2775, inlinedAt: !2824)
!2829 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2824)
!2830 = !DILocation(line: 946, column: 10, scope: !2750, inlinedAt: !2816)
!2831 = !DILocation(line: 947, column: 1, scope: !2750, inlinedAt: !2816)
!2832 = !DILocation(line: 960, column: 3, scope: !2808)
!2833 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !545, file: !545, line: 964, type: !2834, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!132, !93, !138, !135}
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !545, line: 964, type: !93)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !545, line: 964, type: !138)
!2839 = !DILocalVariable(name: "argsize", arg: 3, scope: !2833, file: !545, line: 964, type: !135)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 0, scope: !2782, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 966, column: 10, scope: !2833)
!2843 = !DILocation(line: 953, column: 3, scope: !2782, inlinedAt: !2842)
!2844 = !DILocation(line: 953, column: 32, scope: !2782, inlinedAt: !2842)
!2845 = !{!2846}
!2846 = distinct !{!2846, !2847, !"quoting_options_from_style: argument 0"}
!2847 = distinct !{!2847, !"quoting_options_from_style"}
!2848 = !DILocation(line: 953, column: 36, scope: !2782, inlinedAt: !2842)
!2849 = !DILocation(line: 0, scope: !2766, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 953, column: 36, scope: !2782, inlinedAt: !2842)
!2851 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2850)
!2852 = !DILocation(line: 186, column: 13, scope: !2775, inlinedAt: !2850)
!2853 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2850)
!2854 = !DILocation(line: 187, column: 5, scope: !2775, inlinedAt: !2850)
!2855 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2850)
!2856 = !DILocation(line: 954, column: 10, scope: !2782, inlinedAt: !2842)
!2857 = !DILocation(line: 955, column: 1, scope: !2782, inlinedAt: !2842)
!2858 = !DILocation(line: 966, column: 3, scope: !2833)
!2859 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !545, file: !545, line: 970, type: !2860, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!132, !138, !135, !4}
!2862 = !{!2863, !2864, !2865, !2866}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !545, line: 970, type: !138)
!2864 = !DILocalVariable(name: "argsize", arg: 2, scope: !2859, file: !545, line: 970, type: !135)
!2865 = !DILocalVariable(name: "ch", arg: 3, scope: !2859, file: !545, line: 970, type: !4)
!2866 = !DILocalVariable(name: "options", scope: !2859, file: !545, line: 972, type: !581)
!2867 = !DILocation(line: 0, scope: !2859)
!2868 = !DILocation(line: 972, column: 3, scope: !2859)
!2869 = !DILocation(line: 972, column: 26, scope: !2859)
!2870 = !DILocation(line: 973, column: 13, scope: !2859)
!2871 = !{i64 0, i64 4, !918, i64 4, i64 4, !909, i64 8, i64 32, !918, i64 40, i64 8, !846, i64 48, i64 8, !846}
!2872 = !DILocation(line: 0, scope: !1877, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 974, column: 3, scope: !2859)
!2874 = !DILocation(line: 147, column: 41, scope: !1877, inlinedAt: !2873)
!2875 = !DILocation(line: 147, column: 62, scope: !1877, inlinedAt: !2873)
!2876 = !DILocation(line: 147, column: 57, scope: !1877, inlinedAt: !2873)
!2877 = !DILocation(line: 148, column: 15, scope: !1877, inlinedAt: !2873)
!2878 = !DILocation(line: 149, column: 21, scope: !1877, inlinedAt: !2873)
!2879 = !DILocation(line: 149, column: 24, scope: !1877, inlinedAt: !2873)
!2880 = !DILocation(line: 150, column: 19, scope: !1877, inlinedAt: !2873)
!2881 = !DILocation(line: 150, column: 24, scope: !1877, inlinedAt: !2873)
!2882 = !DILocation(line: 150, column: 6, scope: !1877, inlinedAt: !2873)
!2883 = !DILocation(line: 975, column: 10, scope: !2859)
!2884 = !DILocation(line: 976, column: 1, scope: !2859)
!2885 = !DILocation(line: 975, column: 3, scope: !2859)
!2886 = distinct !DISubprogram(name: "quotearg_char", scope: !545, file: !545, line: 979, type: !2887, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!132, !138, !4}
!2889 = !{!2890, !2891}
!2890 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !545, line: 979, type: !138)
!2891 = !DILocalVariable(name: "ch", arg: 2, scope: !2886, file: !545, line: 979, type: !4)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 0, scope: !2859, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 981, column: 10, scope: !2886)
!2895 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2894)
!2896 = !DILocation(line: 972, column: 26, scope: !2859, inlinedAt: !2894)
!2897 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2894)
!2898 = !DILocation(line: 0, scope: !1877, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2894)
!2900 = !DILocation(line: 147, column: 41, scope: !1877, inlinedAt: !2899)
!2901 = !DILocation(line: 147, column: 62, scope: !1877, inlinedAt: !2899)
!2902 = !DILocation(line: 147, column: 57, scope: !1877, inlinedAt: !2899)
!2903 = !DILocation(line: 148, column: 15, scope: !1877, inlinedAt: !2899)
!2904 = !DILocation(line: 149, column: 21, scope: !1877, inlinedAt: !2899)
!2905 = !DILocation(line: 149, column: 24, scope: !1877, inlinedAt: !2899)
!2906 = !DILocation(line: 150, column: 19, scope: !1877, inlinedAt: !2899)
!2907 = !DILocation(line: 150, column: 24, scope: !1877, inlinedAt: !2899)
!2908 = !DILocation(line: 150, column: 6, scope: !1877, inlinedAt: !2899)
!2909 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2894)
!2910 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2894)
!2911 = !DILocation(line: 981, column: 3, scope: !2886)
!2912 = distinct !DISubprogram(name: "quotearg_colon", scope: !545, file: !545, line: 985, type: !1032, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2913)
!2913 = !{!2914}
!2914 = !DILocalVariable(name: "arg", arg: 1, scope: !2912, file: !545, line: 985, type: !138)
!2915 = !DILocation(line: 0, scope: !2912)
!2916 = !DILocation(line: 0, scope: !2886, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 987, column: 10, scope: !2912)
!2918 = !DILocation(line: 0, scope: !2859, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 981, column: 10, scope: !2886, inlinedAt: !2917)
!2920 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2919)
!2921 = !DILocation(line: 972, column: 26, scope: !2859, inlinedAt: !2919)
!2922 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2919)
!2923 = !DILocation(line: 0, scope: !1877, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2919)
!2925 = !DILocation(line: 147, column: 57, scope: !1877, inlinedAt: !2924)
!2926 = !DILocation(line: 149, column: 21, scope: !1877, inlinedAt: !2924)
!2927 = !DILocation(line: 150, column: 6, scope: !1877, inlinedAt: !2924)
!2928 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2919)
!2929 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2919)
!2930 = !DILocation(line: 987, column: 3, scope: !2912)
!2931 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !545, file: !545, line: 991, type: !2740, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2932)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !545, line: 991, type: !138)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2931, file: !545, line: 991, type: !135)
!2935 = !DILocation(line: 0, scope: !2931)
!2936 = !DILocation(line: 0, scope: !2859, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 993, column: 10, scope: !2931)
!2938 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2937)
!2939 = !DILocation(line: 972, column: 26, scope: !2859, inlinedAt: !2937)
!2940 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2937)
!2941 = !DILocation(line: 0, scope: !1877, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2937)
!2943 = !DILocation(line: 147, column: 57, scope: !1877, inlinedAt: !2942)
!2944 = !DILocation(line: 149, column: 21, scope: !1877, inlinedAt: !2942)
!2945 = !DILocation(line: 150, column: 6, scope: !1877, inlinedAt: !2942)
!2946 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2937)
!2947 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2937)
!2948 = !DILocation(line: 993, column: 3, scope: !2931)
!2949 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !545, file: !545, line: 997, type: !2751, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2950)
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !545, line: 997, type: !74)
!2952 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !545, line: 997, type: !93)
!2953 = !DILocalVariable(name: "arg", arg: 3, scope: !2949, file: !545, line: 997, type: !138)
!2954 = !DILocalVariable(name: "options", scope: !2949, file: !545, line: 999, type: !581)
!2955 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 1000, column: 13, scope: !2949)
!2957 = !DILocation(line: 0, scope: !2949)
!2958 = !DILocation(line: 999, column: 3, scope: !2949)
!2959 = !DILocation(line: 999, column: 26, scope: !2949)
!2960 = !DILocation(line: 0, scope: !2766, inlinedAt: !2956)
!2961 = !DILocation(line: 186, column: 13, scope: !2775, inlinedAt: !2956)
!2962 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2956)
!2963 = !DILocation(line: 187, column: 5, scope: !2775, inlinedAt: !2956)
!2964 = !{!2965}
!2965 = distinct !{!2965, !2966, !"quoting_options_from_style: argument 0"}
!2966 = distinct !{!2966, !"quoting_options_from_style"}
!2967 = !DILocation(line: 1000, column: 13, scope: !2949)
!2968 = !DILocation(line: 0, scope: !1877, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1001, column: 3, scope: !2949)
!2970 = !DILocation(line: 147, column: 57, scope: !1877, inlinedAt: !2969)
!2971 = !DILocation(line: 149, column: 21, scope: !1877, inlinedAt: !2969)
!2972 = !DILocation(line: 150, column: 6, scope: !1877, inlinedAt: !2969)
!2973 = !DILocation(line: 1002, column: 10, scope: !2949)
!2974 = !DILocation(line: 1003, column: 1, scope: !2949)
!2975 = !DILocation(line: 1002, column: 3, scope: !2949)
!2976 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !545, file: !545, line: 1006, type: !2977, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!132, !74, !138, !138, !138}
!2979 = !{!2980, !2981, !2982, !2983}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !545, line: 1006, type: !74)
!2981 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2976, file: !545, line: 1006, type: !138)
!2982 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2976, file: !545, line: 1007, type: !138)
!2983 = !DILocalVariable(name: "arg", arg: 4, scope: !2976, file: !545, line: 1007, type: !138)
!2984 = !DILocation(line: 0, scope: !2976)
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !545, line: 1014, type: !74)
!2986 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !545, file: !545, line: 1014, type: !2987, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!132, !74, !138, !138, !138, !135}
!2989 = !{!2985, !2990, !2991, !2992, !2993, !2994}
!2990 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2986, file: !545, line: 1014, type: !138)
!2991 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2986, file: !545, line: 1015, type: !138)
!2992 = !DILocalVariable(name: "arg", arg: 4, scope: !2986, file: !545, line: 1016, type: !138)
!2993 = !DILocalVariable(name: "argsize", arg: 5, scope: !2986, file: !545, line: 1016, type: !135)
!2994 = !DILocalVariable(name: "o", scope: !2986, file: !545, line: 1018, type: !581)
!2995 = !DILocation(line: 0, scope: !2986, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1009, column: 10, scope: !2976)
!2997 = !DILocation(line: 1018, column: 3, scope: !2986, inlinedAt: !2996)
!2998 = !DILocation(line: 1018, column: 26, scope: !2986, inlinedAt: !2996)
!2999 = !DILocation(line: 1018, column: 30, scope: !2986, inlinedAt: !2996)
!3000 = !DILocation(line: 0, scope: !1917, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1019, column: 3, scope: !2986, inlinedAt: !2996)
!3002 = !DILocation(line: 174, column: 12, scope: !1917, inlinedAt: !3001)
!3003 = !DILocation(line: 175, column: 8, scope: !1930, inlinedAt: !3001)
!3004 = !DILocation(line: 175, column: 19, scope: !1930, inlinedAt: !3001)
!3005 = !DILocation(line: 176, column: 5, scope: !1930, inlinedAt: !3001)
!3006 = !DILocation(line: 177, column: 6, scope: !1917, inlinedAt: !3001)
!3007 = !DILocation(line: 177, column: 17, scope: !1917, inlinedAt: !3001)
!3008 = !DILocation(line: 178, column: 6, scope: !1917, inlinedAt: !3001)
!3009 = !DILocation(line: 178, column: 18, scope: !1917, inlinedAt: !3001)
!3010 = !DILocation(line: 1020, column: 10, scope: !2986, inlinedAt: !2996)
!3011 = !DILocation(line: 1021, column: 1, scope: !2986, inlinedAt: !2996)
!3012 = !DILocation(line: 1009, column: 3, scope: !2976)
!3013 = !DILocation(line: 0, scope: !2986)
!3014 = !DILocation(line: 1018, column: 3, scope: !2986)
!3015 = !DILocation(line: 1018, column: 26, scope: !2986)
!3016 = !DILocation(line: 1018, column: 30, scope: !2986)
!3017 = !DILocation(line: 0, scope: !1917, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 1019, column: 3, scope: !2986)
!3019 = !DILocation(line: 174, column: 12, scope: !1917, inlinedAt: !3018)
!3020 = !DILocation(line: 175, column: 8, scope: !1930, inlinedAt: !3018)
!3021 = !DILocation(line: 175, column: 19, scope: !1930, inlinedAt: !3018)
!3022 = !DILocation(line: 176, column: 5, scope: !1930, inlinedAt: !3018)
!3023 = !DILocation(line: 177, column: 6, scope: !1917, inlinedAt: !3018)
!3024 = !DILocation(line: 177, column: 17, scope: !1917, inlinedAt: !3018)
!3025 = !DILocation(line: 178, column: 6, scope: !1917, inlinedAt: !3018)
!3026 = !DILocation(line: 178, column: 18, scope: !1917, inlinedAt: !3018)
!3027 = !DILocation(line: 1020, column: 10, scope: !2986)
!3028 = !DILocation(line: 1021, column: 1, scope: !2986)
!3029 = !DILocation(line: 1020, column: 3, scope: !2986)
!3030 = distinct !DISubprogram(name: "quotearg_custom", scope: !545, file: !545, line: 1024, type: !3031, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!132, !138, !138, !138}
!3033 = !{!3034, !3035, !3036}
!3034 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3030, file: !545, line: 1024, type: !138)
!3035 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3030, file: !545, line: 1024, type: !138)
!3036 = !DILocalVariable(name: "arg", arg: 3, scope: !3030, file: !545, line: 1025, type: !138)
!3037 = !DILocation(line: 0, scope: !3030)
!3038 = !DILocation(line: 0, scope: !2976, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1027, column: 10, scope: !3030)
!3040 = !DILocation(line: 0, scope: !2986, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 1009, column: 10, scope: !2976, inlinedAt: !3039)
!3042 = !DILocation(line: 1018, column: 3, scope: !2986, inlinedAt: !3041)
!3043 = !DILocation(line: 1018, column: 26, scope: !2986, inlinedAt: !3041)
!3044 = !DILocation(line: 1018, column: 30, scope: !2986, inlinedAt: !3041)
!3045 = !DILocation(line: 0, scope: !1917, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1019, column: 3, scope: !2986, inlinedAt: !3041)
!3047 = !DILocation(line: 174, column: 12, scope: !1917, inlinedAt: !3046)
!3048 = !DILocation(line: 175, column: 8, scope: !1930, inlinedAt: !3046)
!3049 = !DILocation(line: 175, column: 19, scope: !1930, inlinedAt: !3046)
!3050 = !DILocation(line: 176, column: 5, scope: !1930, inlinedAt: !3046)
!3051 = !DILocation(line: 177, column: 6, scope: !1917, inlinedAt: !3046)
!3052 = !DILocation(line: 177, column: 17, scope: !1917, inlinedAt: !3046)
!3053 = !DILocation(line: 178, column: 6, scope: !1917, inlinedAt: !3046)
!3054 = !DILocation(line: 178, column: 18, scope: !1917, inlinedAt: !3046)
!3055 = !DILocation(line: 1020, column: 10, scope: !2986, inlinedAt: !3041)
!3056 = !DILocation(line: 1021, column: 1, scope: !2986, inlinedAt: !3041)
!3057 = !DILocation(line: 1027, column: 3, scope: !3030)
!3058 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !545, file: !545, line: 1031, type: !3059, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!132, !138, !138, !138, !135}
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3058, file: !545, line: 1031, type: !138)
!3063 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3058, file: !545, line: 1031, type: !138)
!3064 = !DILocalVariable(name: "arg", arg: 3, scope: !3058, file: !545, line: 1032, type: !138)
!3065 = !DILocalVariable(name: "argsize", arg: 4, scope: !3058, file: !545, line: 1032, type: !135)
!3066 = !DILocation(line: 0, scope: !3058)
!3067 = !DILocation(line: 0, scope: !2986, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 1034, column: 10, scope: !3058)
!3069 = !DILocation(line: 1018, column: 3, scope: !2986, inlinedAt: !3068)
!3070 = !DILocation(line: 1018, column: 26, scope: !2986, inlinedAt: !3068)
!3071 = !DILocation(line: 1018, column: 30, scope: !2986, inlinedAt: !3068)
!3072 = !DILocation(line: 0, scope: !1917, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1019, column: 3, scope: !2986, inlinedAt: !3068)
!3074 = !DILocation(line: 174, column: 12, scope: !1917, inlinedAt: !3073)
!3075 = !DILocation(line: 175, column: 8, scope: !1930, inlinedAt: !3073)
!3076 = !DILocation(line: 175, column: 19, scope: !1930, inlinedAt: !3073)
!3077 = !DILocation(line: 176, column: 5, scope: !1930, inlinedAt: !3073)
!3078 = !DILocation(line: 177, column: 6, scope: !1917, inlinedAt: !3073)
!3079 = !DILocation(line: 177, column: 17, scope: !1917, inlinedAt: !3073)
!3080 = !DILocation(line: 178, column: 6, scope: !1917, inlinedAt: !3073)
!3081 = !DILocation(line: 178, column: 18, scope: !1917, inlinedAt: !3073)
!3082 = !DILocation(line: 1020, column: 10, scope: !2986, inlinedAt: !3068)
!3083 = !DILocation(line: 1021, column: 1, scope: !2986, inlinedAt: !3068)
!3084 = !DILocation(line: 1034, column: 3, scope: !3058)
!3085 = distinct !DISubprogram(name: "quote_n_mem", scope: !545, file: !545, line: 1049, type: !3086, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!138, !74, !138, !135}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !545, line: 1049, type: !74)
!3090 = !DILocalVariable(name: "arg", arg: 2, scope: !3085, file: !545, line: 1049, type: !138)
!3091 = !DILocalVariable(name: "argsize", arg: 3, scope: !3085, file: !545, line: 1049, type: !135)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 1051, column: 10, scope: !3085)
!3094 = !DILocation(line: 1051, column: 3, scope: !3085)
!3095 = distinct !DISubprogram(name: "quote_mem", scope: !545, file: !545, line: 1055, type: !3096, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!138, !138, !135}
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "arg", arg: 1, scope: !3095, file: !545, line: 1055, type: !138)
!3100 = !DILocalVariable(name: "argsize", arg: 2, scope: !3095, file: !545, line: 1055, type: !135)
!3101 = !DILocation(line: 0, scope: !3095)
!3102 = !DILocation(line: 0, scope: !3085, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1057, column: 10, scope: !3095)
!3104 = !DILocation(line: 1051, column: 10, scope: !3085, inlinedAt: !3103)
!3105 = !DILocation(line: 1057, column: 3, scope: !3095)
!3106 = distinct !DISubprogram(name: "quote_n", scope: !545, file: !545, line: 1061, type: !3107, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!138, !74, !138}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "n", arg: 1, scope: !3106, file: !545, line: 1061, type: !74)
!3111 = !DILocalVariable(name: "arg", arg: 2, scope: !3106, file: !545, line: 1061, type: !138)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 0, scope: !3085, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 1063, column: 10, scope: !3106)
!3115 = !DILocation(line: 1051, column: 10, scope: !3085, inlinedAt: !3114)
!3116 = !DILocation(line: 1063, column: 3, scope: !3106)
!3117 = distinct !DISubprogram(name: "quote", scope: !545, file: !545, line: 1067, type: !3118, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!138, !138}
!3120 = !{!3121}
!3121 = !DILocalVariable(name: "arg", arg: 1, scope: !3117, file: !545, line: 1067, type: !138)
!3122 = !DILocation(line: 0, scope: !3117)
!3123 = !DILocation(line: 0, scope: !3106, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 1069, column: 10, scope: !3117)
!3125 = !DILocation(line: 0, scope: !3085, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1063, column: 10, scope: !3106, inlinedAt: !3124)
!3127 = !DILocation(line: 1051, column: 10, scope: !3085, inlinedAt: !3126)
!3128 = !DILocation(line: 1069, column: 3, scope: !3117)
!3129 = distinct !DISubprogram(name: "version_etc_arn", scope: !644, file: !644, line: 61, type: !3130, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3167)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132, !138, !138, !138, !3166, !135}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3134, file: !193, line: 51, baseType: !74, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3134, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3134, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3134, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3134, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3134, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3134, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3134, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3134, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3134, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3134, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3134, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3134, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3134, file: !193, line: 70, baseType: !3150, size: 64, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3134, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3134, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3134, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3134, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3134, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3134, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3134, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3134, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3134, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3134, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3134, file: !193, line: 93, baseType: !3150, size: 64, offset: 1344)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3134, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3134, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3134, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3134, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173}
!3168 = !DILocalVariable(name: "stream", arg: 1, scope: !3129, file: !644, line: 61, type: !3132)
!3169 = !DILocalVariable(name: "command_name", arg: 2, scope: !3129, file: !644, line: 62, type: !138)
!3170 = !DILocalVariable(name: "package", arg: 3, scope: !3129, file: !644, line: 62, type: !138)
!3171 = !DILocalVariable(name: "version", arg: 4, scope: !3129, file: !644, line: 63, type: !138)
!3172 = !DILocalVariable(name: "authors", arg: 5, scope: !3129, file: !644, line: 64, type: !3166)
!3173 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3129, file: !644, line: 64, type: !135)
!3174 = !DILocation(line: 0, scope: !3129)
!3175 = !DILocation(line: 66, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3129, file: !644, line: 66, column: 7)
!3177 = !DILocation(line: 66, column: 7, scope: !3129)
!3178 = !DILocation(line: 67, column: 5, scope: !3176)
!3179 = !DILocation(line: 69, column: 5, scope: !3176)
!3180 = !DILocation(line: 83, column: 3, scope: !3129)
!3181 = !DILocation(line: 85, column: 3, scope: !3129)
!3182 = !DILocation(line: 88, column: 3, scope: !3129)
!3183 = !DILocation(line: 95, column: 3, scope: !3129)
!3184 = !DILocation(line: 97, column: 3, scope: !3129)
!3185 = !DILocation(line: 105, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3129, file: !644, line: 98, column: 5)
!3187 = !DILocation(line: 106, column: 7, scope: !3186)
!3188 = !DILocation(line: 109, column: 7, scope: !3186)
!3189 = !DILocation(line: 110, column: 7, scope: !3186)
!3190 = !DILocation(line: 113, column: 7, scope: !3186)
!3191 = !DILocation(line: 115, column: 7, scope: !3186)
!3192 = !DILocation(line: 120, column: 7, scope: !3186)
!3193 = !DILocation(line: 122, column: 7, scope: !3186)
!3194 = !DILocation(line: 127, column: 7, scope: !3186)
!3195 = !DILocation(line: 129, column: 7, scope: !3186)
!3196 = !DILocation(line: 134, column: 7, scope: !3186)
!3197 = !DILocation(line: 137, column: 7, scope: !3186)
!3198 = !DILocation(line: 142, column: 7, scope: !3186)
!3199 = !DILocation(line: 145, column: 7, scope: !3186)
!3200 = !DILocation(line: 150, column: 7, scope: !3186)
!3201 = !DILocation(line: 154, column: 7, scope: !3186)
!3202 = !DILocation(line: 159, column: 7, scope: !3186)
!3203 = !DILocation(line: 163, column: 7, scope: !3186)
!3204 = !DILocation(line: 170, column: 7, scope: !3186)
!3205 = !DILocation(line: 174, column: 7, scope: !3186)
!3206 = !DILocation(line: 176, column: 1, scope: !3129)
!3207 = distinct !DISubprogram(name: "version_etc_ar", scope: !644, file: !644, line: 183, type: !3208, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !3132, !138, !138, !138, !3166}
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216}
!3211 = !DILocalVariable(name: "stream", arg: 1, scope: !3207, file: !644, line: 183, type: !3132)
!3212 = !DILocalVariable(name: "command_name", arg: 2, scope: !3207, file: !644, line: 184, type: !138)
!3213 = !DILocalVariable(name: "package", arg: 3, scope: !3207, file: !644, line: 184, type: !138)
!3214 = !DILocalVariable(name: "version", arg: 4, scope: !3207, file: !644, line: 185, type: !138)
!3215 = !DILocalVariable(name: "authors", arg: 5, scope: !3207, file: !644, line: 185, type: !3166)
!3216 = !DILocalVariable(name: "n_authors", scope: !3207, file: !644, line: 187, type: !135)
!3217 = !DILocation(line: 0, scope: !3207)
!3218 = !DILocation(line: 189, column: 8, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3207, file: !644, line: 189, column: 3)
!3220 = !DILocation(line: 189, scope: !3219)
!3221 = !DILocation(line: 189, column: 23, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3219, file: !644, line: 189, column: 3)
!3223 = !DILocation(line: 189, column: 3, scope: !3219)
!3224 = !DILocation(line: 189, column: 52, scope: !3222)
!3225 = distinct !{!3225, !3223, !3226, !956}
!3226 = !DILocation(line: 190, column: 5, scope: !3219)
!3227 = !DILocation(line: 191, column: 3, scope: !3207)
!3228 = !DILocation(line: 192, column: 1, scope: !3207)
!3229 = distinct !DISubprogram(name: "version_etc_va", scope: !644, file: !644, line: 199, type: !3230, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3243)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !3132, !138, !138, !138, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !443, line: 52, baseType: !3233)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !445, line: 14, baseType: !3234)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3235, baseType: !3236)
!3235 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3236, file: !3235, line: 192, baseType: !133, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3236, file: !3235, line: 192, baseType: !133, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3236, file: !3235, line: 192, baseType: !133, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3236, file: !3235, line: 192, baseType: !74, size: 32, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3236, file: !3235, line: 192, baseType: !74, size: 32, offset: 224)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3244 = !DILocalVariable(name: "stream", arg: 1, scope: !3229, file: !644, line: 199, type: !3132)
!3245 = !DILocalVariable(name: "command_name", arg: 2, scope: !3229, file: !644, line: 200, type: !138)
!3246 = !DILocalVariable(name: "package", arg: 3, scope: !3229, file: !644, line: 200, type: !138)
!3247 = !DILocalVariable(name: "version", arg: 4, scope: !3229, file: !644, line: 201, type: !138)
!3248 = !DILocalVariable(name: "authors", arg: 5, scope: !3229, file: !644, line: 201, type: !3232)
!3249 = !DILocalVariable(name: "n_authors", scope: !3229, file: !644, line: 203, type: !135)
!3250 = !DILocalVariable(name: "authtab", scope: !3229, file: !644, line: 204, type: !3251)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !52)
!3252 = !DILocation(line: 0, scope: !3229)
!3253 = !DILocation(line: 201, column: 46, scope: !3229)
!3254 = !DILocation(line: 204, column: 3, scope: !3229)
!3255 = !DILocation(line: 204, column: 15, scope: !3229)
!3256 = !DILocation(line: 208, column: 35, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !644, line: 206, column: 3)
!3258 = distinct !DILexicalBlock(scope: !3229, file: !644, line: 206, column: 3)
!3259 = !DILocation(line: 208, column: 33, scope: !3257)
!3260 = !DILocation(line: 208, column: 67, scope: !3257)
!3261 = !DILocation(line: 206, column: 3, scope: !3258)
!3262 = !DILocation(line: 208, column: 14, scope: !3257)
!3263 = !DILocation(line: 0, scope: !3258)
!3264 = !DILocation(line: 211, column: 3, scope: !3229)
!3265 = !DILocation(line: 213, column: 1, scope: !3229)
!3266 = distinct !DISubprogram(name: "version_etc", scope: !644, file: !644, line: 230, type: !3267, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3132, !138, !138, !138, null}
!3269 = !{!3270, !3271, !3272, !3273, !3274}
!3270 = !DILocalVariable(name: "stream", arg: 1, scope: !3266, file: !644, line: 230, type: !3132)
!3271 = !DILocalVariable(name: "command_name", arg: 2, scope: !3266, file: !644, line: 231, type: !138)
!3272 = !DILocalVariable(name: "package", arg: 3, scope: !3266, file: !644, line: 231, type: !138)
!3273 = !DILocalVariable(name: "version", arg: 4, scope: !3266, file: !644, line: 232, type: !138)
!3274 = !DILocalVariable(name: "authors", scope: !3266, file: !644, line: 234, type: !3232)
!3275 = !DILocation(line: 0, scope: !3266)
!3276 = !DILocation(line: 234, column: 3, scope: !3266)
!3277 = !DILocation(line: 234, column: 11, scope: !3266)
!3278 = !DILocation(line: 235, column: 3, scope: !3266)
!3279 = !DILocation(line: 236, column: 3, scope: !3266)
!3280 = !DILocation(line: 237, column: 3, scope: !3266)
!3281 = !DILocation(line: 238, column: 1, scope: !3266)
!3282 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !644, file: !644, line: 241, type: !484, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !894)
!3283 = !DILocation(line: 243, column: 3, scope: !3282)
!3284 = !DILocation(line: 248, column: 3, scope: !3282)
!3285 = !DILocation(line: 254, column: 3, scope: !3282)
!3286 = !DILocation(line: 259, column: 3, scope: !3282)
!3287 = !DILocation(line: 261, column: 1, scope: !3282)
!3288 = distinct !DISubprogram(name: "xnrealloc", scope: !3289, file: !3289, line: 147, type: !3290, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3292)
!3289 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!133, !133, !135, !135}
!3292 = !{!3293, !3294, !3295}
!3293 = !DILocalVariable(name: "p", arg: 1, scope: !3288, file: !3289, line: 147, type: !133)
!3294 = !DILocalVariable(name: "n", arg: 2, scope: !3288, file: !3289, line: 147, type: !135)
!3295 = !DILocalVariable(name: "s", arg: 3, scope: !3288, file: !3289, line: 147, type: !135)
!3296 = !DILocation(line: 0, scope: !3288)
!3297 = !DILocalVariable(name: "p", arg: 1, scope: !3298, file: !775, line: 83, type: !133)
!3298 = distinct !DISubprogram(name: "xreallocarray", scope: !775, file: !775, line: 83, type: !3290, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3299)
!3299 = !{!3297, !3300, !3301}
!3300 = !DILocalVariable(name: "n", arg: 2, scope: !3298, file: !775, line: 83, type: !135)
!3301 = !DILocalVariable(name: "s", arg: 3, scope: !3298, file: !775, line: 83, type: !135)
!3302 = !DILocation(line: 0, scope: !3298, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 149, column: 10, scope: !3288)
!3304 = !DILocation(line: 85, column: 25, scope: !3298, inlinedAt: !3303)
!3305 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !775, line: 37, type: !133)
!3306 = distinct !DISubprogram(name: "check_nonnull", scope: !775, file: !775, line: 37, type: !3307, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!133, !133}
!3309 = !{!3305}
!3310 = !DILocation(line: 0, scope: !3306, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 85, column: 10, scope: !3298, inlinedAt: !3303)
!3312 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3311)
!3313 = distinct !DILexicalBlock(scope: !3306, file: !775, line: 39, column: 7)
!3314 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3311)
!3315 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3311)
!3316 = !DILocation(line: 149, column: 3, scope: !3288)
!3317 = !DILocation(line: 0, scope: !3298)
!3318 = !DILocation(line: 85, column: 25, scope: !3298)
!3319 = !DILocation(line: 0, scope: !3306, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 85, column: 10, scope: !3298)
!3321 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3320)
!3322 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3320)
!3323 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3320)
!3324 = !DILocation(line: 85, column: 3, scope: !3298)
!3325 = distinct !DISubprogram(name: "xmalloc", scope: !775, file: !775, line: 47, type: !3326, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!133, !135}
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "s", arg: 1, scope: !3325, file: !775, line: 47, type: !135)
!3330 = !DILocation(line: 0, scope: !3325)
!3331 = !DILocation(line: 49, column: 25, scope: !3325)
!3332 = !DILocation(line: 0, scope: !3306, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 49, column: 10, scope: !3325)
!3334 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3333)
!3335 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3333)
!3336 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3333)
!3337 = !DILocation(line: 49, column: 3, scope: !3325)
!3338 = !DISubprogram(name: "malloc", scope: !1030, file: !1030, line: 540, type: !3326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3339 = distinct !DISubprogram(name: "ximalloc", scope: !775, file: !775, line: 53, type: !3340, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!133, !794}
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "s", arg: 1, scope: !3339, file: !775, line: 53, type: !794)
!3344 = !DILocation(line: 0, scope: !3339)
!3345 = !DILocalVariable(name: "s", arg: 1, scope: !3346, file: !3347, line: 55, type: !794)
!3346 = distinct !DISubprogram(name: "imalloc", scope: !3347, file: !3347, line: 55, type: !3340, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3348)
!3347 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3348 = !{!3345}
!3349 = !DILocation(line: 0, scope: !3346, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 55, column: 25, scope: !3339)
!3351 = !DILocation(line: 57, column: 26, scope: !3346, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !3306, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 55, column: 10, scope: !3339)
!3354 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3353)
!3355 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3353)
!3356 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3353)
!3357 = !DILocation(line: 55, column: 3, scope: !3339)
!3358 = distinct !DISubprogram(name: "xcharalloc", scope: !775, file: !775, line: 59, type: !3359, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!132, !135}
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !775, line: 59, type: !135)
!3363 = !DILocation(line: 0, scope: !3358)
!3364 = !DILocation(line: 0, scope: !3325, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 61, column: 10, scope: !3358)
!3366 = !DILocation(line: 49, column: 25, scope: !3325, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !3306, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 49, column: 10, scope: !3325, inlinedAt: !3365)
!3369 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3368)
!3370 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3368)
!3371 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3368)
!3372 = !DILocation(line: 61, column: 3, scope: !3358)
!3373 = distinct !DISubprogram(name: "xrealloc", scope: !775, file: !775, line: 68, type: !3374, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!133, !133, !135}
!3376 = !{!3377, !3378}
!3377 = !DILocalVariable(name: "p", arg: 1, scope: !3373, file: !775, line: 68, type: !133)
!3378 = !DILocalVariable(name: "s", arg: 2, scope: !3373, file: !775, line: 68, type: !135)
!3379 = !DILocation(line: 0, scope: !3373)
!3380 = !DILocalVariable(name: "ptr", arg: 1, scope: !3381, file: !3382, line: 2057, type: !133)
!3381 = distinct !DISubprogram(name: "rpl_realloc", scope: !3382, file: !3382, line: 2057, type: !3374, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3383)
!3382 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3383 = !{!3380, !3384}
!3384 = !DILocalVariable(name: "size", arg: 2, scope: !3381, file: !3382, line: 2057, type: !135)
!3385 = !DILocation(line: 0, scope: !3381, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 70, column: 25, scope: !3373)
!3387 = !DILocation(line: 2059, column: 24, scope: !3381, inlinedAt: !3386)
!3388 = !DILocation(line: 2059, column: 10, scope: !3381, inlinedAt: !3386)
!3389 = !DILocation(line: 0, scope: !3306, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 70, column: 10, scope: !3373)
!3391 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3390)
!3392 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3390)
!3393 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3390)
!3394 = !DILocation(line: 70, column: 3, scope: !3373)
!3395 = !DISubprogram(name: "realloc", scope: !1030, file: !1030, line: 551, type: !3374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3396 = distinct !DISubprogram(name: "xirealloc", scope: !775, file: !775, line: 74, type: !3397, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!133, !133, !794}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "p", arg: 1, scope: !3396, file: !775, line: 74, type: !133)
!3401 = !DILocalVariable(name: "s", arg: 2, scope: !3396, file: !775, line: 74, type: !794)
!3402 = !DILocation(line: 0, scope: !3396)
!3403 = !DILocalVariable(name: "p", arg: 1, scope: !3404, file: !3347, line: 66, type: !133)
!3404 = distinct !DISubprogram(name: "irealloc", scope: !3347, file: !3347, line: 66, type: !3397, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3405)
!3405 = !{!3403, !3406}
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !3347, line: 66, type: !794)
!3407 = !DILocation(line: 0, scope: !3404, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 76, column: 25, scope: !3396)
!3409 = !DILocation(line: 0, scope: !3381, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 68, column: 26, scope: !3404, inlinedAt: !3408)
!3411 = !DILocation(line: 2059, column: 24, scope: !3381, inlinedAt: !3410)
!3412 = !DILocation(line: 2059, column: 10, scope: !3381, inlinedAt: !3410)
!3413 = !DILocation(line: 0, scope: !3306, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 76, column: 10, scope: !3396)
!3415 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3414)
!3416 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3414)
!3417 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3414)
!3418 = !DILocation(line: 76, column: 3, scope: !3396)
!3419 = distinct !DISubprogram(name: "xireallocarray", scope: !775, file: !775, line: 89, type: !3420, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!133, !133, !794, !794}
!3422 = !{!3423, !3424, !3425}
!3423 = !DILocalVariable(name: "p", arg: 1, scope: !3419, file: !775, line: 89, type: !133)
!3424 = !DILocalVariable(name: "n", arg: 2, scope: !3419, file: !775, line: 89, type: !794)
!3425 = !DILocalVariable(name: "s", arg: 3, scope: !3419, file: !775, line: 89, type: !794)
!3426 = !DILocation(line: 0, scope: !3419)
!3427 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !3347, line: 98, type: !133)
!3428 = distinct !DISubprogram(name: "ireallocarray", scope: !3347, file: !3347, line: 98, type: !3420, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3429)
!3429 = !{!3427, !3430, !3431}
!3430 = !DILocalVariable(name: "n", arg: 2, scope: !3428, file: !3347, line: 98, type: !794)
!3431 = !DILocalVariable(name: "s", arg: 3, scope: !3428, file: !3347, line: 98, type: !794)
!3432 = !DILocation(line: 0, scope: !3428, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 91, column: 25, scope: !3419)
!3434 = !DILocation(line: 101, column: 13, scope: !3428, inlinedAt: !3433)
!3435 = !DILocation(line: 0, scope: !3306, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 91, column: 10, scope: !3419)
!3437 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3436)
!3438 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3436)
!3439 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3436)
!3440 = !DILocation(line: 91, column: 3, scope: !3419)
!3441 = distinct !DISubprogram(name: "xnmalloc", scope: !775, file: !775, line: 98, type: !3442, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!133, !135, !135}
!3444 = !{!3445, !3446}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !775, line: 98, type: !135)
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3441, file: !775, line: 98, type: !135)
!3447 = !DILocation(line: 0, scope: !3441)
!3448 = !DILocation(line: 0, scope: !3298, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 100, column: 10, scope: !3441)
!3450 = !DILocation(line: 85, column: 25, scope: !3298, inlinedAt: !3449)
!3451 = !DILocation(line: 0, scope: !3306, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 85, column: 10, scope: !3298, inlinedAt: !3449)
!3453 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3452)
!3454 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3452)
!3455 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3452)
!3456 = !DILocation(line: 100, column: 3, scope: !3441)
!3457 = distinct !DISubprogram(name: "xinmalloc", scope: !775, file: !775, line: 104, type: !3458, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!133, !794, !794}
!3460 = !{!3461, !3462}
!3461 = !DILocalVariable(name: "n", arg: 1, scope: !3457, file: !775, line: 104, type: !794)
!3462 = !DILocalVariable(name: "s", arg: 2, scope: !3457, file: !775, line: 104, type: !794)
!3463 = !DILocation(line: 0, scope: !3457)
!3464 = !DILocation(line: 0, scope: !3419, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 106, column: 10, scope: !3457)
!3466 = !DILocation(line: 0, scope: !3428, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 91, column: 25, scope: !3419, inlinedAt: !3465)
!3468 = !DILocation(line: 101, column: 13, scope: !3428, inlinedAt: !3467)
!3469 = !DILocation(line: 0, scope: !3306, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 91, column: 10, scope: !3419, inlinedAt: !3465)
!3471 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3470)
!3472 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3470)
!3473 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3470)
!3474 = !DILocation(line: 106, column: 3, scope: !3457)
!3475 = distinct !DISubprogram(name: "x2realloc", scope: !775, file: !775, line: 116, type: !3476, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!133, !133, !781}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "p", arg: 1, scope: !3475, file: !775, line: 116, type: !133)
!3480 = !DILocalVariable(name: "ps", arg: 2, scope: !3475, file: !775, line: 116, type: !781)
!3481 = !DILocation(line: 0, scope: !3475)
!3482 = !DILocation(line: 0, scope: !778, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 118, column: 10, scope: !3475)
!3484 = !DILocation(line: 178, column: 14, scope: !778, inlinedAt: !3483)
!3485 = !DILocation(line: 180, column: 9, scope: !3486, inlinedAt: !3483)
!3486 = distinct !DILexicalBlock(scope: !778, file: !775, line: 180, column: 7)
!3487 = !DILocation(line: 180, column: 7, scope: !778, inlinedAt: !3483)
!3488 = !DILocation(line: 182, column: 13, scope: !3489, inlinedAt: !3483)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !775, line: 182, column: 11)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !775, line: 181, column: 5)
!3491 = !DILocation(line: 182, column: 11, scope: !3490, inlinedAt: !3483)
!3492 = !DILocation(line: 197, column: 11, scope: !3493, inlinedAt: !3483)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !775, line: 197, column: 11)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !775, line: 195, column: 5)
!3495 = !DILocation(line: 197, column: 11, scope: !3494, inlinedAt: !3483)
!3496 = !DILocation(line: 198, column: 9, scope: !3493, inlinedAt: !3483)
!3497 = !DILocation(line: 0, scope: !3298, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 201, column: 7, scope: !778, inlinedAt: !3483)
!3499 = !DILocation(line: 85, column: 25, scope: !3298, inlinedAt: !3498)
!3500 = !DILocation(line: 0, scope: !3306, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 85, column: 10, scope: !3298, inlinedAt: !3498)
!3502 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3501)
!3503 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3501)
!3504 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3501)
!3505 = !DILocation(line: 202, column: 7, scope: !778, inlinedAt: !3483)
!3506 = !DILocation(line: 118, column: 3, scope: !3475)
!3507 = !DILocation(line: 0, scope: !778)
!3508 = !DILocation(line: 178, column: 14, scope: !778)
!3509 = !DILocation(line: 180, column: 9, scope: !3486)
!3510 = !DILocation(line: 180, column: 7, scope: !778)
!3511 = !DILocation(line: 182, column: 13, scope: !3489)
!3512 = !DILocation(line: 182, column: 11, scope: !3490)
!3513 = !DILocation(line: 190, column: 30, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3489, file: !775, line: 183, column: 9)
!3515 = !DILocation(line: 191, column: 16, scope: !3514)
!3516 = !DILocation(line: 191, column: 13, scope: !3514)
!3517 = !DILocation(line: 192, column: 9, scope: !3514)
!3518 = !DILocation(line: 197, column: 11, scope: !3493)
!3519 = !DILocation(line: 197, column: 11, scope: !3494)
!3520 = !DILocation(line: 198, column: 9, scope: !3493)
!3521 = !DILocation(line: 0, scope: !3298, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 201, column: 7, scope: !778)
!3523 = !DILocation(line: 85, column: 25, scope: !3298, inlinedAt: !3522)
!3524 = !DILocation(line: 0, scope: !3306, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 85, column: 10, scope: !3298, inlinedAt: !3522)
!3526 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3525)
!3527 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3525)
!3528 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3525)
!3529 = !DILocation(line: 202, column: 7, scope: !778)
!3530 = !DILocation(line: 203, column: 3, scope: !778)
!3531 = !DILocation(line: 0, scope: !790)
!3532 = !DILocation(line: 230, column: 14, scope: !790)
!3533 = !DILocation(line: 238, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !790, file: !775, line: 238, column: 7)
!3535 = !DILocation(line: 238, column: 7, scope: !790)
!3536 = !DILocation(line: 240, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !790, file: !775, line: 240, column: 7)
!3538 = !DILocation(line: 240, column: 18, scope: !3537)
!3539 = !DILocation(line: 253, column: 8, scope: !790)
!3540 = !DILocation(line: 258, column: 27, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !775, line: 257, column: 5)
!3542 = distinct !DILexicalBlock(scope: !790, file: !775, line: 256, column: 7)
!3543 = !DILocation(line: 259, column: 32, scope: !3541)
!3544 = !DILocation(line: 260, column: 5, scope: !3541)
!3545 = !DILocation(line: 262, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !790, file: !775, line: 262, column: 7)
!3547 = !DILocation(line: 262, column: 7, scope: !790)
!3548 = !DILocation(line: 263, column: 9, scope: !3546)
!3549 = !DILocation(line: 263, column: 5, scope: !3546)
!3550 = !DILocation(line: 264, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !790, file: !775, line: 264, column: 7)
!3552 = !DILocation(line: 264, column: 14, scope: !3551)
!3553 = !DILocation(line: 265, column: 7, scope: !3551)
!3554 = !DILocation(line: 265, column: 11, scope: !3551)
!3555 = !DILocation(line: 266, column: 11, scope: !3551)
!3556 = !DILocation(line: 267, column: 14, scope: !3551)
!3557 = !DILocation(line: 264, column: 7, scope: !790)
!3558 = !DILocation(line: 268, column: 5, scope: !3551)
!3559 = !DILocation(line: 0, scope: !3373, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 269, column: 8, scope: !790)
!3561 = !DILocation(line: 0, scope: !3381, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 70, column: 25, scope: !3373, inlinedAt: !3560)
!3563 = !DILocation(line: 2059, column: 24, scope: !3381, inlinedAt: !3562)
!3564 = !DILocation(line: 2059, column: 10, scope: !3381, inlinedAt: !3562)
!3565 = !DILocation(line: 0, scope: !3306, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 70, column: 10, scope: !3373, inlinedAt: !3560)
!3567 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3566)
!3568 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3566)
!3569 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3566)
!3570 = !DILocation(line: 270, column: 7, scope: !790)
!3571 = !DILocation(line: 271, column: 3, scope: !790)
!3572 = distinct !DISubprogram(name: "xzalloc", scope: !775, file: !775, line: 279, type: !3326, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3573)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "s", arg: 1, scope: !3572, file: !775, line: 279, type: !135)
!3575 = !DILocation(line: 0, scope: !3572)
!3576 = !DILocalVariable(name: "n", arg: 1, scope: !3577, file: !775, line: 294, type: !135)
!3577 = distinct !DISubprogram(name: "xcalloc", scope: !775, file: !775, line: 294, type: !3442, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3578)
!3578 = !{!3576, !3579}
!3579 = !DILocalVariable(name: "s", arg: 2, scope: !3577, file: !775, line: 294, type: !135)
!3580 = !DILocation(line: 0, scope: !3577, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 281, column: 10, scope: !3572)
!3582 = !DILocation(line: 296, column: 25, scope: !3577, inlinedAt: !3581)
!3583 = !DILocation(line: 0, scope: !3306, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 296, column: 10, scope: !3577, inlinedAt: !3581)
!3585 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3584)
!3586 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3584)
!3587 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3584)
!3588 = !DILocation(line: 281, column: 3, scope: !3572)
!3589 = !DISubprogram(name: "calloc", scope: !1030, file: !1030, line: 543, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3590 = !DILocation(line: 0, scope: !3577)
!3591 = !DILocation(line: 296, column: 25, scope: !3577)
!3592 = !DILocation(line: 0, scope: !3306, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 296, column: 10, scope: !3577)
!3594 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3593)
!3597 = !DILocation(line: 296, column: 3, scope: !3577)
!3598 = distinct !DISubprogram(name: "xizalloc", scope: !775, file: !775, line: 285, type: !3340, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3599)
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "s", arg: 1, scope: !3598, file: !775, line: 285, type: !794)
!3601 = !DILocation(line: 0, scope: !3598)
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3603, file: !775, line: 300, type: !794)
!3603 = distinct !DISubprogram(name: "xicalloc", scope: !775, file: !775, line: 300, type: !3458, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3604)
!3604 = !{!3602, !3605}
!3605 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !775, line: 300, type: !794)
!3606 = !DILocation(line: 0, scope: !3603, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 287, column: 10, scope: !3598)
!3608 = !DILocalVariable(name: "n", arg: 1, scope: !3609, file: !3347, line: 77, type: !794)
!3609 = distinct !DISubprogram(name: "icalloc", scope: !3347, file: !3347, line: 77, type: !3458, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3610)
!3610 = !{!3608, !3611}
!3611 = !DILocalVariable(name: "s", arg: 2, scope: !3609, file: !3347, line: 77, type: !794)
!3612 = !DILocation(line: 0, scope: !3609, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 302, column: 25, scope: !3603, inlinedAt: !3607)
!3614 = !DILocation(line: 91, column: 10, scope: !3609, inlinedAt: !3613)
!3615 = !DILocation(line: 0, scope: !3306, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 302, column: 10, scope: !3603, inlinedAt: !3607)
!3617 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3616)
!3618 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3616)
!3619 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3616)
!3620 = !DILocation(line: 287, column: 3, scope: !3598)
!3621 = !DILocation(line: 0, scope: !3603)
!3622 = !DILocation(line: 0, scope: !3609, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 302, column: 25, scope: !3603)
!3624 = !DILocation(line: 91, column: 10, scope: !3609, inlinedAt: !3623)
!3625 = !DILocation(line: 0, scope: !3306, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 302, column: 10, scope: !3603)
!3627 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3626)
!3628 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3626)
!3629 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3626)
!3630 = !DILocation(line: 302, column: 3, scope: !3603)
!3631 = distinct !DISubprogram(name: "xmemdup", scope: !775, file: !775, line: 310, type: !3632, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!133, !1054, !135}
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "p", arg: 1, scope: !3631, file: !775, line: 310, type: !1054)
!3636 = !DILocalVariable(name: "s", arg: 2, scope: !3631, file: !775, line: 310, type: !135)
!3637 = !DILocation(line: 0, scope: !3631)
!3638 = !DILocation(line: 0, scope: !3325, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 312, column: 18, scope: !3631)
!3640 = !DILocation(line: 49, column: 25, scope: !3325, inlinedAt: !3639)
!3641 = !DILocation(line: 0, scope: !3306, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 49, column: 10, scope: !3325, inlinedAt: !3639)
!3643 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3642)
!3644 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3642)
!3645 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3642)
!3646 = !DILocalVariable(name: "__dest", arg: 1, scope: !3647, file: !1258, line: 26, type: !3650)
!3647 = distinct !DISubprogram(name: "memcpy", scope: !1258, file: !1258, line: 26, type: !3648, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3651)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!133, !3650, !1053, !135}
!3650 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!3651 = !{!3646, !3652, !3653}
!3652 = !DILocalVariable(name: "__src", arg: 2, scope: !3647, file: !1258, line: 26, type: !1053)
!3653 = !DILocalVariable(name: "__len", arg: 3, scope: !3647, file: !1258, line: 26, type: !135)
!3654 = !DILocation(line: 0, scope: !3647, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 312, column: 10, scope: !3631)
!3656 = !DILocation(line: 29, column: 10, scope: !3647, inlinedAt: !3655)
!3657 = !DILocation(line: 312, column: 3, scope: !3631)
!3658 = distinct !DISubprogram(name: "ximemdup", scope: !775, file: !775, line: 316, type: !3659, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!133, !1054, !794}
!3661 = !{!3662, !3663}
!3662 = !DILocalVariable(name: "p", arg: 1, scope: !3658, file: !775, line: 316, type: !1054)
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !775, line: 316, type: !794)
!3664 = !DILocation(line: 0, scope: !3658)
!3665 = !DILocation(line: 0, scope: !3339, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 318, column: 18, scope: !3658)
!3667 = !DILocation(line: 0, scope: !3346, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 55, column: 25, scope: !3339, inlinedAt: !3666)
!3669 = !DILocation(line: 57, column: 26, scope: !3346, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !3306, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 55, column: 10, scope: !3339, inlinedAt: !3666)
!3672 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3671)
!3673 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3671)
!3674 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3671)
!3675 = !DILocation(line: 0, scope: !3647, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 318, column: 10, scope: !3658)
!3677 = !DILocation(line: 29, column: 10, scope: !3647, inlinedAt: !3676)
!3678 = !DILocation(line: 318, column: 3, scope: !3658)
!3679 = distinct !DISubprogram(name: "ximemdup0", scope: !775, file: !775, line: 325, type: !3680, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!132, !1054, !794}
!3682 = !{!3683, !3684, !3685}
!3683 = !DILocalVariable(name: "p", arg: 1, scope: !3679, file: !775, line: 325, type: !1054)
!3684 = !DILocalVariable(name: "s", arg: 2, scope: !3679, file: !775, line: 325, type: !794)
!3685 = !DILocalVariable(name: "result", scope: !3679, file: !775, line: 327, type: !132)
!3686 = !DILocation(line: 0, scope: !3679)
!3687 = !DILocation(line: 327, column: 30, scope: !3679)
!3688 = !DILocation(line: 0, scope: !3339, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 327, column: 18, scope: !3679)
!3690 = !DILocation(line: 0, scope: !3346, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 55, column: 25, scope: !3339, inlinedAt: !3689)
!3692 = !DILocation(line: 57, column: 26, scope: !3346, inlinedAt: !3691)
!3693 = !DILocation(line: 0, scope: !3306, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 55, column: 10, scope: !3339, inlinedAt: !3689)
!3695 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3694)
!3696 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3694)
!3697 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3694)
!3698 = !DILocation(line: 328, column: 3, scope: !3679)
!3699 = !DILocation(line: 328, column: 13, scope: !3679)
!3700 = !DILocation(line: 0, scope: !3647, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 329, column: 10, scope: !3679)
!3702 = !DILocation(line: 29, column: 10, scope: !3647, inlinedAt: !3701)
!3703 = !DILocation(line: 329, column: 3, scope: !3679)
!3704 = distinct !DISubprogram(name: "xstrdup", scope: !775, file: !775, line: 335, type: !1032, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3705)
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "string", arg: 1, scope: !3704, file: !775, line: 335, type: !138)
!3707 = !DILocation(line: 0, scope: !3704)
!3708 = !DILocation(line: 337, column: 27, scope: !3704)
!3709 = !DILocation(line: 337, column: 43, scope: !3704)
!3710 = !DILocation(line: 0, scope: !3631, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 337, column: 10, scope: !3704)
!3712 = !DILocation(line: 0, scope: !3325, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 312, column: 18, scope: !3631, inlinedAt: !3711)
!3714 = !DILocation(line: 49, column: 25, scope: !3325, inlinedAt: !3713)
!3715 = !DILocation(line: 0, scope: !3306, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 49, column: 10, scope: !3325, inlinedAt: !3713)
!3717 = !DILocation(line: 39, column: 8, scope: !3313, inlinedAt: !3716)
!3718 = !DILocation(line: 39, column: 7, scope: !3306, inlinedAt: !3716)
!3719 = !DILocation(line: 40, column: 5, scope: !3313, inlinedAt: !3716)
!3720 = !DILocation(line: 0, scope: !3647, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 312, column: 10, scope: !3631, inlinedAt: !3711)
!3722 = !DILocation(line: 29, column: 10, scope: !3647, inlinedAt: !3721)
!3723 = !DILocation(line: 337, column: 3, scope: !3704)
!3724 = distinct !DISubprogram(name: "xalloc_die", scope: !735, file: !735, line: 32, type: !484, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !3725)
!3725 = !{!3726}
!3726 = !DILocalVariable(name: "__errstatus", scope: !3727, file: !735, line: 34, type: !3728)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !735, line: 34, column: 3)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3729 = !DILocation(line: 34, column: 3, scope: !3727)
!3730 = !DILocation(line: 0, scope: !3727)
!3731 = !DILocation(line: 40, column: 3, scope: !3724)
!3732 = distinct !DISubprogram(name: "close_stream", scope: !811, file: !811, line: 55, type: !3733, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3769)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!74, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3737)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3737, file: !193, line: 51, baseType: !74, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3737, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3737, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3737, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3737, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3737, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3737, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3737, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3737, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3737, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3737, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3737, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3737, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3737, file: !193, line: 70, baseType: !3753, size: 64, offset: 832)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3737, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3737, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3737, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3737, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3737, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3737, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3737, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3737, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3737, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3737, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3737, file: !193, line: 93, baseType: !3753, size: 64, offset: 1344)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3737, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3737, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3737, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3737, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3769 = !{!3770, !3771, !3773, !3774}
!3770 = !DILocalVariable(name: "stream", arg: 1, scope: !3732, file: !811, line: 55, type: !3735)
!3771 = !DILocalVariable(name: "some_pending", scope: !3732, file: !811, line: 57, type: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3773 = !DILocalVariable(name: "prev_fail", scope: !3732, file: !811, line: 58, type: !3772)
!3774 = !DILocalVariable(name: "fclose_fail", scope: !3732, file: !811, line: 59, type: !3772)
!3775 = !DILocation(line: 0, scope: !3732)
!3776 = !DILocation(line: 57, column: 30, scope: !3732)
!3777 = !DILocalVariable(name: "__stream", arg: 1, scope: !3778, file: !1606, line: 135, type: !3735)
!3778 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1606, file: !1606, line: 135, type: !3733, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3779)
!3779 = !{!3777}
!3780 = !DILocation(line: 0, scope: !3778, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 58, column: 27, scope: !3732)
!3782 = !DILocation(line: 137, column: 10, scope: !3778, inlinedAt: !3781)
!3783 = !{!1615, !910, i64 0}
!3784 = !DILocation(line: 58, column: 43, scope: !3732)
!3785 = !DILocation(line: 59, column: 29, scope: !3732)
!3786 = !DILocation(line: 59, column: 45, scope: !3732)
!3787 = !DILocation(line: 69, column: 17, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3732, file: !811, line: 69, column: 7)
!3789 = !DILocation(line: 57, column: 50, scope: !3732)
!3790 = !DILocation(line: 69, column: 33, scope: !3788)
!3791 = !DILocation(line: 69, column: 53, scope: !3788)
!3792 = !DILocation(line: 69, column: 59, scope: !3788)
!3793 = !DILocation(line: 69, column: 7, scope: !3732)
!3794 = !DILocation(line: 71, column: 11, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3788, file: !811, line: 70, column: 5)
!3796 = !DILocation(line: 72, column: 9, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3795, file: !811, line: 71, column: 11)
!3798 = !DILocation(line: 72, column: 15, scope: !3797)
!3799 = !DILocation(line: 77, column: 1, scope: !3732)
!3800 = !DISubprogram(name: "__fpending", scope: !3801, file: !3801, line: 75, type: !3802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3801 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!135, !3735}
!3804 = distinct !DISubprogram(name: "rpl_fclose", scope: !813, file: !813, line: 58, type: !3805, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3841)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!74, !3807}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3809, file: !193, line: 51, baseType: !74, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3809, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3809, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3809, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3809, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3809, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3809, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3809, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3809, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3809, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3809, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3809, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3809, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3809, file: !193, line: 70, baseType: !3825, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3809, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3809, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3809, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3809, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3809, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3809, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3809, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3809, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3809, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3809, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3809, file: !193, line: 93, baseType: !3825, size: 64, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3809, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3809, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3809, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3809, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3841 = !{!3842, !3843, !3844, !3845}
!3842 = !DILocalVariable(name: "fp", arg: 1, scope: !3804, file: !813, line: 58, type: !3807)
!3843 = !DILocalVariable(name: "saved_errno", scope: !3804, file: !813, line: 60, type: !74)
!3844 = !DILocalVariable(name: "fd", scope: !3804, file: !813, line: 63, type: !74)
!3845 = !DILocalVariable(name: "result", scope: !3804, file: !813, line: 74, type: !74)
!3846 = !DILocation(line: 0, scope: !3804)
!3847 = !DILocation(line: 63, column: 12, scope: !3804)
!3848 = !DILocation(line: 64, column: 10, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3804, file: !813, line: 64, column: 7)
!3850 = !DILocation(line: 64, column: 7, scope: !3804)
!3851 = !DILocation(line: 65, column: 12, scope: !3849)
!3852 = !DILocation(line: 65, column: 5, scope: !3849)
!3853 = !DILocation(line: 70, column: 9, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3804, file: !813, line: 70, column: 7)
!3855 = !DILocation(line: 70, column: 23, scope: !3854)
!3856 = !DILocation(line: 70, column: 33, scope: !3854)
!3857 = !DILocation(line: 70, column: 26, scope: !3854)
!3858 = !DILocation(line: 70, column: 59, scope: !3854)
!3859 = !DILocation(line: 71, column: 7, scope: !3854)
!3860 = !DILocation(line: 71, column: 10, scope: !3854)
!3861 = !DILocation(line: 70, column: 7, scope: !3804)
!3862 = !DILocation(line: 100, column: 12, scope: !3804)
!3863 = !DILocation(line: 105, column: 7, scope: !3804)
!3864 = !DILocation(line: 72, column: 19, scope: !3854)
!3865 = !DILocation(line: 105, column: 19, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3804, file: !813, line: 105, column: 7)
!3867 = !DILocation(line: 107, column: 13, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3866, file: !813, line: 106, column: 5)
!3869 = !DILocation(line: 109, column: 5, scope: !3868)
!3870 = !DILocation(line: 112, column: 1, scope: !3804)
!3871 = !DISubprogram(name: "fileno", scope: !443, file: !443, line: 809, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3872 = !DISubprogram(name: "fclose", scope: !443, file: !443, line: 178, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3873 = !DISubprogram(name: "__freading", scope: !3801, file: !3801, line: 51, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3874 = !DISubprogram(name: "lseek", scope: !1428, file: !1428, line: 339, type: !3875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!215, !74, !215, !74}
!3877 = distinct !DISubprogram(name: "rpl_fflush", scope: !815, file: !815, line: 130, type: !3878, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3914)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!74, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3882, file: !193, line: 51, baseType: !74, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3882, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3882, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3882, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3882, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3882, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3882, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3882, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3882, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3882, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3882, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3882, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3882, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3882, file: !193, line: 70, baseType: !3898, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3882, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3882, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3882, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3882, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3882, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3882, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3882, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3882, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3882, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3882, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3882, file: !193, line: 93, baseType: !3898, size: 64, offset: 1344)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3882, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3882, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3882, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3882, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3914 = !{!3915}
!3915 = !DILocalVariable(name: "stream", arg: 1, scope: !3877, file: !815, line: 130, type: !3880)
!3916 = !DILocation(line: 0, scope: !3877)
!3917 = !DILocation(line: 151, column: 14, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3877, file: !815, line: 151, column: 7)
!3919 = !DILocation(line: 151, column: 22, scope: !3918)
!3920 = !DILocation(line: 151, column: 27, scope: !3918)
!3921 = !DILocation(line: 151, column: 7, scope: !3877)
!3922 = !DILocation(line: 152, column: 12, scope: !3918)
!3923 = !DILocation(line: 152, column: 5, scope: !3918)
!3924 = !DILocalVariable(name: "fp", arg: 1, scope: !3925, file: !815, line: 42, type: !3880)
!3925 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !815, file: !815, line: 42, type: !3926, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !3880}
!3928 = !{!3924}
!3929 = !DILocation(line: 0, scope: !3925, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 157, column: 3, scope: !3877)
!3931 = !DILocation(line: 44, column: 12, scope: !3932, inlinedAt: !3930)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !815, line: 44, column: 7)
!3933 = !DILocation(line: 44, column: 19, scope: !3932, inlinedAt: !3930)
!3934 = !DILocation(line: 44, column: 7, scope: !3925, inlinedAt: !3930)
!3935 = !DILocation(line: 46, column: 5, scope: !3932, inlinedAt: !3930)
!3936 = !DILocation(line: 159, column: 10, scope: !3877)
!3937 = !DILocation(line: 159, column: 3, scope: !3877)
!3938 = !DILocation(line: 236, column: 1, scope: !3877)
!3939 = !DISubprogram(name: "fflush", scope: !443, file: !443, line: 230, type: !3878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!3940 = distinct !DISubprogram(name: "rpl_fseeko", scope: !817, file: !817, line: 28, type: !3941, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !3978)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!74, !3943, !3977, !74}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3945)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3945, file: !193, line: 51, baseType: !74, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3945, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3945, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3945, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3945, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3945, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3945, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3945, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3945, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3945, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3945, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3945, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3945, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3945, file: !193, line: 70, baseType: !3961, size: 64, offset: 832)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3945, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3945, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3945, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3945, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3945, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3945, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3945, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3945, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3945, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3945, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3945, file: !193, line: 93, baseType: !3961, size: 64, offset: 1344)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3945, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3945, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3945, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3945, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !443, line: 63, baseType: !215)
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "fp", arg: 1, scope: !3940, file: !817, line: 28, type: !3943)
!3980 = !DILocalVariable(name: "offset", arg: 2, scope: !3940, file: !817, line: 28, type: !3977)
!3981 = !DILocalVariable(name: "whence", arg: 3, scope: !3940, file: !817, line: 28, type: !74)
!3982 = !DILocalVariable(name: "pos", scope: !3983, file: !817, line: 123, type: !3977)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !817, line: 119, column: 5)
!3984 = distinct !DILexicalBlock(scope: !3940, file: !817, line: 55, column: 7)
!3985 = !DILocation(line: 0, scope: !3940)
!3986 = !DILocation(line: 55, column: 12, scope: !3984)
!3987 = !{!1615, !847, i64 16}
!3988 = !DILocation(line: 55, column: 33, scope: !3984)
!3989 = !{!1615, !847, i64 8}
!3990 = !DILocation(line: 55, column: 25, scope: !3984)
!3991 = !DILocation(line: 56, column: 7, scope: !3984)
!3992 = !DILocation(line: 56, column: 15, scope: !3984)
!3993 = !DILocation(line: 56, column: 37, scope: !3984)
!3994 = !{!1615, !847, i64 32}
!3995 = !DILocation(line: 56, column: 29, scope: !3984)
!3996 = !DILocation(line: 57, column: 7, scope: !3984)
!3997 = !DILocation(line: 57, column: 15, scope: !3984)
!3998 = !{!1615, !847, i64 72}
!3999 = !DILocation(line: 57, column: 29, scope: !3984)
!4000 = !DILocation(line: 55, column: 7, scope: !3940)
!4001 = !DILocation(line: 123, column: 26, scope: !3983)
!4002 = !DILocation(line: 123, column: 19, scope: !3983)
!4003 = !DILocation(line: 0, scope: !3983)
!4004 = !DILocation(line: 124, column: 15, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3983, file: !817, line: 124, column: 11)
!4006 = !DILocation(line: 124, column: 11, scope: !3983)
!4007 = !DILocation(line: 135, column: 19, scope: !3983)
!4008 = !DILocation(line: 136, column: 12, scope: !3983)
!4009 = !DILocation(line: 136, column: 20, scope: !3983)
!4010 = !{!1615, !1616, i64 144}
!4011 = !DILocation(line: 167, column: 7, scope: !3983)
!4012 = !DILocation(line: 169, column: 10, scope: !3940)
!4013 = !DILocation(line: 169, column: 3, scope: !3940)
!4014 = !DILocation(line: 170, column: 1, scope: !3940)
!4015 = !DISubprogram(name: "fseeko", scope: !443, file: !443, line: 736, type: !4016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!74, !3943, !215, !74}
!4018 = distinct !DISubprogram(name: "hard_locale", scope: !742, file: !742, line: 28, type: !4019, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!176, !74}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "category", arg: 1, scope: !4018, file: !742, line: 28, type: !74)
!4023 = !DILocalVariable(name: "locale", scope: !4018, file: !742, line: 30, type: !4024)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4025)
!4025 = !{!4026}
!4026 = !DISubrange(count: 257)
!4027 = !DILocation(line: 0, scope: !4018)
!4028 = !DILocation(line: 30, column: 3, scope: !4018)
!4029 = !DILocation(line: 30, column: 8, scope: !4018)
!4030 = !DILocation(line: 32, column: 7, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4018, file: !742, line: 32, column: 7)
!4032 = !DILocation(line: 32, column: 7, scope: !4018)
!4033 = !DILocalVariable(name: "__s1", arg: 1, scope: !4034, file: !922, line: 1359, type: !138)
!4034 = distinct !DISubprogram(name: "streq", scope: !922, file: !922, line: 1359, type: !923, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4035)
!4035 = !{!4033, !4036}
!4036 = !DILocalVariable(name: "__s2", arg: 2, scope: !4034, file: !922, line: 1359, type: !138)
!4037 = !DILocation(line: 0, scope: !4034, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 35, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4018, file: !742, line: 35, column: 7)
!4040 = !DILocation(line: 1361, column: 11, scope: !4034, inlinedAt: !4038)
!4041 = !DILocation(line: 1361, column: 10, scope: !4034, inlinedAt: !4038)
!4042 = !DILocation(line: 35, column: 29, scope: !4039)
!4043 = !DILocation(line: 0, scope: !4034, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 35, column: 32, scope: !4039)
!4045 = !DILocation(line: 1361, column: 11, scope: !4034, inlinedAt: !4044)
!4046 = !DILocation(line: 1361, column: 10, scope: !4034, inlinedAt: !4044)
!4047 = !DILocation(line: 35, column: 7, scope: !4018)
!4048 = !DILocation(line: 46, column: 3, scope: !4018)
!4049 = !DILocation(line: 47, column: 1, scope: !4018)
!4050 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !747, file: !747, line: 100, type: !4051, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4054)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!135, !1838, !138, !135, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!4054 = !{!4055, !4056, !4057, !4058, !4059}
!4055 = !DILocalVariable(name: "pwc", arg: 1, scope: !4050, file: !747, line: 100, type: !1838)
!4056 = !DILocalVariable(name: "s", arg: 2, scope: !4050, file: !747, line: 100, type: !138)
!4057 = !DILocalVariable(name: "n", arg: 3, scope: !4050, file: !747, line: 100, type: !135)
!4058 = !DILocalVariable(name: "ps", arg: 4, scope: !4050, file: !747, line: 100, type: !4053)
!4059 = !DILocalVariable(name: "ret", scope: !4050, file: !747, line: 130, type: !135)
!4060 = !DILocation(line: 0, scope: !4050)
!4061 = !DILocation(line: 105, column: 9, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4050, file: !747, line: 105, column: 7)
!4063 = !DILocation(line: 105, column: 7, scope: !4050)
!4064 = !DILocation(line: 117, column: 10, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4050, file: !747, line: 117, column: 7)
!4066 = !DILocation(line: 117, column: 7, scope: !4050)
!4067 = !DILocation(line: 130, column: 16, scope: !4050)
!4068 = !DILocation(line: 135, column: 11, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4050, file: !747, line: 135, column: 7)
!4070 = !DILocation(line: 135, column: 25, scope: !4069)
!4071 = !DILocation(line: 135, column: 30, scope: !4069)
!4072 = !DILocation(line: 135, column: 7, scope: !4050)
!4073 = !DILocalVariable(name: "ps", arg: 1, scope: !4074, file: !1249, line: 1135, type: !4053)
!4074 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !4075, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !4053}
!4077 = !{!4073}
!4078 = !DILocation(line: 0, scope: !4074, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 137, column: 5, scope: !4069)
!4080 = !DILocalVariable(name: "__dest", arg: 1, scope: !4081, file: !1258, line: 57, type: !133)
!4081 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4082)
!4082 = !{!4080, !4083, !4084}
!4083 = !DILocalVariable(name: "__ch", arg: 2, scope: !4081, file: !1258, line: 57, type: !74)
!4084 = !DILocalVariable(name: "__len", arg: 3, scope: !4081, file: !1258, line: 57, type: !135)
!4085 = !DILocation(line: 0, scope: !4081, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 1137, column: 3, scope: !4074, inlinedAt: !4079)
!4087 = !DILocation(line: 59, column: 10, scope: !4081, inlinedAt: !4086)
!4088 = !DILocation(line: 137, column: 5, scope: !4069)
!4089 = !DILocation(line: 138, column: 11, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4050, file: !747, line: 138, column: 7)
!4091 = !DILocation(line: 138, column: 7, scope: !4050)
!4092 = !DILocation(line: 139, column: 5, scope: !4090)
!4093 = !DILocation(line: 143, column: 26, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4050, file: !747, line: 143, column: 7)
!4095 = !DILocation(line: 143, column: 41, scope: !4094)
!4096 = !DILocation(line: 143, column: 7, scope: !4050)
!4097 = !DILocation(line: 145, column: 15, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !747, line: 145, column: 11)
!4099 = distinct !DILexicalBlock(scope: !4094, file: !747, line: 144, column: 5)
!4100 = !DILocation(line: 145, column: 11, scope: !4099)
!4101 = !DILocation(line: 146, column: 32, scope: !4098)
!4102 = !DILocation(line: 146, column: 16, scope: !4098)
!4103 = !DILocation(line: 146, column: 14, scope: !4098)
!4104 = !DILocation(line: 146, column: 9, scope: !4098)
!4105 = !DILocation(line: 286, column: 1, scope: !4050)
!4106 = !DISubprogram(name: "mbsinit", scope: !1765, file: !1765, line: 293, type: !4107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !894)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!74, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!4111 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !821, file: !821, line: 27, type: !3290, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "ptr", arg: 1, scope: !4111, file: !821, line: 27, type: !133)
!4114 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4111, file: !821, line: 27, type: !135)
!4115 = !DILocalVariable(name: "size", arg: 3, scope: !4111, file: !821, line: 27, type: !135)
!4116 = !DILocalVariable(name: "nbytes", scope: !4111, file: !821, line: 29, type: !135)
!4117 = !DILocation(line: 0, scope: !4111)
!4118 = !DILocation(line: 30, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4111, file: !821, line: 30, column: 7)
!4120 = !DILocalVariable(name: "ptr", arg: 1, scope: !4121, file: !3382, line: 2057, type: !133)
!4121 = distinct !DISubprogram(name: "rpl_realloc", scope: !3382, file: !3382, line: 2057, type: !3374, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4122)
!4122 = !{!4120, !4123}
!4123 = !DILocalVariable(name: "size", arg: 2, scope: !4121, file: !3382, line: 2057, type: !135)
!4124 = !DILocation(line: 0, scope: !4121, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 37, column: 10, scope: !4111)
!4126 = !DILocation(line: 2059, column: 24, scope: !4121, inlinedAt: !4125)
!4127 = !DILocation(line: 2059, column: 10, scope: !4121, inlinedAt: !4125)
!4128 = !DILocation(line: 37, column: 3, scope: !4111)
!4129 = !DILocation(line: 32, column: 7, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4119, file: !821, line: 31, column: 5)
!4131 = !DILocation(line: 32, column: 13, scope: !4130)
!4132 = !DILocation(line: 33, column: 7, scope: !4130)
!4133 = !DILocation(line: 38, column: 1, scope: !4111)
!4134 = distinct !DISubprogram(name: "setlocale_null_r", scope: !824, file: !824, line: 154, type: !4135, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!74, !74, !132, !135}
!4137 = !{!4138, !4139, !4140}
!4138 = !DILocalVariable(name: "category", arg: 1, scope: !4134, file: !824, line: 154, type: !74)
!4139 = !DILocalVariable(name: "buf", arg: 2, scope: !4134, file: !824, line: 154, type: !132)
!4140 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4134, file: !824, line: 154, type: !135)
!4141 = !DILocation(line: 0, scope: !4134)
!4142 = !DILocation(line: 159, column: 10, scope: !4134)
!4143 = !DILocation(line: 159, column: 3, scope: !4134)
!4144 = distinct !DISubprogram(name: "setlocale_null", scope: !824, file: !824, line: 186, type: !4145, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!138, !74}
!4147 = !{!4148}
!4148 = !DILocalVariable(name: "category", arg: 1, scope: !4144, file: !824, line: 186, type: !74)
!4149 = !DILocation(line: 0, scope: !4144)
!4150 = !DILocation(line: 189, column: 10, scope: !4144)
!4151 = !DILocation(line: 189, column: 3, scope: !4144)
!4152 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !826, file: !826, line: 35, type: !4145, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4153)
!4153 = !{!4154, !4155}
!4154 = !DILocalVariable(name: "category", arg: 1, scope: !4152, file: !826, line: 35, type: !74)
!4155 = !DILocalVariable(name: "result", scope: !4152, file: !826, line: 37, type: !138)
!4156 = !DILocation(line: 0, scope: !4152)
!4157 = !DILocation(line: 37, column: 24, scope: !4152)
!4158 = !DILocation(line: 62, column: 3, scope: !4152)
!4159 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !826, file: !826, line: 66, type: !4135, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165}
!4161 = !DILocalVariable(name: "category", arg: 1, scope: !4159, file: !826, line: 66, type: !74)
!4162 = !DILocalVariable(name: "buf", arg: 2, scope: !4159, file: !826, line: 66, type: !132)
!4163 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4159, file: !826, line: 66, type: !135)
!4164 = !DILocalVariable(name: "result", scope: !4159, file: !826, line: 111, type: !138)
!4165 = !DILocalVariable(name: "length", scope: !4166, file: !826, line: 125, type: !135)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !826, line: 124, column: 5)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !826, line: 113, column: 7)
!4168 = !DILocation(line: 0, scope: !4159)
!4169 = !DILocation(line: 0, scope: !4152, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 111, column: 24, scope: !4159)
!4171 = !DILocation(line: 37, column: 24, scope: !4152, inlinedAt: !4170)
!4172 = !DILocation(line: 113, column: 14, scope: !4167)
!4173 = !DILocation(line: 113, column: 7, scope: !4159)
!4174 = !DILocation(line: 116, column: 19, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !826, line: 116, column: 11)
!4176 = distinct !DILexicalBlock(scope: !4167, file: !826, line: 114, column: 5)
!4177 = !DILocation(line: 116, column: 11, scope: !4176)
!4178 = !DILocation(line: 120, column: 16, scope: !4175)
!4179 = !DILocation(line: 120, column: 9, scope: !4175)
!4180 = !DILocation(line: 125, column: 23, scope: !4166)
!4181 = !DILocation(line: 0, scope: !4166)
!4182 = !DILocation(line: 126, column: 18, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4166, file: !826, line: 126, column: 11)
!4184 = !DILocation(line: 126, column: 11, scope: !4166)
!4185 = !DILocation(line: 128, column: 39, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !826, line: 127, column: 9)
!4187 = !DILocalVariable(name: "__dest", arg: 1, scope: !4188, file: !1258, line: 26, type: !3650)
!4188 = distinct !DISubprogram(name: "memcpy", scope: !1258, file: !1258, line: 26, type: !3648, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4189)
!4189 = !{!4187, !4190, !4191}
!4190 = !DILocalVariable(name: "__src", arg: 2, scope: !4188, file: !1258, line: 26, type: !1053)
!4191 = !DILocalVariable(name: "__len", arg: 3, scope: !4188, file: !1258, line: 26, type: !135)
!4192 = !DILocation(line: 0, scope: !4188, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 128, column: 11, scope: !4186)
!4194 = !DILocation(line: 29, column: 10, scope: !4188, inlinedAt: !4193)
!4195 = !DILocation(line: 129, column: 11, scope: !4186)
!4196 = !DILocation(line: 133, column: 23, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !826, line: 133, column: 15)
!4198 = distinct !DILexicalBlock(scope: !4183, file: !826, line: 132, column: 9)
!4199 = !DILocation(line: 133, column: 15, scope: !4198)
!4200 = !DILocation(line: 138, column: 44, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !826, line: 134, column: 13)
!4202 = !DILocation(line: 0, scope: !4188, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 138, column: 15, scope: !4201)
!4204 = !DILocation(line: 29, column: 10, scope: !4188, inlinedAt: !4203)
!4205 = !DILocation(line: 139, column: 15, scope: !4201)
!4206 = !DILocation(line: 139, column: 32, scope: !4201)
!4207 = !DILocation(line: 140, column: 13, scope: !4201)
!4208 = !DILocation(line: 0, scope: !4167)
!4209 = !DILocation(line: 145, column: 1, scope: !4159)
