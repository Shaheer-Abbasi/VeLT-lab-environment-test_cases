; ModuleID = 'src/pathchk.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.53, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !64
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !427
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !419
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !421
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !423
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !425
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !429
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !435
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !466
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !437
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !456
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !458
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !460
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !462
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !464
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !468
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !470
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !475
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !480
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !498
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !504
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !506
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !508
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !537
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !540
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !542
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !544
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !546
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !548
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !550
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !552
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !554
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !556
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 16, !dbg !558
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !571
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !585
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !623
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !630
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !587
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !632
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !575
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !592
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !594
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !596
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !598
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !600
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !638
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !641
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !643
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !645
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !647
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !649
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !654
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !659
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !661
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !666
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !671
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !676
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !681
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !683
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !688
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !690
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !695
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !700
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !702
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !704
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !706
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !708
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !710
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !712
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !717
@exit_failure = dso_local global i32 1, align 4, !dbg !723
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !729
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !732
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !734
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !736
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !739
@internal_state.150 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !742

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !831 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !835, metadata !DIExpression()), !dbg !836
  %2 = icmp eq i32 %0, 0, !dbg !837
  br i1 %2, label %8, label %3, !dbg !839

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !840, !tbaa !842
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !840
  %6 = load ptr, ptr @program_name, align 8, !dbg !840, !tbaa !842
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !840
  br label %34, !dbg !840

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !846
  %10 = load ptr, ptr @program_name, align 8, !dbg !846, !tbaa !842
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !846
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !848
  %13 = load ptr, ptr @stdout, align 8, !dbg !848, !tbaa !842
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !848
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !849
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !849
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !850
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !850
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !851
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !851
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !852
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !852
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !853
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !853
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !854, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata !873, metadata !867, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr poison, metadata !866, metadata !DIExpression()), !dbg !871
  tail call void @emit_bug_reporting_address() #37, !dbg !874
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !875
  call void @llvm.dbg.value(metadata ptr %20, metadata !869, metadata !DIExpression()), !dbg !871
  %21 = icmp eq ptr %20, null, !dbg !876
  br i1 %21, label %29, label %22, !dbg !878

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !879
  %24 = icmp eq i32 %23, 0, !dbg !879
  br i1 %24, label %29, label %25, !dbg !880

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !881
  %27 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !842
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !881
  br label %29, !dbg !883

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !866, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !871
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !884
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !884
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !885
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !885
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !886
  unreachable, !dbg !886
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !887 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !891 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !897 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !900 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !166 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !170, metadata !DIExpression()), !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !904
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !905, !tbaa !906
  %3 = icmp eq i32 %2, -1, !dbg !908
  br i1 %3, label %4, label %16, !dbg !909

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !172, metadata !DIExpression()), !dbg !911
  %6 = icmp eq ptr %5, null, !dbg !912
  br i1 %6, label %14, label %7, !dbg !913

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !914, !tbaa !915
  %9 = icmp eq i8 %8, 0, !dbg !914
  br i1 %9, label %14, label %10, !dbg !916

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !917, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !923, metadata !DIExpression()), !dbg !924
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !926
  %12 = icmp eq i32 %11, 0, !dbg !927
  %13 = zext i1 %12 to i32, !dbg !916
  br label %14, !dbg !916

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !928, !tbaa !906
  br label %16, !dbg !929

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !930
  %18 = icmp eq i32 %17, 0, !dbg !930
  br i1 %18, label %22, label %19, !dbg !932

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !842
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !933
  br label %124, !dbg !935

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !904
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !936
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !177, metadata !DIExpression()), !dbg !904
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !178, metadata !DIExpression()), !dbg !904
  %26 = icmp eq ptr %25, null, !dbg !939
  br i1 %26, label %54, label %27, !dbg !940

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !941
  br i1 %28, label %54, label %29, !dbg !942

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !179, metadata !DIExpression()), !dbg !943
  tail call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !943
  %30 = icmp ult ptr %24, %25, !dbg !944
  br i1 %30, label %31, label %54, !dbg !945

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !904
  %33 = load ptr, ptr %32, align 8, !tbaa !842
  br label %34, !dbg !945

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !179, metadata !DIExpression()), !dbg !943
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !183, metadata !DIExpression()), !dbg !943
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !946
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !179, metadata !DIExpression()), !dbg !943
  %38 = load i8, ptr %35, align 1, !dbg !946, !tbaa !915
  %39 = sext i8 %38 to i64, !dbg !946
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !946
  %41 = load i16, ptr %40, align 2, !dbg !946, !tbaa !947
  %42 = freeze i16 %41, !dbg !949
  %43 = lshr i16 %42, 13, !dbg !949
  %44 = and i16 %43, 1, !dbg !949
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !950
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !183, metadata !DIExpression()), !dbg !943
  %47 = icmp ult ptr %37, %25, !dbg !944
  %48 = icmp ult i64 %46, 2, !dbg !951
  %49 = select i1 %47, i1 %48, i1 false, !dbg !951
  br i1 %49, label %34, label %50, !dbg !945, !llvm.loop !952

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !954
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !956
  %53 = zext i1 %51 to i8, !dbg !956
  br label %54, !dbg !956

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !904
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !904
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !175, metadata !DIExpression()), !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !178, metadata !DIExpression()), !dbg !904
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #38, !dbg !957
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !184, metadata !DIExpression()), !dbg !904
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !958
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !185, metadata !DIExpression()), !dbg !904
  br label %59, !dbg !959

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !904
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !904
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !175, metadata !DIExpression()), !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !185, metadata !DIExpression()), !dbg !904
  %62 = load i8, ptr %60, align 1, !dbg !960, !tbaa !915
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !961

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !962
  %65 = load i8, ptr %64, align 1, !dbg !965, !tbaa !915
  %66 = icmp eq i8 %65, 45, !dbg !966
  %67 = select i1 %66, i8 0, i8 %61, !dbg !967
  br label %68, !dbg !967

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !904
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !175, metadata !DIExpression()), !dbg !904
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !968
  %71 = load ptr, ptr %70, align 8, !dbg !968, !tbaa !842
  %72 = sext i8 %62 to i64, !dbg !968
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !968
  %74 = load i16, ptr %73, align 2, !dbg !968, !tbaa !947
  %75 = and i16 %74, 8192, !dbg !968
  %76 = icmp eq i16 %75, 0, !dbg !968
  br i1 %76, label %92, label %77, !dbg !970

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !971
  br i1 %78, label %94, label %79, !dbg !974

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !975
  %81 = load i8, ptr %80, align 1, !dbg !975, !tbaa !915
  %82 = sext i8 %81 to i64, !dbg !975
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !975
  %84 = load i16, ptr %83, align 2, !dbg !975, !tbaa !947
  %85 = and i16 %84, 8192, !dbg !975
  %86 = icmp eq i16 %85, 0, !dbg !975
  br i1 %86, label %87, label %94, !dbg !976

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !977
  %89 = icmp ne i8 %88, 0, !dbg !977
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !979
  br i1 %91, label %92, label %94, !dbg !979

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !185, metadata !DIExpression()), !dbg !904
  br label %59, !dbg !959, !llvm.loop !981

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !983
  %96 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !842
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !873, metadata !923, metadata !DIExpression()), !dbg !1002
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !242, metadata !DIExpression()), !dbg !904
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !1004
  %99 = icmp eq i32 %98, 0, !dbg !1004
  br i1 %99, label %103, label %100, !dbg !1006

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !1007
  %102 = icmp eq i32 %101, 0, !dbg !1007
  br i1 %102, label %103, label %106, !dbg !1008

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1009
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !1009
  br label %109, !dbg !1011

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1012
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !1012
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !842
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !1014
  %112 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !842
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %112), !dbg !1015
  %114 = ptrtoint ptr %60 to i64, !dbg !1016
  %115 = sub i64 %114, %95, !dbg !1016
  %116 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !842
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1016
  %118 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !842
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !1017
  %120 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !842
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %120), !dbg !1018
  %122 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !842
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1019
  br label %124, !dbg !1020

124:                                              ; preds = %109, %19
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
  %3 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1067
  %4 = alloca %struct.stat, align 8, !DIAssignID !1068
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1061, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1062, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1063, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1065, metadata !DIExpression()), !dbg !1069
  %5 = load ptr, ptr %1, align 8, !dbg !1070, !tbaa !842
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1071
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1072
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1073
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1074
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1075
  br label %10, !dbg !1076

10:                                               ; preds = %18, %2
  %11 = phi i1 [ true, %2 ], [ false, %18 ]
  %12 = phi i8 [ 0, %2 ], [ %19, %18 ]
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !1065, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1064, metadata !DIExpression()), !dbg !1069
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1066, metadata !DIExpression()), !dbg !1069
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 128, label %18
    i32 112, label %16
    i32 80, label %14
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1076, !llvm.loop !1078

14:                                               ; preds = %10, %20
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1064, metadata !DIExpression()), !dbg !1069
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1066, metadata !DIExpression()), !dbg !1069
  switch i32 %15, label %28 [
    i32 -1, label %31
    i32 128, label %18
    i32 112, label %16
    i32 80, label %20
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1076, !llvm.loop !1078

16:                                               ; preds = %14, %10
  %17 = phi i8 [ %12, %10 ], [ 1, %14 ], !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()), !dbg !1069
  br label %18, !dbg !1080

18:                                               ; preds = %10, %14, %16
  %19 = phi i8 [ %17, %16 ], [ 1, %14 ], [ 1, %10 ]
  br label %10, !dbg !1076, !llvm.loop !1078

20:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1069
  br label %14, !dbg !1083, !llvm.loop !1084

21:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 0) #41, !dbg !1086
  unreachable, !dbg !1086

22:                                               ; preds = %10, %14
  %23 = load ptr, ptr @stdout, align 8, !dbg !1087, !tbaa !842
  %24 = load ptr, ptr @Version, align 8, !dbg !1087, !tbaa !842
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1087
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #37, !dbg !1087
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1087
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #37, !dbg !1087
  tail call void @exit(i32 noundef 0) #39, !dbg !1087
  unreachable, !dbg !1087

28:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 1) #41, !dbg !1088
  unreachable, !dbg !1088

29:                                               ; preds = %10
  %30 = icmp ne i8 %12, 0
  br label %31, !dbg !1089

31:                                               ; preds = %14, %29
  %32 = phi i1 [ %30, %29 ], [ true, %14 ], !dbg !1069
  %33 = load i32, ptr @optind, align 4, !dbg !1089, !tbaa !906
  %34 = icmp eq i32 %33, %0, !dbg !1091
  br i1 %34, label %37, label %35, !dbg !1092

35:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1069
  %36 = icmp slt i32 %33, %0, !dbg !1093
  br i1 %36, label %39, label %180, !dbg !1096

37:                                               ; preds = %31
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1097
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %38) #37, !dbg !1097
  tail call void @usage(i32 noundef 1) #41, !dbg !1099
  unreachable, !dbg !1099

39:                                               ; preds = %35, %171
  %40 = phi i32 [ %175, %171 ], [ %33, %35 ]
  %41 = phi i1 [ %173, %171 ], [ true, %35 ]
  %42 = sext i32 %40 to i64, !dbg !1100
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42, !dbg !1100
  %44 = load ptr, ptr %43, align 8, !dbg !1100, !tbaa !842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1101, metadata !DIExpression(), metadata !1068, metadata ptr %4, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr %44, metadata !1108, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i1 %11, metadata !1109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1183
  call void @llvm.dbg.value(metadata i1 %32, metadata !1110, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1183
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #38, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %45, metadata !1111, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, metadata !1115, metadata !DIExpression()), !dbg !1183
  br i1 %32, label %46, label %63, !dbg !1185

46:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr %44, metadata !1187, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr %44, metadata !1192, metadata !DIExpression()), !dbg !1196
  %47 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 45) #38, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %47, metadata !1192, metadata !DIExpression()), !dbg !1196
  %48 = icmp eq ptr %47, null, !dbg !1199
  br i1 %48, label %63, label %53, !dbg !1199

49:                                               ; preds = %56
  %50 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %50, metadata !1192, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %50, metadata !1192, metadata !DIExpression()), !dbg !1196
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 45) #38, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %51, metadata !1192, metadata !DIExpression()), !dbg !1196
  %52 = icmp eq ptr %51, null, !dbg !1199
  br i1 %52, label %63, label %53, !dbg !1199, !llvm.loop !1201

53:                                               ; preds = %46, %49
  %54 = phi ptr [ %51, %49 ], [ %47, %46 ]
  %55 = icmp eq ptr %54, %44, !dbg !1203
  br i1 %55, label %60, label %56, !dbg !1205

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %54, i64 -1, !dbg !1206
  %58 = load i8, ptr %57, align 1, !dbg !1206, !tbaa !915
  %59 = icmp eq i8 %58, 47, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %54, metadata !1192, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1196
  br i1 %59, label %60, label %49, !dbg !1208

60:                                               ; preds = %56, %53
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #37, !dbg !1209
  %62 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %44) #37, !dbg !1209
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %61, ptr noundef %62) #37, !dbg !1209
  br label %171, !dbg !1211

63:                                               ; preds = %49, %46, %39
  %64 = icmp eq i64 %45, 0
  br i1 %11, label %65, label %67, !dbg !1212

65:                                               ; preds = %63
  %66 = select i1 %32, i1 %64, i1 false, !dbg !1214
  br i1 %66, label %68, label %83, !dbg !1214

67:                                               ; preds = %63
  br i1 %64, label %68, label %70, !dbg !1215

68:                                               ; preds = %67, %65
  %69 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !1216
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %69) #37, !dbg !1216
  br label %171, !dbg !1218

70:                                               ; preds = %67
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1219, metadata !DIExpression(), metadata !1067, metadata ptr %3, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr %44, metadata !1226, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %45, metadata !1227, metadata !DIExpression()), !dbg !1245
  %71 = call i64 @strspn(ptr noundef %44, ptr noundef nonnull @.str.64) #38, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %71, metadata !1228, metadata !DIExpression()), !dbg !1245
  %72 = getelementptr inbounds i8, ptr %44, i64 %71, !dbg !1247
  call void @llvm.dbg.value(metadata ptr %72, metadata !1229, metadata !DIExpression()), !dbg !1245
  %73 = load i8, ptr %72, align 1, !dbg !1248, !tbaa !915
  %74 = icmp eq i8 %73, 0, !dbg !1248
  br i1 %74, label %110, label %75, !dbg !1249

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %3, metadata !1251, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata ptr %3, metadata !1260, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 0, metadata !1266, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64 8, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i64 0, ptr %3, align 8, !dbg !1270
  %76 = sub i64 %45, %71, !dbg !1271
  %77 = call i64 @rpl_mbrlen(ptr noundef nonnull %72, i64 noundef %76, ptr noundef nonnull %3) #37, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %77, metadata !1230, metadata !DIExpression()), !dbg !1241
  %78 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1273
  %79 = icmp ult i64 %77, 17, !dbg !1273
  %80 = select i1 %79, i64 %77, i64 1, !dbg !1273
  %81 = call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef nonnull %72, i64 noundef %80) #37, !dbg !1273
  %82 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %44) #37, !dbg !1273
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %78, ptr noundef %81, ptr noundef %82) #37, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1274
  br label %171, !dbg !1275

83:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #37, !dbg !1276
  %84 = call i32 @lstat(ptr noundef %44, ptr noundef nonnull %4) #37, !dbg !1277
  %85 = icmp eq i32 %84, 0, !dbg !1279
  br i1 %85, label %86, label %87, !dbg !1280

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1281
  call void @llvm.dbg.value(metadata i8 poison, metadata !1114, metadata !DIExpression()), !dbg !1183
  br label %171, !dbg !1282

87:                                               ; preds = %83
  %88 = tail call ptr @__errno_location() #40, !dbg !1283
  %89 = load i32, ptr %88, align 4, !dbg !1283, !tbaa !906
  %90 = icmp ne i32 %89, 2, !dbg !1285
  %91 = select i1 %90, i1 true, i1 %64, !dbg !1286
  br i1 %91, label %92, label %94, !dbg !1286

92:                                               ; preds = %87
  %93 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %44) #37, !dbg !1287
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %89, ptr noundef nonnull @.str.57, ptr noundef %93) #37, !dbg !1287
  call void @llvm.dbg.value(metadata i8 0, metadata !1115, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1281
  br label %171

94:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8 0, metadata !1115, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1281
  %95 = icmp sgt i64 %45, 255
  br i1 %95, label %96, label %109, !dbg !1289

96:                                               ; preds = %94
  %97 = load i8, ptr %44, align 1, !dbg !1290, !tbaa !915
  %98 = icmp eq i8 %97, 47, !dbg !1291
  %99 = select i1 %98, ptr @.str.58, ptr @.str.59, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %99, metadata !1122, metadata !DIExpression()), !dbg !1292
  store i32 0, ptr %88, align 4, !dbg !1293, !tbaa !906
  %100 = call i64 @pathconf(ptr noundef nonnull %99, i32 noundef 4) #37, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %100, metadata !1119, metadata !DIExpression()), !dbg !1292
  %101 = icmp slt i64 %100, 0, !dbg !1295
  br i1 %101, label %102, label %107, !dbg !1297

102:                                              ; preds = %96
  %103 = load i32, ptr %88, align 4, !dbg !1298, !tbaa !906
  %104 = icmp eq i32 %103, 0, !dbg !1299
  br i1 %104, label %107, label %105, !dbg !1300

105:                                              ; preds = %102
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !1301
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %103, ptr noundef %106, ptr noundef nonnull %99) #37, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %100, metadata !1116, metadata !DIExpression()), !dbg !1303
  br label %171

107:                                              ; preds = %102, %96
  call void @llvm.dbg.value(metadata i64 %100, metadata !1116, metadata !DIExpression()), !dbg !1303
  %108 = icmp sgt i64 %100, %45, !dbg !1304
  br i1 %108, label %109, label %112, !dbg !1306

109:                                              ; preds = %94, %107
  br label %117, !dbg !1307

110:                                              ; preds = %70
  call void @llvm.dbg.value(metadata i64 256, metadata !1116, metadata !DIExpression()), !dbg !1303
  %111 = icmp slt i64 %45, 256, !dbg !1304
  br i1 %111, label %132, label %112, !dbg !1306

112:                                              ; preds = %110, %107
  %113 = phi i64 [ 256, %110 ], [ %100, %107 ]
  %114 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #37, !dbg !1314
  %115 = add nsw i64 %113, -1, !dbg !1314
  %116 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %44) #37, !dbg !1314
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %114, i64 noundef %115, i64 noundef %45, ptr noundef %116) #37, !dbg !1314
  br label %171, !dbg !1316

117:                                              ; preds = %121, %109
  %118 = phi ptr [ %44, %109 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata ptr %118, metadata !1312, metadata !DIExpression()), !dbg !1317
  %119 = load i8, ptr %118, align 1, !dbg !1318, !tbaa !915
  %120 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %120, metadata !1312, metadata !DIExpression()), !dbg !1317
  switch i8 %119, label %123 [
    i8 47, label %121
    i8 0, label %171
  ], !dbg !1307

121:                                              ; preds = %117, %129
  %122 = phi ptr [ %120, %117 ], [ %130, %129 ]
  br label %117, !dbg !1317, !llvm.loop !1320

123:                                              ; preds = %117, %127
  %124 = phi i64 [ %128, %127 ], [ 1, %117 ], !dbg !1323
  call void @llvm.dbg.value(metadata i64 %124, metadata !1330, metadata !DIExpression()), !dbg !1332
  %125 = getelementptr inbounds i8, ptr %118, i64 %124, !dbg !1333
  %126 = load i8, ptr %125, align 1, !dbg !1333, !tbaa !915
  switch i8 %126, label %127 [
    i8 47, label %129
    i8 0, label %129
  ], !dbg !1335

127:                                              ; preds = %123
  %128 = add i64 %124, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %128, metadata !1330, metadata !DIExpression()), !dbg !1332
  br label %123, !dbg !1337, !llvm.loop !1338

129:                                              ; preds = %123, %123
  %130 = getelementptr inbounds i8, ptr %118, i64 %124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1127, metadata !DIExpression()), !dbg !1341
  %131 = icmp ult i64 %124, 15, !dbg !1342
  call void @llvm.dbg.value(metadata i8 poison, metadata !1114, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr poison, metadata !1123, metadata !DIExpression()), !dbg !1344
  br i1 %131, label %121, label %132

132:                                              ; preds = %129, %110
  %133 = phi i64 [ 14, %110 ], [ 0, %129 ]
  br label %134, !dbg !1345

134:                                              ; preds = %132, %165
  %135 = phi i64 [ %157, %165 ], [ 14, %132 ], !dbg !1346
  %136 = phi i64 [ %158, %165 ], [ %133, %132 ], !dbg !1347
  %137 = phi ptr [ %166, %165 ], [ %44, %132 ], !dbg !1348
  call void @llvm.dbg.value(metadata ptr %137, metadata !1134, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %136, metadata !1133, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %135, metadata !1130, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %137, metadata !1312, metadata !DIExpression()), !dbg !1350
  br label %138, !dbg !1352

138:                                              ; preds = %138, %134
  %139 = phi ptr [ %137, %134 ], [ %141, %138 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !1312, metadata !DIExpression()), !dbg !1350
  %140 = load i8, ptr %139, align 1, !dbg !1353, !tbaa !915
  %141 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %141, metadata !1312, metadata !DIExpression()), !dbg !1350
  switch i8 %140, label %142 [
    i8 47, label %138
    i8 0, label %171
  ], !dbg !1352

142:                                              ; preds = %138
  %143 = icmp eq i64 %136, 0, !dbg !1355
  br i1 %143, label %144, label %156, !dbg !1356

144:                                              ; preds = %142
  %145 = icmp eq ptr %139, %44, !dbg !1357
  %146 = select i1 %145, ptr @.str.59, ptr %44, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %146, metadata !1142, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8 %140, metadata !1143, metadata !DIExpression()), !dbg !1359
  %147 = tail call ptr @__errno_location() #40, !dbg !1360
  store i32 0, ptr %147, align 4, !dbg !1361, !tbaa !906
  store i8 0, ptr %139, align 1, !dbg !1362, !tbaa !915
  %148 = call i64 @pathconf(ptr noundef %146, i32 noundef 3) #37, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %148, metadata !1139, metadata !DIExpression()), !dbg !1359
  store i8 %140, ptr %139, align 1, !dbg !1364, !tbaa !915
  %149 = icmp sgt i64 %148, -1, !dbg !1365
  br i1 %149, label %156, label %150, !dbg !1367

150:                                              ; preds = %144
  %151 = load i32, ptr %147, align 4, !dbg !1368, !tbaa !906
  switch i32 %151, label %153 [
    i32 0, label %156
    i32 2, label %152
  ], !dbg !1369

152:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i64 %135, metadata !1133, metadata !DIExpression()), !dbg !1346
  br label %156, !dbg !1370

153:                                              ; preds = %150
  store i8 0, ptr %139, align 1, !dbg !1372, !tbaa !915
  %154 = load i32, ptr %147, align 4, !dbg !1373, !tbaa !906
  %155 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %146) #37, !dbg !1373
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %154, ptr noundef nonnull @.str.57, ptr noundef %155) #37, !dbg !1373
  store i8 %140, ptr %139, align 1, !dbg !1374, !tbaa !915
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %135, metadata !1130, metadata !DIExpression()), !dbg !1346
  br label %171

156:                                              ; preds = %152, %150, %144, %142
  %157 = phi i64 [ %136, %142 ], [ 9223372036854775807, %150 ], [ %148, %144 ], [ %135, %152 ], !dbg !1375
  %158 = phi i64 [ %136, %142 ], [ 0, %150 ], [ 0, %144 ], [ %135, %152 ], !dbg !1347
  call void @llvm.dbg.value(metadata i64 %158, metadata !1133, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %157, metadata !1130, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %139, metadata !1329, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 1, metadata !1330, metadata !DIExpression()), !dbg !1376
  br label %159, !dbg !1378

159:                                              ; preds = %163, %156
  %160 = phi i64 [ 1, %156 ], [ %164, %163 ], !dbg !1379
  call void @llvm.dbg.value(metadata i64 %160, metadata !1330, metadata !DIExpression()), !dbg !1376
  %161 = getelementptr inbounds i8, ptr %139, i64 %160, !dbg !1380
  %162 = load i8, ptr %161, align 1, !dbg !1380, !tbaa !915
  switch i8 %162, label %163 [
    i8 47, label %165
    i8 0, label %165
  ], !dbg !1381

163:                                              ; preds = %159
  %164 = add i64 %160, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %164, metadata !1330, metadata !DIExpression()), !dbg !1376
  br label %159, !dbg !1383, !llvm.loop !1384

165:                                              ; preds = %159, %159
  %166 = getelementptr inbounds i8, ptr %139, i64 %160
  call void @llvm.dbg.value(metadata i64 %160, metadata !1136, metadata !DIExpression()), !dbg !1387
  %167 = icmp slt i64 %157, %160, !dbg !1388
  br i1 %167, label %168, label %134, !dbg !1389, !llvm.loop !1390

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i8 %162, metadata !1144, metadata !DIExpression()), !dbg !1392
  store i8 0, ptr %166, align 1, !dbg !1393, !tbaa !915
  %169 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1394
  %170 = call ptr @quote(ptr noundef nonnull %139) #37, !dbg !1394
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %169, i64 noundef %157, i64 noundef %160, ptr noundef %170) #37, !dbg !1394
  store i8 %162, ptr %166, align 1, !dbg !1395, !tbaa !915
  br label %171

171:                                              ; preds = %117, %138, %60, %68, %75, %86, %92, %105, %112, %153, %168
  %172 = phi i1 [ false, %68 ], [ false, %92 ], [ false, %60 ], [ false, %75 ], [ false, %105 ], [ false, %112 ], [ false, %168 ], [ false, %153 ], [ true, %86 ], [ true, %138 ], [ true, %117 ]
  %173 = and i1 %41, %172, !dbg !1396
  tail call void @llvm.dbg.value(metadata i1 %173, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1069
  %174 = load i32, ptr @optind, align 4, !dbg !1397, !tbaa !906
  %175 = add nsw i32 %174, 1, !dbg !1397
  store i32 %175, ptr @optind, align 4, !dbg !1397, !tbaa !906
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1069
  %176 = icmp slt i32 %175, %0, !dbg !1093
  br i1 %176, label %39, label %177, !dbg !1096, !llvm.loop !1398

177:                                              ; preds = %171
  %178 = xor i1 %173, true, !dbg !1400
  %179 = zext i1 %178 to i32, !dbg !1400
  br label %180, !dbg !1400

180:                                              ; preds = %177, %35
  %181 = phi i32 [ 0, %35 ], [ %179, %177 ], !dbg !1069
  ret i32 %181, !dbg !1401
}

; Function Attrs: nounwind
declare !dbg !1402 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1405 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1406 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1409 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1415 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1418 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1424 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1428 i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1434, metadata !DIExpression()), !dbg !1435
  store ptr %0, ptr @file_name, align 8, !dbg !1436, !tbaa !842
  ret void, !dbg !1437
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1438 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1444, !tbaa !1445
  ret void, !dbg !1447
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1448 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1453, !tbaa !842
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1454
  %3 = icmp eq i32 %2, 0, !dbg !1455
  br i1 %3, label %22, label %4, !dbg !1456

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1457, !tbaa !1445, !range !1458, !noundef !873
  %6 = icmp eq i8 %5, 0, !dbg !1457
  br i1 %6, label %11, label %7, !dbg !1459

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1460
  %9 = load i32, ptr %8, align 4, !dbg !1460, !tbaa !906
  %10 = icmp eq i32 %9, 32, !dbg !1461
  br i1 %10, label %22, label %11, !dbg !1462

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #37, !dbg !1463
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1450, metadata !DIExpression()), !dbg !1464
  %13 = load ptr, ptr @file_name, align 8, !dbg !1465, !tbaa !842
  %14 = icmp eq ptr %13, null, !dbg !1465
  %15 = tail call ptr @__errno_location() #40, !dbg !1467
  %16 = load i32, ptr %15, align 4, !dbg !1467, !tbaa !906
  br i1 %14, label %19, label %17, !dbg !1468

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1469
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #37, !dbg !1469
  br label %20, !dbg !1469

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #37, !dbg !1470
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1471, !tbaa !906
  tail call void @_exit(i32 noundef %21) #39, !dbg !1472
  unreachable, !dbg !1472

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1473, !tbaa !842
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1475
  %25 = icmp eq i32 %24, 0, !dbg !1476
  br i1 %25, label %28, label %26, !dbg !1477

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1478, !tbaa !906
  tail call void @_exit(i32 noundef %27) #39, !dbg !1479
  unreachable, !dbg !1479

28:                                               ; preds = %22
  ret void, !dbg !1480
}

; Function Attrs: noreturn
declare !dbg !1481 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1482 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1486, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1487, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1488, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1489, metadata !DIExpression()), !dbg !1490
  tail call fastcc void @flush_stdout(), !dbg !1491
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1492, !tbaa !842
  %6 = icmp eq ptr %5, null, !dbg !1492
  br i1 %6, label %8, label %7, !dbg !1494

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1495
  br label %12, !dbg !1495

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !842
  %10 = tail call ptr @getprogname() #38, !dbg !1496
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #37, !dbg !1496
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1498
  ret void, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1500 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 1, metadata !1504, metadata !DIExpression()), !dbg !1509
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1512
  %2 = icmp slt i32 %1, 0, !dbg !1513
  br i1 %2, label %6, label %3, !dbg !1514

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1515, !tbaa !842
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1515
  br label %6, !dbg !1515

6:                                                ; preds = %3, %0
  ret void, !dbg !1516
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1517 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1523
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1519, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1520, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1521, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1522, metadata !DIExpression()), !dbg !1524
  %6 = load ptr, ptr @stderr, align 8, !dbg !1525, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %6, metadata !1526, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %3, metadata !1567, metadata !DIExpression()), !dbg !1568
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1570
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1571, !tbaa !906
  %9 = add i32 %8, 1, !dbg !1571
  store i32 %9, ptr @error_message_count, align 4, !dbg !1571, !tbaa !906
  %10 = icmp eq i32 %1, 0, !dbg !1572
  br i1 %10, label %20, label %11, !dbg !1574

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1575, metadata !DIExpression(), metadata !1523, metadata ptr %5, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %1, metadata !1578, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1585
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %12, metadata !1579, metadata !DIExpression()), !dbg !1583
  %13 = icmp eq ptr %12, null, !dbg !1587
  br i1 %13, label %14, label %16, !dbg !1589

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !1590
  call void @llvm.dbg.value(metadata ptr %15, metadata !1579, metadata !DIExpression()), !dbg !1583
  br label %16, !dbg !1591

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1583
  call void @llvm.dbg.value(metadata ptr %17, metadata !1579, metadata !DIExpression()), !dbg !1583
  %18 = load ptr, ptr @stderr, align 8, !dbg !1592, !tbaa !842
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #37, !dbg !1592
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1593
  br label %20, !dbg !1594

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1595, !tbaa !842
  call void @llvm.dbg.value(metadata i32 10, metadata !1596, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %21, metadata !1602, metadata !DIExpression()), !dbg !1603
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1605
  %23 = load ptr, ptr %22, align 8, !dbg !1605, !tbaa !1606
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1605
  %25 = load ptr, ptr %24, align 8, !dbg !1605, !tbaa !1609
  %26 = icmp ult ptr %23, %25, !dbg !1605
  br i1 %26, label %29, label %27, !dbg !1605, !prof !1610

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1605
  br label %31, !dbg !1605

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1605
  store ptr %30, ptr %22, align 8, !dbg !1605, !tbaa !1606
  store i8 10, ptr %23, align 1, !dbg !1605, !tbaa !915
  br label %31, !dbg !1605

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1611, !tbaa !842
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1611
  %34 = icmp eq i32 %0, 0, !dbg !1612
  br i1 %34, label %36, label %35, !dbg !1614

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1615
  unreachable, !dbg !1615

36:                                               ; preds = %31
  ret void, !dbg !1616
}

declare !dbg !1617 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1620 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1623 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1626 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1629 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1633 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1646, metadata ptr %4, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1637, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1638, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1639, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1648
  call void @llvm.va_start(ptr nonnull %4), !dbg !1649
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1650
  call void @llvm.va_end(ptr nonnull %4), !dbg !1651
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1652
  ret void, !dbg !1652
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !439 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !450, metadata !DIExpression()), !dbg !1653
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !451, metadata !DIExpression()), !dbg !1653
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !1653
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !453, metadata !DIExpression()), !dbg !1653
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !1653
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !455, metadata !DIExpression()), !dbg !1653
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1654, !tbaa !906
  %8 = icmp eq i32 %7, 0, !dbg !1654
  br i1 %8, label %23, label %9, !dbg !1656

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1657, !tbaa !906
  %11 = icmp eq i32 %10, %3, !dbg !1660
  br i1 %11, label %12, label %22, !dbg !1661

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1662, !tbaa !842
  %14 = icmp eq ptr %13, %2, !dbg !1663
  br i1 %14, label %36, label %15, !dbg !1664

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1665
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1666
  br i1 %18, label %19, label %22, !dbg !1666

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1667
  %21 = icmp eq i32 %20, 0, !dbg !1668
  br i1 %21, label %36, label %22, !dbg !1669

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1670, !tbaa !842
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1671, !tbaa !906
  br label %23, !dbg !1672

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1673
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1674, !tbaa !842
  %25 = icmp eq ptr %24, null, !dbg !1674
  br i1 %25, label %27, label %26, !dbg !1676

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1677
  br label %31, !dbg !1677

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1678, !tbaa !842
  %29 = tail call ptr @getprogname() #38, !dbg !1678
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #37, !dbg !1678
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1680, !tbaa !842
  %33 = icmp eq ptr %2, null, !dbg !1680
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1680
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1680
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1681
  br label %36, !dbg !1682

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1682
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1683 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1693
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1692, metadata !DIExpression(), metadata !1693, metadata ptr %6, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1687, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1689, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1690, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1695
  call void @llvm.va_start(ptr nonnull %6), !dbg !1696
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1697
  call void @llvm.va_end(ptr nonnull %6), !dbg !1698
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1699
  ret void, !dbg !1699
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1700 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1703, !tbaa !842
  ret ptr %1, !dbg !1704
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1705 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1710, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1711, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1712, metadata !DIExpression()), !dbg !1713
  %4 = icmp eq ptr %2, null, !dbg !1714
  %5 = select i1 %4, ptr @internal_state, ptr %2, !dbg !1716
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1712, metadata !DIExpression()), !dbg !1713
  %6 = tail call i64 @rpl_mbrtowc(ptr noundef null, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %5) #37, !dbg !1717
  ret i64 %6, !dbg !1718
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !1719 {
  %5 = alloca i32, align 4, !DIAssignID !1746
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1741, metadata !DIExpression(), metadata !1746, metadata ptr %5, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1737, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1738, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1739, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1740, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #37, !dbg !1748
  %6 = icmp eq ptr %0, null, !dbg !1749
  %7 = select i1 %6, ptr %5, ptr %0, !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1737, metadata !DIExpression()), !dbg !1747
  %8 = call i64 @mbrtowc(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %3) #37, !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1742, metadata !DIExpression()), !dbg !1747
  %9 = icmp ugt i64 %8, -3, !dbg !1753
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9, !dbg !1754
  br i1 %11, label %12, label %17, !dbg !1754

12:                                               ; preds = %4
  %13 = call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !1755
  br i1 %13, label %17, label %14, !dbg !1756

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 1, !dbg !1757, !tbaa !915
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !1743, metadata !DIExpression()), !dbg !1758
  %16 = zext i8 %15 to i32, !dbg !1759
  store i32 %16, ptr %7, align 4, !dbg !1760, !tbaa !906
  br label %17

17:                                               ; preds = %4, %12, %14
  %18 = phi i64 [ 1, %14 ], [ %8, %12 ], [ %8, %4 ], !dbg !1747
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #37, !dbg !1761
  ret i64 %18, !dbg !1761
}

; Function Attrs: nounwind
declare !dbg !1762 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1768 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1770, metadata !DIExpression()), !dbg !1773
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1774
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1771, metadata !DIExpression()), !dbg !1773
  %3 = icmp eq ptr %2, null, !dbg !1775
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1775
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1772, metadata !DIExpression()), !dbg !1773
  %6 = ptrtoint ptr %5 to i64, !dbg !1776
  %7 = ptrtoint ptr %0 to i64, !dbg !1776
  %8 = sub i64 %6, %7, !dbg !1776
  %9 = icmp sgt i64 %8, 6, !dbg !1778
  br i1 %9, label %10, label %19, !dbg !1779

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %11, metadata !1781, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !1786, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 7, metadata !1787, metadata !DIExpression()), !dbg !1788
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !1790
  %13 = icmp eq i32 %12, 0, !dbg !1791
  br i1 %13, label %14, label %19, !dbg !1792

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1770, metadata !DIExpression()), !dbg !1773
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #38, !dbg !1793
  %16 = icmp eq i32 %15, 0, !dbg !1796
  %17 = select i1 %16, i64 3, i64 0, !dbg !1797
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1797
  br label %19, !dbg !1797

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1772, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1770, metadata !DIExpression()), !dbg !1773
  store ptr %20, ptr @program_name, align 8, !dbg !1798, !tbaa !842
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1799, !tbaa !842
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1800, !tbaa !842
  ret void, !dbg !1801
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1802 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !510 {
  %3 = alloca i32, align 4, !DIAssignID !1803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !1803, metadata ptr %3, metadata !DIExpression()), !dbg !1804
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1805, metadata ptr %4, metadata !DIExpression()), !dbg !1804
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !517, metadata !DIExpression()), !dbg !1804
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !1804
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !519, metadata !DIExpression()), !dbg !1804
  %6 = icmp eq ptr %5, %0, !dbg !1807
  br i1 %6, label %7, label %14, !dbg !1809

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1811
  call void @llvm.dbg.value(metadata ptr %4, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %4, metadata !1820, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 8, metadata !1824, metadata !DIExpression()), !dbg !1825
  store i64 0, ptr %4, align 8, !dbg !1827
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1828
  %9 = icmp eq i64 %8, 2, !dbg !1830
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1831
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1832
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1832
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1804
  ret ptr %15, !dbg !1832
}

; Function Attrs: nounwind
declare !dbg !1833 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1839 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1844, metadata !DIExpression()), !dbg !1847
  %2 = tail call ptr @__errno_location() #40, !dbg !1848
  %3 = load i32, ptr %2, align 4, !dbg !1848, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1845, metadata !DIExpression()), !dbg !1847
  %4 = icmp eq ptr %0, null, !dbg !1849
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1849
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1850
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i32 %3, ptr %2, align 4, !dbg !1851, !tbaa !906
  ret ptr %6, !dbg !1852
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1853 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1859, metadata !DIExpression()), !dbg !1860
  %2 = icmp eq ptr %0, null, !dbg !1861
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1861
  %4 = load i32, ptr %3, align 8, !dbg !1862, !tbaa !1863
  ret i32 %4, !dbg !1865
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1866 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1870, metadata !DIExpression()), !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1871, metadata !DIExpression()), !dbg !1872
  %3 = icmp eq ptr %0, null, !dbg !1873
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1873
  store i32 %1, ptr %4, align 8, !dbg !1874, !tbaa !1863
  ret void, !dbg !1875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1876 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1880, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1881, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1882, metadata !DIExpression()), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1883, metadata !DIExpression()), !dbg !1888
  %4 = icmp eq ptr %0, null, !dbg !1889
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1889
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1890
  %7 = lshr i8 %1, 5, !dbg !1891
  %8 = zext nneg i8 %7 to i64, !dbg !1891
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1892
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1884, metadata !DIExpression()), !dbg !1888
  %10 = and i8 %1, 31, !dbg !1893
  %11 = zext nneg i8 %10 to i32, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1886, metadata !DIExpression()), !dbg !1888
  %12 = load i32, ptr %9, align 4, !dbg !1894, !tbaa !906
  %13 = lshr i32 %12, %11, !dbg !1895
  %14 = and i32 %13, 1, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1887, metadata !DIExpression()), !dbg !1888
  %15 = xor i32 %13, %2, !dbg !1897
  %16 = and i32 %15, 1, !dbg !1897
  %17 = shl nuw i32 %16, %11, !dbg !1898
  %18 = xor i32 %17, %12, !dbg !1899
  store i32 %18, ptr %9, align 4, !dbg !1899, !tbaa !906
  ret i32 %14, !dbg !1900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1901 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1905, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1906, metadata !DIExpression()), !dbg !1908
  %3 = icmp eq ptr %0, null, !dbg !1909
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1911
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1905, metadata !DIExpression()), !dbg !1908
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1912
  %6 = load i32, ptr %5, align 4, !dbg !1912, !tbaa !1913
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1907, metadata !DIExpression()), !dbg !1908
  store i32 %1, ptr %5, align 4, !dbg !1914, !tbaa !1913
  ret i32 %6, !dbg !1915
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1916 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1920, metadata !DIExpression()), !dbg !1923
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1921, metadata !DIExpression()), !dbg !1923
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1922, metadata !DIExpression()), !dbg !1923
  %4 = icmp eq ptr %0, null, !dbg !1924
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1926
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1920, metadata !DIExpression()), !dbg !1923
  store i32 10, ptr %5, align 8, !dbg !1927, !tbaa !1863
  %6 = icmp ne ptr %1, null, !dbg !1928
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1930
  br i1 %8, label %10, label %9, !dbg !1930

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1931
  unreachable, !dbg !1931

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1932
  store ptr %1, ptr %11, align 8, !dbg !1933, !tbaa !1934
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1935
  store ptr %2, ptr %12, align 8, !dbg !1936, !tbaa !1937
  ret void, !dbg !1938
}

; Function Attrs: noreturn nounwind
declare !dbg !1939 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1944, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1945, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1946, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1947, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1948, metadata !DIExpression()), !dbg !1952
  %6 = icmp eq ptr %4, null, !dbg !1953
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1953
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1949, metadata !DIExpression()), !dbg !1952
  %8 = tail call ptr @__errno_location() #40, !dbg !1954
  %9 = load i32, ptr %8, align 4, !dbg !1954, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1950, metadata !DIExpression()), !dbg !1952
  %10 = load i32, ptr %7, align 8, !dbg !1955, !tbaa !1863
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1956
  %12 = load i32, ptr %11, align 4, !dbg !1956, !tbaa !1913
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1957
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1958
  %15 = load ptr, ptr %14, align 8, !dbg !1958, !tbaa !1934
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1959
  %17 = load ptr, ptr %16, align 8, !dbg !1959, !tbaa !1937
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i32 %9, ptr %8, align 4, !dbg !1961, !tbaa !906
  ret i64 %18, !dbg !1962
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1963 {
  %10 = alloca i32, align 4, !DIAssignID !2031
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2032
  %12 = alloca i32, align 4, !DIAssignID !2033
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2034
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2035
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2009, metadata !DIExpression(), metadata !2035, metadata ptr %14, metadata !DIExpression()), !dbg !2036
  %15 = alloca i32, align 4, !DIAssignID !2037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2012, metadata !DIExpression(), metadata !2037, metadata ptr %15, metadata !DIExpression()), !dbg !2038
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1969, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1971, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1972, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1973, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1974, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1975, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1976, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1977, metadata !DIExpression()), !dbg !2039
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2040
  %17 = icmp eq i64 %16, 1, !dbg !2041
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1981, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !2039
  %18 = trunc i32 %5 to i8, !dbg !2042
  %19 = lshr i8 %18, 1, !dbg !2042
  %20 = and i8 %19, 1, !dbg !2042
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2043

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2044
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2045
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2046
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2047
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2039
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2048
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2049
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1986, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1983, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1982, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1981, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1972, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1977, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1976, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !1987), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2039
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
  ], !dbg !2051

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1973, metadata !DIExpression()), !dbg !2039
  br label %114, !dbg !2052

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1973, metadata !DIExpression()), !dbg !2039
  %43 = and i8 %37, 1, !dbg !2053
  %44 = icmp eq i8 %43, 0, !dbg !2053
  br i1 %44, label %45, label %114, !dbg !2052

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2055
  br i1 %46, label %114, label %47, !dbg !2058

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2055, !tbaa !915
  br label %114, !dbg !2055

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2033, metadata ptr %12, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2034, metadata ptr %13, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !606, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2059
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %49, metadata !608, metadata !DIExpression()), !dbg !2059
  %50 = icmp eq ptr %49, @.str.11.80, !dbg !2064
  br i1 %50, label %51, label %60, !dbg !2066

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2067
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %13, metadata !2069, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %13, metadata !2077, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i64 0, ptr %13, align 8, !dbg !2084
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2085
  %53 = icmp eq i64 %52, 3, !dbg !2087
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2088
  %57 = icmp eq i32 %29, 9, !dbg !2088
  %58 = select i1 %57, ptr @.str.10.82, ptr @.str.12.83, !dbg !2088
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2089
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2059
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2031, metadata ptr %10, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2032, metadata ptr %11, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !606, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2090
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %62, metadata !608, metadata !DIExpression()), !dbg !2090
  %63 = icmp eq ptr %62, @.str.12.83, !dbg !2093
  br i1 %63, label %64, label %73, !dbg !2094

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2096
  call void @llvm.dbg.value(metadata ptr %11, metadata !2069, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata ptr %11, metadata !2077, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2099
  store i64 0, ptr %11, align 8, !dbg !2101
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2102
  %66 = icmp eq i64 %65, 3, !dbg !2103
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2104
  %70 = icmp eq i32 %29, 9, !dbg !2104
  %71 = select i1 %70, ptr @.str.10.82, ptr @.str.12.83, !dbg !2104
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2105
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1977, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1976, metadata !DIExpression()), !dbg !2039
  %76 = and i8 %37, 1, !dbg !2106
  %77 = icmp eq i8 %76, 0, !dbg !2106
  br i1 %77, label %78, label %93, !dbg !2107

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1989, metadata !DIExpression()), !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  %79 = load i8, ptr %74, align 1, !dbg !2109, !tbaa !915
  %80 = icmp eq i8 %79, 0, !dbg !2111
  br i1 %80, label %93, label %81, !dbg !2111

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1989, metadata !DIExpression()), !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1979, metadata !DIExpression()), !dbg !2039
  %85 = icmp ult i64 %84, %40, !dbg !2112
  br i1 %85, label %86, label %88, !dbg !2115

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2112
  store i8 %82, ptr %87, align 1, !dbg !2112, !tbaa !915
  br label %88, !dbg !2112

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1979, metadata !DIExpression()), !dbg !2039
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2116
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1989, metadata !DIExpression()), !dbg !2108
  %91 = load i8, ptr %90, align 1, !dbg !2109, !tbaa !915
  %92 = icmp eq i8 %91, 0, !dbg !2111
  br i1 %92, label %93, label %81, !dbg !2111, !llvm.loop !2117

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1983, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1981, metadata !DIExpression()), !dbg !2039
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1982, metadata !DIExpression()), !dbg !2039
  br label %114, !dbg !2121

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1983, metadata !DIExpression()), !dbg !2039
  br label %98, !dbg !2122

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1983, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2039
  br label %98, !dbg !2123

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2047
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1983, metadata !DIExpression()), !dbg !2039
  %101 = and i8 %100, 1, !dbg !2124
  %102 = icmp eq i8 %101, 0, !dbg !2124
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2126
  br label %104, !dbg !2126

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2039
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2042
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1983, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1973, metadata !DIExpression()), !dbg !2039
  %107 = and i8 %106, 1, !dbg !2127
  %108 = icmp eq i8 %107, 0, !dbg !2127
  br i1 %108, label %109, label %114, !dbg !2129

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2130
  br i1 %110, label %114, label %111, !dbg !2133

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2130, !tbaa !915
  br label %114, !dbg !2130

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2039
  br label %114, !dbg !2134

113:                                              ; preds = %28
  call void @abort() #39, !dbg !2135
  unreachable, !dbg !2135

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2119
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.82, %45 ], [ @.str.10.82, %47 ], [ @.str.10.82, %42 ], [ %34, %28 ], [ @.str.12.83, %109 ], [ @.str.12.83, %111 ], [ @.str.12.83, %104 ], [ @.str.10.82, %41 ], !dbg !2039
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2039
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2039
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1984, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1983, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1982, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1981, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1977, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1976, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1973, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2136
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
  br label %138, !dbg !2137

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2119
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2044
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2048
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2049
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2138
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2139
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1986, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1972, metadata !DIExpression()), !dbg !2039
  %147 = icmp eq i64 %139, -1, !dbg !2140
  br i1 %147, label %148, label %152, !dbg !2141

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2142
  %150 = load i8, ptr %149, align 1, !dbg !2142, !tbaa !915
  %151 = icmp eq i8 %150, 0, !dbg !2143
  br i1 %151, label %612, label %154, !dbg !2144

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2145
  br i1 %153, label %612, label %154, !dbg !2144

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2146
  br i1 %128, label %155, label %170, !dbg !2147

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2149
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2150
  br i1 %157, label %158, label %160, !dbg !2150

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %160, !dbg !2152

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1972, metadata !DIExpression()), !dbg !2039
  %162 = icmp ugt i64 %156, %161, !dbg !2153
  br i1 %162, label %170, label %163, !dbg !2154

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %164, metadata !2156, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %119, metadata !2159, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %120, metadata !2160, metadata !DIExpression()), !dbg !2161
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2163
  %166 = icmp ne i32 %165, 0, !dbg !2164
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2165
  %168 = xor i1 %166, true, !dbg !2165
  %169 = zext i1 %168 to i8, !dbg !2165
  br i1 %167, label %170, label %666, !dbg !2165

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2146
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1972, metadata !DIExpression()), !dbg !2039
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2166
  %175 = load i8, ptr %174, align 1, !dbg !2166, !tbaa !915
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2001, metadata !DIExpression()), !dbg !2146
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
  ], !dbg !2167

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2168

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2169

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2146
  %179 = and i8 %144, 1, !dbg !2173
  %180 = icmp eq i8 %179, 0, !dbg !2173
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2173
  br i1 %181, label %182, label %198, !dbg !2173

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2175
  br i1 %183, label %184, label %186, !dbg !2179

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2175
  store i8 39, ptr %185, align 1, !dbg !2175, !tbaa !915
  br label %186, !dbg !2175

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1979, metadata !DIExpression()), !dbg !2039
  %188 = icmp ult i64 %187, %146, !dbg !2180
  br i1 %188, label %189, label %191, !dbg !2183

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2180
  store i8 36, ptr %190, align 1, !dbg !2180, !tbaa !915
  br label %191, !dbg !2180

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1979, metadata !DIExpression()), !dbg !2039
  %193 = icmp ult i64 %192, %146, !dbg !2184
  br i1 %193, label %194, label %196, !dbg !2187

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2184
  store i8 39, ptr %195, align 1, !dbg !2184, !tbaa !915
  br label %196, !dbg !2184

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %198, !dbg !2188

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2039
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1979, metadata !DIExpression()), !dbg !2039
  %201 = icmp ult i64 %199, %146, !dbg !2189
  br i1 %201, label %202, label %204, !dbg !2192

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2189
  store i8 92, ptr %203, align 1, !dbg !2189, !tbaa !915
  br label %204, !dbg !2189

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1979, metadata !DIExpression()), !dbg !2039
  br i1 %125, label %206, label %476, !dbg !2193

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2195
  %208 = icmp ult i64 %207, %171, !dbg !2196
  br i1 %208, label %209, label %465, !dbg !2197

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2198
  %211 = load i8, ptr %210, align 1, !dbg !2198, !tbaa !915
  %212 = add i8 %211, -48, !dbg !2199
  %213 = icmp ult i8 %212, 10, !dbg !2199
  br i1 %213, label %214, label %465, !dbg !2199

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2200
  br i1 %215, label %216, label %218, !dbg !2204

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2200
  store i8 48, ptr %217, align 1, !dbg !2200, !tbaa !915
  br label %218, !dbg !2200

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1979, metadata !DIExpression()), !dbg !2039
  %220 = icmp ult i64 %219, %146, !dbg !2205
  br i1 %220, label %221, label %223, !dbg !2208

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2205
  store i8 48, ptr %222, align 1, !dbg !2205, !tbaa !915
  br label %223, !dbg !2205

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1979, metadata !DIExpression()), !dbg !2039
  br label %465, !dbg !2209

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2210

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2211

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2212

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2214

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2216
  %231 = icmp ult i64 %230, %171, !dbg !2217
  br i1 %231, label %232, label %465, !dbg !2218

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2219
  %234 = load i8, ptr %233, align 1, !dbg !2219, !tbaa !915
  %235 = icmp eq i8 %234, 63, !dbg !2220
  br i1 %235, label %236, label %465, !dbg !2221

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2222
  %238 = load i8, ptr %237, align 1, !dbg !2222, !tbaa !915
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
  ], !dbg !2223

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2224

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1994, metadata !DIExpression()), !dbg !2136
  %241 = icmp ult i64 %140, %146, !dbg !2226
  br i1 %241, label %242, label %244, !dbg !2229

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2226
  store i8 63, ptr %243, align 1, !dbg !2226, !tbaa !915
  br label %244, !dbg !2226

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1979, metadata !DIExpression()), !dbg !2039
  %246 = icmp ult i64 %245, %146, !dbg !2230
  br i1 %246, label %247, label %249, !dbg !2233

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2230
  store i8 34, ptr %248, align 1, !dbg !2230, !tbaa !915
  br label %249, !dbg !2230

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1979, metadata !DIExpression()), !dbg !2039
  %251 = icmp ult i64 %250, %146, !dbg !2234
  br i1 %251, label %252, label %254, !dbg !2237

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2234
  store i8 34, ptr %253, align 1, !dbg !2234, !tbaa !915
  br label %254, !dbg !2234

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1979, metadata !DIExpression()), !dbg !2039
  %256 = icmp ult i64 %255, %146, !dbg !2238
  br i1 %256, label %257, label %259, !dbg !2241

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2238
  store i8 63, ptr %258, align 1, !dbg !2238, !tbaa !915
  br label %259, !dbg !2238

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1979, metadata !DIExpression()), !dbg !2039
  br label %465, !dbg !2242

261:                                              ; preds = %170
  br label %272, !dbg !2243

262:                                              ; preds = %170
  br label %272, !dbg !2244

263:                                              ; preds = %170
  br label %270, !dbg !2245

264:                                              ; preds = %170
  br label %270, !dbg !2246

265:                                              ; preds = %170
  br label %272, !dbg !2247

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2248

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2249

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2252

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2254

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2255
  call void @llvm.dbg.label(metadata !2002), !dbg !2256
  br i1 %133, label %272, label %655, !dbg !2257

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2255
  call void @llvm.dbg.label(metadata !2005), !dbg !2259
  br i1 %124, label %520, label %476, !dbg !2260

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2261

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2262, !tbaa !915
  %277 = icmp eq i8 %276, 0, !dbg !2264
  br i1 %277, label %278, label %465, !dbg !2265

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2266
  br i1 %279, label %280, label %465, !dbg !2268

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2146
  br label %281, !dbg !2269

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2000, metadata !DIExpression()), !dbg !2146
  br i1 %133, label %465, label %655, !dbg !2270

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2146
  br i1 %132, label %284, label %465, !dbg !2272

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2273

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2276
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2278
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2278
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1980, metadata !DIExpression()), !dbg !2039
  %291 = icmp ult i64 %140, %290, !dbg !2279
  br i1 %291, label %292, label %294, !dbg !2282

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2279
  store i8 39, ptr %293, align 1, !dbg !2279, !tbaa !915
  br label %294, !dbg !2279

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1979, metadata !DIExpression()), !dbg !2039
  %296 = icmp ult i64 %295, %290, !dbg !2283
  br i1 %296, label %297, label %299, !dbg !2286

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2283
  store i8 92, ptr %298, align 1, !dbg !2283, !tbaa !915
  br label %299, !dbg !2283

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1979, metadata !DIExpression()), !dbg !2039
  %301 = icmp ult i64 %300, %290, !dbg !2287
  br i1 %301, label %302, label %304, !dbg !2290

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2287
  store i8 39, ptr %303, align 1, !dbg !2287, !tbaa !915
  br label %304, !dbg !2287

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2290
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %465, !dbg !2291

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2292

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2006, metadata !DIExpression()), !dbg !2293
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2294
  %309 = load ptr, ptr %308, align 8, !dbg !2294, !tbaa !842
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2294
  %312 = load i16, ptr %311, align 2, !dbg !2294, !tbaa !947
  %313 = and i16 %312, 16384, !dbg !2296
  %314 = icmp ne i16 %313, 0, !dbg !2296
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2008, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2293
  br label %355, !dbg !2297

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2298
  call void @llvm.dbg.value(metadata ptr %14, metadata !2069, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata ptr %14, metadata !2077, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()), !dbg !2301
  store i64 0, ptr %14, align 8, !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2006, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2008, metadata !DIExpression()), !dbg !2293
  %316 = icmp eq i64 %171, -1, !dbg !2304
  br i1 %316, label %317, label %319, !dbg !2306

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %319, !dbg !2308

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2309
  %321 = sub i64 %320, %145, !dbg !2310
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2016, metadata !DIExpression()), !dbg !2038
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2312

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2006, metadata !DIExpression()), !dbg !2293
  %324 = icmp ult i64 %145, %320, !dbg !2313
  br i1 %324, label %326, label %351, !dbg !2315

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2008, metadata !DIExpression()), !dbg !2293
  br label %351, !dbg !2316

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2006, metadata !DIExpression()), !dbg !2293
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2318
  %330 = load i8, ptr %329, align 1, !dbg !2318, !tbaa !915
  %331 = icmp eq i8 %330, 0, !dbg !2315
  br i1 %331, label %351, label %332, !dbg !2319

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2006, metadata !DIExpression()), !dbg !2293
  %334 = add i64 %333, %145, !dbg !2321
  %335 = icmp eq i64 %333, %321, !dbg !2313
  br i1 %335, label %351, label %326, !dbg !2315, !llvm.loop !2322

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2017, metadata !DIExpression()), !dbg !2323
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2324
  %339 = and i1 %338, %132, !dbg !2324
  br i1 %339, label %340, label %347, !dbg !2324

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2017, metadata !DIExpression()), !dbg !2323
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2325
  %343 = load i8, ptr %342, align 1, !dbg !2325, !tbaa !915
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2327

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2017, metadata !DIExpression()), !dbg !2323
  %346 = icmp eq i64 %345, %322, !dbg !2329
  br i1 %346, label %347, label %340, !dbg !2330, !llvm.loop !2331

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2333, !tbaa !906
  call void @llvm.dbg.value(metadata i32 %348, metadata !2335, metadata !DIExpression()), !dbg !2343
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !2345
  %350 = icmp ne i32 %349, 0, !dbg !2346
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2008, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2006, metadata !DIExpression()), !dbg !2293
  br label %351, !dbg !2347

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2008, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2006, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2349
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2008, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2006, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2349
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2146
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2350
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2350
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2008, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2006, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1972, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2146
  %359 = icmp ult i64 %357, 2, !dbg !2351
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2352
  br i1 %361, label %461, label %362, !dbg !2352

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2025, metadata !DIExpression()), !dbg !2354
  br label %364, !dbg !2355

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2039
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2138
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2136
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2146
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2356
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1979, metadata !DIExpression()), !dbg !2039
  br i1 %360, label %417, label %371, !dbg !2357

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2362

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2146
  %373 = and i8 %366, 1, !dbg !2365
  %374 = icmp eq i8 %373, 0, !dbg !2365
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2365
  br i1 %375, label %376, label %392, !dbg !2365

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2367
  br i1 %377, label %378, label %380, !dbg !2371

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2367
  store i8 39, ptr %379, align 1, !dbg !2367, !tbaa !915
  br label %380, !dbg !2367

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1979, metadata !DIExpression()), !dbg !2039
  %382 = icmp ult i64 %381, %146, !dbg !2372
  br i1 %382, label %383, label %385, !dbg !2375

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2372
  store i8 36, ptr %384, align 1, !dbg !2372, !tbaa !915
  br label %385, !dbg !2372

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1979, metadata !DIExpression()), !dbg !2039
  %387 = icmp ult i64 %386, %146, !dbg !2376
  br i1 %387, label %388, label %390, !dbg !2379

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2376
  store i8 39, ptr %389, align 1, !dbg !2376, !tbaa !915
  br label %390, !dbg !2376

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %392, !dbg !2380

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2039
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1979, metadata !DIExpression()), !dbg !2039
  %395 = icmp ult i64 %393, %146, !dbg !2381
  br i1 %395, label %396, label %398, !dbg !2384

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2381
  store i8 92, ptr %397, align 1, !dbg !2381, !tbaa !915
  br label %398, !dbg !2381

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1979, metadata !DIExpression()), !dbg !2039
  %400 = icmp ult i64 %399, %146, !dbg !2385
  br i1 %400, label %401, label %405, !dbg !2388

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2385
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2385
  store i8 %403, ptr %404, align 1, !dbg !2385, !tbaa !915
  br label %405, !dbg !2385

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1979, metadata !DIExpression()), !dbg !2039
  %407 = icmp ult i64 %406, %146, !dbg !2389
  br i1 %407, label %408, label %413, !dbg !2392

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2389
  %411 = or disjoint i8 %410, 48, !dbg !2389
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2389
  store i8 %411, ptr %412, align 1, !dbg !2389, !tbaa !915
  br label %413, !dbg !2389

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1979, metadata !DIExpression()), !dbg !2039
  %415 = and i8 %370, 7, !dbg !2393
  %416 = or disjoint i8 %415, 48, !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2001, metadata !DIExpression()), !dbg !2146
  br label %426, !dbg !2395

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2396
  %419 = icmp eq i8 %418, 0, !dbg !2396
  br i1 %419, label %426, label %420, !dbg !2398

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2399
  br i1 %421, label %422, label %424, !dbg !2403

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2399
  store i8 92, ptr %423, align 1, !dbg !2399, !tbaa !915
  br label %424, !dbg !2399

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2146
  br label %426, !dbg !2404

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2039
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2138
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2146
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2146
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1979, metadata !DIExpression()), !dbg !2039
  %432 = add i64 %367, 1, !dbg !2405
  %433 = icmp ugt i64 %363, %432, !dbg !2407
  br i1 %433, label %434, label %463, !dbg !2408

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2409
  %436 = icmp ne i8 %435, 0, !dbg !2409
  %437 = and i8 %430, 1, !dbg !2409
  %438 = icmp eq i8 %437, 0, !dbg !2409
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2409
  br i1 %439, label %440, label %451, !dbg !2409

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2412
  br i1 %441, label %442, label %444, !dbg !2416

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2412
  store i8 39, ptr %443, align 1, !dbg !2412, !tbaa !915
  br label %444, !dbg !2412

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2416
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1979, metadata !DIExpression()), !dbg !2039
  %446 = icmp ult i64 %445, %146, !dbg !2417
  br i1 %446, label %447, label %449, !dbg !2420

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2417
  store i8 39, ptr %448, align 1, !dbg !2417, !tbaa !915
  br label %449, !dbg !2417

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2420
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %451, !dbg !2421

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2422
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1979, metadata !DIExpression()), !dbg !2039
  %454 = icmp ult i64 %452, %146, !dbg !2423
  br i1 %454, label %455, label %457, !dbg !2426

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2423
  store i8 %431, ptr %456, align 1, !dbg !2423, !tbaa !915
  br label %457, !dbg !2423

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1994, metadata !DIExpression()), !dbg !2136
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2427
  %460 = load i8, ptr %459, align 1, !dbg !2427, !tbaa !915
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2001, metadata !DIExpression()), !dbg !2146
  br label %364, !dbg !2428, !llvm.loop !2429

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2432
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2039
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2044
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2039
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2039
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2136
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2146
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2146
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2146
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1996, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1972, metadata !DIExpression()), !dbg !2039
  br i1 %126, label %487, label %476, !dbg !2433

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
  br i1 %137, label %488, label %509, !dbg !2435

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2436

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
  %499 = lshr i8 %490, 5, !dbg !2437
  %500 = zext nneg i8 %499 to i64, !dbg !2437
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2438
  %502 = load i32, ptr %501, align 4, !dbg !2438, !tbaa !906
  %503 = and i8 %490, 31, !dbg !2439
  %504 = zext nneg i8 %503 to i32, !dbg !2439
  %505 = shl nuw i32 1, %504, !dbg !2440
  %506 = and i32 %502, %505, !dbg !2440
  %507 = icmp eq i32 %506, 0, !dbg !2440
  %508 = and i1 %172, %507, !dbg !2441
  br i1 %508, label %558, label %520, !dbg !2441

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
  br i1 %172, label %558, label %520, !dbg !2442

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2432
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2039
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2044
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2048
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2138
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2443
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2146
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2146
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2028), !dbg !2444
  br i1 %131, label %530, label %659, !dbg !2445

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2146
  %531 = and i8 %525, 1, !dbg !2447
  %532 = icmp eq i8 %531, 0, !dbg !2447
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2447
  br i1 %533, label %534, label %550, !dbg !2447

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2449
  br i1 %535, label %536, label %538, !dbg !2453

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2449
  store i8 39, ptr %537, align 1, !dbg !2449, !tbaa !915
  br label %538, !dbg !2449

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1979, metadata !DIExpression()), !dbg !2039
  %540 = icmp ult i64 %539, %529, !dbg !2454
  br i1 %540, label %541, label %543, !dbg !2457

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2454
  store i8 36, ptr %542, align 1, !dbg !2454, !tbaa !915
  br label %543, !dbg !2454

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1979, metadata !DIExpression()), !dbg !2039
  %545 = icmp ult i64 %544, %529, !dbg !2458
  br i1 %545, label %546, label %548, !dbg !2461

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2458
  store i8 39, ptr %547, align 1, !dbg !2458, !tbaa !915
  br label %548, !dbg !2458

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %550, !dbg !2462

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2146
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1979, metadata !DIExpression()), !dbg !2039
  %553 = icmp ult i64 %551, %529, !dbg !2463
  br i1 %553, label %554, label %556, !dbg !2466

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2463
  store i8 92, ptr %555, align 1, !dbg !2463, !tbaa !915
  br label %556, !dbg !2463

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2029), !dbg !2467
  br label %585, !dbg !2468

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2432
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2039
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2044
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2048
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2138
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2443
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2146
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2146
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2471
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2001, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2000, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1999, metadata !DIExpression()), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2029), !dbg !2467
  %569 = and i8 %563, 1, !dbg !2468
  %570 = icmp ne i8 %569, 0, !dbg !2468
  %571 = and i8 %565, 1, !dbg !2468
  %572 = icmp eq i8 %571, 0, !dbg !2468
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2468
  br i1 %573, label %574, label %585, !dbg !2468

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2472
  br i1 %575, label %576, label %578, !dbg !2476

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2472
  store i8 39, ptr %577, align 1, !dbg !2472, !tbaa !915
  br label %578, !dbg !2472

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1979, metadata !DIExpression()), !dbg !2039
  %580 = icmp ult i64 %579, %568, !dbg !2477
  br i1 %580, label %581, label %583, !dbg !2480

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2477
  store i8 39, ptr %582, align 1, !dbg !2477, !tbaa !915
  br label %583, !dbg !2477

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %585, !dbg !2481

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2146
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1979, metadata !DIExpression()), !dbg !2039
  %595 = icmp ult i64 %593, %586, !dbg !2482
  br i1 %595, label %596, label %598, !dbg !2485

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2482
  store i8 %587, ptr %597, align 1, !dbg !2482, !tbaa !915
  br label %598, !dbg !2482

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1979, metadata !DIExpression()), !dbg !2039
  %600 = icmp eq i8 %588, 0, !dbg !2486
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %602, !dbg !2489

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2432
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2039
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2044
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2048
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2049
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2138
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2443
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1994, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1988, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1986, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1972, metadata !DIExpression()), !dbg !2039
  %611 = add i64 %609, 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1994, metadata !DIExpression()), !dbg !2136
  br label %138, !dbg !2491, !llvm.loop !2492

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1970, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1986, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1985, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1980, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1979, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1972, metadata !DIExpression()), !dbg !2039
  %613 = icmp eq i64 %140, 0, !dbg !2494
  %614 = and i1 %132, %613, !dbg !2496
  %615 = xor i1 %614, true, !dbg !2496
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2496
  br i1 %616, label %617, label %655, !dbg !2496

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2497
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2497
  br i1 %621, label %622, label %631, !dbg !2497

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2499
  %624 = icmp eq i8 %623, 0, !dbg !2499
  br i1 %624, label %627, label %625, !dbg !2502

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2503
  br label %672, !dbg !2504

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2505
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2507
  br i1 %630, label %28, label %631, !dbg !2507

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2508
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2510
  br i1 %634, label %635, label %650, !dbg !2510

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1981, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1979, metadata !DIExpression()), !dbg !2039
  %636 = load i8, ptr %119, align 1, !dbg !2511, !tbaa !915
  %637 = icmp eq i8 %636, 0, !dbg !2514
  br i1 %637, label %650, label %638, !dbg !2514

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1981, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1979, metadata !DIExpression()), !dbg !2039
  %642 = icmp ult i64 %641, %146, !dbg !2515
  br i1 %642, label %643, label %645, !dbg !2518

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2515
  store i8 %639, ptr %644, align 1, !dbg !2515, !tbaa !915
  br label %645, !dbg !2515

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2518
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1979, metadata !DIExpression()), !dbg !2039
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2519
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1981, metadata !DIExpression()), !dbg !2039
  %648 = load i8, ptr %647, align 1, !dbg !2511, !tbaa !915
  %649 = icmp eq i8 %648, 0, !dbg !2514
  br i1 %649, label %650, label %638, !dbg !2514, !llvm.loop !2520

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1979, metadata !DIExpression()), !dbg !2039
  %652 = icmp ult i64 %651, %146, !dbg !2522
  br i1 %652, label %653, label %672, !dbg !2524

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2525
  store i8 0, ptr %654, align 1, !dbg !2526, !tbaa !915
  br label %672, !dbg !2525

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2030), !dbg !2527
  %657 = icmp eq i8 %123, 0, !dbg !2528
  %658 = select i1 %657, i32 2, i32 4, !dbg !2528
  br label %666, !dbg !2528

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2030), !dbg !2527
  %662 = icmp eq i32 %115, 2, !dbg !2530
  %663 = icmp eq i8 %123, 0, !dbg !2528
  %664 = select i1 %663, i32 2, i32 4, !dbg !2528
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2528
  br label %666, !dbg !2528

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1973, metadata !DIExpression()), !dbg !2039
  %670 = and i32 %5, -3, !dbg !2531
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2532
  br label %672, !dbg !2533

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2534
}

; Function Attrs: nounwind
declare !dbg !2535 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2537 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2539 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2543, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %0, metadata !2547, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr null, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %2, metadata !2554, metadata !DIExpression()), !dbg !2560
  %4 = icmp eq ptr %2, null, !dbg !2562
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %5, metadata !2555, metadata !DIExpression()), !dbg !2560
  %6 = tail call ptr @__errno_location() #40, !dbg !2563
  %7 = load i32, ptr %6, align 4, !dbg !2563, !tbaa !906
  call void @llvm.dbg.value(metadata i32 %7, metadata !2556, metadata !DIExpression()), !dbg !2560
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2564
  %9 = load i32, ptr %8, align 4, !dbg !2564, !tbaa !1913
  %10 = or i32 %9, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %10, metadata !2557, metadata !DIExpression()), !dbg !2560
  %11 = load i32, ptr %5, align 8, !dbg !2566, !tbaa !1863
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2567
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2568
  %14 = load ptr, ptr %13, align 8, !dbg !2568, !tbaa !1934
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2569
  %16 = load ptr, ptr %15, align 8, !dbg !2569, !tbaa !1937
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2570
  %18 = add i64 %17, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %18, metadata !2558, metadata !DIExpression()), !dbg !2560
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %19, metadata !2559, metadata !DIExpression()), !dbg !2560
  %20 = load i32, ptr %5, align 8, !dbg !2573, !tbaa !1863
  %21 = load ptr, ptr %13, align 8, !dbg !2574, !tbaa !1934
  %22 = load ptr, ptr %15, align 8, !dbg !2575, !tbaa !1937
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2576
  store i32 %7, ptr %6, align 4, !dbg !2577, !tbaa !906
  ret ptr %19, !dbg !2578
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2548 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2547, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2553, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2554, metadata !DIExpression()), !dbg !2579
  %5 = icmp eq ptr %3, null, !dbg !2580
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2580
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2555, metadata !DIExpression()), !dbg !2579
  %7 = tail call ptr @__errno_location() #40, !dbg !2581
  %8 = load i32, ptr %7, align 4, !dbg !2581, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2556, metadata !DIExpression()), !dbg !2579
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2582
  %10 = load i32, ptr %9, align 4, !dbg !2582, !tbaa !1913
  %11 = icmp eq ptr %2, null, !dbg !2583
  %12 = zext i1 %11 to i32, !dbg !2583
  %13 = or i32 %10, %12, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2557, metadata !DIExpression()), !dbg !2579
  %14 = load i32, ptr %6, align 8, !dbg !2585, !tbaa !1863
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2586
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2587
  %17 = load ptr, ptr %16, align 8, !dbg !2587, !tbaa !1934
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2588
  %19 = load ptr, ptr %18, align 8, !dbg !2588, !tbaa !1937
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2589
  %21 = add i64 %20, 1, !dbg !2590
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2558, metadata !DIExpression()), !dbg !2579
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2591
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2559, metadata !DIExpression()), !dbg !2579
  %23 = load i32, ptr %6, align 8, !dbg !2592, !tbaa !1863
  %24 = load ptr, ptr %16, align 8, !dbg !2593, !tbaa !1934
  %25 = load ptr, ptr %18, align 8, !dbg !2594, !tbaa !1937
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2595
  store i32 %8, ptr %7, align 4, !dbg !2596, !tbaa !906
  br i1 %11, label %28, label %27, !dbg !2597

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2598, !tbaa !2600
  br label %28, !dbg !2601

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2603 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2608, !tbaa !842
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2605, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2606, metadata !DIExpression()), !dbg !2610
  %2 = load i32, ptr @nslots, align 4, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2606, metadata !DIExpression()), !dbg !2610
  %3 = icmp sgt i32 %2, 1, !dbg !2611
  br i1 %3, label %4, label %6, !dbg !2613

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2611
  br label %10, !dbg !2613

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2614
  %8 = load ptr, ptr %7, align 8, !dbg !2614, !tbaa !2616
  %9 = icmp eq ptr %8, @slot0, !dbg !2618
  br i1 %9, label %17, label %16, !dbg !2619

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2606, metadata !DIExpression()), !dbg !2610
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2620
  %13 = load ptr, ptr %12, align 8, !dbg !2620, !tbaa !2616
  tail call void @free(ptr noundef %13) #37, !dbg !2621
  %14 = add nuw nsw i64 %11, 1, !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2606, metadata !DIExpression()), !dbg !2610
  %15 = icmp eq i64 %14, %5, !dbg !2611
  br i1 %15, label %6, label %10, !dbg !2613, !llvm.loop !2623

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2625
  store i64 256, ptr @slotvec0, align 8, !dbg !2627, !tbaa !2628
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2629, !tbaa !2616
  br label %17, !dbg !2630

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2631
  br i1 %18, label %20, label %19, !dbg !2633

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2634
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2636, !tbaa !842
  br label %20, !dbg !2637

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2638, !tbaa !906
  ret void, !dbg !2639
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2640 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2643 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2646, metadata !DIExpression()), !dbg !2647
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2648
  ret ptr %3, !dbg !2649
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2650 {
  %5 = alloca i64, align 8, !DIAssignID !2670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2670, metadata ptr %5, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2655, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2656, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2657, metadata !DIExpression()), !dbg !2672
  %6 = tail call ptr @__errno_location() #40, !dbg !2673
  %7 = load i32, ptr %6, align 4, !dbg !2673, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2658, metadata !DIExpression()), !dbg !2672
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2674, !tbaa !842
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2659, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2660, metadata !DIExpression()), !dbg !2672
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2675
  br i1 %9, label %10, label %11, !dbg !2675

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2677
  unreachable, !dbg !2677

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2678, !tbaa !906
  %13 = icmp sgt i32 %12, %0, !dbg !2679
  br i1 %13, label %32, label %14, !dbg !2680

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2681
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2661, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2682
  %16 = sext i32 %12 to i64, !dbg !2683
  store i64 %16, ptr %5, align 8, !dbg !2684, !tbaa !2600, !DIAssignID !2685
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2664, metadata !DIExpression(), metadata !2685, metadata ptr %5, metadata !DIExpression()), !dbg !2671
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2686
  %18 = add nuw nsw i32 %0, 1, !dbg !2687
  %19 = sub i32 %18, %12, !dbg !2688
  %20 = sext i32 %19 to i64, !dbg !2689
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2659, metadata !DIExpression()), !dbg !2672
  store ptr %21, ptr @slotvec, align 8, !dbg !2691, !tbaa !842
  br i1 %15, label %22, label %23, !dbg !2692

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2693, !tbaa.struct !2695
  br label %23, !dbg !2696

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2697, !tbaa !906
  %25 = sext i32 %24 to i64, !dbg !2698
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2698
  %27 = load i64, ptr %5, align 8, !dbg !2699, !tbaa !2600
  %28 = sub nsw i64 %27, %25, !dbg !2700
  %29 = shl i64 %28, 4, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %26, metadata !2077, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %29, metadata !2081, metadata !DIExpression()), !dbg !2702
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2704
  %30 = load i64, ptr %5, align 8, !dbg !2705, !tbaa !2600
  %31 = trunc i64 %30 to i32, !dbg !2705
  store i32 %31, ptr @nslots, align 4, !dbg !2706, !tbaa !906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2707
  br label %32, !dbg !2708

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2659, metadata !DIExpression()), !dbg !2672
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2709
  %36 = load i64, ptr %35, align 8, !dbg !2710, !tbaa !2628
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2665, metadata !DIExpression()), !dbg !2711
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2712
  %38 = load ptr, ptr %37, align 8, !dbg !2712, !tbaa !2616
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2667, metadata !DIExpression()), !dbg !2711
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2713
  %40 = load i32, ptr %39, align 4, !dbg !2713, !tbaa !1913
  %41 = or i32 %40, 1, !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2668, metadata !DIExpression()), !dbg !2711
  %42 = load i32, ptr %3, align 8, !dbg !2715, !tbaa !1863
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2716
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2717
  %45 = load ptr, ptr %44, align 8, !dbg !2717, !tbaa !1934
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2718
  %47 = load ptr, ptr %46, align 8, !dbg !2718, !tbaa !1937
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2669, metadata !DIExpression()), !dbg !2711
  %49 = icmp ugt i64 %36, %48, !dbg !2720
  br i1 %49, label %60, label %50, !dbg !2722

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2665, metadata !DIExpression()), !dbg !2711
  store i64 %51, ptr %35, align 8, !dbg !2725, !tbaa !2628
  %52 = icmp eq ptr %38, @slot0, !dbg !2726
  br i1 %52, label %54, label %53, !dbg !2728

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2729
  br label %54, !dbg !2729

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2730
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2667, metadata !DIExpression()), !dbg !2711
  store ptr %55, ptr %37, align 8, !dbg !2731, !tbaa !2616
  %56 = load i32, ptr %3, align 8, !dbg !2732, !tbaa !1863
  %57 = load ptr, ptr %44, align 8, !dbg !2733, !tbaa !1934
  %58 = load ptr, ptr %46, align 8, !dbg !2734, !tbaa !1937
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2735
  br label %60, !dbg !2736

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2711
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2667, metadata !DIExpression()), !dbg !2711
  store i32 %7, ptr %6, align 4, !dbg !2737, !tbaa !906
  ret ptr %61, !dbg !2738
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2739 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2745, metadata !DIExpression()), !dbg !2746
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2747
  ret ptr %4, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2753
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2755
  ret ptr %2, !dbg !2756
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2761, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2762, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %1, metadata !2745, metadata !DIExpression()), !dbg !2764
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2766
  ret ptr %3, !dbg !2767
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2768 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2775, metadata !DIExpression(), metadata !2776, metadata ptr %4, metadata !DIExpression()), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2772, metadata !DIExpression()), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2777
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2774, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2791, !alias.scope !2779, !DIAssignID !2792
  call void @llvm.dbg.assign(metadata i8 0, metadata !2775, metadata !DIExpression(), metadata !2792, metadata ptr %4, metadata !DIExpression()), !dbg !2777
  %5 = icmp eq i32 %1, 10, !dbg !2793
  br i1 %5, label %6, label %7, !dbg !2795

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2796, !noalias !2779
  unreachable, !dbg !2796

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2797, !tbaa !1863, !alias.scope !2779, !DIAssignID !2798
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2798, metadata ptr %4, metadata !DIExpression()), !dbg !2777
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2799
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2800
  ret ptr %8, !dbg !2801
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2802 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2810, metadata !DIExpression(), metadata !2811, metadata ptr %5, metadata !DIExpression()), !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2807, metadata !DIExpression()), !dbg !2812
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2808, metadata !DIExpression()), !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2809, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2814), !dbg !2817
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2788, metadata !DIExpression()), !dbg !2820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2820, !alias.scope !2814, !DIAssignID !2821
  call void @llvm.dbg.assign(metadata i8 0, metadata !2810, metadata !DIExpression(), metadata !2821, metadata ptr %5, metadata !DIExpression()), !dbg !2812
  %6 = icmp eq i32 %1, 10, !dbg !2822
  br i1 %6, label %7, label %8, !dbg !2823

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2824, !noalias !2814
  unreachable, !dbg !2824

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2825, !tbaa !1863, !alias.scope !2814, !DIAssignID !2826
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2810, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2826, metadata ptr %5, metadata !DIExpression()), !dbg !2812
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2828
  ret ptr %9, !dbg !2829
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2830 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2836
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2775, metadata !DIExpression(), metadata !2836, metadata ptr %3, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2772, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %1, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2788, metadata !DIExpression()), !dbg !2847
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2847, !alias.scope !2841, !DIAssignID !2848
  call void @llvm.dbg.assign(metadata i8 0, metadata !2775, metadata !DIExpression(), metadata !2848, metadata ptr %3, metadata !DIExpression()), !dbg !2838
  %4 = icmp eq i32 %0, 10, !dbg !2849
  br i1 %4, label %5, label %6, !dbg !2850

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2851, !noalias !2841
  unreachable, !dbg !2851

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2852, !tbaa !1863, !alias.scope !2841, !DIAssignID !2853
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2853, metadata ptr %3, metadata !DIExpression()), !dbg !2838
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2854
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2855
  ret ptr %7, !dbg !2856
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2857 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2864
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2861, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2862, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2863, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2810, metadata !DIExpression(), metadata !2864, metadata ptr %4, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %1, metadata !2808, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %2, metadata !2809, metadata !DIExpression()), !dbg !2866
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2788, metadata !DIExpression()), !dbg !2875
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2875, !alias.scope !2869, !DIAssignID !2876
  call void @llvm.dbg.assign(metadata i8 0, metadata !2810, metadata !DIExpression(), metadata !2876, metadata ptr %4, metadata !DIExpression()), !dbg !2866
  %5 = icmp eq i32 %0, 10, !dbg !2877
  br i1 %5, label %6, label %7, !dbg !2878

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2879, !noalias !2869
  unreachable, !dbg !2879

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2880, !tbaa !1863, !alias.scope !2869, !DIAssignID !2881
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2810, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2881, metadata ptr %4, metadata !DIExpression()), !dbg !2866
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2882
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2883
  ret ptr %8, !dbg !2884
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2885 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2893
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2893, metadata ptr %4, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2896, !tbaa.struct !2897, !DIAssignID !2898
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2898, metadata ptr %4, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1880, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1881, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1883, metadata !DIExpression()), !dbg !2899
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2901
  %6 = lshr i8 %2, 5, !dbg !2902
  %7 = zext nneg i8 %6 to i64, !dbg !2902
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2903
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1884, metadata !DIExpression()), !dbg !2899
  %9 = and i8 %2, 31, !dbg !2904
  %10 = zext nneg i8 %9 to i32, !dbg !2904
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1886, metadata !DIExpression()), !dbg !2899
  %11 = load i32, ptr %8, align 4, !dbg !2905, !tbaa !906
  %12 = lshr i32 %11, %10, !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1887, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2899
  %13 = and i32 %12, 1, !dbg !2907
  %14 = xor i32 %13, 1, !dbg !2907
  %15 = shl nuw i32 %14, %10, !dbg !2908
  %16 = xor i32 %15, %11, !dbg !2909
  store i32 %16, ptr %8, align 4, !dbg !2909, !tbaa !906
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2910
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2911
  ret ptr %17, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2913 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2919
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2919, metadata ptr %3, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 -1, metadata !2890, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 %1, metadata !2891, metadata !DIExpression()), !dbg !2921
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2924, !tbaa.struct !2897, !DIAssignID !2925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2925, metadata ptr %3, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %3, metadata !1880, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %1, metadata !1881, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %1, metadata !1883, metadata !DIExpression()), !dbg !2926
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2928
  %5 = lshr i8 %1, 5, !dbg !2929
  %6 = zext nneg i8 %5 to i64, !dbg !2929
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2930
  call void @llvm.dbg.value(metadata ptr %7, metadata !1884, metadata !DIExpression()), !dbg !2926
  %8 = and i8 %1, 31, !dbg !2931
  %9 = zext nneg i8 %8 to i32, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %9, metadata !1886, metadata !DIExpression()), !dbg !2926
  %10 = load i32, ptr %7, align 4, !dbg !2932, !tbaa !906
  %11 = lshr i32 %10, %9, !dbg !2933
  call void @llvm.dbg.value(metadata i32 %11, metadata !1887, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2926
  %12 = and i32 %11, 1, !dbg !2934
  %13 = xor i32 %12, 1, !dbg !2934
  %14 = shl nuw i32 %13, %9, !dbg !2935
  %15 = xor i32 %14, %10, !dbg !2936
  store i32 %15, ptr %7, align 4, !dbg !2936, !tbaa !906
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2937
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2938
  ret ptr %16, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2940 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2943
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 58, metadata !2918, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2943, metadata ptr %2, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 -1, metadata !2890, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 58, metadata !2891, metadata !DIExpression()), !dbg !2947
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2950, !tbaa.struct !2897, !DIAssignID !2951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2951, metadata ptr %2, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %2, metadata !1880, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()), !dbg !2952
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %3, metadata !1884, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()), !dbg !2952
  %4 = load i32, ptr %3, align 4, !dbg !2955, !tbaa !906
  call void @llvm.dbg.value(metadata i32 %4, metadata !1887, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2952
  %5 = or i32 %4, 67108864, !dbg !2956
  store i32 %5, ptr %3, align 4, !dbg !2956, !tbaa !906
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2957
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2958
  ret ptr %6, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2960 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2964
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2962, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2964, metadata ptr %3, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !2891, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2969, !tbaa.struct !2897, !DIAssignID !2970
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2892, metadata !DIExpression(), metadata !2970, metadata ptr %3, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %3, metadata !1880, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()), !dbg !2971
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %4, metadata !1884, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()), !dbg !2971
  %5 = load i32, ptr %4, align 4, !dbg !2974, !tbaa !906
  call void @llvm.dbg.value(metadata i32 %5, metadata !1887, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2971
  %6 = or i32 %5, 67108864, !dbg !2975
  store i32 %6, ptr %4, align 4, !dbg !2975, !tbaa !906
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2977
  ret ptr %7, !dbg !2978
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2979 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2984, metadata !DIExpression(), metadata !2985, metadata ptr %4, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2788, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2982, metadata !DIExpression()), !dbg !2986
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2990
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2788, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2990
  %5 = icmp eq i32 %1, 10, !dbg !2991
  br i1 %5, label %6, label %7, !dbg !2992

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2993, !noalias !2994
  unreachable, !dbg !2993

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2788, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2990
  store i32 %1, ptr %4, align 8, !dbg !2997, !tbaa.struct !2897, !DIAssignID !2998
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2997
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2997
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2998, metadata ptr %4, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2999, metadata ptr %8, metadata !DIExpression()), !dbg !2986
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1880, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()), !dbg !3000
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3002
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1884, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()), !dbg !3000
  %10 = load i32, ptr %9, align 4, !dbg !3003, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1887, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3000
  %11 = or i32 %10, 67108864, !dbg !3004
  store i32 %11, ptr %9, align 4, !dbg !3004, !tbaa !906, !DIAssignID !3005
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3005, metadata ptr %9, metadata !DIExpression()), !dbg !2986
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3006
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3007
  ret ptr %12, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3009 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3017
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3014, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3015, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3017, metadata ptr %5, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %1, metadata !3025, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %2, metadata !3026, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %3, metadata !3027, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 -1, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3032, !tbaa.struct !2897, !DIAssignID !3033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3033, metadata ptr %5, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3034, metadata ptr undef, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %5, metadata !1920, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %1, metadata !1921, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %2, metadata !1922, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %5, metadata !1920, metadata !DIExpression()), !dbg !3035
  store i32 10, ptr %5, align 8, !dbg !3037, !tbaa !1863, !DIAssignID !3038
  call void @llvm.dbg.assign(metadata i32 10, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3038, metadata ptr %5, metadata !DIExpression()), !dbg !3029
  %6 = icmp ne ptr %1, null, !dbg !3039
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3040
  br i1 %8, label %10, label %9, !dbg !3040

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3041
  unreachable, !dbg !3041

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3042
  store ptr %1, ptr %11, align 8, !dbg !3043, !tbaa !1934, !DIAssignID !3044
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3044, metadata ptr %11, metadata !DIExpression()), !dbg !3029
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3045
  store ptr %2, ptr %12, align 8, !dbg !3046, !tbaa !1937, !DIAssignID !3047
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3047, metadata ptr %12, metadata !DIExpression()), !dbg !3029
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3048
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3049
  ret ptr %13, !dbg !3050
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3020 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3051, metadata ptr %6, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3025, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3026, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3027, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3028, metadata !DIExpression()), !dbg !3052
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3054, !tbaa.struct !2897, !DIAssignID !3055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3055, metadata ptr %6, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3056, metadata ptr undef, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %6, metadata !1920, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %1, metadata !1921, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %2, metadata !1922, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %6, metadata !1920, metadata !DIExpression()), !dbg !3057
  store i32 10, ptr %6, align 8, !dbg !3059, !tbaa !1863, !DIAssignID !3060
  call void @llvm.dbg.assign(metadata i32 10, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3060, metadata ptr %6, metadata !DIExpression()), !dbg !3052
  %7 = icmp ne ptr %1, null, !dbg !3061
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3062
  br i1 %9, label %11, label %10, !dbg !3062

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3063
  unreachable, !dbg !3063

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3064
  store ptr %1, ptr %12, align 8, !dbg !3065, !tbaa !1934, !DIAssignID !3066
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3066, metadata ptr %12, metadata !DIExpression()), !dbg !3052
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3067
  store ptr %2, ptr %13, align 8, !dbg !3068, !tbaa !1937, !DIAssignID !3069
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3069, metadata ptr %13, metadata !DIExpression()), !dbg !3052
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3070
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3071
  ret ptr %14, !dbg !3072
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3073 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3080
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3081
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3078, metadata !DIExpression()), !dbg !3081
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3080, metadata ptr %4, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 0, metadata !3024, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2, metadata !3027, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 -1, metadata !3028, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3087, !tbaa.struct !2897, !DIAssignID !3088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3088, metadata ptr %4, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3089, metadata ptr undef, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %4, metadata !1920, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %1, metadata !1922, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %4, metadata !1920, metadata !DIExpression()), !dbg !3090
  store i32 10, ptr %4, align 8, !dbg !3092, !tbaa !1863, !DIAssignID !3093
  call void @llvm.dbg.assign(metadata i32 10, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3093, metadata ptr %4, metadata !DIExpression()), !dbg !3084
  %5 = icmp ne ptr %0, null, !dbg !3094
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3095
  br i1 %7, label %9, label %8, !dbg !3095

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3096
  unreachable, !dbg !3096

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3097
  store ptr %0, ptr %10, align 8, !dbg !3098, !tbaa !1934, !DIAssignID !3099
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3099, metadata ptr %10, metadata !DIExpression()), !dbg !3084
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3100
  store ptr %1, ptr %11, align 8, !dbg !3101, !tbaa !1937, !DIAssignID !3102
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3102, metadata ptr %11, metadata !DIExpression()), !dbg !3084
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3103
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3104
  ret ptr %12, !dbg !3105
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3106 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3114
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3111, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3112, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3114, metadata ptr %5, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 0, metadata !3024, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !3027, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %3, metadata !3028, metadata !DIExpression()), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3119, !tbaa.struct !2897, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(), metadata !3120, metadata ptr %5, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3121, metadata ptr undef, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %5, metadata !1920, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %1, metadata !1922, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %5, metadata !1920, metadata !DIExpression()), !dbg !3122
  store i32 10, ptr %5, align 8, !dbg !3124, !tbaa !1863, !DIAssignID !3125
  call void @llvm.dbg.assign(metadata i32 10, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3125, metadata ptr %5, metadata !DIExpression()), !dbg !3116
  %6 = icmp ne ptr %0, null, !dbg !3126
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3127
  br i1 %8, label %10, label %9, !dbg !3127

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3128
  unreachable, !dbg !3128

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3129
  store ptr %0, ptr %11, align 8, !dbg !3130, !tbaa !1934, !DIAssignID !3131
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3131, metadata ptr %11, metadata !DIExpression()), !dbg !3116
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3132
  store ptr %1, ptr %12, align 8, !dbg !3133, !tbaa !1937, !DIAssignID !3134
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3019, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3134, metadata ptr %12, metadata !DIExpression()), !dbg !3116
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3135
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3136
  ret ptr %13, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3138 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3143, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3144, metadata !DIExpression()), !dbg !3145
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3146
  ret ptr %4, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3155
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3157
  ret ptr %3, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3159 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata ptr %1, metadata !3143, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 -1, metadata !3144, metadata !DIExpression()), !dbg !3166
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3168
  ret ptr %3, !dbg !3169
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3170 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata ptr %0, metadata !3164, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 -1, metadata !3144, metadata !DIExpression()), !dbg !3178
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3180
  ret ptr %2, !dbg !3181
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3182 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3222, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3223, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3224, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3225, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3226, metadata !DIExpression()), !dbg !3227
  %7 = icmp eq ptr %1, null, !dbg !3228
  br i1 %7, label %10, label %8, !dbg !3230

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3231
  br label %12, !dbg !3231

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.97, ptr noundef %2, ptr noundef %3) #37, !dbg !3232
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.3.99, i32 noundef 5) #37, !dbg !3233
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3233
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3234
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.5.101, i32 noundef 5) #37, !dbg !3235
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.102) #37, !dbg !3235
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3236
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
  ], !dbg !3237

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.7.103, i32 noundef 5) #37, !dbg !3238
  %21 = load ptr, ptr %4, align 8, !dbg !3238, !tbaa !842
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3238
  br label %147, !dbg !3240

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.8.104, i32 noundef 5) #37, !dbg !3241
  %25 = load ptr, ptr %4, align 8, !dbg !3241, !tbaa !842
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3241
  %27 = load ptr, ptr %26, align 8, !dbg !3241, !tbaa !842
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3241
  br label %147, !dbg !3242

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.9.105, i32 noundef 5) #37, !dbg !3243
  %31 = load ptr, ptr %4, align 8, !dbg !3243, !tbaa !842
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3243
  %33 = load ptr, ptr %32, align 8, !dbg !3243, !tbaa !842
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3243
  %35 = load ptr, ptr %34, align 8, !dbg !3243, !tbaa !842
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3243
  br label %147, !dbg !3244

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.10.106, i32 noundef 5) #37, !dbg !3245
  %39 = load ptr, ptr %4, align 8, !dbg !3245, !tbaa !842
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3245
  %41 = load ptr, ptr %40, align 8, !dbg !3245, !tbaa !842
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3245
  %43 = load ptr, ptr %42, align 8, !dbg !3245, !tbaa !842
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3245
  %45 = load ptr, ptr %44, align 8, !dbg !3245, !tbaa !842
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3245
  br label %147, !dbg !3246

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.11.107, i32 noundef 5) #37, !dbg !3247
  %49 = load ptr, ptr %4, align 8, !dbg !3247, !tbaa !842
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3247
  %51 = load ptr, ptr %50, align 8, !dbg !3247, !tbaa !842
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3247
  %53 = load ptr, ptr %52, align 8, !dbg !3247, !tbaa !842
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3247
  %55 = load ptr, ptr %54, align 8, !dbg !3247, !tbaa !842
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3247
  %57 = load ptr, ptr %56, align 8, !dbg !3247, !tbaa !842
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3247
  br label %147, !dbg !3248

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.12.108, i32 noundef 5) #37, !dbg !3249
  %61 = load ptr, ptr %4, align 8, !dbg !3249, !tbaa !842
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3249
  %63 = load ptr, ptr %62, align 8, !dbg !3249, !tbaa !842
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3249
  %65 = load ptr, ptr %64, align 8, !dbg !3249, !tbaa !842
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3249
  %67 = load ptr, ptr %66, align 8, !dbg !3249, !tbaa !842
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3249
  %69 = load ptr, ptr %68, align 8, !dbg !3249, !tbaa !842
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3249
  %71 = load ptr, ptr %70, align 8, !dbg !3249, !tbaa !842
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3249
  br label %147, !dbg !3250

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.13.109, i32 noundef 5) #37, !dbg !3251
  %75 = load ptr, ptr %4, align 8, !dbg !3251, !tbaa !842
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3251
  %77 = load ptr, ptr %76, align 8, !dbg !3251, !tbaa !842
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3251
  %79 = load ptr, ptr %78, align 8, !dbg !3251, !tbaa !842
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3251
  %81 = load ptr, ptr %80, align 8, !dbg !3251, !tbaa !842
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3251
  %83 = load ptr, ptr %82, align 8, !dbg !3251, !tbaa !842
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3251
  %85 = load ptr, ptr %84, align 8, !dbg !3251, !tbaa !842
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3251
  %87 = load ptr, ptr %86, align 8, !dbg !3251, !tbaa !842
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3251
  br label %147, !dbg !3252

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.14.110, i32 noundef 5) #37, !dbg !3253
  %91 = load ptr, ptr %4, align 8, !dbg !3253, !tbaa !842
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3253
  %93 = load ptr, ptr %92, align 8, !dbg !3253, !tbaa !842
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3253
  %95 = load ptr, ptr %94, align 8, !dbg !3253, !tbaa !842
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3253
  %97 = load ptr, ptr %96, align 8, !dbg !3253, !tbaa !842
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3253
  %99 = load ptr, ptr %98, align 8, !dbg !3253, !tbaa !842
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3253
  %101 = load ptr, ptr %100, align 8, !dbg !3253, !tbaa !842
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3253
  %103 = load ptr, ptr %102, align 8, !dbg !3253, !tbaa !842
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3253
  %105 = load ptr, ptr %104, align 8, !dbg !3253, !tbaa !842
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3253
  br label %147, !dbg !3254

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.15.111, i32 noundef 5) #37, !dbg !3255
  %109 = load ptr, ptr %4, align 8, !dbg !3255, !tbaa !842
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3255
  %111 = load ptr, ptr %110, align 8, !dbg !3255, !tbaa !842
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3255
  %113 = load ptr, ptr %112, align 8, !dbg !3255, !tbaa !842
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3255
  %115 = load ptr, ptr %114, align 8, !dbg !3255, !tbaa !842
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3255
  %117 = load ptr, ptr %116, align 8, !dbg !3255, !tbaa !842
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3255
  %119 = load ptr, ptr %118, align 8, !dbg !3255, !tbaa !842
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3255
  %121 = load ptr, ptr %120, align 8, !dbg !3255, !tbaa !842
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3255
  %123 = load ptr, ptr %122, align 8, !dbg !3255, !tbaa !842
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3255
  %125 = load ptr, ptr %124, align 8, !dbg !3255, !tbaa !842
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3255
  br label %147, !dbg !3256

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.16.112, i32 noundef 5) #37, !dbg !3257
  %129 = load ptr, ptr %4, align 8, !dbg !3257, !tbaa !842
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3257
  %131 = load ptr, ptr %130, align 8, !dbg !3257, !tbaa !842
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3257
  %133 = load ptr, ptr %132, align 8, !dbg !3257, !tbaa !842
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3257
  %135 = load ptr, ptr %134, align 8, !dbg !3257, !tbaa !842
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3257
  %137 = load ptr, ptr %136, align 8, !dbg !3257, !tbaa !842
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3257
  %139 = load ptr, ptr %138, align 8, !dbg !3257, !tbaa !842
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3257
  %141 = load ptr, ptr %140, align 8, !dbg !3257, !tbaa !842
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3257
  %143 = load ptr, ptr %142, align 8, !dbg !3257, !tbaa !842
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3257
  %145 = load ptr, ptr %144, align 8, !dbg !3257, !tbaa !842
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3257
  br label %147, !dbg !3258

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3264, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3265, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3266, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3267, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3268, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3269, metadata !DIExpression()), !dbg !3270
  br label %6, !dbg !3271

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3269, metadata !DIExpression()), !dbg !3270
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3274
  %9 = load ptr, ptr %8, align 8, !dbg !3274, !tbaa !842
  %10 = icmp eq ptr %9, null, !dbg !3276
  %11 = add i64 %7, 1, !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3269, metadata !DIExpression()), !dbg !3270
  br i1 %10, label %12, label %6, !dbg !3276, !llvm.loop !3278

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3280
  ret void, !dbg !3281
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3282 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3299, metadata !DIExpression(), metadata !3301, metadata ptr %6, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3294, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3295, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3298, metadata !DIExpression()), !dbg !3302
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3298, metadata !DIExpression()), !dbg !3302
  %10 = icmp ult i32 %9, 41, !dbg !3304
  br i1 %10, label %11, label %16, !dbg !3304

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3304
  %13 = zext nneg i32 %9 to i64, !dbg !3304
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3304
  %15 = add nuw nsw i32 %9, 8, !dbg !3304
  store i32 %15, ptr %4, align 8, !dbg !3304
  br label %19, !dbg !3304

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3304
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3304
  store ptr %18, ptr %7, align 8, !dbg !3304
  br label %19, !dbg !3304

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3304
  %22 = load ptr, ptr %21, align 8, !dbg !3304
  store ptr %22, ptr %6, align 16, !dbg !3307, !tbaa !842
  %23 = icmp eq ptr %22, null, !dbg !3308
  br i1 %23, label %128, label %24, !dbg !3309

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3298, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3298, metadata !DIExpression()), !dbg !3302
  %25 = icmp ult i32 %20, 41, !dbg !3304
  br i1 %25, label %29, label %26, !dbg !3304

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3304
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3304
  store ptr %28, ptr %7, align 8, !dbg !3304
  br label %34, !dbg !3304

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3304
  %31 = zext nneg i32 %20 to i64, !dbg !3304
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3304
  %33 = add nuw nsw i32 %20, 8, !dbg !3304
  store i32 %33, ptr %4, align 8, !dbg !3304
  br label %34, !dbg !3304

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3304
  %37 = load ptr, ptr %36, align 8, !dbg !3304
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3310
  store ptr %37, ptr %38, align 8, !dbg !3307, !tbaa !842
  %39 = icmp eq ptr %37, null, !dbg !3308
  br i1 %39, label %128, label %40, !dbg !3309

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3298, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3298, metadata !DIExpression()), !dbg !3302
  %41 = icmp ult i32 %35, 41, !dbg !3304
  br i1 %41, label %45, label %42, !dbg !3304

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3304
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3304
  store ptr %44, ptr %7, align 8, !dbg !3304
  br label %50, !dbg !3304

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3304
  %47 = zext nneg i32 %35 to i64, !dbg !3304
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3304
  %49 = add nuw nsw i32 %35, 8, !dbg !3304
  store i32 %49, ptr %4, align 8, !dbg !3304
  br label %50, !dbg !3304

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3304
  %53 = load ptr, ptr %52, align 8, !dbg !3304
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3310
  store ptr %53, ptr %54, align 16, !dbg !3307, !tbaa !842
  %55 = icmp eq ptr %53, null, !dbg !3308
  br i1 %55, label %128, label %56, !dbg !3309

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3298, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3298, metadata !DIExpression()), !dbg !3302
  %57 = icmp ult i32 %51, 41, !dbg !3304
  br i1 %57, label %61, label %58, !dbg !3304

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3304
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3304
  store ptr %60, ptr %7, align 8, !dbg !3304
  br label %66, !dbg !3304

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3304
  %63 = zext nneg i32 %51 to i64, !dbg !3304
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3304
  %65 = add nuw nsw i32 %51, 8, !dbg !3304
  store i32 %65, ptr %4, align 8, !dbg !3304
  br label %66, !dbg !3304

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3304
  %69 = load ptr, ptr %68, align 8, !dbg !3304
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3310
  store ptr %69, ptr %70, align 8, !dbg !3307, !tbaa !842
  %71 = icmp eq ptr %69, null, !dbg !3308
  br i1 %71, label %128, label %72, !dbg !3309

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3298, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3298, metadata !DIExpression()), !dbg !3302
  %73 = icmp ult i32 %67, 41, !dbg !3304
  br i1 %73, label %77, label %74, !dbg !3304

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3304
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3304
  store ptr %76, ptr %7, align 8, !dbg !3304
  br label %82, !dbg !3304

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3304
  %79 = zext nneg i32 %67 to i64, !dbg !3304
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3304
  %81 = add nuw nsw i32 %67, 8, !dbg !3304
  store i32 %81, ptr %4, align 8, !dbg !3304
  br label %82, !dbg !3304

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3304
  %85 = load ptr, ptr %84, align 8, !dbg !3304
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3310
  store ptr %85, ptr %86, align 16, !dbg !3307, !tbaa !842
  %87 = icmp eq ptr %85, null, !dbg !3308
  br i1 %87, label %128, label %88, !dbg !3309

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3298, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3298, metadata !DIExpression()), !dbg !3302
  %89 = icmp ult i32 %83, 41, !dbg !3304
  br i1 %89, label %93, label %90, !dbg !3304

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3304
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3304
  store ptr %92, ptr %7, align 8, !dbg !3304
  br label %98, !dbg !3304

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3304
  %95 = zext nneg i32 %83 to i64, !dbg !3304
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3304
  %97 = add nuw nsw i32 %83, 8, !dbg !3304
  store i32 %97, ptr %4, align 8, !dbg !3304
  br label %98, !dbg !3304

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3304
  %100 = load ptr, ptr %99, align 8, !dbg !3304
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3310
  store ptr %100, ptr %101, align 8, !dbg !3307, !tbaa !842
  %102 = icmp eq ptr %100, null, !dbg !3308
  br i1 %102, label %128, label %103, !dbg !3309

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3298, metadata !DIExpression()), !dbg !3302
  %104 = load ptr, ptr %7, align 8, !dbg !3304
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3304
  store ptr %105, ptr %7, align 8, !dbg !3304
  %106 = load ptr, ptr %104, align 8, !dbg !3304
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3310
  store ptr %106, ptr %107, align 16, !dbg !3307, !tbaa !842
  %108 = icmp eq ptr %106, null, !dbg !3308
  br i1 %108, label %128, label %109, !dbg !3309

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3298, metadata !DIExpression()), !dbg !3302
  %110 = load ptr, ptr %7, align 8, !dbg !3304
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3304
  store ptr %111, ptr %7, align 8, !dbg !3304
  %112 = load ptr, ptr %110, align 8, !dbg !3304
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3310
  store ptr %112, ptr %113, align 8, !dbg !3307, !tbaa !842
  %114 = icmp eq ptr %112, null, !dbg !3308
  br i1 %114, label %128, label %115, !dbg !3309

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3298, metadata !DIExpression()), !dbg !3302
  %116 = load ptr, ptr %7, align 8, !dbg !3304
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3304
  store ptr %117, ptr %7, align 8, !dbg !3304
  %118 = load ptr, ptr %116, align 8, !dbg !3304
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3310
  store ptr %118, ptr %119, align 16, !dbg !3307, !tbaa !842
  %120 = icmp eq ptr %118, null, !dbg !3308
  br i1 %120, label %128, label %121, !dbg !3309

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3298, metadata !DIExpression()), !dbg !3302
  %122 = load ptr, ptr %7, align 8, !dbg !3304
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3304
  store ptr %123, ptr %7, align 8, !dbg !3304
  %124 = load ptr, ptr %122, align 8, !dbg !3304
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3310
  store ptr %124, ptr %125, align 8, !dbg !3307, !tbaa !842
  %126 = icmp eq ptr %124, null, !dbg !3308
  %127 = select i1 %126, i64 9, i64 10, !dbg !3309
  br label %128, !dbg !3309

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3311
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3312
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3313
  ret void, !dbg !3313
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3314 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3327
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3322, metadata !DIExpression(), metadata !3327, metadata ptr %5, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3318, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3319, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3320, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3321, metadata !DIExpression()), !dbg !3328
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3329
  call void @llvm.va_start(ptr nonnull %5), !dbg !3330
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3331
  call void @llvm.va_end(ptr nonnull %5), !dbg !3332
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3333
  ret void, !dbg !3333
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3334 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3335, !tbaa !842
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %1), !dbg !3335
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.17.117, i32 noundef 5) #37, !dbg !3336
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.118) #37, !dbg !3336
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.19.119, i32 noundef 5) #37, !dbg !3337
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.120, ptr noundef nonnull @.str.21.121) #37, !dbg !3337
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.22.122, i32 noundef 5) #37, !dbg !3338
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3338
  ret void, !dbg !3339
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3340 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3345, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3362
  %5 = icmp eq ptr %4, null, !dbg !3364
  br i1 %5, label %6, label %7, !dbg !3366

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3367
  unreachable, !dbg !3367

7:                                                ; preds = %3
  ret ptr %4, !dbg !3368
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3369
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3370
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3371
  %5 = icmp eq ptr %4, null, !dbg !3373
  br i1 %5, label %6, label %7, !dbg !3374

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3375
  unreachable, !dbg !3375

7:                                                ; preds = %3
  ret ptr %4, !dbg !3376
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3377 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()), !dbg !3382
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3384
  %3 = icmp eq ptr %2, null, !dbg !3386
  br i1 %3, label %4, label %5, !dbg !3387

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3388
  unreachable, !dbg !3388

5:                                                ; preds = %1
  ret ptr %2, !dbg !3389
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3390 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3401
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3404
  %3 = icmp eq ptr %2, null, !dbg !3406
  br i1 %3, label %4, label %5, !dbg !3407

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3408
  unreachable, !dbg !3408

5:                                                ; preds = %1
  ret ptr %2, !dbg !3409
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()), !dbg !3416
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3419
  %3 = icmp eq ptr %2, null, !dbg !3421
  br i1 %3, label %4, label %5, !dbg !3422

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3423
  unreachable, !dbg !3423

5:                                                ; preds = %1
  ret ptr %2, !dbg !3424
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3439
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3440
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3441
  %5 = icmp eq ptr %4, null, !dbg !3443
  br i1 %5, label %6, label %7, !dbg !3444

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3445
  unreachable, !dbg !3445

7:                                                ; preds = %2
  ret ptr %4, !dbg !3446
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3447 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3461
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3463
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3465
  %5 = icmp eq ptr %4, null, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3468

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3469
  unreachable, !dbg !3469

7:                                                ; preds = %2
  ret ptr %4, !dbg !3470
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3471 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3486
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3487
  %5 = icmp eq ptr %4, null, !dbg !3489
  br i1 %5, label %6, label %7, !dbg !3490

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3491
  unreachable, !dbg !3491

7:                                                ; preds = %3
  ret ptr %4, !dbg !3492
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3493 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3497, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr null, metadata !3349, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3500
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3503
  %4 = icmp eq ptr %3, null, !dbg !3505
  br i1 %4, label %5, label %6, !dbg !3506

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3507
  unreachable, !dbg !3507

6:                                                ; preds = %2
  ret ptr %3, !dbg !3508
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3513, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3514, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr null, metadata !3475, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %0, metadata !3476, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %1, metadata !3477, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr null, metadata !3479, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %0, metadata !3482, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3518
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3521
  %4 = icmp eq ptr %3, null, !dbg !3523
  br i1 %4, label %5, label %6, !dbg !3524

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3525
  unreachable, !dbg !3525

6:                                                ; preds = %2
  ret ptr %3, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3527 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 1, metadata !779, metadata !DIExpression()), !dbg !3534
  %3 = load i64, ptr %1, align 8, !dbg !3536, !tbaa !2600
  call void @llvm.dbg.value(metadata i64 %3, metadata !780, metadata !DIExpression()), !dbg !3534
  %4 = icmp eq ptr %0, null, !dbg !3537
  br i1 %4, label %5, label %8, !dbg !3539

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3540
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3543
  br label %15, !dbg !3543

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3544
  %10 = add nuw i64 %9, 1, !dbg !3544
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3544
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3544
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %13, metadata !780, metadata !DIExpression()), !dbg !3534
  br i1 %12, label %14, label %15, !dbg !3547

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3548
  unreachable, !dbg !3548

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3534
  call void @llvm.dbg.value(metadata i64 %16, metadata !780, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %16, metadata !3352, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 1, metadata !3353, metadata !DIExpression()), !dbg !3549
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3551
  call void @llvm.dbg.value(metadata ptr %17, metadata !3357, metadata !DIExpression()), !dbg !3552
  %18 = icmp eq ptr %17, null, !dbg !3554
  br i1 %18, label %19, label %20, !dbg !3555

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3556
  unreachable, !dbg !3556

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !777, metadata !DIExpression()), !dbg !3534
  store i64 %16, ptr %1, align 8, !dbg !3557, !tbaa !2600
  ret ptr %17, !dbg !3558
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !779, metadata !DIExpression()), !dbg !3559
  %4 = load i64, ptr %1, align 8, !dbg !3560, !tbaa !2600
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !780, metadata !DIExpression()), !dbg !3559
  %5 = icmp eq ptr %0, null, !dbg !3561
  br i1 %5, label %6, label %13, !dbg !3562

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3563
  br i1 %7, label %8, label %20, !dbg !3564

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !780, metadata !DIExpression()), !dbg !3559
  %10 = icmp ugt i64 %2, 128, !dbg !3567
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !780, metadata !DIExpression()), !dbg !3559
  br label %20, !dbg !3569

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3570
  %15 = add nuw i64 %14, 1, !dbg !3570
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3570
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3570
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !780, metadata !DIExpression()), !dbg !3559
  br i1 %17, label %19, label %20, !dbg !3571

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3572
  unreachable, !dbg !3572

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !780, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %21, metadata !3352, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3573
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %22, metadata !3357, metadata !DIExpression()), !dbg !3576
  %23 = icmp eq ptr %22, null, !dbg !3578
  br i1 %23, label %24, label %25, !dbg !3579

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3580
  unreachable, !dbg !3580

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !777, metadata !DIExpression()), !dbg !3559
  store i64 %21, ptr %1, align 8, !dbg !3581, !tbaa !2600
  ret ptr %22, !dbg !3582
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !793, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !794, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !795, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !796, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !797, metadata !DIExpression()), !dbg !3583
  %6 = load i64, ptr %1, align 8, !dbg !3584, !tbaa !2600
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !798, metadata !DIExpression()), !dbg !3583
  %7 = ashr i64 %6, 1, !dbg !3585
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3585
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3585
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !799, metadata !DIExpression()), !dbg !3583
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !799, metadata !DIExpression()), !dbg !3583
  %12 = icmp sgt i64 %3, -1, !dbg !3588
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3590
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !799, metadata !DIExpression()), !dbg !3583
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3591
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3591
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !800, metadata !DIExpression()), !dbg !3583
  %18 = icmp slt i64 %17, 128, !dbg !3591
  %19 = select i1 %18, i64 128, i64 0, !dbg !3591
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !801, metadata !DIExpression()), !dbg !3583
  %21 = icmp eq i64 %20, 0, !dbg !3592
  br i1 %21, label %26, label %22, !dbg !3594

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !799, metadata !DIExpression()), !dbg !3583
  %24 = srem i64 %20, %4, !dbg !3597
  %25 = sub nsw i64 %20, %24, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !800, metadata !DIExpression()), !dbg !3583
  br label %26, !dbg !3599

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3583
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !800, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !799, metadata !DIExpression()), !dbg !3583
  %29 = icmp eq ptr %0, null, !dbg !3600
  br i1 %29, label %30, label %31, !dbg !3602

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3603, !tbaa !2600
  br label %31, !dbg !3604

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3605
  %33 = icmp slt i64 %32, %2, !dbg !3607
  br i1 %33, label %34, label %46, !dbg !3608

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3609
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3609
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !799, metadata !DIExpression()), !dbg !3583
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3610
  br i1 %40, label %45, label %41, !dbg !3610

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3611
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3611
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3611
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !800, metadata !DIExpression()), !dbg !3583
  br i1 %43, label %45, label %46, !dbg !3612

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3613
  unreachable, !dbg !3613

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3583
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !800, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !799, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %48, metadata !3430, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %48, metadata !3436, metadata !DIExpression()), !dbg !3616
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3618
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3619
  call void @llvm.dbg.value(metadata ptr %50, metadata !3357, metadata !DIExpression()), !dbg !3620
  %51 = icmp eq ptr %50, null, !dbg !3622
  br i1 %51, label %52, label %53, !dbg !3623

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3624
  unreachable, !dbg !3624

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !793, metadata !DIExpression()), !dbg !3583
  store i64 %47, ptr %1, align 8, !dbg !3625, !tbaa !2600
  ret ptr %50, !dbg !3626
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3627 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()), !dbg !3635
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3638
  %3 = icmp eq ptr %2, null, !dbg !3640
  br i1 %3, label %4, label %5, !dbg !3641

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3642
  unreachable, !dbg !3642

5:                                                ; preds = %1
  ret ptr %2, !dbg !3643
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3644 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3632 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3645
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3646
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3647
  %4 = icmp eq ptr %3, null, !dbg !3649
  br i1 %4, label %5, label %6, !dbg !3650

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3651
  unreachable, !dbg !3651

6:                                                ; preds = %2
  ret ptr %3, !dbg !3652
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3653 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 1, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 1, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 1, metadata !3666, metadata !DIExpression()), !dbg !3667
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3669
  call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3670
  %3 = icmp eq ptr %2, null, !dbg !3672
  br i1 %3, label %4, label %5, !dbg !3673

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3674
  unreachable, !dbg !3674

5:                                                ; preds = %1
  ret ptr %2, !dbg !3675
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3658 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3677
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3680
  %4 = icmp eq ptr %3, null, !dbg !3682
  br i1 %4, label %5, label %6, !dbg !3683

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3684
  unreachable, !dbg !3684

6:                                                ; preds = %2
  ret ptr %3, !dbg !3685
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3686 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3693
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3695
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3696
  %4 = icmp eq ptr %3, null, !dbg !3698
  br i1 %4, label %5, label %6, !dbg !3699

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3700
  unreachable, !dbg !3700

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()), !dbg !3709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3711
  ret ptr %3, !dbg !3712
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3713 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3722
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3724
  call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3725
  %4 = icmp eq ptr %3, null, !dbg !3727
  br i1 %4, label %5, label %6, !dbg !3728

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3729
  unreachable, !dbg !3729

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3732
  ret ptr %3, !dbg !3733
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3741
  %3 = add nsw i64 %1, 1, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %3, metadata !3395, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 %3, metadata !3397, metadata !DIExpression()), !dbg !3745
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3747
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3748
  %5 = icmp eq ptr %4, null, !dbg !3750
  br i1 %5, label %6, label %7, !dbg !3751

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3752
  unreachable, !dbg !3752

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3741
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3753
  store i8 0, ptr %8, align 1, !dbg !3754, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %4, metadata !3701, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3757
  ret ptr %4, !dbg !3758
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3762
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3763
  %3 = add i64 %2, 1, !dbg !3764
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %3, metadata !3691, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %3, metadata !3381, metadata !DIExpression()), !dbg !3767
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3769
  call void @llvm.dbg.value(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3770
  %5 = icmp eq ptr %4, null, !dbg !3772
  br i1 %5, label %6, label %7, !dbg !3773

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3774
  unreachable, !dbg !3774

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3701, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %3, metadata !3708, metadata !DIExpression()), !dbg !3775
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3777
  ret ptr %4, !dbg !3778
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3779 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3784, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3781, metadata !DIExpression()), !dbg !3785
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #37, !dbg !3784
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #37, !dbg !3784
  %3 = icmp eq i32 %1, 0, !dbg !3784
  tail call void @llvm.assume(i1 %3), !dbg !3784
  tail call void @abort() #39, !dbg !3786
  unreachable, !dbg !3786
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3787 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3825, metadata !DIExpression()), !dbg !3830
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3826, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3832, metadata !DIExpression()), !dbg !3835
  %3 = load i32, ptr %0, align 8, !dbg !3837, !tbaa !3838
  %4 = and i32 %3, 32, !dbg !3839
  %5 = icmp eq i32 %4, 0, !dbg !3839
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3840
  %7 = icmp eq i32 %6, 0, !dbg !3841
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3829, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  br i1 %5, label %8, label %18, !dbg !3842

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3844
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3826, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3845
  %11 = xor i1 %7, true, !dbg !3845
  %12 = sext i1 %11 to i32, !dbg !3845
  br i1 %10, label %21, label %13, !dbg !3845

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3846
  %15 = load i32, ptr %14, align 4, !dbg !3846, !tbaa !906
  %16 = icmp ne i32 %15, 9, !dbg !3847
  %17 = sext i1 %16 to i32, !dbg !3848
  br label %21, !dbg !3848

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3849

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3851
  store i32 0, ptr %20, align 4, !dbg !3853, !tbaa !906
  br label %21, !dbg !3851

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3830
  ret i32 %22, !dbg !3854
}

; Function Attrs: nounwind
declare !dbg !3855 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3859 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression()), !dbg !3901
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3899, metadata !DIExpression()), !dbg !3901
  %3 = icmp slt i32 %2, 0, !dbg !3903
  br i1 %3, label %4, label %6, !dbg !3905

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3906
  br label %24, !dbg !3907

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3908
  %8 = icmp eq i32 %7, 0, !dbg !3908
  br i1 %8, label %13, label %9, !dbg !3910

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3911
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3912
  %12 = icmp eq i64 %11, -1, !dbg !3913
  br i1 %12, label %16, label %13, !dbg !3914

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3915
  %15 = icmp eq i32 %14, 0, !dbg !3915
  br i1 %15, label %16, label %18, !dbg !3916

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3900, metadata !DIExpression()), !dbg !3901
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3900, metadata !DIExpression()), !dbg !3901
  br label %24, !dbg !3918

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3919
  %20 = load i32, ptr %19, align 4, !dbg !3919, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3898, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3900, metadata !DIExpression()), !dbg !3901
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3900, metadata !DIExpression()), !dbg !3901
  %22 = icmp eq i32 %20, 0, !dbg !3920
  br i1 %22, label %24, label %23, !dbg !3918

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3922, !tbaa !906
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3900, metadata !DIExpression()), !dbg !3901
  br label %24, !dbg !3924

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3901
  ret i32 %25, !dbg !3925
}

; Function Attrs: nofree nounwind
declare !dbg !3926 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3927 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3928 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3929 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3932 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3970, metadata !DIExpression()), !dbg !3971
  %2 = icmp eq ptr %0, null, !dbg !3972
  br i1 %2, label %6, label %3, !dbg !3974

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3975
  %5 = icmp eq i32 %4, 0, !dbg !3975
  br i1 %5, label %6, label %8, !dbg !3976

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3977
  br label %16, !dbg !3978

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3979, metadata !DIExpression()), !dbg !3984
  %9 = load i32, ptr %0, align 8, !dbg !3986, !tbaa !3838
  %10 = and i32 %9, 256, !dbg !3988
  %11 = icmp eq i32 %10, 0, !dbg !3988
  br i1 %11, label %14, label %12, !dbg !3989

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3990
  br label %14, !dbg !3990

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3991
  br label %16, !dbg !3992

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3971
  ret i32 %17, !dbg !3993
}

; Function Attrs: nofree nounwind
declare !dbg !3994 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3995 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4034, metadata !DIExpression()), !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4035, metadata !DIExpression()), !dbg !4040
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4036, metadata !DIExpression()), !dbg !4040
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4041
  %5 = load ptr, ptr %4, align 8, !dbg !4041, !tbaa !4042
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4043
  %7 = load ptr, ptr %6, align 8, !dbg !4043, !tbaa !4044
  %8 = icmp eq ptr %5, %7, !dbg !4045
  br i1 %8, label %9, label %27, !dbg !4046

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4047
  %11 = load ptr, ptr %10, align 8, !dbg !4047, !tbaa !1606
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4048
  %13 = load ptr, ptr %12, align 8, !dbg !4048, !tbaa !4049
  %14 = icmp eq ptr %11, %13, !dbg !4050
  br i1 %14, label %15, label %27, !dbg !4051

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4052
  %17 = load ptr, ptr %16, align 8, !dbg !4052, !tbaa !4053
  %18 = icmp eq ptr %17, null, !dbg !4054
  br i1 %18, label %19, label %27, !dbg !4055

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4056
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4057
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4037, metadata !DIExpression()), !dbg !4058
  %22 = icmp eq i64 %21, -1, !dbg !4059
  br i1 %22, label %29, label %23, !dbg !4061

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4062, !tbaa !3838
  %25 = and i32 %24, -17, !dbg !4062
  store i32 %25, ptr %0, align 8, !dbg !4062, !tbaa !3838
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4063
  store i64 %21, ptr %26, align 8, !dbg !4064, !tbaa !4065
  br label %29, !dbg !4066

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4067
  br label %29, !dbg !4068

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4040
  ret i32 %30, !dbg !4069
}

; Function Attrs: nofree nounwind
declare !dbg !4070 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4073 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4078, metadata !DIExpression(), metadata !4082, metadata ptr %2, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4077, metadata !DIExpression()), !dbg !4083
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4084
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4085
  %4 = icmp eq i32 %3, 0, !dbg !4085
  br i1 %4, label %5, label %12, !dbg !4087

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata !873, metadata !4091, metadata !DIExpression()), !dbg !4092
  %6 = load i16, ptr %2, align 16, !dbg !4095
  %7 = icmp eq i16 %6, 67, !dbg !4095
  br i1 %7, label %11, label %8, !dbg !4096

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4088, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4091, metadata !DIExpression()), !dbg !4097
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4099
  %10 = icmp eq i32 %9, 0, !dbg !4100
  br i1 %10, label %11, label %12, !dbg !4101

11:                                               ; preds = %8, %5
  br label %12, !dbg !4102

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4083
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4103
  ret i1 %13, !dbg !4103
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4109, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4111, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4112, metadata !DIExpression()), !dbg !4114
  %5 = icmp eq ptr %1, null, !dbg !4115
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4117
  %7 = select i1 %5, ptr @.str.149, ptr %1, !dbg !4117
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4111, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4109, metadata !DIExpression()), !dbg !4114
  %9 = icmp eq ptr %3, null, !dbg !4118
  %10 = select i1 %9, ptr @internal_state.150, ptr %3, !dbg !4120
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4112, metadata !DIExpression()), !dbg !4114
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4113, metadata !DIExpression()), !dbg !4114
  %12 = icmp ult i64 %11, -3, !dbg !4122
  br i1 %12, label %13, label %17, !dbg !4124

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4125
  %15 = icmp eq i32 %14, 0, !dbg !4125
  br i1 %15, label %16, label %29, !dbg !4126

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4127, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %10, metadata !4134, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 0, metadata !4137, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 8, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i64 0, ptr %10, align 1, !dbg !4141
  br label %29, !dbg !4142

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4143
  br i1 %18, label %19, label %20, !dbg !4145

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4146
  unreachable, !dbg !4146

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4147

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4149
  br i1 %23, label %29, label %24, !dbg !4150

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4151
  br i1 %25, label %29, label %26, !dbg !4154

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4155, !tbaa !915
  %28 = zext i8 %27 to i32, !dbg !4156
  store i32 %28, ptr %6, align 4, !dbg !4157, !tbaa !906
  br label %29, !dbg !4158

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4114
  ret i64 %30, !dbg !4159
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4160 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4165 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4168, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4169, metadata !DIExpression()), !dbg !4171
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4172
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4170, metadata !DIExpression()), !dbg !4171
  br i1 %5, label %6, label %8, !dbg !4174

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4175
  store i32 12, ptr %7, align 4, !dbg !4177, !tbaa !906
  br label %12, !dbg !4178

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %0, metadata !4179, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %9, metadata !4182, metadata !DIExpression()), !dbg !4183
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4185
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4186
  br label %12, !dbg !4187

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4171
  ret ptr %13, !dbg !4188
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4193, metadata !DIExpression()), !dbg !4196
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4194, metadata !DIExpression()), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4195, metadata !DIExpression()), !dbg !4196
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4197
  ret i32 %4, !dbg !4198
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4199 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4203, metadata !DIExpression()), !dbg !4204
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4205
  ret ptr %2, !dbg !4206
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4209, metadata !DIExpression()), !dbg !4211
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4212
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4210, metadata !DIExpression()), !dbg !4211
  ret ptr %2, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4216, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4217, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4218, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %0, metadata !4209, metadata !DIExpression()), !dbg !4224
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4226
  call void @llvm.dbg.value(metadata ptr %4, metadata !4210, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4219, metadata !DIExpression()), !dbg !4223
  %5 = icmp eq ptr %4, null, !dbg !4227
  br i1 %5, label %6, label %9, !dbg !4228

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4229
  br i1 %7, label %19, label %8, !dbg !4232

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4233, !tbaa !915
  br label %19, !dbg !4234

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4235
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4220, metadata !DIExpression()), !dbg !4236
  %11 = icmp ult i64 %10, %2, !dbg !4237
  br i1 %11, label %12, label %14, !dbg !4239

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4240
  call void @llvm.dbg.value(metadata ptr %1, metadata !4242, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %4, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %13, metadata !4246, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4249
  br label %19, !dbg !4250

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4251
  br i1 %15, label %19, label %16, !dbg !4254

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4255
  call void @llvm.dbg.value(metadata ptr %1, metadata !4242, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %4, metadata !4245, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %17, metadata !4246, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4259
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4260
  store i8 0, ptr %18, align 1, !dbg !4261, !tbaa !915
  br label %19, !dbg !4262

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4263
  ret i32 %20, !dbg !4264
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !412, !416, !431, !725, !757, !482, !759, !500, !514, !560, !762, !719, !768, !803, !805, !807, !809, !811, !813, !744, !817, !819, !821}
!llvm.ident = !{!823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823}
!llvm.module.flags = !{!824, !825, !826, !827, !828, !829, !830}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/pathchk.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa64b76be00e62a867ebcba8290d4fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!71 = !DIEnumerator(name: "PORTABILITY_OPTION", value: 128)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 337, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!77 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
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
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !194)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!430 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !431, file: !432, line: 66, type: !477, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, globals: !434, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!433 = !{!133, !140}
!434 = !{!435, !437, !456, !458, !460, !462, !429, !464, !466, !468, !470, !475}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !432, line: 272, type: !249, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "old_file_name", scope: !439, file: !432, line: 304, type: !138, isLocal: true, isDefinition: true)
!439 = distinct !DISubprogram(name: "verror_at_line", scope: !432, file: !432, line: 298, type: !440, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !449)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !74, !74, !138, !69, !138, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !443, file: !432, baseType: !69, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !443, file: !432, baseType: !69, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !443, file: !432, baseType: !133, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !443, file: !432, baseType: !133, size: 64, offset: 128)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DILocalVariable(name: "status", arg: 1, scope: !439, file: !432, line: 298, type: !74)
!451 = !DILocalVariable(name: "errnum", arg: 2, scope: !439, file: !432, line: 298, type: !74)
!452 = !DILocalVariable(name: "file_name", arg: 3, scope: !439, file: !432, line: 298, type: !138)
!453 = !DILocalVariable(name: "line_number", arg: 4, scope: !439, file: !432, line: 298, type: !69)
!454 = !DILocalVariable(name: "message", arg: 5, scope: !439, file: !432, line: 298, type: !138)
!455 = !DILocalVariable(name: "args", arg: 6, scope: !439, file: !432, line: 298, type: !442)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "old_line_number", scope: !439, file: !432, line: 305, type: !69, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !432, line: 338, type: !61, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !19, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !263, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "error_message_count", scope: !431, file: !432, line: 69, type: !69, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !431, file: !432, line: 295, type: !74, isLocal: false, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !283, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 21)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !432, line: 214, type: !249, isLocal: true, isDefinition: true)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null}
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "internal_state", scope: !482, file: !483, line: 24, type: !486, isLocal: true, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !483, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrlen.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrlen.Tpo -c lib/mbrlen.c -o lib/.libcoreutils_a-mbrlen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !484, globals: !485, splitDebugInlining: false, nameTableKind: None)
!483 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!484 = !{!133}
!485 = !{!480}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !488)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !490)
!489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !490, file: !489, line: 15, baseType: !74, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !490, file: !489, line: 20, baseType: !494, size: 32, offset: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !489, line: 16, size: 32, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !494, file: !489, line: 18, baseType: !69, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !494, file: !489, line: 19, baseType: !61, size: 32)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "program_name", scope: !500, file: !501, line: 31, type: !138, isLocal: false, isDefinition: true)
!500 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !502, globals: !503, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!502 = !{!133, !132}
!503 = !{!498, !504, !506}
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !501, line: 46, type: !19, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !501, line: 49, type: !61, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "utf07FF", scope: !510, file: !511, line: 46, type: !536, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "proper_name_lite", scope: !511, file: !511, line: 38, type: !512, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !516)
!511 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!512 = !DISubroutineType(types: !513)
!513 = !{!138, !138, !138}
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !515, splitDebugInlining: false, nameTableKind: None)
!515 = !{!508}
!516 = !{!517, !518, !519, !520, !525}
!517 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !510, file: !511, line: 38, type: !138)
!518 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !510, file: !511, line: 38, type: !138)
!519 = !DILocalVariable(name: "translation", scope: !510, file: !511, line: 40, type: !138)
!520 = !DILocalVariable(name: "w", scope: !510, file: !511, line: 47, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !522, line: 37, baseType: !523)
!522 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !216, line: 57, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !216, line: 42, baseType: !69)
!525 = !DILocalVariable(name: "mbs", scope: !510, file: !511, line: 48, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !489, line: 15, baseType: !74, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !528, file: !489, line: 20, baseType: !532, size: 32, offset: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !489, line: 16, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !532, file: !489, line: 18, baseType: !69, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !532, file: !489, line: 19, baseType: !61, size: 32)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !264)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !539, line: 78, type: !19, isLocal: true, isDefinition: true)
!539 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !539, line: 79, type: !258, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !539, line: 80, type: !159, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !539, line: 81, type: !159, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !539, line: 82, type: !238, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !539, line: 83, type: !263, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !539, line: 84, type: !19, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !539, line: 85, type: !283, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !539, line: 86, type: !283, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !539, line: 87, type: !19, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !560, file: !539, line: 76, type: !634, isLocal: false, isDefinition: true)
!560 = distinct !DICompileUnit(language: DW_LANG_C11, file: !539, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !569, globals: !570, splitDebugInlining: false, nameTableKind: None)
!561 = !{!562, !564, !78}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !563, line: 42, baseType: !69, size: 32, elements: !95)
!563 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !563, line: 254, baseType: !69, size: 32, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!567 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!568 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!569 = !{!133, !74, !134, !135}
!570 = !{!537, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !571, !575, !585, !587, !592, !594, !596, !598, !600, !623, !630, !632}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !560, file: !539, line: 92, type: !573, isLocal: false, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 320, elements: !52)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !560, file: !539, line: 1040, type: !577, isLocal: false, isDefinition: true)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !539, line: 56, size: 448, elements: !578)
!578 = !{!579, !580, !581, !583, !584}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !577, file: !539, line: 59, baseType: !562, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !539, line: 62, baseType: !74, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !577, file: !539, line: 66, baseType: !582, size: 256, offset: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !20)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !577, file: !539, line: 69, baseType: !138, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !577, file: !539, line: 72, baseType: !138, size: 64, offset: 384)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !560, file: !539, line: 107, type: !577, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "slot0", scope: !560, file: !539, line: 831, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 256)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !539, line: 321, type: !263, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !539, line: 357, type: !263, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !539, line: 358, type: !263, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !539, line: 199, type: !283, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "quote", scope: !602, file: !539, line: 228, type: !621, isLocal: true, isDefinition: true)
!602 = distinct !DISubprogram(name: "gettext_quote", scope: !539, file: !539, line: 197, type: !603, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!138, !138, !562}
!605 = !{!606, !607, !608, !609, !610}
!606 = !DILocalVariable(name: "msgid", arg: 1, scope: !602, file: !539, line: 197, type: !138)
!607 = !DILocalVariable(name: "s", arg: 2, scope: !602, file: !539, line: 197, type: !562)
!608 = !DILocalVariable(name: "translation", scope: !602, file: !539, line: 199, type: !138)
!609 = !DILocalVariable(name: "w", scope: !602, file: !539, line: 229, type: !521)
!610 = !DILocalVariable(name: "mbs", scope: !602, file: !539, line: 230, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !613, file: !489, line: 15, baseType: !74, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !613, file: !489, line: 20, baseType: !617, size: 32, offset: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !489, line: 16, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !617, file: !489, line: 18, baseType: !69, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !617, file: !489, line: 19, baseType: !61, size: 32)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !622)
!622 = !{!265, !63}
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "slotvec", scope: !560, file: !539, line: 834, type: !625, isLocal: true, isDefinition: true)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !539, line: 823, size: 128, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !539, line: 825, baseType: !135, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !539, line: 826, baseType: !132, size: 64, offset: 64)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "nslots", scope: !560, file: !539, line: 832, type: !74, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "slotvec0", scope: !560, file: !539, line: 833, type: !626, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 704, elements: !636)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!636 = !{!637}
!637 = !DISubrange(count: 11)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !640, line: 67, type: !149, isLocal: true, isDefinition: true)
!640 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !640, line: 69, type: !283, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !640, line: 83, type: !283, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !640, line: 83, type: !61, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !640, line: 85, type: !263, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !640, line: 88, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 171)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !640, line: 88, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 34)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !640, line: 105, type: !154, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !640, line: 109, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 23)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !640, line: 113, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 28)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !640, line: 120, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 32)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !640, line: 127, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 36)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !640, line: 134, type: !307, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !640, line: 142, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 44)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !640, line: 150, type: !26, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !640, line: 159, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 52)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !640, line: 170, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 60)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !640, line: 248, type: !238, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !640, line: 248, type: !332, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !238, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !144, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !307, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !640, line: 259, type: !3, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !640, line: 259, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 29)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !719, file: !720, line: 26, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!721 = !{!717}
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !15)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "exit_failure", scope: !725, file: !726, line: 24, type: !728, isLocal: false, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!727 = !{!723}
!728 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !272, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !283, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !302, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 35, type: !258, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !741, line: 108, type: !46, isLocal: true, isDefinition: true)
!741 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "internal_state", scope: !744, file: !741, line: 97, type: !747, isLocal: true, isDefinition: true)
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !745, globals: !746, splitDebugInlining: false, nameTableKind: None)
!745 = !{!133, !135, !140}
!746 = !{!739, !742}
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !749, file: !489, line: 15, baseType: !74, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !749, file: !489, line: 20, baseType: !753, size: 32, offset: 32)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !489, line: 16, size: 32, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !753, file: !489, line: 18, baseType: !69, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !753, file: !489, line: 19, baseType: !61, size: 32)
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtowc.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtowc.Tpo -c lib/mbrtowc.c -o lib/.libcoreutils_a-mbrtowc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!761 = !{!135}
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !484, globals: !767, splitDebugInlining: false, nameTableKind: None)
!763 = !{!764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !640, line: 40, baseType: !69, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!767 = !{!638, !641, !643, !645, !647, !649, !654, !659, !661, !666, !671, !676, !681, !683, !688, !690, !695, !700, !702, !704, !706, !708, !710, !712}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !802, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!770 = !{!771, !783}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !772, file: !769, line: 188, baseType: !69, size: 32, elements: !781)
!772 = distinct !DISubprogram(name: "x2nrealloc", scope: !769, file: !769, line: 176, type: !773, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !776)
!773 = !DISubroutineType(types: !774)
!774 = !{!133, !133, !775, !135}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!776 = !{!777, !778, !779, !780}
!777 = !DILocalVariable(name: "p", arg: 1, scope: !772, file: !769, line: 176, type: !133)
!778 = !DILocalVariable(name: "pn", arg: 2, scope: !772, file: !769, line: 176, type: !775)
!779 = !DILocalVariable(name: "s", arg: 3, scope: !772, file: !769, line: 176, type: !135)
!780 = !DILocalVariable(name: "n", scope: !772, file: !769, line: 178, type: !135)
!781 = !{!782}
!782 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!783 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !784, file: !769, line: 228, baseType: !69, size: 32, elements: !781)
!784 = distinct !DISubprogram(name: "xpalloc", scope: !769, file: !769, line: 223, type: !785, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !792)
!785 = !DISubroutineType(types: !786)
!786 = !{!133, !133, !787, !788, !790, !788}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !789, line: 130, baseType: !790)
!789 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !791, line: 18, baseType: !217)
!791 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801}
!793 = !DILocalVariable(name: "pa", arg: 1, scope: !784, file: !769, line: 223, type: !133)
!794 = !DILocalVariable(name: "pn", arg: 2, scope: !784, file: !769, line: 223, type: !787)
!795 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !784, file: !769, line: 223, type: !788)
!796 = !DILocalVariable(name: "n_max", arg: 4, scope: !784, file: !769, line: 223, type: !790)
!797 = !DILocalVariable(name: "s", arg: 5, scope: !784, file: !769, line: 223, type: !788)
!798 = !DILocalVariable(name: "n0", scope: !784, file: !769, line: 230, type: !788)
!799 = !DILocalVariable(name: "n", scope: !784, file: !769, line: 237, type: !788)
!800 = !DILocalVariable(name: "nbytes", scope: !784, file: !769, line: 248, type: !788)
!801 = !DILocalVariable(name: "adjusted_nbytes", scope: !784, file: !769, line: 252, type: !788)
!802 = !{!132, !133}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !804, splitDebugInlining: false, nameTableKind: None)
!804 = !{!729, !732, !734}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !484, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !484, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !814, splitDebugInlining: false, nameTableKind: None)
!814 = !{!815, !736}
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !738, line: 35, type: !263, isLocal: true, isDefinition: true)
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !484, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !484, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!823 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!824 = !{i32 7, !"Dwarf Version", i32 5}
!825 = !{i32 2, !"Debug Info Version", i32 3}
!826 = !{i32 1, !"wchar_size", i32 4}
!827 = !{i32 8, !"PIC Level", i32 2}
!828 = !{i32 7, !"PIE Level", i32 2}
!829 = !{i32 7, !"uwtable", i32 2}
!830 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!831 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !832, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !74}
!834 = !{!835}
!835 = !DILocalVariable(name: "status", arg: 1, scope: !831, file: !2, line: 81, type: !74)
!836 = !DILocation(line: 0, scope: !831)
!837 = !DILocation(line: 83, column: 14, scope: !838)
!838 = distinct !DILexicalBlock(scope: !831, file: !2, line: 83, column: 7)
!839 = !DILocation(line: 83, column: 7, scope: !831)
!840 = !DILocation(line: 84, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !2, line: 84, column: 5)
!842 = !{!843, !843, i64 0}
!843 = !{!"any pointer", !844, i64 0}
!844 = !{!"omnipotent char", !845, i64 0}
!845 = !{!"Simple C/C++ TBAA"}
!846 = !DILocation(line: 87, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !838, file: !2, line: 86, column: 5)
!848 = !DILocation(line: 88, column: 7, scope: !847)
!849 = !DILocation(line: 92, column: 7, scope: !847)
!850 = !DILocation(line: 95, column: 7, scope: !847)
!851 = !DILocation(line: 98, column: 7, scope: !847)
!852 = !DILocation(line: 102, column: 7, scope: !847)
!853 = !DILocation(line: 103, column: 7, scope: !847)
!854 = !DILocalVariable(name: "program", arg: 1, scope: !855, file: !73, line: 836, type: !138)
!855 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !73, file: !73, line: 836, type: !856, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !138}
!858 = !{!854, !859, !866, !867, !869, !870}
!859 = !DILocalVariable(name: "infomap", scope: !855, file: !73, line: 838, type: !860)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 896, elements: !284)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !855, file: !73, line: 838, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !862, file: !73, line: 838, baseType: !138, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !862, file: !73, line: 838, baseType: !138, size: 64, offset: 64)
!866 = !DILocalVariable(name: "node", scope: !855, file: !73, line: 848, type: !138)
!867 = !DILocalVariable(name: "map_prog", scope: !855, file: !73, line: 849, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!869 = !DILocalVariable(name: "lc_messages", scope: !855, file: !73, line: 861, type: !138)
!870 = !DILocalVariable(name: "url_program", scope: !855, file: !73, line: 874, type: !138)
!871 = !DILocation(line: 0, scope: !855, inlinedAt: !872)
!872 = distinct !DILocation(line: 104, column: 7, scope: !847)
!873 = !{}
!874 = !DILocation(line: 857, column: 3, scope: !855, inlinedAt: !872)
!875 = !DILocation(line: 861, column: 29, scope: !855, inlinedAt: !872)
!876 = !DILocation(line: 862, column: 7, scope: !877, inlinedAt: !872)
!877 = distinct !DILexicalBlock(scope: !855, file: !73, line: 862, column: 7)
!878 = !DILocation(line: 862, column: 19, scope: !877, inlinedAt: !872)
!879 = !DILocation(line: 862, column: 22, scope: !877, inlinedAt: !872)
!880 = !DILocation(line: 862, column: 7, scope: !855, inlinedAt: !872)
!881 = !DILocation(line: 868, column: 7, scope: !882, inlinedAt: !872)
!882 = distinct !DILexicalBlock(scope: !877, file: !73, line: 863, column: 5)
!883 = !DILocation(line: 870, column: 5, scope: !882, inlinedAt: !872)
!884 = !DILocation(line: 875, column: 3, scope: !855, inlinedAt: !872)
!885 = !DILocation(line: 877, column: 3, scope: !855, inlinedAt: !872)
!886 = !DILocation(line: 106, column: 3, scope: !831)
!887 = !DISubprogram(name: "dcgettext", scope: !888, file: !888, line: 51, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!889 = !DISubroutineType(types: !890)
!890 = !{!132, !138, !138, !74}
!891 = !DISubprogram(name: "__fprintf_chk", scope: !892, file: !892, line: 93, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!893 = !DISubroutineType(types: !894)
!894 = !{!74, !895, !74, !896, null}
!895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !189)
!896 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!897 = !DISubprogram(name: "__printf_chk", scope: !892, file: !892, line: 95, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DISubroutineType(types: !899)
!899 = !{!74, !74, !896, null}
!900 = !DISubprogram(name: "fputs_unlocked", scope: !901, file: !901, line: 691, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!902 = !DISubroutineType(types: !903)
!903 = !{!74, !896, !895}
!904 = !DILocation(line: 0, scope: !166)
!905 = !DILocation(line: 581, column: 7, scope: !174)
!906 = !{!907, !907, i64 0}
!907 = !{!"int", !844, i64 0}
!908 = !DILocation(line: 581, column: 19, scope: !174)
!909 = !DILocation(line: 581, column: 7, scope: !166)
!910 = !DILocation(line: 585, column: 26, scope: !173)
!911 = !DILocation(line: 0, scope: !173)
!912 = !DILocation(line: 586, column: 23, scope: !173)
!913 = !DILocation(line: 586, column: 28, scope: !173)
!914 = !DILocation(line: 586, column: 32, scope: !173)
!915 = !{!844, !844, i64 0}
!916 = !DILocation(line: 586, column: 38, scope: !173)
!917 = !DILocalVariable(name: "__s1", arg: 1, scope: !918, file: !919, line: 1359, type: !138)
!918 = distinct !DISubprogram(name: "streq", scope: !919, file: !919, line: 1359, type: !920, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !922)
!919 = !DIFile(filename: "./lib/string.h", directory: "/src")
!920 = !DISubroutineType(types: !921)
!921 = !{!176, !138, !138}
!922 = !{!917, !923}
!923 = !DILocalVariable(name: "__s2", arg: 2, scope: !918, file: !919, line: 1359, type: !138)
!924 = !DILocation(line: 0, scope: !918, inlinedAt: !925)
!925 = distinct !DILocation(line: 586, column: 41, scope: !173)
!926 = !DILocation(line: 1361, column: 11, scope: !918, inlinedAt: !925)
!927 = !DILocation(line: 1361, column: 10, scope: !918, inlinedAt: !925)
!928 = !DILocation(line: 586, column: 19, scope: !173)
!929 = !DILocation(line: 587, column: 5, scope: !173)
!930 = !DILocation(line: 588, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !166, file: !73, line: 588, column: 7)
!932 = !DILocation(line: 588, column: 7, scope: !166)
!933 = !DILocation(line: 590, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !73, line: 589, column: 5)
!935 = !DILocation(line: 591, column: 7, scope: !934)
!936 = !DILocation(line: 595, column: 37, scope: !166)
!937 = !DILocation(line: 595, column: 35, scope: !166)
!938 = !DILocation(line: 596, column: 29, scope: !166)
!939 = !DILocation(line: 597, column: 8, scope: !182)
!940 = !DILocation(line: 597, column: 7, scope: !166)
!941 = !DILocation(line: 604, column: 24, scope: !181)
!942 = !DILocation(line: 604, column: 12, scope: !182)
!943 = !DILocation(line: 0, scope: !180)
!944 = !DILocation(line: 610, column: 16, scope: !180)
!945 = !DILocation(line: 610, column: 7, scope: !180)
!946 = !DILocation(line: 611, column: 21, scope: !180)
!947 = !{!948, !948, i64 0}
!948 = !{!"short", !844, i64 0}
!949 = !DILocation(line: 611, column: 19, scope: !180)
!950 = !DILocation(line: 611, column: 16, scope: !180)
!951 = !DILocation(line: 610, column: 30, scope: !180)
!952 = distinct !{!952, !945, !946, !953}
!953 = !{!"llvm.loop.mustprogress"}
!954 = !DILocation(line: 612, column: 18, scope: !955)
!955 = distinct !DILexicalBlock(scope: !180, file: !73, line: 612, column: 11)
!956 = !DILocation(line: 612, column: 11, scope: !180)
!957 = !DILocation(line: 620, column: 23, scope: !166)
!958 = !DILocation(line: 625, column: 39, scope: !166)
!959 = !DILocation(line: 626, column: 3, scope: !166)
!960 = !DILocation(line: 626, column: 10, scope: !166)
!961 = !DILocation(line: 626, column: 21, scope: !166)
!962 = !DILocation(line: 628, column: 44, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !73, line: 628, column: 11)
!964 = distinct !DILexicalBlock(scope: !166, file: !73, line: 627, column: 5)
!965 = !DILocation(line: 628, column: 32, scope: !963)
!966 = !DILocation(line: 628, column: 49, scope: !963)
!967 = !DILocation(line: 628, column: 11, scope: !964)
!968 = !DILocation(line: 630, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !73, line: 630, column: 11)
!970 = !DILocation(line: 630, column: 11, scope: !964)
!971 = !DILocation(line: 632, column: 26, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !73, line: 632, column: 15)
!973 = distinct !DILexicalBlock(scope: !969, file: !73, line: 631, column: 9)
!974 = !DILocation(line: 632, column: 34, scope: !972)
!975 = !DILocation(line: 632, column: 37, scope: !972)
!976 = !DILocation(line: 632, column: 15, scope: !973)
!977 = !DILocation(line: 636, column: 16, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !73, line: 636, column: 15)
!979 = !DILocation(line: 636, column: 29, scope: !978)
!980 = !DILocation(line: 640, column: 16, scope: !964)
!981 = distinct !{!981, !959, !982, !953}
!982 = !DILocation(line: 641, column: 5, scope: !166)
!983 = !DILocation(line: 644, column: 3, scope: !166)
!984 = !DILocation(line: 0, scope: !918, inlinedAt: !985)
!985 = distinct !DILocation(line: 648, column: 31, scope: !166)
!986 = !DILocation(line: 0, scope: !918, inlinedAt: !987)
!987 = distinct !DILocation(line: 649, column: 31, scope: !166)
!988 = !DILocation(line: 0, scope: !918, inlinedAt: !989)
!989 = distinct !DILocation(line: 650, column: 31, scope: !166)
!990 = !DILocation(line: 0, scope: !918, inlinedAt: !991)
!991 = distinct !DILocation(line: 651, column: 31, scope: !166)
!992 = !DILocation(line: 0, scope: !918, inlinedAt: !993)
!993 = distinct !DILocation(line: 652, column: 31, scope: !166)
!994 = !DILocation(line: 0, scope: !918, inlinedAt: !995)
!995 = distinct !DILocation(line: 653, column: 31, scope: !166)
!996 = !DILocation(line: 0, scope: !918, inlinedAt: !997)
!997 = distinct !DILocation(line: 654, column: 31, scope: !166)
!998 = !DILocation(line: 0, scope: !918, inlinedAt: !999)
!999 = distinct !DILocation(line: 655, column: 31, scope: !166)
!1000 = !DILocation(line: 0, scope: !918, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 656, column: 31, scope: !166)
!1002 = !DILocation(line: 0, scope: !918, inlinedAt: !1003)
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
!1021 = !DISubprogram(name: "setlocale", scope: !1022, file: !1022, line: 122, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!132, !74, !138}
!1025 = !DISubprogram(name: "strncmp", scope: !1026, file: !1026, line: 159, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!74, !138, !138, !135}
!1029 = !DISubprogram(name: "exit", scope: !1030, file: !1030, line: 624, type: !832, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1031 = !DISubprogram(name: "getenv", scope: !1030, file: !1030, line: 641, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!132, !138}
!1034 = !DISubprogram(name: "strcmp", scope: !1026, file: !1026, line: 156, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!74, !138, !138}
!1037 = !DISubprogram(name: "strspn", scope: !1026, file: !1026, line: 297, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!137, !138, !138}
!1040 = !DISubprogram(name: "strchr", scope: !1026, file: !1026, line: 246, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!132, !138, !74}
!1043 = !DISubprogram(name: "__ctype_b_loc", scope: !79, file: !79, line: 79, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1049 = !DISubprogram(name: "strcspn", scope: !1026, file: !1026, line: 293, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubprogram(name: "fwrite_unlocked", scope: !901, file: !901, line: 704, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!135, !1053, !135, !135, !895}
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
!1067 = distinct !DIAssignID()
!1068 = distinct !DIAssignID()
!1069 = !DILocation(line: 0, scope: !1056)
!1070 = !DILocation(line: 118, column: 21, scope: !1056)
!1071 = !DILocation(line: 118, column: 3, scope: !1056)
!1072 = !DILocation(line: 119, column: 3, scope: !1056)
!1073 = !DILocation(line: 120, column: 3, scope: !1056)
!1074 = !DILocation(line: 121, column: 3, scope: !1056)
!1075 = !DILocation(line: 123, column: 3, scope: !1056)
!1076 = !DILocation(line: 125, column: 3, scope: !1056)
!1077 = !DILocation(line: 125, column: 18, scope: !1056)
!1078 = distinct !{!1078, !1076, !1079, !953}
!1079 = !DILocation(line: 149, column: 5, scope: !1056)
!1080 = !DILocation(line: 136, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 128, column: 9)
!1082 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 126, column: 5)
!1083 = !DILocation(line: 140, column: 11, scope: !1081)
!1084 = distinct !{!1084, !1076, !1079, !953, !1085}
!1085 = !{!"llvm.loop.peeled.count", i32 1}
!1086 = !DILocation(line: 142, column: 9, scope: !1081)
!1087 = !DILocation(line: 144, column: 9, scope: !1081)
!1088 = !DILocation(line: 147, column: 11, scope: !1081)
!1089 = !DILocation(line: 151, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 151, column: 7)
!1091 = !DILocation(line: 151, column: 14, scope: !1090)
!1092 = !DILocation(line: 151, column: 7, scope: !1056)
!1093 = !DILocation(line: 157, column: 17, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 157, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 157, column: 3)
!1096 = !DILocation(line: 157, column: 3, scope: !1095)
!1097 = !DILocation(line: 153, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 152, column: 5)
!1099 = !DILocation(line: 154, column: 7, scope: !1098)
!1100 = !DILocation(line: 158, column: 31, scope: !1094)
!1101 = !DILocalVariable(name: "st", scope: !1102, file: !2, line: 290, type: !1147)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 284, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 278, column: 7)
!1104 = distinct !DISubprogram(name: "validate_file_name", scope: !2, file: !2, line: 253, type: !1105, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!176, !132, !176, !176}
!1107 = !{!1108, !1109, !1110, !1111, !1114, !1115, !1101, !1116, !1119, !1122, !1123, !1127, !1130, !1133, !1134, !1136, !1139, !1142, !1143, !1144}
!1108 = !DILocalVariable(name: "file", arg: 1, scope: !1104, file: !2, line: 253, type: !132)
!1109 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !1104, file: !2, line: 253, type: !176)
!1110 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !1104, file: !2, line: 254, type: !176)
!1111 = !DILocalVariable(name: "filelen", scope: !1104, file: !2, line: 256, type: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1113, line: 130, baseType: !790)
!1113 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1114 = !DILocalVariable(name: "check_component_lengths", scope: !1104, file: !2, line: 259, type: !176)
!1115 = !DILocalVariable(name: "file_exists", scope: !1104, file: !2, line: 262, type: !176)
!1116 = !DILocalVariable(name: "maxsize", scope: !1117, file: !2, line: 303, type: !1112)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 302, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 300, column: 7)
!1119 = !DILocalVariable(name: "size", scope: !1120, file: !2, line: 309, type: !217)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 308, column: 9)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 305, column: 11)
!1122 = !DILocalVariable(name: "dir", scope: !1120, file: !2, line: 310, type: !138)
!1123 = !DILocalVariable(name: "start", scope: !1124, file: !2, line: 339, type: !132)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 339, column: 7)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 338, column: 5)
!1126 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 337, column: 7)
!1127 = !DILocalVariable(name: "length", scope: !1128, file: !2, line: 341, type: !135)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 340, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 339, column: 7)
!1130 = !DILocalVariable(name: "name_max", scope: !1131, file: !2, line: 359, type: !1112)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 354, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 353, column: 7)
!1133 = !DILocalVariable(name: "known_name_max", scope: !1131, file: !2, line: 362, type: !1112)
!1134 = !DILocalVariable(name: "start", scope: !1135, file: !2, line: 364, type: !132)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 364, column: 7)
!1136 = !DILocalVariable(name: "length", scope: !1137, file: !2, line: 366, type: !1112)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 365, column: 9)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 364, column: 7)
!1139 = !DILocalVariable(name: "len", scope: !1140, file: !2, line: 372, type: !217)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 371, column: 13)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 368, column: 15)
!1142 = !DILocalVariable(name: "dir", scope: !1140, file: !2, line: 373, type: !138)
!1143 = !DILocalVariable(name: "c", scope: !1140, file: !2, line: 374, type: !4)
!1144 = !DILocalVariable(name: "c", scope: !1145, file: !2, line: 406, type: !4)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 405, column: 13)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 404, column: 15)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1148, line: 26, size: 1152, elements: !1149)
!1148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1149 = !{!1150, !1152, !1154, !1156, !1158, !1160, !1162, !1163, !1164, !1165, !1167, !1169, !1177, !1178, !1179}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1147, file: !1148, line: 31, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !216, line: 145, baseType: !137)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1147, file: !1148, line: 36, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !216, line: 148, baseType: !137)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1147, file: !1148, line: 44, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !216, line: 151, baseType: !137)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1147, file: !1148, line: 45, baseType: !1157, size: 32, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !216, line: 150, baseType: !69)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1147, file: !1148, line: 47, baseType: !1159, size: 32, offset: 224)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !216, line: 146, baseType: !69)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1147, file: !1148, line: 48, baseType: !1161, size: 32, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !216, line: 147, baseType: !69)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1147, file: !1148, line: 50, baseType: !74, size: 32, offset: 288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1147, file: !1148, line: 52, baseType: !1151, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1147, file: !1148, line: 57, baseType: !215, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1147, file: !1148, line: 61, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !216, line: 175, baseType: !217)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1147, file: !1148, line: 63, baseType: !1168, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !216, line: 180, baseType: !217)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1147, file: !1148, line: 74, baseType: !1170, size: 128, offset: 576)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1171, line: 11, size: 128, elements: !1172)
!1171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1172 = !{!1173, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1170, file: !1171, line: 16, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !216, line: 160, baseType: !217)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1170, file: !1171, line: 21, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !216, line: 197, baseType: !217)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1147, file: !1148, line: 75, baseType: !1170, size: 128, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1147, file: !1148, line: 76, baseType: !1170, size: 128, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1147, file: !1148, line: 89, baseType: !1180, size: 192, offset: 960)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 192, elements: !273)
!1181 = !DILocation(line: 0, scope: !1102, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 158, column: 11, scope: !1094)
!1183 = !DILocation(line: 0, scope: !1104, inlinedAt: !1182)
!1184 = !DILocation(line: 256, column: 19, scope: !1104, inlinedAt: !1182)
!1185 = !DILocation(line: 264, column: 31, scope: !1186, inlinedAt: !1182)
!1186 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 264, column: 7)
!1187 = !DILocalVariable(name: "file", arg: 1, scope: !1188, file: !2, line: 168, type: !138)
!1188 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !2, file: !2, line: 168, type: !1189, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!176, !138}
!1191 = !{!1187, !1192}
!1192 = !DILocalVariable(name: "p", scope: !1193, file: !2, line: 170, type: !138)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 170, column: 3)
!1194 = !DILocation(line: 0, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 264, column: 36, scope: !1186, inlinedAt: !1182)
!1196 = !DILocation(line: 0, scope: !1193, inlinedAt: !1195)
!1197 = !DILocation(line: 170, column: 36, scope: !1198, inlinedAt: !1195)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 170, column: 3)
!1199 = !DILocation(line: 170, column: 3, scope: !1193, inlinedAt: !1195)
!1200 = !DILocation(line: 170, column: 56, scope: !1198, inlinedAt: !1195)
!1201 = distinct !{!1201, !1199, !1202, !953}
!1202 = !DILocation(line: 176, column: 7, scope: !1193, inlinedAt: !1195)
!1203 = !DILocation(line: 171, column: 11, scope: !1204, inlinedAt: !1195)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 171, column: 9)
!1205 = !DILocation(line: 171, column: 19, scope: !1204, inlinedAt: !1195)
!1206 = !DILocation(line: 171, column: 22, scope: !1204, inlinedAt: !1195)
!1207 = !DILocation(line: 171, column: 28, scope: !1204, inlinedAt: !1195)
!1208 = !DILocation(line: 171, column: 9, scope: !1198, inlinedAt: !1195)
!1209 = !DILocation(line: 173, column: 9, scope: !1210, inlinedAt: !1195)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 172, column: 7)
!1211 = !DILocation(line: 264, column: 7, scope: !1104, inlinedAt: !1182)
!1212 = !DILocation(line: 267, column: 32, scope: !1213, inlinedAt: !1182)
!1213 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 267, column: 7)
!1214 = !DILocation(line: 268, column: 7, scope: !1213, inlinedAt: !1182)
!1215 = !DILocation(line: 267, column: 7, scope: !1104, inlinedAt: !1182)
!1216 = !DILocation(line: 274, column: 7, scope: !1217, inlinedAt: !1182)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 269, column: 5)
!1218 = !DILocation(line: 275, column: 7, scope: !1217, inlinedAt: !1182)
!1219 = !DILocalVariable(name: "mbstate", scope: !1220, file: !2, line: 196, type: !1231)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 195, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 194, column: 7)
!1222 = distinct !DISubprogram(name: "portable_chars_only", scope: !2, file: !2, line: 185, type: !1223, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!176, !138, !135}
!1225 = !{!1226, !1227, !1228, !1229, !1219, !1230}
!1226 = !DILocalVariable(name: "file", arg: 1, scope: !1222, file: !2, line: 185, type: !138)
!1227 = !DILocalVariable(name: "filelen", arg: 2, scope: !1222, file: !2, line: 185, type: !135)
!1228 = !DILocalVariable(name: "validlen", scope: !1222, file: !2, line: 187, type: !135)
!1229 = !DILocalVariable(name: "invalid", scope: !1222, file: !2, line: 192, type: !138)
!1230 = !DILocalVariable(name: "charlen", scope: !1220, file: !2, line: 197, type: !135)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1233, file: !489, line: 15, baseType: !74, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1233, file: !489, line: 20, baseType: !1237, size: 32, offset: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !489, line: 16, size: 32, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1237, file: !489, line: 18, baseType: !69, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1237, file: !489, line: 19, baseType: !61, size: 32)
!1241 = !DILocation(line: 0, scope: !1220, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 280, column: 13, scope: !1243, inlinedAt: !1182)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 280, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 279, column: 5)
!1245 = !DILocation(line: 0, scope: !1222, inlinedAt: !1242)
!1246 = !DILocation(line: 187, column: 21, scope: !1222, inlinedAt: !1242)
!1247 = !DILocation(line: 192, column: 30, scope: !1222, inlinedAt: !1242)
!1248 = !DILocation(line: 194, column: 7, scope: !1221, inlinedAt: !1242)
!1249 = !DILocation(line: 194, column: 7, scope: !1222, inlinedAt: !1242)
!1250 = !DILocation(line: 196, column: 7, scope: !1220, inlinedAt: !1242)
!1251 = !DILocalVariable(name: "ps", arg: 1, scope: !1252, file: !1253, line: 1135, type: !1256)
!1252 = distinct !DISubprogram(name: "mbszero", scope: !1253, file: !1253, line: 1135, type: !1254, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1257)
!1253 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1257 = !{!1251}
!1258 = !DILocation(line: 0, scope: !1252, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 196, column: 26, scope: !1220, inlinedAt: !1242)
!1260 = !DILocalVariable(name: "__dest", arg: 1, scope: !1261, file: !1262, line: 57, type: !133)
!1261 = distinct !DISubprogram(name: "memset", scope: !1262, file: !1262, line: 57, type: !1263, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1265)
!1262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!133, !133, !74, !135}
!1265 = !{!1260, !1266, !1267}
!1266 = !DILocalVariable(name: "__ch", arg: 2, scope: !1261, file: !1262, line: 57, type: !74)
!1267 = !DILocalVariable(name: "__len", arg: 3, scope: !1261, file: !1262, line: 57, type: !135)
!1268 = !DILocation(line: 0, scope: !1261, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 1137, column: 3, scope: !1252, inlinedAt: !1259)
!1270 = !DILocation(line: 59, column: 10, scope: !1261, inlinedAt: !1269)
!1271 = !DILocation(line: 197, column: 49, scope: !1220, inlinedAt: !1242)
!1272 = !DILocation(line: 197, column: 24, scope: !1220, inlinedAt: !1242)
!1273 = !DILocation(line: 198, column: 7, scope: !1220, inlinedAt: !1242)
!1274 = !DILocation(line: 204, column: 5, scope: !1221, inlinedAt: !1242)
!1275 = !DILocation(line: 280, column: 11, scope: !1244, inlinedAt: !1182)
!1276 = !DILocation(line: 290, column: 7, scope: !1102, inlinedAt: !1182)
!1277 = !DILocation(line: 291, column: 11, scope: !1278, inlinedAt: !1182)
!1278 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 291, column: 11)
!1279 = !DILocation(line: 291, column: 29, scope: !1278, inlinedAt: !1182)
!1280 = !DILocation(line: 291, column: 11, scope: !1102, inlinedAt: !1182)
!1281 = !DILocation(line: 298, column: 5, scope: !1103, inlinedAt: !1182)
!1282 = !DILocation(line: 353, column: 7, scope: !1104, inlinedAt: !1182)
!1283 = !DILocation(line: 293, column: 16, scope: !1284, inlinedAt: !1182)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 293, column: 16)
!1285 = !DILocation(line: 293, column: 22, scope: !1284, inlinedAt: !1182)
!1286 = !DILocation(line: 293, column: 32, scope: !1284, inlinedAt: !1182)
!1287 = !DILocation(line: 295, column: 11, scope: !1288, inlinedAt: !1182)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 294, column: 9)
!1289 = !DILocation(line: 301, column: 25, scope: !1118, inlinedAt: !1182)
!1290 = !DILocation(line: 310, column: 30, scope: !1120, inlinedAt: !1182)
!1291 = !DILocation(line: 310, column: 36, scope: !1120, inlinedAt: !1182)
!1292 = !DILocation(line: 0, scope: !1120, inlinedAt: !1182)
!1293 = !DILocation(line: 311, column: 17, scope: !1120, inlinedAt: !1182)
!1294 = !DILocation(line: 312, column: 18, scope: !1120, inlinedAt: !1182)
!1295 = !DILocation(line: 313, column: 20, scope: !1296, inlinedAt: !1182)
!1296 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 313, column: 15)
!1297 = !DILocation(line: 313, column: 24, scope: !1296, inlinedAt: !1182)
!1298 = !DILocation(line: 313, column: 27, scope: !1296, inlinedAt: !1182)
!1299 = !DILocation(line: 313, column: 33, scope: !1296, inlinedAt: !1182)
!1300 = !DILocation(line: 313, column: 15, scope: !1120, inlinedAt: !1182)
!1301 = !DILocation(line: 315, column: 15, scope: !1302, inlinedAt: !1182)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 314, column: 13)
!1303 = !DILocation(line: 0, scope: !1117, inlinedAt: !1182)
!1304 = !DILocation(line: 323, column: 19, scope: !1305, inlinedAt: !1182)
!1305 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 323, column: 11)
!1306 = !DILocation(line: 323, column: 11, scope: !1117, inlinedAt: !1182)
!1307 = !DILocation(line: 215, column: 3, scope: !1308, inlinedAt: !1313)
!1308 = distinct !DISubprogram(name: "component_start", scope: !2, file: !2, line: 213, type: !1309, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!132, !132}
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "f", arg: 1, scope: !1308, file: !2, line: 213, type: !132)
!1313 = distinct !DILocation(line: 339, column: 42, scope: !1129, inlinedAt: !1182)
!1314 = !DILocation(line: 325, column: 11, scope: !1315, inlinedAt: !1182)
!1315 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 324, column: 9)
!1316 = !DILocation(line: 327, column: 11, scope: !1315, inlinedAt: !1182)
!1317 = !DILocation(line: 0, scope: !1308, inlinedAt: !1313)
!1318 = !DILocation(line: 215, column: 10, scope: !1308, inlinedAt: !1313)
!1319 = !DILocation(line: 216, column: 6, scope: !1308, inlinedAt: !1313)
!1320 = distinct !{!1320, !1321, !1322, !953}
!1321 = !DILocation(line: 339, column: 7, scope: !1124, inlinedAt: !1182)
!1322 = !DILocation(line: 350, column: 9, scope: !1124, inlinedAt: !1182)
!1323 = !DILocation(line: 227, scope: !1324, inlinedAt: !1331)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 227, column: 3)
!1325 = distinct !DISubprogram(name: "component_len", scope: !2, file: !2, line: 224, type: !1326, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!135, !138}
!1328 = !{!1329, !1330}
!1329 = !DILocalVariable(name: "f", arg: 1, scope: !1325, file: !2, line: 224, type: !138)
!1330 = !DILocalVariable(name: "len", scope: !1325, file: !2, line: 226, type: !135)
!1331 = distinct !DILocation(line: 341, column: 27, scope: !1128, inlinedAt: !1182)
!1332 = !DILocation(line: 0, scope: !1325, inlinedAt: !1331)
!1333 = !DILocation(line: 227, column: 17, scope: !1334, inlinedAt: !1331)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 227, column: 3)
!1335 = !DILocation(line: 227, column: 31, scope: !1334, inlinedAt: !1331)
!1336 = !DILocation(line: 227, column: 45, scope: !1334, inlinedAt: !1331)
!1337 = !DILocation(line: 227, column: 3, scope: !1334, inlinedAt: !1331)
!1338 = distinct !{!1338, !1339, !1340, !953}
!1339 = !DILocation(line: 227, column: 3, scope: !1324, inlinedAt: !1331)
!1340 = !DILocation(line: 228, column: 5, scope: !1324, inlinedAt: !1331)
!1341 = !DILocation(line: 0, scope: !1128, inlinedAt: !1182)
!1342 = !DILocation(line: 343, column: 32, scope: !1343, inlinedAt: !1182)
!1343 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 343, column: 15)
!1344 = !DILocation(line: 0, scope: !1124, inlinedAt: !1182)
!1345 = !DILocation(line: 364, column: 7, scope: !1135, inlinedAt: !1182)
!1346 = !DILocation(line: 0, scope: !1131, inlinedAt: !1182)
!1347 = !DILocation(line: 362, column: 13, scope: !1131, inlinedAt: !1182)
!1348 = !DILocation(line: 364, scope: !1135, inlinedAt: !1182)
!1349 = !DILocation(line: 0, scope: !1135, inlinedAt: !1182)
!1350 = !DILocation(line: 0, scope: !1308, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 364, column: 42, scope: !1138, inlinedAt: !1182)
!1352 = !DILocation(line: 215, column: 3, scope: !1308, inlinedAt: !1351)
!1353 = !DILocation(line: 215, column: 10, scope: !1308, inlinedAt: !1351)
!1354 = !DILocation(line: 216, column: 6, scope: !1308, inlinedAt: !1351)
!1355 = !DILocation(line: 368, column: 15, scope: !1141, inlinedAt: !1182)
!1356 = !DILocation(line: 368, column: 15, scope: !1137, inlinedAt: !1182)
!1357 = !DILocation(line: 373, column: 40, scope: !1140, inlinedAt: !1182)
!1358 = !DILocation(line: 373, column: 34, scope: !1140, inlinedAt: !1182)
!1359 = !DILocation(line: 0, scope: !1140, inlinedAt: !1182)
!1360 = !DILocation(line: 375, column: 15, scope: !1140, inlinedAt: !1182)
!1361 = !DILocation(line: 375, column: 21, scope: !1140, inlinedAt: !1182)
!1362 = !DILocation(line: 376, column: 22, scope: !1140, inlinedAt: !1182)
!1363 = !DILocation(line: 377, column: 21, scope: !1140, inlinedAt: !1182)
!1364 = !DILocation(line: 378, column: 22, scope: !1140, inlinedAt: !1182)
!1365 = !DILocation(line: 379, column: 21, scope: !1366, inlinedAt: !1182)
!1366 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 379, column: 19)
!1367 = !DILocation(line: 379, column: 19, scope: !1140, inlinedAt: !1182)
!1368 = !DILocation(line: 382, column: 25, scope: !1366, inlinedAt: !1182)
!1369 = !DILocation(line: 382, column: 17, scope: !1366, inlinedAt: !1182)
!1370 = !DILocation(line: 392, column: 21, scope: !1371, inlinedAt: !1182)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 383, column: 19)
!1372 = !DILocation(line: 395, column: 28, scope: !1371, inlinedAt: !1182)
!1373 = !DILocation(line: 396, column: 21, scope: !1371, inlinedAt: !1182)
!1374 = !DILocation(line: 397, column: 28, scope: !1371, inlinedAt: !1182)
!1375 = !DILocation(line: 0, scope: !1141, inlinedAt: !1182)
!1376 = !DILocation(line: 0, scope: !1325, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 402, column: 20, scope: !1137, inlinedAt: !1182)
!1378 = !DILocation(line: 227, column: 8, scope: !1324, inlinedAt: !1377)
!1379 = !DILocation(line: 227, scope: !1324, inlinedAt: !1377)
!1380 = !DILocation(line: 227, column: 17, scope: !1334, inlinedAt: !1377)
!1381 = !DILocation(line: 227, column: 31, scope: !1334, inlinedAt: !1377)
!1382 = !DILocation(line: 227, column: 45, scope: !1334, inlinedAt: !1377)
!1383 = !DILocation(line: 227, column: 3, scope: !1334, inlinedAt: !1377)
!1384 = distinct !{!1384, !1385, !1386, !953}
!1385 = !DILocation(line: 227, column: 3, scope: !1324, inlinedAt: !1377)
!1386 = !DILocation(line: 228, column: 5, scope: !1324, inlinedAt: !1377)
!1387 = !DILocation(line: 0, scope: !1137, inlinedAt: !1182)
!1388 = !DILocation(line: 404, column: 24, scope: !1146, inlinedAt: !1182)
!1389 = !DILocation(line: 404, column: 15, scope: !1137, inlinedAt: !1182)
!1390 = distinct !{!1390, !1345, !1391, !953}
!1391 = !DILocation(line: 417, column: 9, scope: !1135, inlinedAt: !1182)
!1392 = !DILocation(line: 0, scope: !1145, inlinedAt: !1182)
!1393 = !DILocation(line: 407, column: 29, scope: !1145, inlinedAt: !1182)
!1394 = !DILocation(line: 408, column: 15, scope: !1145, inlinedAt: !1182)
!1395 = !DILocation(line: 412, column: 29, scope: !1145, inlinedAt: !1182)
!1396 = !DILocation(line: 158, column: 8, scope: !1094)
!1397 = !DILocation(line: 157, column: 25, scope: !1094)
!1398 = distinct !{!1398, !1096, !1399, !953}
!1399 = !DILocation(line: 159, column: 79, scope: !1095)
!1400 = !DILocation(line: 161, column: 10, scope: !1056)
!1401 = !DILocation(line: 161, column: 3, scope: !1056)
!1402 = !DISubprogram(name: "bindtextdomain", scope: !888, file: !888, line: 86, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!132, !138, !138}
!1405 = !DISubprogram(name: "textdomain", scope: !888, file: !888, line: 82, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubprogram(name: "atexit", scope: !1030, file: !1030, line: 602, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!74, !477}
!1409 = !DISubprogram(name: "getopt_long", scope: !400, file: !400, line: 66, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!74, !74, !1412, !138, !1414, !405}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1415 = !DISubprogram(name: "strlen", scope: !1026, file: !1026, line: 407, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!137, !138}
!1418 = !DISubprogram(name: "lstat", scope: !1419, file: !1419, line: 313, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!74, !896, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1424 = !DISubprogram(name: "__errno_location", scope: !1425, file: !1425, line: 37, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!405}
!1428 = !DISubprogram(name: "pathconf", scope: !1429, file: !1429, line: 633, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!217, !138, !74}
!1432 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !417, file: !417, line: 50, type: !856, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1433)
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "file", arg: 1, scope: !1432, file: !417, line: 50, type: !138)
!1435 = !DILocation(line: 0, scope: !1432)
!1436 = !DILocation(line: 52, column: 13, scope: !1432)
!1437 = !DILocation(line: 53, column: 1, scope: !1432)
!1438 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !417, file: !417, line: 87, type: !1439, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !176}
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "ignore", arg: 1, scope: !1438, file: !417, line: 87, type: !176)
!1443 = !DILocation(line: 0, scope: !1438)
!1444 = !DILocation(line: 89, column: 16, scope: !1438)
!1445 = !{!1446, !1446, i64 0}
!1446 = !{!"_Bool", !844, i64 0}
!1447 = !DILocation(line: 90, column: 1, scope: !1438)
!1448 = distinct !DISubprogram(name: "close_stdout", scope: !417, file: !417, line: 116, type: !478, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1449)
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "write_error", scope: !1451, file: !417, line: 121, type: !138)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !417, line: 120, column: 5)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !417, line: 118, column: 7)
!1453 = !DILocation(line: 118, column: 21, scope: !1452)
!1454 = !DILocation(line: 118, column: 7, scope: !1452)
!1455 = !DILocation(line: 118, column: 29, scope: !1452)
!1456 = !DILocation(line: 119, column: 7, scope: !1452)
!1457 = !DILocation(line: 119, column: 12, scope: !1452)
!1458 = !{i8 0, i8 2}
!1459 = !DILocation(line: 119, column: 25, scope: !1452)
!1460 = !DILocation(line: 119, column: 28, scope: !1452)
!1461 = !DILocation(line: 119, column: 34, scope: !1452)
!1462 = !DILocation(line: 118, column: 7, scope: !1448)
!1463 = !DILocation(line: 121, column: 33, scope: !1451)
!1464 = !DILocation(line: 0, scope: !1451)
!1465 = !DILocation(line: 122, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !417, line: 122, column: 11)
!1467 = !DILocation(line: 0, scope: !1466)
!1468 = !DILocation(line: 122, column: 11, scope: !1451)
!1469 = !DILocation(line: 123, column: 9, scope: !1466)
!1470 = !DILocation(line: 126, column: 9, scope: !1466)
!1471 = !DILocation(line: 128, column: 14, scope: !1451)
!1472 = !DILocation(line: 128, column: 7, scope: !1451)
!1473 = !DILocation(line: 133, column: 42, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1448, file: !417, line: 133, column: 7)
!1475 = !DILocation(line: 133, column: 28, scope: !1474)
!1476 = !DILocation(line: 133, column: 50, scope: !1474)
!1477 = !DILocation(line: 133, column: 7, scope: !1448)
!1478 = !DILocation(line: 134, column: 12, scope: !1474)
!1479 = !DILocation(line: 134, column: 5, scope: !1474)
!1480 = !DILocation(line: 135, column: 1, scope: !1448)
!1481 = !DISubprogram(name: "_exit", scope: !1429, file: !1429, line: 624, type: !832, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1482 = distinct !DISubprogram(name: "verror", scope: !432, file: !432, line: 251, type: !1483, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !74, !74, !138, !442}
!1485 = !{!1486, !1487, !1488, !1489}
!1486 = !DILocalVariable(name: "status", arg: 1, scope: !1482, file: !432, line: 251, type: !74)
!1487 = !DILocalVariable(name: "errnum", arg: 2, scope: !1482, file: !432, line: 251, type: !74)
!1488 = !DILocalVariable(name: "message", arg: 3, scope: !1482, file: !432, line: 251, type: !138)
!1489 = !DILocalVariable(name: "args", arg: 4, scope: !1482, file: !432, line: 251, type: !442)
!1490 = !DILocation(line: 0, scope: !1482)
!1491 = !DILocation(line: 261, column: 3, scope: !1482)
!1492 = !DILocation(line: 265, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !432, line: 265, column: 7)
!1494 = !DILocation(line: 265, column: 7, scope: !1482)
!1495 = !DILocation(line: 266, column: 5, scope: !1493)
!1496 = !DILocation(line: 272, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !432, line: 268, column: 5)
!1498 = !DILocation(line: 276, column: 3, scope: !1482)
!1499 = !DILocation(line: 282, column: 1, scope: !1482)
!1500 = distinct !DISubprogram(name: "flush_stdout", scope: !432, file: !432, line: 163, type: !478, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1501)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "stdout_fd", scope: !1500, file: !432, line: 166, type: !74)
!1503 = !DILocation(line: 0, scope: !1500)
!1504 = !DILocalVariable(name: "fd", arg: 1, scope: !1505, file: !432, line: 145, type: !74)
!1505 = distinct !DISubprogram(name: "is_open", scope: !432, file: !432, line: 145, type: !1506, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!74, !74}
!1508 = !{!1504}
!1509 = !DILocation(line: 0, scope: !1505, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 182, column: 25, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1500, file: !432, line: 182, column: 7)
!1512 = !DILocation(line: 157, column: 15, scope: !1505, inlinedAt: !1510)
!1513 = !DILocation(line: 157, column: 12, scope: !1505, inlinedAt: !1510)
!1514 = !DILocation(line: 182, column: 7, scope: !1500)
!1515 = !DILocation(line: 184, column: 5, scope: !1511)
!1516 = !DILocation(line: 185, column: 1, scope: !1500)
!1517 = distinct !DISubprogram(name: "error_tail", scope: !432, file: !432, line: 219, type: !1483, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1518)
!1518 = !{!1519, !1520, !1521, !1522}
!1519 = !DILocalVariable(name: "status", arg: 1, scope: !1517, file: !432, line: 219, type: !74)
!1520 = !DILocalVariable(name: "errnum", arg: 2, scope: !1517, file: !432, line: 219, type: !74)
!1521 = !DILocalVariable(name: "message", arg: 3, scope: !1517, file: !432, line: 219, type: !138)
!1522 = !DILocalVariable(name: "args", arg: 4, scope: !1517, file: !432, line: 219, type: !442)
!1523 = distinct !DIAssignID()
!1524 = !DILocation(line: 0, scope: !1517)
!1525 = !DILocation(line: 229, column: 13, scope: !1517)
!1526 = !DILocalVariable(name: "__stream", arg: 1, scope: !1527, file: !892, line: 132, type: !1530)
!1527 = distinct !DISubprogram(name: "vfprintf", scope: !892, file: !892, line: 132, type: !1528, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1565)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!74, !1530, !896, !442}
!1530 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1533, file: !193, line: 51, baseType: !74, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1533, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1533, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1533, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1533, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1533, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1533, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1533, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1533, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1533, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1533, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1533, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1533, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1533, file: !193, line: 70, baseType: !1549, size: 64, offset: 832)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1533, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1533, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1533, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1533, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1533, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1533, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1533, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1533, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1533, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1533, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1533, file: !193, line: 93, baseType: !1549, size: 64, offset: 1344)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1533, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1533, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1533, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1533, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!1565 = !{!1526, !1566, !1567}
!1566 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1527, file: !892, line: 133, type: !896)
!1567 = !DILocalVariable(name: "__ap", arg: 3, scope: !1527, file: !892, line: 133, type: !442)
!1568 = !DILocation(line: 0, scope: !1527, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 229, column: 3, scope: !1517)
!1570 = !DILocation(line: 135, column: 10, scope: !1527, inlinedAt: !1569)
!1571 = !DILocation(line: 232, column: 3, scope: !1517)
!1572 = !DILocation(line: 233, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1517, file: !432, line: 233, column: 7)
!1574 = !DILocation(line: 233, column: 7, scope: !1517)
!1575 = !DILocalVariable(name: "errbuf", scope: !1576, file: !432, line: 193, type: !1580)
!1576 = distinct !DISubprogram(name: "print_errno_message", scope: !432, file: !432, line: 188, type: !832, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1577)
!1577 = !{!1578, !1579, !1575}
!1578 = !DILocalVariable(name: "errnum", arg: 1, scope: !1576, file: !432, line: 188, type: !74)
!1579 = !DILocalVariable(name: "s", scope: !1576, file: !432, line: 190, type: !138)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1581)
!1581 = !{!1582}
!1582 = !DISubrange(count: 1024)
!1583 = !DILocation(line: 0, scope: !1576, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 234, column: 5, scope: !1573)
!1585 = !DILocation(line: 193, column: 3, scope: !1576, inlinedAt: !1584)
!1586 = !DILocation(line: 195, column: 7, scope: !1576, inlinedAt: !1584)
!1587 = !DILocation(line: 207, column: 9, scope: !1588, inlinedAt: !1584)
!1588 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 207, column: 7)
!1589 = !DILocation(line: 207, column: 7, scope: !1576, inlinedAt: !1584)
!1590 = !DILocation(line: 208, column: 9, scope: !1588, inlinedAt: !1584)
!1591 = !DILocation(line: 208, column: 5, scope: !1588, inlinedAt: !1584)
!1592 = !DILocation(line: 214, column: 3, scope: !1576, inlinedAt: !1584)
!1593 = !DILocation(line: 216, column: 1, scope: !1576, inlinedAt: !1584)
!1594 = !DILocation(line: 234, column: 5, scope: !1573)
!1595 = !DILocation(line: 238, column: 3, scope: !1517)
!1596 = !DILocalVariable(name: "__c", arg: 1, scope: !1597, file: !1598, line: 101, type: !74)
!1597 = distinct !DISubprogram(name: "putc_unlocked", scope: !1598, file: !1598, line: 101, type: !1599, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1601)
!1598 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!74, !74, !1531}
!1601 = !{!1596, !1602}
!1602 = !DILocalVariable(name: "__stream", arg: 2, scope: !1597, file: !1598, line: 101, type: !1531)
!1603 = !DILocation(line: 0, scope: !1597, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 238, column: 3, scope: !1517)
!1605 = !DILocation(line: 103, column: 10, scope: !1597, inlinedAt: !1604)
!1606 = !{!1607, !843, i64 40}
!1607 = !{!"_IO_FILE", !907, i64 0, !843, i64 8, !843, i64 16, !843, i64 24, !843, i64 32, !843, i64 40, !843, i64 48, !843, i64 56, !843, i64 64, !843, i64 72, !843, i64 80, !843, i64 88, !843, i64 96, !843, i64 104, !907, i64 112, !907, i64 116, !1608, i64 120, !948, i64 128, !844, i64 130, !844, i64 131, !843, i64 136, !1608, i64 144, !843, i64 152, !843, i64 160, !843, i64 168, !843, i64 176, !1608, i64 184, !907, i64 192, !844, i64 196}
!1608 = !{!"long", !844, i64 0}
!1609 = !{!1607, !843, i64 48}
!1610 = !{!"branch_weights", i32 2000, i32 1}
!1611 = !DILocation(line: 240, column: 3, scope: !1517)
!1612 = !DILocation(line: 241, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1517, file: !432, line: 241, column: 7)
!1614 = !DILocation(line: 241, column: 7, scope: !1517)
!1615 = !DILocation(line: 242, column: 5, scope: !1613)
!1616 = !DILocation(line: 243, column: 1, scope: !1517)
!1617 = !DISubprogram(name: "__vfprintf_chk", scope: !892, file: !892, line: 96, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!74, !1530, !74, !896, !442}
!1620 = !DISubprogram(name: "strerror_r", scope: !1026, file: !1026, line: 444, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!132, !74, !132, !135}
!1623 = !DISubprogram(name: "__overflow", scope: !901, file: !901, line: 886, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!74, !1531, !74}
!1626 = !DISubprogram(name: "fflush_unlocked", scope: !901, file: !901, line: 239, type: !1627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!74, !1531}
!1629 = !DISubprogram(name: "fcntl", scope: !1630, file: !1630, line: 149, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!74, !74, !74, null}
!1633 = distinct !DISubprogram(name: "error", scope: !432, file: !432, line: 285, type: !1634, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !74, !74, !138, null}
!1636 = !{!1637, !1638, !1639, !1640}
!1637 = !DILocalVariable(name: "status", arg: 1, scope: !1633, file: !432, line: 285, type: !74)
!1638 = !DILocalVariable(name: "errnum", arg: 2, scope: !1633, file: !432, line: 285, type: !74)
!1639 = !DILocalVariable(name: "message", arg: 3, scope: !1633, file: !432, line: 285, type: !138)
!1640 = !DILocalVariable(name: "ap", scope: !1633, file: !432, line: 287, type: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !901, line: 52, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1643, line: 12, baseType: !1644)
!1643 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !432, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !47)
!1646 = distinct !DIAssignID()
!1647 = !DILocation(line: 0, scope: !1633)
!1648 = !DILocation(line: 287, column: 3, scope: !1633)
!1649 = !DILocation(line: 288, column: 3, scope: !1633)
!1650 = !DILocation(line: 289, column: 3, scope: !1633)
!1651 = !DILocation(line: 290, column: 3, scope: !1633)
!1652 = !DILocation(line: 291, column: 1, scope: !1633)
!1653 = !DILocation(line: 0, scope: !439)
!1654 = !DILocation(line: 302, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !439, file: !432, line: 302, column: 7)
!1656 = !DILocation(line: 302, column: 7, scope: !439)
!1657 = !DILocation(line: 307, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !432, line: 307, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !432, line: 303, column: 5)
!1660 = !DILocation(line: 307, column: 27, scope: !1658)
!1661 = !DILocation(line: 308, column: 11, scope: !1658)
!1662 = !DILocation(line: 308, column: 28, scope: !1658)
!1663 = !DILocation(line: 308, column: 25, scope: !1658)
!1664 = !DILocation(line: 309, column: 15, scope: !1658)
!1665 = !DILocation(line: 309, column: 33, scope: !1658)
!1666 = !DILocation(line: 310, column: 19, scope: !1658)
!1667 = !DILocation(line: 311, column: 22, scope: !1658)
!1668 = !DILocation(line: 311, column: 56, scope: !1658)
!1669 = !DILocation(line: 307, column: 11, scope: !1659)
!1670 = !DILocation(line: 316, column: 21, scope: !1659)
!1671 = !DILocation(line: 317, column: 23, scope: !1659)
!1672 = !DILocation(line: 318, column: 5, scope: !1659)
!1673 = !DILocation(line: 327, column: 3, scope: !439)
!1674 = !DILocation(line: 331, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !439, file: !432, line: 331, column: 7)
!1676 = !DILocation(line: 331, column: 7, scope: !439)
!1677 = !DILocation(line: 332, column: 5, scope: !1675)
!1678 = !DILocation(line: 338, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !432, line: 334, column: 5)
!1680 = !DILocation(line: 346, column: 3, scope: !439)
!1681 = !DILocation(line: 350, column: 3, scope: !439)
!1682 = !DILocation(line: 356, column: 1, scope: !439)
!1683 = distinct !DISubprogram(name: "error_at_line", scope: !432, file: !432, line: 359, type: !1684, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !74, !74, !138, !69, !138, null}
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DILocalVariable(name: "status", arg: 1, scope: !1683, file: !432, line: 359, type: !74)
!1688 = !DILocalVariable(name: "errnum", arg: 2, scope: !1683, file: !432, line: 359, type: !74)
!1689 = !DILocalVariable(name: "file_name", arg: 3, scope: !1683, file: !432, line: 359, type: !138)
!1690 = !DILocalVariable(name: "line_number", arg: 4, scope: !1683, file: !432, line: 360, type: !69)
!1691 = !DILocalVariable(name: "message", arg: 5, scope: !1683, file: !432, line: 360, type: !138)
!1692 = !DILocalVariable(name: "ap", scope: !1683, file: !432, line: 362, type: !1641)
!1693 = distinct !DIAssignID()
!1694 = !DILocation(line: 0, scope: !1683)
!1695 = !DILocation(line: 362, column: 3, scope: !1683)
!1696 = !DILocation(line: 363, column: 3, scope: !1683)
!1697 = !DILocation(line: 364, column: 3, scope: !1683)
!1698 = !DILocation(line: 366, column: 3, scope: !1683)
!1699 = !DILocation(line: 367, column: 1, scope: !1683)
!1700 = distinct !DISubprogram(name: "getprogname", scope: !758, file: !758, line: 54, type: !1701, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!138}
!1703 = !DILocation(line: 58, column: 10, scope: !1700)
!1704 = !DILocation(line: 58, column: 3, scope: !1700)
!1705 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !483, file: !483, line: 27, type: !1706, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1709)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!135, !138, !135, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1709 = !{!1710, !1711, !1712}
!1710 = !DILocalVariable(name: "s", arg: 1, scope: !1705, file: !483, line: 27, type: !138)
!1711 = !DILocalVariable(name: "n", arg: 2, scope: !1705, file: !483, line: 27, type: !135)
!1712 = !DILocalVariable(name: "ps", arg: 3, scope: !1705, file: !483, line: 27, type: !1708)
!1713 = !DILocation(line: 0, scope: !1705)
!1714 = !DILocation(line: 29, column: 10, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1705, file: !483, line: 29, column: 7)
!1716 = !DILocation(line: 29, column: 7, scope: !1705)
!1717 = !DILocation(line: 31, column: 10, scope: !1705)
!1718 = !DILocation(line: 31, column: 3, scope: !1705)
!1719 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !760, file: !760, line: 82, type: !1720, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1736)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!135, !1722, !138, !135, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1724, line: 24, baseType: !74)
!1724 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1728, file: !489, line: 15, baseType: !74, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1728, file: !489, line: 20, baseType: !1732, size: 32, offset: 32)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !489, line: 16, size: 32, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1732, file: !489, line: 18, baseType: !69, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1732, file: !489, line: 19, baseType: !61, size: 32)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1737 = !DILocalVariable(name: "pwc", arg: 1, scope: !1719, file: !760, line: 82, type: !1722)
!1738 = !DILocalVariable(name: "s", arg: 2, scope: !1719, file: !760, line: 82, type: !138)
!1739 = !DILocalVariable(name: "n", arg: 3, scope: !1719, file: !760, line: 82, type: !135)
!1740 = !DILocalVariable(name: "ps", arg: 4, scope: !1719, file: !760, line: 82, type: !1725)
!1741 = !DILocalVariable(name: "wc", scope: !1719, file: !760, line: 98, type: !1723)
!1742 = !DILocalVariable(name: "ret", scope: !1719, file: !760, line: 134, type: !135)
!1743 = !DILocalVariable(name: "uc", scope: !1744, file: !760, line: 151, type: !140)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !760, line: 150, column: 5)
!1745 = distinct !DILexicalBlock(scope: !1719, file: !760, line: 149, column: 7)
!1746 = distinct !DIAssignID()
!1747 = !DILocation(line: 0, scope: !1719)
!1748 = !DILocation(line: 98, column: 3, scope: !1719)
!1749 = !DILocation(line: 99, column: 9, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1719, file: !760, line: 99, column: 7)
!1751 = !DILocation(line: 99, column: 7, scope: !1719)
!1752 = !DILocation(line: 140, column: 9, scope: !1719)
!1753 = !DILocation(line: 149, column: 19, scope: !1745)
!1754 = !DILocation(line: 149, column: 26, scope: !1745)
!1755 = !DILocation(line: 149, column: 41, scope: !1745)
!1756 = !DILocation(line: 149, column: 7, scope: !1719)
!1757 = !DILocation(line: 151, column: 26, scope: !1744)
!1758 = !DILocation(line: 0, scope: !1744)
!1759 = !DILocation(line: 152, column: 14, scope: !1744)
!1760 = !DILocation(line: 152, column: 12, scope: !1744)
!1761 = !DILocation(line: 158, column: 1, scope: !1719)
!1762 = !DISubprogram(name: "mbrtowc", scope: !1763, file: !1763, line: 297, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!135, !1766, !896, !135, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1722)
!1767 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1725)
!1768 = distinct !DISubprogram(name: "set_program_name", scope: !501, file: !501, line: 37, type: !856, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DILocalVariable(name: "argv0", arg: 1, scope: !1768, file: !501, line: 37, type: !138)
!1771 = !DILocalVariable(name: "slash", scope: !1768, file: !501, line: 44, type: !138)
!1772 = !DILocalVariable(name: "base", scope: !1768, file: !501, line: 45, type: !138)
!1773 = !DILocation(line: 0, scope: !1768)
!1774 = !DILocation(line: 44, column: 23, scope: !1768)
!1775 = !DILocation(line: 45, column: 22, scope: !1768)
!1776 = !DILocation(line: 46, column: 17, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !501, line: 46, column: 7)
!1778 = !DILocation(line: 46, column: 9, scope: !1777)
!1779 = !DILocation(line: 46, column: 25, scope: !1777)
!1780 = !DILocation(line: 46, column: 40, scope: !1777)
!1781 = !DILocalVariable(name: "__s1", arg: 1, scope: !1782, file: !919, line: 974, type: !1054)
!1782 = distinct !DISubprogram(name: "memeq", scope: !919, file: !919, line: 974, type: !1783, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!176, !1054, !1054, !135}
!1785 = !{!1781, !1786, !1787}
!1786 = !DILocalVariable(name: "__s2", arg: 2, scope: !1782, file: !919, line: 974, type: !1054)
!1787 = !DILocalVariable(name: "__n", arg: 3, scope: !1782, file: !919, line: 974, type: !135)
!1788 = !DILocation(line: 0, scope: !1782, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 46, column: 28, scope: !1777)
!1790 = !DILocation(line: 976, column: 11, scope: !1782, inlinedAt: !1789)
!1791 = !DILocation(line: 976, column: 10, scope: !1782, inlinedAt: !1789)
!1792 = !DILocation(line: 46, column: 7, scope: !1768)
!1793 = !DILocation(line: 49, column: 11, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !501, line: 49, column: 11)
!1795 = distinct !DILexicalBlock(scope: !1777, file: !501, line: 47, column: 5)
!1796 = !DILocation(line: 49, column: 36, scope: !1794)
!1797 = !DILocation(line: 49, column: 11, scope: !1795)
!1798 = !DILocation(line: 65, column: 16, scope: !1768)
!1799 = !DILocation(line: 71, column: 27, scope: !1768)
!1800 = !DILocation(line: 74, column: 33, scope: !1768)
!1801 = !DILocation(line: 76, column: 1, scope: !1768)
!1802 = !DISubprogram(name: "strrchr", scope: !1026, file: !1026, line: 273, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1803 = distinct !DIAssignID()
!1804 = !DILocation(line: 0, scope: !510)
!1805 = distinct !DIAssignID()
!1806 = !DILocation(line: 40, column: 29, scope: !510)
!1807 = !DILocation(line: 41, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !510, file: !511, line: 41, column: 7)
!1809 = !DILocation(line: 41, column: 7, scope: !510)
!1810 = !DILocation(line: 47, column: 3, scope: !510)
!1811 = !DILocation(line: 48, column: 3, scope: !510)
!1812 = !DILocalVariable(name: "ps", arg: 1, scope: !1813, file: !1253, line: 1135, type: !1816)
!1813 = distinct !DISubprogram(name: "mbszero", scope: !1253, file: !1253, line: 1135, type: !1814, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !1817)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1817 = !{!1812}
!1818 = !DILocation(line: 0, scope: !1813, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 48, column: 18, scope: !510)
!1820 = !DILocalVariable(name: "__dest", arg: 1, scope: !1821, file: !1262, line: 57, type: !133)
!1821 = distinct !DISubprogram(name: "memset", scope: !1262, file: !1262, line: 57, type: !1263, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !1822)
!1822 = !{!1820, !1823, !1824}
!1823 = !DILocalVariable(name: "__ch", arg: 2, scope: !1821, file: !1262, line: 57, type: !74)
!1824 = !DILocalVariable(name: "__len", arg: 3, scope: !1821, file: !1262, line: 57, type: !135)
!1825 = !DILocation(line: 0, scope: !1821, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 1137, column: 3, scope: !1813, inlinedAt: !1819)
!1827 = !DILocation(line: 59, column: 10, scope: !1821, inlinedAt: !1826)
!1828 = !DILocation(line: 49, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !510, file: !511, line: 49, column: 7)
!1830 = !DILocation(line: 49, column: 39, scope: !1829)
!1831 = !DILocation(line: 49, column: 44, scope: !1829)
!1832 = !DILocation(line: 54, column: 1, scope: !510)
!1833 = !DISubprogram(name: "mbrtoc32", scope: !522, file: !522, line: 57, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!135, !1836, !896, !135, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1816)
!1839 = distinct !DISubprogram(name: "clone_quoting_options", scope: !539, file: !539, line: 113, type: !1840, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1843)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!1842, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "o", arg: 1, scope: !1839, file: !539, line: 113, type: !1842)
!1845 = !DILocalVariable(name: "saved_errno", scope: !1839, file: !539, line: 115, type: !74)
!1846 = !DILocalVariable(name: "p", scope: !1839, file: !539, line: 116, type: !1842)
!1847 = !DILocation(line: 0, scope: !1839)
!1848 = !DILocation(line: 115, column: 21, scope: !1839)
!1849 = !DILocation(line: 116, column: 40, scope: !1839)
!1850 = !DILocation(line: 116, column: 31, scope: !1839)
!1851 = !DILocation(line: 118, column: 9, scope: !1839)
!1852 = !DILocation(line: 119, column: 3, scope: !1839)
!1853 = distinct !DISubprogram(name: "get_quoting_style", scope: !539, file: !539, line: 124, type: !1854, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1858)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!562, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1853, file: !539, line: 124, type: !1856)
!1860 = !DILocation(line: 0, scope: !1853)
!1861 = !DILocation(line: 126, column: 11, scope: !1853)
!1862 = !DILocation(line: 126, column: 46, scope: !1853)
!1863 = !{!1864, !907, i64 0}
!1864 = !{!"quoting_options", !907, i64 0, !907, i64 4, !844, i64 8, !843, i64 40, !843, i64 48}
!1865 = !DILocation(line: 126, column: 3, scope: !1853)
!1866 = distinct !DISubprogram(name: "set_quoting_style", scope: !539, file: !539, line: 132, type: !1867, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1842, !562}
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "o", arg: 1, scope: !1866, file: !539, line: 132, type: !1842)
!1871 = !DILocalVariable(name: "s", arg: 2, scope: !1866, file: !539, line: 132, type: !562)
!1872 = !DILocation(line: 0, scope: !1866)
!1873 = !DILocation(line: 134, column: 4, scope: !1866)
!1874 = !DILocation(line: 134, column: 45, scope: !1866)
!1875 = !DILocation(line: 135, column: 1, scope: !1866)
!1876 = distinct !DISubprogram(name: "set_char_quoting", scope: !539, file: !539, line: 143, type: !1877, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!74, !1842, !4, !74}
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1886, !1887}
!1880 = !DILocalVariable(name: "o", arg: 1, scope: !1876, file: !539, line: 143, type: !1842)
!1881 = !DILocalVariable(name: "c", arg: 2, scope: !1876, file: !539, line: 143, type: !4)
!1882 = !DILocalVariable(name: "i", arg: 3, scope: !1876, file: !539, line: 143, type: !74)
!1883 = !DILocalVariable(name: "uc", scope: !1876, file: !539, line: 145, type: !140)
!1884 = !DILocalVariable(name: "p", scope: !1876, file: !539, line: 146, type: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1886 = !DILocalVariable(name: "shift", scope: !1876, file: !539, line: 148, type: !74)
!1887 = !DILocalVariable(name: "r", scope: !1876, file: !539, line: 149, type: !69)
!1888 = !DILocation(line: 0, scope: !1876)
!1889 = !DILocation(line: 147, column: 6, scope: !1876)
!1890 = !DILocation(line: 147, column: 41, scope: !1876)
!1891 = !DILocation(line: 147, column: 62, scope: !1876)
!1892 = !DILocation(line: 147, column: 57, scope: !1876)
!1893 = !DILocation(line: 148, column: 15, scope: !1876)
!1894 = !DILocation(line: 149, column: 21, scope: !1876)
!1895 = !DILocation(line: 149, column: 24, scope: !1876)
!1896 = !DILocation(line: 149, column: 34, scope: !1876)
!1897 = !DILocation(line: 150, column: 19, scope: !1876)
!1898 = !DILocation(line: 150, column: 24, scope: !1876)
!1899 = !DILocation(line: 150, column: 6, scope: !1876)
!1900 = !DILocation(line: 151, column: 3, scope: !1876)
!1901 = distinct !DISubprogram(name: "set_quoting_flags", scope: !539, file: !539, line: 159, type: !1902, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!74, !1842, !74}
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "o", arg: 1, scope: !1901, file: !539, line: 159, type: !1842)
!1906 = !DILocalVariable(name: "i", arg: 2, scope: !1901, file: !539, line: 159, type: !74)
!1907 = !DILocalVariable(name: "r", scope: !1901, file: !539, line: 163, type: !74)
!1908 = !DILocation(line: 0, scope: !1901)
!1909 = !DILocation(line: 161, column: 8, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1901, file: !539, line: 161, column: 7)
!1911 = !DILocation(line: 161, column: 7, scope: !1901)
!1912 = !DILocation(line: 163, column: 14, scope: !1901)
!1913 = !{!1864, !907, i64 4}
!1914 = !DILocation(line: 164, column: 12, scope: !1901)
!1915 = !DILocation(line: 165, column: 3, scope: !1901)
!1916 = distinct !DISubprogram(name: "set_custom_quoting", scope: !539, file: !539, line: 169, type: !1917, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1842, !138, !138}
!1919 = !{!1920, !1921, !1922}
!1920 = !DILocalVariable(name: "o", arg: 1, scope: !1916, file: !539, line: 169, type: !1842)
!1921 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1916, file: !539, line: 170, type: !138)
!1922 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1916, file: !539, line: 170, type: !138)
!1923 = !DILocation(line: 0, scope: !1916)
!1924 = !DILocation(line: 172, column: 8, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1916, file: !539, line: 172, column: 7)
!1926 = !DILocation(line: 172, column: 7, scope: !1916)
!1927 = !DILocation(line: 174, column: 12, scope: !1916)
!1928 = !DILocation(line: 175, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1916, file: !539, line: 175, column: 7)
!1930 = !DILocation(line: 175, column: 19, scope: !1929)
!1931 = !DILocation(line: 176, column: 5, scope: !1929)
!1932 = !DILocation(line: 177, column: 6, scope: !1916)
!1933 = !DILocation(line: 177, column: 17, scope: !1916)
!1934 = !{!1864, !843, i64 40}
!1935 = !DILocation(line: 178, column: 6, scope: !1916)
!1936 = !DILocation(line: 178, column: 18, scope: !1916)
!1937 = !{!1864, !843, i64 48}
!1938 = !DILocation(line: 179, column: 1, scope: !1916)
!1939 = !DISubprogram(name: "abort", scope: !1030, file: !1030, line: 598, type: !478, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1940 = distinct !DISubprogram(name: "quotearg_buffer", scope: !539, file: !539, line: 774, type: !1941, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!135, !132, !135, !138, !135, !1856}
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951}
!1944 = !DILocalVariable(name: "buffer", arg: 1, scope: !1940, file: !539, line: 774, type: !132)
!1945 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1940, file: !539, line: 774, type: !135)
!1946 = !DILocalVariable(name: "arg", arg: 3, scope: !1940, file: !539, line: 775, type: !138)
!1947 = !DILocalVariable(name: "argsize", arg: 4, scope: !1940, file: !539, line: 775, type: !135)
!1948 = !DILocalVariable(name: "o", arg: 5, scope: !1940, file: !539, line: 776, type: !1856)
!1949 = !DILocalVariable(name: "p", scope: !1940, file: !539, line: 778, type: !1856)
!1950 = !DILocalVariable(name: "saved_errno", scope: !1940, file: !539, line: 779, type: !74)
!1951 = !DILocalVariable(name: "r", scope: !1940, file: !539, line: 780, type: !135)
!1952 = !DILocation(line: 0, scope: !1940)
!1953 = !DILocation(line: 778, column: 37, scope: !1940)
!1954 = !DILocation(line: 779, column: 21, scope: !1940)
!1955 = !DILocation(line: 781, column: 43, scope: !1940)
!1956 = !DILocation(line: 781, column: 53, scope: !1940)
!1957 = !DILocation(line: 781, column: 63, scope: !1940)
!1958 = !DILocation(line: 782, column: 43, scope: !1940)
!1959 = !DILocation(line: 782, column: 58, scope: !1940)
!1960 = !DILocation(line: 780, column: 14, scope: !1940)
!1961 = !DILocation(line: 783, column: 9, scope: !1940)
!1962 = !DILocation(line: 784, column: 3, scope: !1940)
!1963 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !539, file: !539, line: 251, type: !1964, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1968)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!135, !132, !135, !138, !135, !562, !74, !1966, !138, !138}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1994, !1996, !1999, !2000, !2001, !2002, !2005, !2006, !2008, !2009, !2012, !2016, !2017, !2025, !2028, !2029, !2030}
!1969 = !DILocalVariable(name: "buffer", arg: 1, scope: !1963, file: !539, line: 251, type: !132)
!1970 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1963, file: !539, line: 251, type: !135)
!1971 = !DILocalVariable(name: "arg", arg: 3, scope: !1963, file: !539, line: 252, type: !138)
!1972 = !DILocalVariable(name: "argsize", arg: 4, scope: !1963, file: !539, line: 252, type: !135)
!1973 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1963, file: !539, line: 253, type: !562)
!1974 = !DILocalVariable(name: "flags", arg: 6, scope: !1963, file: !539, line: 253, type: !74)
!1975 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1963, file: !539, line: 254, type: !1966)
!1976 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1963, file: !539, line: 255, type: !138)
!1977 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1963, file: !539, line: 256, type: !138)
!1978 = !DILocalVariable(name: "unibyte_locale", scope: !1963, file: !539, line: 258, type: !176)
!1979 = !DILocalVariable(name: "len", scope: !1963, file: !539, line: 260, type: !135)
!1980 = !DILocalVariable(name: "orig_buffersize", scope: !1963, file: !539, line: 261, type: !135)
!1981 = !DILocalVariable(name: "quote_string", scope: !1963, file: !539, line: 262, type: !138)
!1982 = !DILocalVariable(name: "quote_string_len", scope: !1963, file: !539, line: 263, type: !135)
!1983 = !DILocalVariable(name: "backslash_escapes", scope: !1963, file: !539, line: 264, type: !176)
!1984 = !DILocalVariable(name: "elide_outer_quotes", scope: !1963, file: !539, line: 265, type: !176)
!1985 = !DILocalVariable(name: "encountered_single_quote", scope: !1963, file: !539, line: 266, type: !176)
!1986 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1963, file: !539, line: 267, type: !176)
!1987 = !DILabel(scope: !1963, name: "process_input", file: !539, line: 308)
!1988 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1963, file: !539, line: 309, type: !176)
!1989 = !DILocalVariable(name: "lq", scope: !1990, file: !539, line: 361, type: !138)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !539, line: 361, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !539, line: 360, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !539, line: 333, column: 7)
!1993 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 312, column: 5)
!1994 = !DILocalVariable(name: "i", scope: !1995, file: !539, line: 395, type: !135)
!1995 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 395, column: 3)
!1996 = !DILocalVariable(name: "is_right_quote", scope: !1997, file: !539, line: 397, type: !176)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !539, line: 396, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !539, line: 395, column: 3)
!1999 = !DILocalVariable(name: "escaping", scope: !1997, file: !539, line: 398, type: !176)
!2000 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1997, file: !539, line: 399, type: !176)
!2001 = !DILocalVariable(name: "c", scope: !1997, file: !539, line: 417, type: !140)
!2002 = !DILabel(scope: !2003, name: "c_and_shell_escape", file: !539, line: 502)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 478, column: 9)
!2004 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 419, column: 9)
!2005 = !DILabel(scope: !2003, name: "c_escape", file: !539, line: 507)
!2006 = !DILocalVariable(name: "m", scope: !2007, file: !539, line: 598, type: !135)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 596, column: 11)
!2008 = !DILocalVariable(name: "printable", scope: !2007, file: !539, line: 600, type: !176)
!2009 = !DILocalVariable(name: "mbs", scope: !2010, file: !539, line: 609, type: !611)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !539, line: 608, column: 15)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !539, line: 602, column: 17)
!2012 = !DILocalVariable(name: "w", scope: !2013, file: !539, line: 618, type: !521)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !539, line: 617, column: 19)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !539, line: 616, column: 17)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !539, line: 616, column: 17)
!2016 = !DILocalVariable(name: "bytes", scope: !2013, file: !539, line: 619, type: !135)
!2017 = !DILocalVariable(name: "j", scope: !2018, file: !539, line: 648, type: !135)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !539, line: 648, column: 29)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !539, line: 647, column: 27)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !539, line: 645, column: 29)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !539, line: 636, column: 23)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !539, line: 628, column: 30)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !539, line: 623, column: 30)
!2024 = distinct !DILexicalBlock(scope: !2013, file: !539, line: 621, column: 25)
!2025 = !DILocalVariable(name: "ilim", scope: !2026, file: !539, line: 674, type: !135)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !539, line: 671, column: 15)
!2027 = distinct !DILexicalBlock(scope: !2007, file: !539, line: 670, column: 17)
!2028 = !DILabel(scope: !1997, name: "store_escape", file: !539, line: 709)
!2029 = !DILabel(scope: !1997, name: "store_c", file: !539, line: 712)
!2030 = !DILabel(scope: !1963, name: "force_outer_quoting_style", file: !539, line: 753)
!2031 = distinct !DIAssignID()
!2032 = distinct !DIAssignID()
!2033 = distinct !DIAssignID()
!2034 = distinct !DIAssignID()
!2035 = distinct !DIAssignID()
!2036 = !DILocation(line: 0, scope: !2010)
!2037 = distinct !DIAssignID()
!2038 = !DILocation(line: 0, scope: !2013)
!2039 = !DILocation(line: 0, scope: !1963)
!2040 = !DILocation(line: 258, column: 25, scope: !1963)
!2041 = !DILocation(line: 258, column: 36, scope: !1963)
!2042 = !DILocation(line: 265, column: 8, scope: !1963)
!2043 = !DILocation(line: 267, column: 3, scope: !1963)
!2044 = !DILocation(line: 261, column: 10, scope: !1963)
!2045 = !DILocation(line: 262, column: 15, scope: !1963)
!2046 = !DILocation(line: 263, column: 10, scope: !1963)
!2047 = !DILocation(line: 264, column: 8, scope: !1963)
!2048 = !DILocation(line: 266, column: 8, scope: !1963)
!2049 = !DILocation(line: 267, column: 8, scope: !1963)
!2050 = !DILocation(line: 308, column: 2, scope: !1963)
!2051 = !DILocation(line: 311, column: 3, scope: !1963)
!2052 = !DILocation(line: 318, column: 11, scope: !1993)
!2053 = !DILocation(line: 318, column: 12, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1993, file: !539, line: 318, column: 11)
!2055 = !DILocation(line: 319, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !539, line: 319, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !539, line: 319, column: 9)
!2058 = !DILocation(line: 319, column: 9, scope: !2057)
!2059 = !DILocation(line: 0, scope: !602, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 357, column: 26, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !539, line: 335, column: 11)
!2062 = distinct !DILexicalBlock(scope: !1992, file: !539, line: 334, column: 13)
!2063 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2060)
!2064 = !DILocation(line: 201, column: 19, scope: !2065, inlinedAt: !2060)
!2065 = distinct !DILexicalBlock(scope: !602, file: !539, line: 201, column: 7)
!2066 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2060)
!2067 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2060)
!2068 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2060)
!2069 = !DILocalVariable(name: "ps", arg: 1, scope: !2070, file: !1253, line: 1135, type: !2073)
!2070 = distinct !DISubprogram(name: "mbszero", scope: !1253, file: !1253, line: 1135, type: !2071, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2074)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2074 = !{!2069}
!2075 = !DILocation(line: 0, scope: !2070, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2060)
!2077 = !DILocalVariable(name: "__dest", arg: 1, scope: !2078, file: !1262, line: 57, type: !133)
!2078 = distinct !DISubprogram(name: "memset", scope: !1262, file: !1262, line: 57, type: !1263, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2079)
!2079 = !{!2077, !2080, !2081}
!2080 = !DILocalVariable(name: "__ch", arg: 2, scope: !2078, file: !1262, line: 57, type: !74)
!2081 = !DILocalVariable(name: "__len", arg: 3, scope: !2078, file: !1262, line: 57, type: !135)
!2082 = !DILocation(line: 0, scope: !2078, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2076)
!2084 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2083)
!2085 = !DILocation(line: 231, column: 7, scope: !2086, inlinedAt: !2060)
!2086 = distinct !DILexicalBlock(scope: !602, file: !539, line: 231, column: 7)
!2087 = !DILocation(line: 231, column: 40, scope: !2086, inlinedAt: !2060)
!2088 = !DILocation(line: 231, column: 45, scope: !2086, inlinedAt: !2060)
!2089 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2060)
!2090 = !DILocation(line: 0, scope: !602, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 358, column: 27, scope: !2061)
!2092 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2091)
!2093 = !DILocation(line: 201, column: 19, scope: !2065, inlinedAt: !2091)
!2094 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2091)
!2095 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2091)
!2096 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2091)
!2097 = !DILocation(line: 0, scope: !2070, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2091)
!2099 = !DILocation(line: 0, scope: !2078, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2098)
!2101 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2100)
!2102 = !DILocation(line: 231, column: 7, scope: !2086, inlinedAt: !2091)
!2103 = !DILocation(line: 231, column: 40, scope: !2086, inlinedAt: !2091)
!2104 = !DILocation(line: 231, column: 45, scope: !2086, inlinedAt: !2091)
!2105 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2091)
!2106 = !DILocation(line: 360, column: 14, scope: !1991)
!2107 = !DILocation(line: 360, column: 13, scope: !1992)
!2108 = !DILocation(line: 0, scope: !1990)
!2109 = !DILocation(line: 361, column: 45, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1990, file: !539, line: 361, column: 11)
!2111 = !DILocation(line: 361, column: 11, scope: !1990)
!2112 = !DILocation(line: 362, column: 13, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !539, line: 362, column: 13)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !539, line: 362, column: 13)
!2115 = !DILocation(line: 362, column: 13, scope: !2114)
!2116 = !DILocation(line: 361, column: 52, scope: !2110)
!2117 = distinct !{!2117, !2111, !2118, !953}
!2118 = !DILocation(line: 362, column: 13, scope: !1990)
!2119 = !DILocation(line: 260, column: 10, scope: !1963)
!2120 = !DILocation(line: 365, column: 28, scope: !1992)
!2121 = !DILocation(line: 367, column: 7, scope: !1993)
!2122 = !DILocation(line: 370, column: 7, scope: !1993)
!2123 = !DILocation(line: 373, column: 7, scope: !1993)
!2124 = !DILocation(line: 376, column: 12, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1993, file: !539, line: 376, column: 11)
!2126 = !DILocation(line: 376, column: 11, scope: !1993)
!2127 = !DILocation(line: 381, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1993, file: !539, line: 381, column: 11)
!2129 = !DILocation(line: 381, column: 11, scope: !1993)
!2130 = !DILocation(line: 382, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !539, line: 382, column: 9)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !539, line: 382, column: 9)
!2133 = !DILocation(line: 382, column: 9, scope: !2132)
!2134 = !DILocation(line: 389, column: 7, scope: !1993)
!2135 = !DILocation(line: 392, column: 7, scope: !1993)
!2136 = !DILocation(line: 0, scope: !1995)
!2137 = !DILocation(line: 395, column: 8, scope: !1995)
!2138 = !DILocation(line: 309, column: 8, scope: !1963)
!2139 = !DILocation(line: 395, scope: !1995)
!2140 = !DILocation(line: 395, column: 34, scope: !1998)
!2141 = !DILocation(line: 395, column: 26, scope: !1998)
!2142 = !DILocation(line: 395, column: 48, scope: !1998)
!2143 = !DILocation(line: 395, column: 55, scope: !1998)
!2144 = !DILocation(line: 395, column: 3, scope: !1995)
!2145 = !DILocation(line: 395, column: 67, scope: !1998)
!2146 = !DILocation(line: 0, scope: !1997)
!2147 = !DILocation(line: 402, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 401, column: 11)
!2149 = !DILocation(line: 404, column: 17, scope: !2148)
!2150 = !DILocation(line: 405, column: 39, scope: !2148)
!2151 = !DILocation(line: 409, column: 32, scope: !2148)
!2152 = !DILocation(line: 405, column: 19, scope: !2148)
!2153 = !DILocation(line: 405, column: 15, scope: !2148)
!2154 = !DILocation(line: 410, column: 11, scope: !2148)
!2155 = !DILocation(line: 410, column: 25, scope: !2148)
!2156 = !DILocalVariable(name: "__s1", arg: 1, scope: !2157, file: !919, line: 974, type: !1054)
!2157 = distinct !DISubprogram(name: "memeq", scope: !919, file: !919, line: 974, type: !1783, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2158)
!2158 = !{!2156, !2159, !2160}
!2159 = !DILocalVariable(name: "__s2", arg: 2, scope: !2157, file: !919, line: 974, type: !1054)
!2160 = !DILocalVariable(name: "__n", arg: 3, scope: !2157, file: !919, line: 974, type: !135)
!2161 = !DILocation(line: 0, scope: !2157, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 410, column: 14, scope: !2148)
!2163 = !DILocation(line: 976, column: 11, scope: !2157, inlinedAt: !2162)
!2164 = !DILocation(line: 976, column: 10, scope: !2157, inlinedAt: !2162)
!2165 = !DILocation(line: 401, column: 11, scope: !1997)
!2166 = !DILocation(line: 417, column: 25, scope: !1997)
!2167 = !DILocation(line: 418, column: 7, scope: !1997)
!2168 = !DILocation(line: 421, column: 15, scope: !2004)
!2169 = !DILocation(line: 423, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !539, line: 423, column: 15)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !539, line: 422, column: 13)
!2172 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 421, column: 15)
!2173 = !DILocation(line: 423, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !539, line: 423, column: 15)
!2175 = !DILocation(line: 423, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !539, line: 423, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !539, line: 423, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !539, line: 423, column: 15)
!2179 = !DILocation(line: 423, column: 15, scope: !2177)
!2180 = !DILocation(line: 423, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !539, line: 423, column: 15)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !539, line: 423, column: 15)
!2183 = !DILocation(line: 423, column: 15, scope: !2182)
!2184 = !DILocation(line: 423, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !539, line: 423, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !539, line: 423, column: 15)
!2187 = !DILocation(line: 423, column: 15, scope: !2186)
!2188 = !DILocation(line: 423, column: 15, scope: !2178)
!2189 = !DILocation(line: 423, column: 15, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !539, line: 423, column: 15)
!2191 = distinct !DILexicalBlock(scope: !2170, file: !539, line: 423, column: 15)
!2192 = !DILocation(line: 423, column: 15, scope: !2191)
!2193 = !DILocation(line: 431, column: 19, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2171, file: !539, line: 430, column: 19)
!2195 = !DILocation(line: 431, column: 24, scope: !2194)
!2196 = !DILocation(line: 431, column: 28, scope: !2194)
!2197 = !DILocation(line: 431, column: 38, scope: !2194)
!2198 = !DILocation(line: 431, column: 48, scope: !2194)
!2199 = !DILocation(line: 431, column: 59, scope: !2194)
!2200 = !DILocation(line: 433, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !539, line: 433, column: 19)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !539, line: 433, column: 19)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !539, line: 432, column: 17)
!2204 = !DILocation(line: 433, column: 19, scope: !2202)
!2205 = !DILocation(line: 434, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !539, line: 434, column: 19)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !539, line: 434, column: 19)
!2208 = !DILocation(line: 434, column: 19, scope: !2207)
!2209 = !DILocation(line: 435, column: 17, scope: !2203)
!2210 = !DILocation(line: 442, column: 20, scope: !2172)
!2211 = !DILocation(line: 447, column: 11, scope: !2004)
!2212 = !DILocation(line: 450, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 448, column: 13)
!2214 = !DILocation(line: 456, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2213, file: !539, line: 455, column: 19)
!2216 = !DILocation(line: 456, column: 24, scope: !2215)
!2217 = !DILocation(line: 456, column: 28, scope: !2215)
!2218 = !DILocation(line: 456, column: 38, scope: !2215)
!2219 = !DILocation(line: 456, column: 41, scope: !2215)
!2220 = !DILocation(line: 456, column: 52, scope: !2215)
!2221 = !DILocation(line: 455, column: 19, scope: !2213)
!2222 = !DILocation(line: 457, column: 25, scope: !2215)
!2223 = !DILocation(line: 457, column: 17, scope: !2215)
!2224 = !DILocation(line: 464, column: 25, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2215, file: !539, line: 458, column: 19)
!2226 = !DILocation(line: 468, column: 21, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !539, line: 468, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !539, line: 468, column: 21)
!2229 = !DILocation(line: 468, column: 21, scope: !2228)
!2230 = !DILocation(line: 469, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !539, line: 469, column: 21)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !539, line: 469, column: 21)
!2233 = !DILocation(line: 469, column: 21, scope: !2232)
!2234 = !DILocation(line: 470, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !539, line: 470, column: 21)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !539, line: 470, column: 21)
!2237 = !DILocation(line: 470, column: 21, scope: !2236)
!2238 = !DILocation(line: 471, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !539, line: 471, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2225, file: !539, line: 471, column: 21)
!2241 = !DILocation(line: 471, column: 21, scope: !2240)
!2242 = !DILocation(line: 472, column: 21, scope: !2225)
!2243 = !DILocation(line: 482, column: 33, scope: !2003)
!2244 = !DILocation(line: 483, column: 33, scope: !2003)
!2245 = !DILocation(line: 485, column: 33, scope: !2003)
!2246 = !DILocation(line: 486, column: 33, scope: !2003)
!2247 = !DILocation(line: 487, column: 33, scope: !2003)
!2248 = !DILocation(line: 490, column: 17, scope: !2003)
!2249 = !DILocation(line: 492, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !539, line: 491, column: 15)
!2251 = distinct !DILexicalBlock(scope: !2003, file: !539, line: 490, column: 17)
!2252 = !DILocation(line: 499, column: 35, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2003, file: !539, line: 499, column: 17)
!2254 = !DILocation(line: 499, column: 57, scope: !2253)
!2255 = !DILocation(line: 0, scope: !2003)
!2256 = !DILocation(line: 502, column: 11, scope: !2003)
!2257 = !DILocation(line: 504, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2003, file: !539, line: 503, column: 17)
!2259 = !DILocation(line: 507, column: 11, scope: !2003)
!2260 = !DILocation(line: 508, column: 17, scope: !2003)
!2261 = !DILocation(line: 517, column: 15, scope: !2004)
!2262 = !DILocation(line: 517, column: 40, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 517, column: 15)
!2264 = !DILocation(line: 517, column: 47, scope: !2263)
!2265 = !DILocation(line: 517, column: 18, scope: !2263)
!2266 = !DILocation(line: 521, column: 17, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 521, column: 15)
!2268 = !DILocation(line: 521, column: 15, scope: !2004)
!2269 = !DILocation(line: 525, column: 11, scope: !2004)
!2270 = !DILocation(line: 537, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 536, column: 15)
!2272 = !DILocation(line: 544, column: 15, scope: !2004)
!2273 = !DILocation(line: 546, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !539, line: 545, column: 13)
!2275 = distinct !DILexicalBlock(scope: !2004, file: !539, line: 544, column: 15)
!2276 = !DILocation(line: 549, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !539, line: 549, column: 19)
!2278 = !DILocation(line: 549, column: 30, scope: !2277)
!2279 = !DILocation(line: 558, column: 15, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !539, line: 558, column: 15)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !539, line: 558, column: 15)
!2282 = !DILocation(line: 558, column: 15, scope: !2281)
!2283 = !DILocation(line: 559, column: 15, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !539, line: 559, column: 15)
!2285 = distinct !DILexicalBlock(scope: !2274, file: !539, line: 559, column: 15)
!2286 = !DILocation(line: 559, column: 15, scope: !2285)
!2287 = !DILocation(line: 560, column: 15, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !539, line: 560, column: 15)
!2289 = distinct !DILexicalBlock(scope: !2274, file: !539, line: 560, column: 15)
!2290 = !DILocation(line: 560, column: 15, scope: !2289)
!2291 = !DILocation(line: 562, column: 13, scope: !2274)
!2292 = !DILocation(line: 602, column: 17, scope: !2007)
!2293 = !DILocation(line: 0, scope: !2007)
!2294 = !DILocation(line: 605, column: 29, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2011, file: !539, line: 603, column: 15)
!2296 = !DILocation(line: 605, column: 27, scope: !2295)
!2297 = !DILocation(line: 606, column: 15, scope: !2295)
!2298 = !DILocation(line: 609, column: 17, scope: !2010)
!2299 = !DILocation(line: 0, scope: !2070, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 609, column: 32, scope: !2010)
!2301 = !DILocation(line: 0, scope: !2078, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1137, column: 3, scope: !2070, inlinedAt: !2300)
!2303 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2302)
!2304 = !DILocation(line: 613, column: 29, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2010, file: !539, line: 613, column: 21)
!2306 = !DILocation(line: 613, column: 21, scope: !2010)
!2307 = !DILocation(line: 614, column: 29, scope: !2305)
!2308 = !DILocation(line: 614, column: 19, scope: !2305)
!2309 = !DILocation(line: 618, column: 21, scope: !2013)
!2310 = !DILocation(line: 620, column: 54, scope: !2013)
!2311 = !DILocation(line: 619, column: 36, scope: !2013)
!2312 = !DILocation(line: 621, column: 25, scope: !2013)
!2313 = !DILocation(line: 631, column: 38, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2022, file: !539, line: 629, column: 23)
!2315 = !DILocation(line: 631, column: 48, scope: !2314)
!2316 = !DILocation(line: 626, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2023, file: !539, line: 624, column: 23)
!2318 = !DILocation(line: 631, column: 51, scope: !2314)
!2319 = !DILocation(line: 631, column: 25, scope: !2314)
!2320 = !DILocation(line: 632, column: 28, scope: !2314)
!2321 = !DILocation(line: 631, column: 34, scope: !2314)
!2322 = distinct !{!2322, !2319, !2320, !953}
!2323 = !DILocation(line: 0, scope: !2018)
!2324 = !DILocation(line: 646, column: 29, scope: !2020)
!2325 = !DILocation(line: 649, column: 39, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 648, column: 29)
!2327 = !DILocation(line: 649, column: 31, scope: !2326)
!2328 = !DILocation(line: 648, column: 60, scope: !2326)
!2329 = !DILocation(line: 648, column: 50, scope: !2326)
!2330 = !DILocation(line: 648, column: 29, scope: !2018)
!2331 = distinct !{!2331, !2330, !2332, !953}
!2332 = !DILocation(line: 654, column: 33, scope: !2018)
!2333 = !DILocation(line: 657, column: 43, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2021, file: !539, line: 657, column: 29)
!2335 = !DILocalVariable(name: "wc", arg: 1, scope: !2336, file: !2337, line: 865, type: !2340)
!2336 = distinct !DISubprogram(name: "c32isprint", scope: !2337, file: !2337, line: 865, type: !2338, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2342)
!2337 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!74, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2341, line: 20, baseType: !69)
!2341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2342 = !{!2335}
!2343 = !DILocation(line: 0, scope: !2336, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 657, column: 31, scope: !2334)
!2345 = !DILocation(line: 871, column: 10, scope: !2336, inlinedAt: !2344)
!2346 = !DILocation(line: 657, column: 31, scope: !2334)
!2347 = !DILocation(line: 664, column: 23, scope: !2013)
!2348 = !DILocation(line: 665, column: 19, scope: !2014)
!2349 = !DILocation(line: 666, column: 15, scope: !2011)
!2350 = !DILocation(line: 0, scope: !2011)
!2351 = !DILocation(line: 670, column: 19, scope: !2027)
!2352 = !DILocation(line: 670, column: 23, scope: !2027)
!2353 = !DILocation(line: 674, column: 33, scope: !2026)
!2354 = !DILocation(line: 0, scope: !2026)
!2355 = !DILocation(line: 676, column: 17, scope: !2026)
!2356 = !DILocation(line: 398, column: 12, scope: !1997)
!2357 = !DILocation(line: 678, column: 43, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !539, line: 678, column: 25)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !539, line: 677, column: 19)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !539, line: 676, column: 17)
!2361 = distinct !DILexicalBlock(scope: !2026, file: !539, line: 676, column: 17)
!2362 = !DILocation(line: 680, column: 25, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !539, line: 680, column: 25)
!2364 = distinct !DILexicalBlock(scope: !2358, file: !539, line: 679, column: 23)
!2365 = !DILocation(line: 680, column: 25, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !539, line: 680, column: 25)
!2367 = !DILocation(line: 680, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !539, line: 680, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !539, line: 680, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !539, line: 680, column: 25)
!2371 = !DILocation(line: 680, column: 25, scope: !2369)
!2372 = !DILocation(line: 680, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !539, line: 680, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !539, line: 680, column: 25)
!2375 = !DILocation(line: 680, column: 25, scope: !2374)
!2376 = !DILocation(line: 680, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !539, line: 680, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !539, line: 680, column: 25)
!2379 = !DILocation(line: 680, column: 25, scope: !2378)
!2380 = !DILocation(line: 680, column: 25, scope: !2370)
!2381 = !DILocation(line: 680, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !539, line: 680, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2363, file: !539, line: 680, column: 25)
!2384 = !DILocation(line: 680, column: 25, scope: !2383)
!2385 = !DILocation(line: 681, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !539, line: 681, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2364, file: !539, line: 681, column: 25)
!2388 = !DILocation(line: 681, column: 25, scope: !2387)
!2389 = !DILocation(line: 682, column: 25, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !539, line: 682, column: 25)
!2391 = distinct !DILexicalBlock(scope: !2364, file: !539, line: 682, column: 25)
!2392 = !DILocation(line: 682, column: 25, scope: !2391)
!2393 = !DILocation(line: 683, column: 38, scope: !2364)
!2394 = !DILocation(line: 683, column: 33, scope: !2364)
!2395 = !DILocation(line: 684, column: 23, scope: !2364)
!2396 = !DILocation(line: 685, column: 30, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2358, file: !539, line: 685, column: 30)
!2398 = !DILocation(line: 685, column: 30, scope: !2358)
!2399 = !DILocation(line: 687, column: 25, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !539, line: 687, column: 25)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !539, line: 687, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !539, line: 686, column: 23)
!2403 = !DILocation(line: 687, column: 25, scope: !2401)
!2404 = !DILocation(line: 689, column: 23, scope: !2402)
!2405 = !DILocation(line: 690, column: 35, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2359, file: !539, line: 690, column: 25)
!2407 = !DILocation(line: 690, column: 30, scope: !2406)
!2408 = !DILocation(line: 690, column: 25, scope: !2359)
!2409 = !DILocation(line: 692, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !539, line: 692, column: 21)
!2411 = distinct !DILexicalBlock(scope: !2359, file: !539, line: 692, column: 21)
!2412 = !DILocation(line: 692, column: 21, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !539, line: 692, column: 21)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !539, line: 692, column: 21)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !539, line: 692, column: 21)
!2416 = !DILocation(line: 692, column: 21, scope: !2414)
!2417 = !DILocation(line: 692, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !539, line: 692, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !539, line: 692, column: 21)
!2420 = !DILocation(line: 692, column: 21, scope: !2419)
!2421 = !DILocation(line: 692, column: 21, scope: !2415)
!2422 = !DILocation(line: 0, scope: !2359)
!2423 = !DILocation(line: 693, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !539, line: 693, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2359, file: !539, line: 693, column: 21)
!2426 = !DILocation(line: 693, column: 21, scope: !2425)
!2427 = !DILocation(line: 694, column: 25, scope: !2359)
!2428 = !DILocation(line: 676, column: 17, scope: !2360)
!2429 = distinct !{!2429, !2430, !2431}
!2430 = !DILocation(line: 676, column: 17, scope: !2361)
!2431 = !DILocation(line: 695, column: 19, scope: !2361)
!2432 = !DILocation(line: 409, column: 30, scope: !2148)
!2433 = !DILocation(line: 702, column: 34, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 702, column: 11)
!2435 = !DILocation(line: 704, column: 14, scope: !2434)
!2436 = !DILocation(line: 705, column: 14, scope: !2434)
!2437 = !DILocation(line: 705, column: 35, scope: !2434)
!2438 = !DILocation(line: 705, column: 17, scope: !2434)
!2439 = !DILocation(line: 705, column: 47, scope: !2434)
!2440 = !DILocation(line: 705, column: 65, scope: !2434)
!2441 = !DILocation(line: 706, column: 11, scope: !2434)
!2442 = !DILocation(line: 702, column: 11, scope: !1997)
!2443 = !DILocation(line: 395, column: 15, scope: !1995)
!2444 = !DILocation(line: 709, column: 5, scope: !1997)
!2445 = !DILocation(line: 710, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 710, column: 7)
!2447 = !DILocation(line: 710, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !539, line: 710, column: 7)
!2449 = !DILocation(line: 710, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !539, line: 710, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !539, line: 710, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !539, line: 710, column: 7)
!2453 = !DILocation(line: 710, column: 7, scope: !2451)
!2454 = !DILocation(line: 710, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !539, line: 710, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !539, line: 710, column: 7)
!2457 = !DILocation(line: 710, column: 7, scope: !2456)
!2458 = !DILocation(line: 710, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !539, line: 710, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2452, file: !539, line: 710, column: 7)
!2461 = !DILocation(line: 710, column: 7, scope: !2460)
!2462 = !DILocation(line: 710, column: 7, scope: !2452)
!2463 = !DILocation(line: 710, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !539, line: 710, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2446, file: !539, line: 710, column: 7)
!2466 = !DILocation(line: 710, column: 7, scope: !2465)
!2467 = !DILocation(line: 712, column: 5, scope: !1997)
!2468 = !DILocation(line: 713, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !539, line: 713, column: 7)
!2470 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 713, column: 7)
!2471 = !DILocation(line: 417, column: 21, scope: !1997)
!2472 = !DILocation(line: 713, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !539, line: 713, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !539, line: 713, column: 7)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !539, line: 713, column: 7)
!2476 = !DILocation(line: 713, column: 7, scope: !2474)
!2477 = !DILocation(line: 713, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !539, line: 713, column: 7)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !539, line: 713, column: 7)
!2480 = !DILocation(line: 713, column: 7, scope: !2479)
!2481 = !DILocation(line: 713, column: 7, scope: !2475)
!2482 = !DILocation(line: 714, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !539, line: 714, column: 7)
!2484 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 714, column: 7)
!2485 = !DILocation(line: 714, column: 7, scope: !2484)
!2486 = !DILocation(line: 716, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !1997, file: !539, line: 716, column: 11)
!2488 = !DILocation(line: 716, column: 11, scope: !1997)
!2489 = !DILocation(line: 718, column: 5, scope: !1998)
!2490 = !DILocation(line: 395, column: 82, scope: !1998)
!2491 = !DILocation(line: 395, column: 3, scope: !1998)
!2492 = distinct !{!2492, !2144, !2493, !953}
!2493 = !DILocation(line: 718, column: 5, scope: !1995)
!2494 = !DILocation(line: 720, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 720, column: 7)
!2496 = !DILocation(line: 720, column: 16, scope: !2495)
!2497 = !DILocation(line: 728, column: 51, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 728, column: 7)
!2499 = !DILocation(line: 731, column: 11, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !539, line: 731, column: 11)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !539, line: 730, column: 5)
!2502 = !DILocation(line: 731, column: 11, scope: !2501)
!2503 = !DILocation(line: 732, column: 16, scope: !2500)
!2504 = !DILocation(line: 732, column: 9, scope: !2500)
!2505 = !DILocation(line: 736, column: 18, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !539, line: 736, column: 16)
!2507 = !DILocation(line: 736, column: 29, scope: !2506)
!2508 = !DILocation(line: 745, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 745, column: 7)
!2510 = !DILocation(line: 745, column: 20, scope: !2509)
!2511 = !DILocation(line: 746, column: 12, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !539, line: 746, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !539, line: 746, column: 5)
!2514 = !DILocation(line: 746, column: 5, scope: !2513)
!2515 = !DILocation(line: 747, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !539, line: 747, column: 7)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !539, line: 747, column: 7)
!2518 = !DILocation(line: 747, column: 7, scope: !2517)
!2519 = !DILocation(line: 746, column: 39, scope: !2512)
!2520 = distinct !{!2520, !2514, !2521, !953}
!2521 = !DILocation(line: 747, column: 7, scope: !2513)
!2522 = !DILocation(line: 749, column: 11, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 749, column: 7)
!2524 = !DILocation(line: 749, column: 7, scope: !1963)
!2525 = !DILocation(line: 750, column: 5, scope: !2523)
!2526 = !DILocation(line: 750, column: 17, scope: !2523)
!2527 = !DILocation(line: 753, column: 2, scope: !1963)
!2528 = !DILocation(line: 756, column: 51, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !1963, file: !539, line: 756, column: 7)
!2530 = !DILocation(line: 756, column: 21, scope: !2529)
!2531 = !DILocation(line: 760, column: 42, scope: !1963)
!2532 = !DILocation(line: 758, column: 10, scope: !1963)
!2533 = !DILocation(line: 758, column: 3, scope: !1963)
!2534 = !DILocation(line: 762, column: 1, scope: !1963)
!2535 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1030, file: !1030, line: 98, type: !2536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2536 = !DISubroutineType(types: !761)
!2537 = !DISubprogram(name: "iswprint", scope: !2538, file: !2538, line: 120, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2539 = distinct !DISubprogram(name: "quotearg_alloc", scope: !539, file: !539, line: 788, type: !2540, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!132, !138, !135, !1856}
!2542 = !{!2543, !2544, !2545}
!2543 = !DILocalVariable(name: "arg", arg: 1, scope: !2539, file: !539, line: 788, type: !138)
!2544 = !DILocalVariable(name: "argsize", arg: 2, scope: !2539, file: !539, line: 788, type: !135)
!2545 = !DILocalVariable(name: "o", arg: 3, scope: !2539, file: !539, line: 789, type: !1856)
!2546 = !DILocation(line: 0, scope: !2539)
!2547 = !DILocalVariable(name: "arg", arg: 1, scope: !2548, file: !539, line: 801, type: !138)
!2548 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !539, file: !539, line: 801, type: !2549, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!132, !138, !135, !775, !1856}
!2551 = !{!2547, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2552 = !DILocalVariable(name: "argsize", arg: 2, scope: !2548, file: !539, line: 801, type: !135)
!2553 = !DILocalVariable(name: "size", arg: 3, scope: !2548, file: !539, line: 801, type: !775)
!2554 = !DILocalVariable(name: "o", arg: 4, scope: !2548, file: !539, line: 802, type: !1856)
!2555 = !DILocalVariable(name: "p", scope: !2548, file: !539, line: 804, type: !1856)
!2556 = !DILocalVariable(name: "saved_errno", scope: !2548, file: !539, line: 805, type: !74)
!2557 = !DILocalVariable(name: "flags", scope: !2548, file: !539, line: 807, type: !74)
!2558 = !DILocalVariable(name: "bufsize", scope: !2548, file: !539, line: 808, type: !135)
!2559 = !DILocalVariable(name: "buf", scope: !2548, file: !539, line: 812, type: !132)
!2560 = !DILocation(line: 0, scope: !2548, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 791, column: 10, scope: !2539)
!2562 = !DILocation(line: 804, column: 37, scope: !2548, inlinedAt: !2561)
!2563 = !DILocation(line: 805, column: 21, scope: !2548, inlinedAt: !2561)
!2564 = !DILocation(line: 807, column: 18, scope: !2548, inlinedAt: !2561)
!2565 = !DILocation(line: 807, column: 24, scope: !2548, inlinedAt: !2561)
!2566 = !DILocation(line: 808, column: 72, scope: !2548, inlinedAt: !2561)
!2567 = !DILocation(line: 809, column: 56, scope: !2548, inlinedAt: !2561)
!2568 = !DILocation(line: 810, column: 49, scope: !2548, inlinedAt: !2561)
!2569 = !DILocation(line: 811, column: 49, scope: !2548, inlinedAt: !2561)
!2570 = !DILocation(line: 808, column: 20, scope: !2548, inlinedAt: !2561)
!2571 = !DILocation(line: 811, column: 62, scope: !2548, inlinedAt: !2561)
!2572 = !DILocation(line: 812, column: 15, scope: !2548, inlinedAt: !2561)
!2573 = !DILocation(line: 813, column: 60, scope: !2548, inlinedAt: !2561)
!2574 = !DILocation(line: 815, column: 32, scope: !2548, inlinedAt: !2561)
!2575 = !DILocation(line: 815, column: 47, scope: !2548, inlinedAt: !2561)
!2576 = !DILocation(line: 813, column: 3, scope: !2548, inlinedAt: !2561)
!2577 = !DILocation(line: 816, column: 9, scope: !2548, inlinedAt: !2561)
!2578 = !DILocation(line: 791, column: 3, scope: !2539)
!2579 = !DILocation(line: 0, scope: !2548)
!2580 = !DILocation(line: 804, column: 37, scope: !2548)
!2581 = !DILocation(line: 805, column: 21, scope: !2548)
!2582 = !DILocation(line: 807, column: 18, scope: !2548)
!2583 = !DILocation(line: 807, column: 27, scope: !2548)
!2584 = !DILocation(line: 807, column: 24, scope: !2548)
!2585 = !DILocation(line: 808, column: 72, scope: !2548)
!2586 = !DILocation(line: 809, column: 56, scope: !2548)
!2587 = !DILocation(line: 810, column: 49, scope: !2548)
!2588 = !DILocation(line: 811, column: 49, scope: !2548)
!2589 = !DILocation(line: 808, column: 20, scope: !2548)
!2590 = !DILocation(line: 811, column: 62, scope: !2548)
!2591 = !DILocation(line: 812, column: 15, scope: !2548)
!2592 = !DILocation(line: 813, column: 60, scope: !2548)
!2593 = !DILocation(line: 815, column: 32, scope: !2548)
!2594 = !DILocation(line: 815, column: 47, scope: !2548)
!2595 = !DILocation(line: 813, column: 3, scope: !2548)
!2596 = !DILocation(line: 816, column: 9, scope: !2548)
!2597 = !DILocation(line: 817, column: 7, scope: !2548)
!2598 = !DILocation(line: 818, column: 11, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2548, file: !539, line: 817, column: 7)
!2600 = !{!1608, !1608, i64 0}
!2601 = !DILocation(line: 818, column: 5, scope: !2599)
!2602 = !DILocation(line: 819, column: 3, scope: !2548)
!2603 = distinct !DISubprogram(name: "quotearg_free", scope: !539, file: !539, line: 837, type: !478, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2604)
!2604 = !{!2605, !2606}
!2605 = !DILocalVariable(name: "sv", scope: !2603, file: !539, line: 839, type: !625)
!2606 = !DILocalVariable(name: "i", scope: !2607, file: !539, line: 840, type: !74)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !539, line: 840, column: 3)
!2608 = !DILocation(line: 839, column: 24, scope: !2603)
!2609 = !DILocation(line: 0, scope: !2603)
!2610 = !DILocation(line: 0, scope: !2607)
!2611 = !DILocation(line: 840, column: 21, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !539, line: 840, column: 3)
!2613 = !DILocation(line: 840, column: 3, scope: !2607)
!2614 = !DILocation(line: 842, column: 13, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2603, file: !539, line: 842, column: 7)
!2616 = !{!2617, !843, i64 8}
!2617 = !{!"slotvec", !1608, i64 0, !843, i64 8}
!2618 = !DILocation(line: 842, column: 17, scope: !2615)
!2619 = !DILocation(line: 842, column: 7, scope: !2603)
!2620 = !DILocation(line: 841, column: 17, scope: !2612)
!2621 = !DILocation(line: 841, column: 5, scope: !2612)
!2622 = !DILocation(line: 840, column: 32, scope: !2612)
!2623 = distinct !{!2623, !2613, !2624, !953}
!2624 = !DILocation(line: 841, column: 20, scope: !2607)
!2625 = !DILocation(line: 844, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2615, file: !539, line: 843, column: 5)
!2627 = !DILocation(line: 845, column: 21, scope: !2626)
!2628 = !{!2617, !1608, i64 0}
!2629 = !DILocation(line: 846, column: 20, scope: !2626)
!2630 = !DILocation(line: 847, column: 5, scope: !2626)
!2631 = !DILocation(line: 848, column: 10, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2603, file: !539, line: 848, column: 7)
!2633 = !DILocation(line: 848, column: 7, scope: !2603)
!2634 = !DILocation(line: 850, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !539, line: 849, column: 5)
!2636 = !DILocation(line: 851, column: 15, scope: !2635)
!2637 = !DILocation(line: 852, column: 5, scope: !2635)
!2638 = !DILocation(line: 853, column: 10, scope: !2603)
!2639 = !DILocation(line: 854, column: 1, scope: !2603)
!2640 = !DISubprogram(name: "free", scope: !1253, file: !1253, line: 786, type: !2641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{null, !133}
!2643 = distinct !DISubprogram(name: "quotearg_n", scope: !539, file: !539, line: 919, type: !1023, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2644)
!2644 = !{!2645, !2646}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2643, file: !539, line: 919, type: !74)
!2646 = !DILocalVariable(name: "arg", arg: 2, scope: !2643, file: !539, line: 919, type: !138)
!2647 = !DILocation(line: 0, scope: !2643)
!2648 = !DILocation(line: 921, column: 10, scope: !2643)
!2649 = !DILocation(line: 921, column: 3, scope: !2643)
!2650 = distinct !DISubprogram(name: "quotearg_n_options", scope: !539, file: !539, line: 866, type: !2651, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!132, !74, !138, !135, !1856}
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2664, !2665, !2667, !2668, !2669}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2650, file: !539, line: 866, type: !74)
!2655 = !DILocalVariable(name: "arg", arg: 2, scope: !2650, file: !539, line: 866, type: !138)
!2656 = !DILocalVariable(name: "argsize", arg: 3, scope: !2650, file: !539, line: 866, type: !135)
!2657 = !DILocalVariable(name: "options", arg: 4, scope: !2650, file: !539, line: 867, type: !1856)
!2658 = !DILocalVariable(name: "saved_errno", scope: !2650, file: !539, line: 869, type: !74)
!2659 = !DILocalVariable(name: "sv", scope: !2650, file: !539, line: 871, type: !625)
!2660 = !DILocalVariable(name: "nslots_max", scope: !2650, file: !539, line: 873, type: !74)
!2661 = !DILocalVariable(name: "preallocated", scope: !2662, file: !539, line: 879, type: !176)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !539, line: 878, column: 5)
!2663 = distinct !DILexicalBlock(scope: !2650, file: !539, line: 877, column: 7)
!2664 = !DILocalVariable(name: "new_nslots", scope: !2662, file: !539, line: 880, type: !788)
!2665 = !DILocalVariable(name: "size", scope: !2666, file: !539, line: 891, type: !135)
!2666 = distinct !DILexicalBlock(scope: !2650, file: !539, line: 890, column: 3)
!2667 = !DILocalVariable(name: "val", scope: !2666, file: !539, line: 892, type: !132)
!2668 = !DILocalVariable(name: "flags", scope: !2666, file: !539, line: 894, type: !74)
!2669 = !DILocalVariable(name: "qsize", scope: !2666, file: !539, line: 895, type: !135)
!2670 = distinct !DIAssignID()
!2671 = !DILocation(line: 0, scope: !2662)
!2672 = !DILocation(line: 0, scope: !2650)
!2673 = !DILocation(line: 869, column: 21, scope: !2650)
!2674 = !DILocation(line: 871, column: 24, scope: !2650)
!2675 = !DILocation(line: 874, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2650, file: !539, line: 874, column: 7)
!2677 = !DILocation(line: 875, column: 5, scope: !2676)
!2678 = !DILocation(line: 877, column: 7, scope: !2663)
!2679 = !DILocation(line: 877, column: 14, scope: !2663)
!2680 = !DILocation(line: 877, column: 7, scope: !2650)
!2681 = !DILocation(line: 879, column: 31, scope: !2662)
!2682 = !DILocation(line: 880, column: 7, scope: !2662)
!2683 = !DILocation(line: 880, column: 26, scope: !2662)
!2684 = !DILocation(line: 880, column: 13, scope: !2662)
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 882, column: 31, scope: !2662)
!2687 = !DILocation(line: 883, column: 33, scope: !2662)
!2688 = !DILocation(line: 883, column: 42, scope: !2662)
!2689 = !DILocation(line: 883, column: 31, scope: !2662)
!2690 = !DILocation(line: 882, column: 22, scope: !2662)
!2691 = !DILocation(line: 882, column: 15, scope: !2662)
!2692 = !DILocation(line: 884, column: 11, scope: !2662)
!2693 = !DILocation(line: 885, column: 15, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2662, file: !539, line: 884, column: 11)
!2695 = !{i64 0, i64 8, !2600, i64 8, i64 8, !842}
!2696 = !DILocation(line: 885, column: 9, scope: !2694)
!2697 = !DILocation(line: 886, column: 20, scope: !2662)
!2698 = !DILocation(line: 886, column: 18, scope: !2662)
!2699 = !DILocation(line: 886, column: 32, scope: !2662)
!2700 = !DILocation(line: 886, column: 43, scope: !2662)
!2701 = !DILocation(line: 886, column: 53, scope: !2662)
!2702 = !DILocation(line: 0, scope: !2078, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 886, column: 7, scope: !2662)
!2704 = !DILocation(line: 59, column: 10, scope: !2078, inlinedAt: !2703)
!2705 = !DILocation(line: 887, column: 16, scope: !2662)
!2706 = !DILocation(line: 887, column: 14, scope: !2662)
!2707 = !DILocation(line: 888, column: 5, scope: !2663)
!2708 = !DILocation(line: 888, column: 5, scope: !2662)
!2709 = !DILocation(line: 891, column: 19, scope: !2666)
!2710 = !DILocation(line: 891, column: 25, scope: !2666)
!2711 = !DILocation(line: 0, scope: !2666)
!2712 = !DILocation(line: 892, column: 23, scope: !2666)
!2713 = !DILocation(line: 894, column: 26, scope: !2666)
!2714 = !DILocation(line: 894, column: 32, scope: !2666)
!2715 = !DILocation(line: 896, column: 55, scope: !2666)
!2716 = !DILocation(line: 897, column: 55, scope: !2666)
!2717 = !DILocation(line: 898, column: 55, scope: !2666)
!2718 = !DILocation(line: 899, column: 55, scope: !2666)
!2719 = !DILocation(line: 895, column: 20, scope: !2666)
!2720 = !DILocation(line: 901, column: 14, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2666, file: !539, line: 901, column: 9)
!2722 = !DILocation(line: 901, column: 9, scope: !2666)
!2723 = !DILocation(line: 903, column: 35, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !539, line: 902, column: 7)
!2725 = !DILocation(line: 903, column: 20, scope: !2724)
!2726 = !DILocation(line: 904, column: 17, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !539, line: 904, column: 13)
!2728 = !DILocation(line: 904, column: 13, scope: !2724)
!2729 = !DILocation(line: 905, column: 11, scope: !2727)
!2730 = !DILocation(line: 906, column: 27, scope: !2724)
!2731 = !DILocation(line: 906, column: 19, scope: !2724)
!2732 = !DILocation(line: 907, column: 69, scope: !2724)
!2733 = !DILocation(line: 909, column: 44, scope: !2724)
!2734 = !DILocation(line: 910, column: 44, scope: !2724)
!2735 = !DILocation(line: 907, column: 9, scope: !2724)
!2736 = !DILocation(line: 911, column: 7, scope: !2724)
!2737 = !DILocation(line: 913, column: 11, scope: !2666)
!2738 = !DILocation(line: 914, column: 5, scope: !2666)
!2739 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !539, file: !539, line: 925, type: !2740, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!132, !74, !138, !135}
!2742 = !{!2743, !2744, !2745}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !539, line: 925, type: !74)
!2744 = !DILocalVariable(name: "arg", arg: 2, scope: !2739, file: !539, line: 925, type: !138)
!2745 = !DILocalVariable(name: "argsize", arg: 3, scope: !2739, file: !539, line: 925, type: !135)
!2746 = !DILocation(line: 0, scope: !2739)
!2747 = !DILocation(line: 927, column: 10, scope: !2739)
!2748 = !DILocation(line: 927, column: 3, scope: !2739)
!2749 = distinct !DISubprogram(name: "quotearg", scope: !539, file: !539, line: 931, type: !1032, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2750)
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !539, line: 931, type: !138)
!2752 = !DILocation(line: 0, scope: !2749)
!2753 = !DILocation(line: 0, scope: !2643, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 933, column: 10, scope: !2749)
!2755 = !DILocation(line: 921, column: 10, scope: !2643, inlinedAt: !2754)
!2756 = !DILocation(line: 933, column: 3, scope: !2749)
!2757 = distinct !DISubprogram(name: "quotearg_mem", scope: !539, file: !539, line: 937, type: !2758, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!132, !138, !135}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "arg", arg: 1, scope: !2757, file: !539, line: 937, type: !138)
!2762 = !DILocalVariable(name: "argsize", arg: 2, scope: !2757, file: !539, line: 937, type: !135)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocation(line: 0, scope: !2739, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 939, column: 10, scope: !2757)
!2766 = !DILocation(line: 927, column: 10, scope: !2739, inlinedAt: !2765)
!2767 = !DILocation(line: 939, column: 3, scope: !2757)
!2768 = distinct !DISubprogram(name: "quotearg_n_style", scope: !539, file: !539, line: 943, type: !2769, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!132, !74, !562, !138}
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DILocalVariable(name: "n", arg: 1, scope: !2768, file: !539, line: 943, type: !74)
!2773 = !DILocalVariable(name: "s", arg: 2, scope: !2768, file: !539, line: 943, type: !562)
!2774 = !DILocalVariable(name: "arg", arg: 3, scope: !2768, file: !539, line: 943, type: !138)
!2775 = !DILocalVariable(name: "o", scope: !2768, file: !539, line: 945, type: !1857)
!2776 = distinct !DIAssignID()
!2777 = !DILocation(line: 0, scope: !2768)
!2778 = !DILocation(line: 945, column: 3, scope: !2768)
!2779 = !{!2780}
!2780 = distinct !{!2780, !2781, !"quoting_options_from_style: argument 0"}
!2781 = distinct !{!2781, !"quoting_options_from_style"}
!2782 = !DILocation(line: 945, column: 36, scope: !2768)
!2783 = !DILocalVariable(name: "style", arg: 1, scope: !2784, file: !539, line: 183, type: !562)
!2784 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !539, file: !539, line: 183, type: !2785, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!577, !562}
!2787 = !{!2783, !2788}
!2788 = !DILocalVariable(name: "o", scope: !2784, file: !539, line: 185, type: !577)
!2789 = !DILocation(line: 0, scope: !2784, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 945, column: 36, scope: !2768)
!2791 = !DILocation(line: 185, column: 26, scope: !2784, inlinedAt: !2790)
!2792 = distinct !DIAssignID()
!2793 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2790)
!2794 = distinct !DILexicalBlock(scope: !2784, file: !539, line: 186, column: 7)
!2795 = !DILocation(line: 186, column: 7, scope: !2784, inlinedAt: !2790)
!2796 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2790)
!2797 = !DILocation(line: 188, column: 11, scope: !2784, inlinedAt: !2790)
!2798 = distinct !DIAssignID()
!2799 = !DILocation(line: 946, column: 10, scope: !2768)
!2800 = !DILocation(line: 947, column: 1, scope: !2768)
!2801 = !DILocation(line: 946, column: 3, scope: !2768)
!2802 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !539, file: !539, line: 950, type: !2803, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!132, !74, !562, !138, !135}
!2805 = !{!2806, !2807, !2808, !2809, !2810}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !539, line: 950, type: !74)
!2807 = !DILocalVariable(name: "s", arg: 2, scope: !2802, file: !539, line: 950, type: !562)
!2808 = !DILocalVariable(name: "arg", arg: 3, scope: !2802, file: !539, line: 951, type: !138)
!2809 = !DILocalVariable(name: "argsize", arg: 4, scope: !2802, file: !539, line: 951, type: !135)
!2810 = !DILocalVariable(name: "o", scope: !2802, file: !539, line: 953, type: !1857)
!2811 = distinct !DIAssignID()
!2812 = !DILocation(line: 0, scope: !2802)
!2813 = !DILocation(line: 953, column: 3, scope: !2802)
!2814 = !{!2815}
!2815 = distinct !{!2815, !2816, !"quoting_options_from_style: argument 0"}
!2816 = distinct !{!2816, !"quoting_options_from_style"}
!2817 = !DILocation(line: 953, column: 36, scope: !2802)
!2818 = !DILocation(line: 0, scope: !2784, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 953, column: 36, scope: !2802)
!2820 = !DILocation(line: 185, column: 26, scope: !2784, inlinedAt: !2819)
!2821 = distinct !DIAssignID()
!2822 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2819)
!2823 = !DILocation(line: 186, column: 7, scope: !2784, inlinedAt: !2819)
!2824 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2819)
!2825 = !DILocation(line: 188, column: 11, scope: !2784, inlinedAt: !2819)
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 954, column: 10, scope: !2802)
!2828 = !DILocation(line: 955, column: 1, scope: !2802)
!2829 = !DILocation(line: 954, column: 3, scope: !2802)
!2830 = distinct !DISubprogram(name: "quotearg_style", scope: !539, file: !539, line: 958, type: !2831, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!132, !562, !138}
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "s", arg: 1, scope: !2830, file: !539, line: 958, type: !562)
!2835 = !DILocalVariable(name: "arg", arg: 2, scope: !2830, file: !539, line: 958, type: !138)
!2836 = distinct !DIAssignID()
!2837 = !DILocation(line: 0, scope: !2830)
!2838 = !DILocation(line: 0, scope: !2768, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 960, column: 10, scope: !2830)
!2840 = !DILocation(line: 945, column: 3, scope: !2768, inlinedAt: !2839)
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"quoting_options_from_style: argument 0"}
!2843 = distinct !{!2843, !"quoting_options_from_style"}
!2844 = !DILocation(line: 945, column: 36, scope: !2768, inlinedAt: !2839)
!2845 = !DILocation(line: 0, scope: !2784, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 945, column: 36, scope: !2768, inlinedAt: !2839)
!2847 = !DILocation(line: 185, column: 26, scope: !2784, inlinedAt: !2846)
!2848 = distinct !DIAssignID()
!2849 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2846)
!2850 = !DILocation(line: 186, column: 7, scope: !2784, inlinedAt: !2846)
!2851 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2846)
!2852 = !DILocation(line: 188, column: 11, scope: !2784, inlinedAt: !2846)
!2853 = distinct !DIAssignID()
!2854 = !DILocation(line: 946, column: 10, scope: !2768, inlinedAt: !2839)
!2855 = !DILocation(line: 947, column: 1, scope: !2768, inlinedAt: !2839)
!2856 = !DILocation(line: 960, column: 3, scope: !2830)
!2857 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !539, file: !539, line: 964, type: !2858, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!132, !562, !138, !135}
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "s", arg: 1, scope: !2857, file: !539, line: 964, type: !562)
!2862 = !DILocalVariable(name: "arg", arg: 2, scope: !2857, file: !539, line: 964, type: !138)
!2863 = !DILocalVariable(name: "argsize", arg: 3, scope: !2857, file: !539, line: 964, type: !135)
!2864 = distinct !DIAssignID()
!2865 = !DILocation(line: 0, scope: !2857)
!2866 = !DILocation(line: 0, scope: !2802, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 966, column: 10, scope: !2857)
!2868 = !DILocation(line: 953, column: 3, scope: !2802, inlinedAt: !2867)
!2869 = !{!2870}
!2870 = distinct !{!2870, !2871, !"quoting_options_from_style: argument 0"}
!2871 = distinct !{!2871, !"quoting_options_from_style"}
!2872 = !DILocation(line: 953, column: 36, scope: !2802, inlinedAt: !2867)
!2873 = !DILocation(line: 0, scope: !2784, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 953, column: 36, scope: !2802, inlinedAt: !2867)
!2875 = !DILocation(line: 185, column: 26, scope: !2784, inlinedAt: !2874)
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2874)
!2878 = !DILocation(line: 186, column: 7, scope: !2784, inlinedAt: !2874)
!2879 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2874)
!2880 = !DILocation(line: 188, column: 11, scope: !2784, inlinedAt: !2874)
!2881 = distinct !DIAssignID()
!2882 = !DILocation(line: 954, column: 10, scope: !2802, inlinedAt: !2867)
!2883 = !DILocation(line: 955, column: 1, scope: !2802, inlinedAt: !2867)
!2884 = !DILocation(line: 966, column: 3, scope: !2857)
!2885 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !539, file: !539, line: 970, type: !2886, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!132, !138, !135, !4}
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !539, line: 970, type: !138)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2885, file: !539, line: 970, type: !135)
!2891 = !DILocalVariable(name: "ch", arg: 3, scope: !2885, file: !539, line: 970, type: !4)
!2892 = !DILocalVariable(name: "options", scope: !2885, file: !539, line: 972, type: !577)
!2893 = distinct !DIAssignID()
!2894 = !DILocation(line: 0, scope: !2885)
!2895 = !DILocation(line: 972, column: 3, scope: !2885)
!2896 = !DILocation(line: 973, column: 13, scope: !2885)
!2897 = !{i64 0, i64 4, !906, i64 4, i64 4, !906, i64 8, i64 32, !915, i64 40, i64 8, !842, i64 48, i64 8, !842}
!2898 = distinct !DIAssignID()
!2899 = !DILocation(line: 0, scope: !1876, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 974, column: 3, scope: !2885)
!2901 = !DILocation(line: 147, column: 41, scope: !1876, inlinedAt: !2900)
!2902 = !DILocation(line: 147, column: 62, scope: !1876, inlinedAt: !2900)
!2903 = !DILocation(line: 147, column: 57, scope: !1876, inlinedAt: !2900)
!2904 = !DILocation(line: 148, column: 15, scope: !1876, inlinedAt: !2900)
!2905 = !DILocation(line: 149, column: 21, scope: !1876, inlinedAt: !2900)
!2906 = !DILocation(line: 149, column: 24, scope: !1876, inlinedAt: !2900)
!2907 = !DILocation(line: 150, column: 19, scope: !1876, inlinedAt: !2900)
!2908 = !DILocation(line: 150, column: 24, scope: !1876, inlinedAt: !2900)
!2909 = !DILocation(line: 150, column: 6, scope: !1876, inlinedAt: !2900)
!2910 = !DILocation(line: 975, column: 10, scope: !2885)
!2911 = !DILocation(line: 976, column: 1, scope: !2885)
!2912 = !DILocation(line: 975, column: 3, scope: !2885)
!2913 = distinct !DISubprogram(name: "quotearg_char", scope: !539, file: !539, line: 979, type: !2914, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!132, !138, !4}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !539, line: 979, type: !138)
!2918 = !DILocalVariable(name: "ch", arg: 2, scope: !2913, file: !539, line: 979, type: !4)
!2919 = distinct !DIAssignID()
!2920 = !DILocation(line: 0, scope: !2913)
!2921 = !DILocation(line: 0, scope: !2885, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 981, column: 10, scope: !2913)
!2923 = !DILocation(line: 972, column: 3, scope: !2885, inlinedAt: !2922)
!2924 = !DILocation(line: 973, column: 13, scope: !2885, inlinedAt: !2922)
!2925 = distinct !DIAssignID()
!2926 = !DILocation(line: 0, scope: !1876, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 974, column: 3, scope: !2885, inlinedAt: !2922)
!2928 = !DILocation(line: 147, column: 41, scope: !1876, inlinedAt: !2927)
!2929 = !DILocation(line: 147, column: 62, scope: !1876, inlinedAt: !2927)
!2930 = !DILocation(line: 147, column: 57, scope: !1876, inlinedAt: !2927)
!2931 = !DILocation(line: 148, column: 15, scope: !1876, inlinedAt: !2927)
!2932 = !DILocation(line: 149, column: 21, scope: !1876, inlinedAt: !2927)
!2933 = !DILocation(line: 149, column: 24, scope: !1876, inlinedAt: !2927)
!2934 = !DILocation(line: 150, column: 19, scope: !1876, inlinedAt: !2927)
!2935 = !DILocation(line: 150, column: 24, scope: !1876, inlinedAt: !2927)
!2936 = !DILocation(line: 150, column: 6, scope: !1876, inlinedAt: !2927)
!2937 = !DILocation(line: 975, column: 10, scope: !2885, inlinedAt: !2922)
!2938 = !DILocation(line: 976, column: 1, scope: !2885, inlinedAt: !2922)
!2939 = !DILocation(line: 981, column: 3, scope: !2913)
!2940 = distinct !DISubprogram(name: "quotearg_colon", scope: !539, file: !539, line: 985, type: !1032, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2941)
!2941 = !{!2942}
!2942 = !DILocalVariable(name: "arg", arg: 1, scope: !2940, file: !539, line: 985, type: !138)
!2943 = distinct !DIAssignID()
!2944 = !DILocation(line: 0, scope: !2940)
!2945 = !DILocation(line: 0, scope: !2913, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 987, column: 10, scope: !2940)
!2947 = !DILocation(line: 0, scope: !2885, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 981, column: 10, scope: !2913, inlinedAt: !2946)
!2949 = !DILocation(line: 972, column: 3, scope: !2885, inlinedAt: !2948)
!2950 = !DILocation(line: 973, column: 13, scope: !2885, inlinedAt: !2948)
!2951 = distinct !DIAssignID()
!2952 = !DILocation(line: 0, scope: !1876, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 974, column: 3, scope: !2885, inlinedAt: !2948)
!2954 = !DILocation(line: 147, column: 57, scope: !1876, inlinedAt: !2953)
!2955 = !DILocation(line: 149, column: 21, scope: !1876, inlinedAt: !2953)
!2956 = !DILocation(line: 150, column: 6, scope: !1876, inlinedAt: !2953)
!2957 = !DILocation(line: 975, column: 10, scope: !2885, inlinedAt: !2948)
!2958 = !DILocation(line: 976, column: 1, scope: !2885, inlinedAt: !2948)
!2959 = !DILocation(line: 987, column: 3, scope: !2940)
!2960 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !539, file: !539, line: 991, type: !2758, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2961)
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "arg", arg: 1, scope: !2960, file: !539, line: 991, type: !138)
!2963 = !DILocalVariable(name: "argsize", arg: 2, scope: !2960, file: !539, line: 991, type: !135)
!2964 = distinct !DIAssignID()
!2965 = !DILocation(line: 0, scope: !2960)
!2966 = !DILocation(line: 0, scope: !2885, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 993, column: 10, scope: !2960)
!2968 = !DILocation(line: 972, column: 3, scope: !2885, inlinedAt: !2967)
!2969 = !DILocation(line: 973, column: 13, scope: !2885, inlinedAt: !2967)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 0, scope: !1876, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 974, column: 3, scope: !2885, inlinedAt: !2967)
!2973 = !DILocation(line: 147, column: 57, scope: !1876, inlinedAt: !2972)
!2974 = !DILocation(line: 149, column: 21, scope: !1876, inlinedAt: !2972)
!2975 = !DILocation(line: 150, column: 6, scope: !1876, inlinedAt: !2972)
!2976 = !DILocation(line: 975, column: 10, scope: !2885, inlinedAt: !2967)
!2977 = !DILocation(line: 976, column: 1, scope: !2885, inlinedAt: !2967)
!2978 = !DILocation(line: 993, column: 3, scope: !2960)
!2979 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !539, file: !539, line: 997, type: !2769, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !539, line: 997, type: !74)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2979, file: !539, line: 997, type: !562)
!2983 = !DILocalVariable(name: "arg", arg: 3, scope: !2979, file: !539, line: 997, type: !138)
!2984 = !DILocalVariable(name: "options", scope: !2979, file: !539, line: 999, type: !577)
!2985 = distinct !DIAssignID()
!2986 = !DILocation(line: 0, scope: !2979)
!2987 = !DILocation(line: 185, column: 26, scope: !2784, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1000, column: 13, scope: !2979)
!2989 = !DILocation(line: 999, column: 3, scope: !2979)
!2990 = !DILocation(line: 0, scope: !2784, inlinedAt: !2988)
!2991 = !DILocation(line: 186, column: 13, scope: !2794, inlinedAt: !2988)
!2992 = !DILocation(line: 186, column: 7, scope: !2784, inlinedAt: !2988)
!2993 = !DILocation(line: 187, column: 5, scope: !2794, inlinedAt: !2988)
!2994 = !{!2995}
!2995 = distinct !{!2995, !2996, !"quoting_options_from_style: argument 0"}
!2996 = distinct !{!2996, !"quoting_options_from_style"}
!2997 = !DILocation(line: 1000, column: 13, scope: !2979)
!2998 = distinct !DIAssignID()
!2999 = distinct !DIAssignID()
!3000 = !DILocation(line: 0, scope: !1876, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1001, column: 3, scope: !2979)
!3002 = !DILocation(line: 147, column: 57, scope: !1876, inlinedAt: !3001)
!3003 = !DILocation(line: 149, column: 21, scope: !1876, inlinedAt: !3001)
!3004 = !DILocation(line: 150, column: 6, scope: !1876, inlinedAt: !3001)
!3005 = distinct !DIAssignID()
!3006 = !DILocation(line: 1002, column: 10, scope: !2979)
!3007 = !DILocation(line: 1003, column: 1, scope: !2979)
!3008 = !DILocation(line: 1002, column: 3, scope: !2979)
!3009 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !539, file: !539, line: 1006, type: !3010, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!132, !74, !138, !138, !138}
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !539, line: 1006, type: !74)
!3014 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3009, file: !539, line: 1006, type: !138)
!3015 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3009, file: !539, line: 1007, type: !138)
!3016 = !DILocalVariable(name: "arg", arg: 4, scope: !3009, file: !539, line: 1007, type: !138)
!3017 = distinct !DIAssignID()
!3018 = !DILocation(line: 0, scope: !3009)
!3019 = !DILocalVariable(name: "o", scope: !3020, file: !539, line: 1018, type: !577)
!3020 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !539, file: !539, line: 1014, type: !3021, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!132, !74, !138, !138, !138, !135}
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3019}
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3020, file: !539, line: 1014, type: !74)
!3025 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3020, file: !539, line: 1014, type: !138)
!3026 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3020, file: !539, line: 1015, type: !138)
!3027 = !DILocalVariable(name: "arg", arg: 4, scope: !3020, file: !539, line: 1016, type: !138)
!3028 = !DILocalVariable(name: "argsize", arg: 5, scope: !3020, file: !539, line: 1016, type: !135)
!3029 = !DILocation(line: 0, scope: !3020, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1009, column: 10, scope: !3009)
!3031 = !DILocation(line: 1018, column: 3, scope: !3020, inlinedAt: !3030)
!3032 = !DILocation(line: 1018, column: 30, scope: !3020, inlinedAt: !3030)
!3033 = distinct !DIAssignID()
!3034 = distinct !DIAssignID()
!3035 = !DILocation(line: 0, scope: !1916, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1019, column: 3, scope: !3020, inlinedAt: !3030)
!3037 = !DILocation(line: 174, column: 12, scope: !1916, inlinedAt: !3036)
!3038 = distinct !DIAssignID()
!3039 = !DILocation(line: 175, column: 8, scope: !1929, inlinedAt: !3036)
!3040 = !DILocation(line: 175, column: 19, scope: !1929, inlinedAt: !3036)
!3041 = !DILocation(line: 176, column: 5, scope: !1929, inlinedAt: !3036)
!3042 = !DILocation(line: 177, column: 6, scope: !1916, inlinedAt: !3036)
!3043 = !DILocation(line: 177, column: 17, scope: !1916, inlinedAt: !3036)
!3044 = distinct !DIAssignID()
!3045 = !DILocation(line: 178, column: 6, scope: !1916, inlinedAt: !3036)
!3046 = !DILocation(line: 178, column: 18, scope: !1916, inlinedAt: !3036)
!3047 = distinct !DIAssignID()
!3048 = !DILocation(line: 1020, column: 10, scope: !3020, inlinedAt: !3030)
!3049 = !DILocation(line: 1021, column: 1, scope: !3020, inlinedAt: !3030)
!3050 = !DILocation(line: 1009, column: 3, scope: !3009)
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 0, scope: !3020)
!3053 = !DILocation(line: 1018, column: 3, scope: !3020)
!3054 = !DILocation(line: 1018, column: 30, scope: !3020)
!3055 = distinct !DIAssignID()
!3056 = distinct !DIAssignID()
!3057 = !DILocation(line: 0, scope: !1916, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 1019, column: 3, scope: !3020)
!3059 = !DILocation(line: 174, column: 12, scope: !1916, inlinedAt: !3058)
!3060 = distinct !DIAssignID()
!3061 = !DILocation(line: 175, column: 8, scope: !1929, inlinedAt: !3058)
!3062 = !DILocation(line: 175, column: 19, scope: !1929, inlinedAt: !3058)
!3063 = !DILocation(line: 176, column: 5, scope: !1929, inlinedAt: !3058)
!3064 = !DILocation(line: 177, column: 6, scope: !1916, inlinedAt: !3058)
!3065 = !DILocation(line: 177, column: 17, scope: !1916, inlinedAt: !3058)
!3066 = distinct !DIAssignID()
!3067 = !DILocation(line: 178, column: 6, scope: !1916, inlinedAt: !3058)
!3068 = !DILocation(line: 178, column: 18, scope: !1916, inlinedAt: !3058)
!3069 = distinct !DIAssignID()
!3070 = !DILocation(line: 1020, column: 10, scope: !3020)
!3071 = !DILocation(line: 1021, column: 1, scope: !3020)
!3072 = !DILocation(line: 1020, column: 3, scope: !3020)
!3073 = distinct !DISubprogram(name: "quotearg_custom", scope: !539, file: !539, line: 1024, type: !3074, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!132, !138, !138, !138}
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3073, file: !539, line: 1024, type: !138)
!3078 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3073, file: !539, line: 1024, type: !138)
!3079 = !DILocalVariable(name: "arg", arg: 3, scope: !3073, file: !539, line: 1025, type: !138)
!3080 = distinct !DIAssignID()
!3081 = !DILocation(line: 0, scope: !3073)
!3082 = !DILocation(line: 0, scope: !3009, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 1027, column: 10, scope: !3073)
!3084 = !DILocation(line: 0, scope: !3020, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1009, column: 10, scope: !3009, inlinedAt: !3083)
!3086 = !DILocation(line: 1018, column: 3, scope: !3020, inlinedAt: !3085)
!3087 = !DILocation(line: 1018, column: 30, scope: !3020, inlinedAt: !3085)
!3088 = distinct !DIAssignID()
!3089 = distinct !DIAssignID()
!3090 = !DILocation(line: 0, scope: !1916, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1019, column: 3, scope: !3020, inlinedAt: !3085)
!3092 = !DILocation(line: 174, column: 12, scope: !1916, inlinedAt: !3091)
!3093 = distinct !DIAssignID()
!3094 = !DILocation(line: 175, column: 8, scope: !1929, inlinedAt: !3091)
!3095 = !DILocation(line: 175, column: 19, scope: !1929, inlinedAt: !3091)
!3096 = !DILocation(line: 176, column: 5, scope: !1929, inlinedAt: !3091)
!3097 = !DILocation(line: 177, column: 6, scope: !1916, inlinedAt: !3091)
!3098 = !DILocation(line: 177, column: 17, scope: !1916, inlinedAt: !3091)
!3099 = distinct !DIAssignID()
!3100 = !DILocation(line: 178, column: 6, scope: !1916, inlinedAt: !3091)
!3101 = !DILocation(line: 178, column: 18, scope: !1916, inlinedAt: !3091)
!3102 = distinct !DIAssignID()
!3103 = !DILocation(line: 1020, column: 10, scope: !3020, inlinedAt: !3085)
!3104 = !DILocation(line: 1021, column: 1, scope: !3020, inlinedAt: !3085)
!3105 = !DILocation(line: 1027, column: 3, scope: !3073)
!3106 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !539, file: !539, line: 1031, type: !3107, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!132, !138, !138, !138, !135}
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3106, file: !539, line: 1031, type: !138)
!3111 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3106, file: !539, line: 1031, type: !138)
!3112 = !DILocalVariable(name: "arg", arg: 3, scope: !3106, file: !539, line: 1032, type: !138)
!3113 = !DILocalVariable(name: "argsize", arg: 4, scope: !3106, file: !539, line: 1032, type: !135)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 0, scope: !3106)
!3116 = !DILocation(line: 0, scope: !3020, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1034, column: 10, scope: !3106)
!3118 = !DILocation(line: 1018, column: 3, scope: !3020, inlinedAt: !3117)
!3119 = !DILocation(line: 1018, column: 30, scope: !3020, inlinedAt: !3117)
!3120 = distinct !DIAssignID()
!3121 = distinct !DIAssignID()
!3122 = !DILocation(line: 0, scope: !1916, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1019, column: 3, scope: !3020, inlinedAt: !3117)
!3124 = !DILocation(line: 174, column: 12, scope: !1916, inlinedAt: !3123)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 175, column: 8, scope: !1929, inlinedAt: !3123)
!3127 = !DILocation(line: 175, column: 19, scope: !1929, inlinedAt: !3123)
!3128 = !DILocation(line: 176, column: 5, scope: !1929, inlinedAt: !3123)
!3129 = !DILocation(line: 177, column: 6, scope: !1916, inlinedAt: !3123)
!3130 = !DILocation(line: 177, column: 17, scope: !1916, inlinedAt: !3123)
!3131 = distinct !DIAssignID()
!3132 = !DILocation(line: 178, column: 6, scope: !1916, inlinedAt: !3123)
!3133 = !DILocation(line: 178, column: 18, scope: !1916, inlinedAt: !3123)
!3134 = distinct !DIAssignID()
!3135 = !DILocation(line: 1020, column: 10, scope: !3020, inlinedAt: !3117)
!3136 = !DILocation(line: 1021, column: 1, scope: !3020, inlinedAt: !3117)
!3137 = !DILocation(line: 1034, column: 3, scope: !3106)
!3138 = distinct !DISubprogram(name: "quote_n_mem", scope: !539, file: !539, line: 1049, type: !3139, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!138, !74, !138, !135}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !539, line: 1049, type: !74)
!3143 = !DILocalVariable(name: "arg", arg: 2, scope: !3138, file: !539, line: 1049, type: !138)
!3144 = !DILocalVariable(name: "argsize", arg: 3, scope: !3138, file: !539, line: 1049, type: !135)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 1051, column: 10, scope: !3138)
!3147 = !DILocation(line: 1051, column: 3, scope: !3138)
!3148 = distinct !DISubprogram(name: "quote_mem", scope: !539, file: !539, line: 1055, type: !3149, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!138, !138, !135}
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "arg", arg: 1, scope: !3148, file: !539, line: 1055, type: !138)
!3153 = !DILocalVariable(name: "argsize", arg: 2, scope: !3148, file: !539, line: 1055, type: !135)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 0, scope: !3138, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1057, column: 10, scope: !3148)
!3157 = !DILocation(line: 1051, column: 10, scope: !3138, inlinedAt: !3156)
!3158 = !DILocation(line: 1057, column: 3, scope: !3148)
!3159 = distinct !DISubprogram(name: "quote_n", scope: !539, file: !539, line: 1061, type: !3160, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!138, !74, !138}
!3162 = !{!3163, !3164}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !539, line: 1061, type: !74)
!3164 = !DILocalVariable(name: "arg", arg: 2, scope: !3159, file: !539, line: 1061, type: !138)
!3165 = !DILocation(line: 0, scope: !3159)
!3166 = !DILocation(line: 0, scope: !3138, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 1063, column: 10, scope: !3159)
!3168 = !DILocation(line: 1051, column: 10, scope: !3138, inlinedAt: !3167)
!3169 = !DILocation(line: 1063, column: 3, scope: !3159)
!3170 = distinct !DISubprogram(name: "quote", scope: !539, file: !539, line: 1067, type: !3171, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!138, !138}
!3173 = !{!3174}
!3174 = !DILocalVariable(name: "arg", arg: 1, scope: !3170, file: !539, line: 1067, type: !138)
!3175 = !DILocation(line: 0, scope: !3170)
!3176 = !DILocation(line: 0, scope: !3159, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1069, column: 10, scope: !3170)
!3178 = !DILocation(line: 0, scope: !3138, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 1063, column: 10, scope: !3159, inlinedAt: !3177)
!3180 = !DILocation(line: 1051, column: 10, scope: !3138, inlinedAt: !3179)
!3181 = !DILocation(line: 1069, column: 3, scope: !3170)
!3182 = distinct !DISubprogram(name: "version_etc_arn", scope: !640, file: !640, line: 61, type: !3183, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3220)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3185, !138, !138, !138, !3219, !135}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3187, file: !193, line: 51, baseType: !74, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3187, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3187, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3187, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3187, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3187, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3187, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3187, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3187, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3187, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3187, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3187, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3187, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3187, file: !193, line: 70, baseType: !3203, size: 64, offset: 832)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3187, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3187, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3187, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3187, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3187, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3187, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3187, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3187, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3187, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3187, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3187, file: !193, line: 93, baseType: !3203, size: 64, offset: 1344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3187, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3187, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3187, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3187, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226}
!3221 = !DILocalVariable(name: "stream", arg: 1, scope: !3182, file: !640, line: 61, type: !3185)
!3222 = !DILocalVariable(name: "command_name", arg: 2, scope: !3182, file: !640, line: 62, type: !138)
!3223 = !DILocalVariable(name: "package", arg: 3, scope: !3182, file: !640, line: 62, type: !138)
!3224 = !DILocalVariable(name: "version", arg: 4, scope: !3182, file: !640, line: 63, type: !138)
!3225 = !DILocalVariable(name: "authors", arg: 5, scope: !3182, file: !640, line: 64, type: !3219)
!3226 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3182, file: !640, line: 64, type: !135)
!3227 = !DILocation(line: 0, scope: !3182)
!3228 = !DILocation(line: 66, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3182, file: !640, line: 66, column: 7)
!3230 = !DILocation(line: 66, column: 7, scope: !3182)
!3231 = !DILocation(line: 67, column: 5, scope: !3229)
!3232 = !DILocation(line: 69, column: 5, scope: !3229)
!3233 = !DILocation(line: 83, column: 3, scope: !3182)
!3234 = !DILocation(line: 85, column: 3, scope: !3182)
!3235 = !DILocation(line: 88, column: 3, scope: !3182)
!3236 = !DILocation(line: 95, column: 3, scope: !3182)
!3237 = !DILocation(line: 97, column: 3, scope: !3182)
!3238 = !DILocation(line: 105, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3182, file: !640, line: 98, column: 5)
!3240 = !DILocation(line: 106, column: 7, scope: !3239)
!3241 = !DILocation(line: 109, column: 7, scope: !3239)
!3242 = !DILocation(line: 110, column: 7, scope: !3239)
!3243 = !DILocation(line: 113, column: 7, scope: !3239)
!3244 = !DILocation(line: 115, column: 7, scope: !3239)
!3245 = !DILocation(line: 120, column: 7, scope: !3239)
!3246 = !DILocation(line: 122, column: 7, scope: !3239)
!3247 = !DILocation(line: 127, column: 7, scope: !3239)
!3248 = !DILocation(line: 129, column: 7, scope: !3239)
!3249 = !DILocation(line: 134, column: 7, scope: !3239)
!3250 = !DILocation(line: 137, column: 7, scope: !3239)
!3251 = !DILocation(line: 142, column: 7, scope: !3239)
!3252 = !DILocation(line: 145, column: 7, scope: !3239)
!3253 = !DILocation(line: 150, column: 7, scope: !3239)
!3254 = !DILocation(line: 154, column: 7, scope: !3239)
!3255 = !DILocation(line: 159, column: 7, scope: !3239)
!3256 = !DILocation(line: 163, column: 7, scope: !3239)
!3257 = !DILocation(line: 170, column: 7, scope: !3239)
!3258 = !DILocation(line: 174, column: 7, scope: !3239)
!3259 = !DILocation(line: 176, column: 1, scope: !3182)
!3260 = distinct !DISubprogram(name: "version_etc_ar", scope: !640, file: !640, line: 183, type: !3261, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !3185, !138, !138, !138, !3219}
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269}
!3264 = !DILocalVariable(name: "stream", arg: 1, scope: !3260, file: !640, line: 183, type: !3185)
!3265 = !DILocalVariable(name: "command_name", arg: 2, scope: !3260, file: !640, line: 184, type: !138)
!3266 = !DILocalVariable(name: "package", arg: 3, scope: !3260, file: !640, line: 184, type: !138)
!3267 = !DILocalVariable(name: "version", arg: 4, scope: !3260, file: !640, line: 185, type: !138)
!3268 = !DILocalVariable(name: "authors", arg: 5, scope: !3260, file: !640, line: 185, type: !3219)
!3269 = !DILocalVariable(name: "n_authors", scope: !3260, file: !640, line: 187, type: !135)
!3270 = !DILocation(line: 0, scope: !3260)
!3271 = !DILocation(line: 189, column: 8, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3260, file: !640, line: 189, column: 3)
!3273 = !DILocation(line: 189, scope: !3272)
!3274 = !DILocation(line: 189, column: 23, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !640, line: 189, column: 3)
!3276 = !DILocation(line: 189, column: 3, scope: !3272)
!3277 = !DILocation(line: 189, column: 52, scope: !3275)
!3278 = distinct !{!3278, !3276, !3279, !953}
!3279 = !DILocation(line: 190, column: 5, scope: !3272)
!3280 = !DILocation(line: 191, column: 3, scope: !3260)
!3281 = !DILocation(line: 192, column: 1, scope: !3260)
!3282 = distinct !DISubprogram(name: "version_etc_va", scope: !640, file: !640, line: 199, type: !3283, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3292)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3185, !138, !138, !138, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3286, file: !640, line: 192, baseType: !69, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3286, file: !640, line: 192, baseType: !69, size: 32, offset: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3286, file: !640, line: 192, baseType: !133, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3286, file: !640, line: 192, baseType: !133, size: 64, offset: 128)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299}
!3293 = !DILocalVariable(name: "stream", arg: 1, scope: !3282, file: !640, line: 199, type: !3185)
!3294 = !DILocalVariable(name: "command_name", arg: 2, scope: !3282, file: !640, line: 200, type: !138)
!3295 = !DILocalVariable(name: "package", arg: 3, scope: !3282, file: !640, line: 200, type: !138)
!3296 = !DILocalVariable(name: "version", arg: 4, scope: !3282, file: !640, line: 201, type: !138)
!3297 = !DILocalVariable(name: "authors", arg: 5, scope: !3282, file: !640, line: 201, type: !3285)
!3298 = !DILocalVariable(name: "n_authors", scope: !3282, file: !640, line: 203, type: !135)
!3299 = !DILocalVariable(name: "authtab", scope: !3282, file: !640, line: 204, type: !3300)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !52)
!3301 = distinct !DIAssignID()
!3302 = !DILocation(line: 0, scope: !3282)
!3303 = !DILocation(line: 204, column: 3, scope: !3282)
!3304 = !DILocation(line: 208, column: 35, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !640, line: 206, column: 3)
!3306 = distinct !DILexicalBlock(scope: !3282, file: !640, line: 206, column: 3)
!3307 = !DILocation(line: 208, column: 33, scope: !3305)
!3308 = !DILocation(line: 208, column: 67, scope: !3305)
!3309 = !DILocation(line: 206, column: 3, scope: !3306)
!3310 = !DILocation(line: 208, column: 14, scope: !3305)
!3311 = !DILocation(line: 0, scope: !3306)
!3312 = !DILocation(line: 211, column: 3, scope: !3282)
!3313 = !DILocation(line: 213, column: 1, scope: !3282)
!3314 = distinct !DISubprogram(name: "version_etc", scope: !640, file: !640, line: 230, type: !3315, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3185, !138, !138, !138, null}
!3317 = !{!3318, !3319, !3320, !3321, !3322}
!3318 = !DILocalVariable(name: "stream", arg: 1, scope: !3314, file: !640, line: 230, type: !3185)
!3319 = !DILocalVariable(name: "command_name", arg: 2, scope: !3314, file: !640, line: 231, type: !138)
!3320 = !DILocalVariable(name: "package", arg: 3, scope: !3314, file: !640, line: 231, type: !138)
!3321 = !DILocalVariable(name: "version", arg: 4, scope: !3314, file: !640, line: 232, type: !138)
!3322 = !DILocalVariable(name: "authors", scope: !3314, file: !640, line: 234, type: !3323)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !901, line: 52, baseType: !3324)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1643, line: 12, baseType: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !640, baseType: !3326)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3286, size: 192, elements: !47)
!3327 = distinct !DIAssignID()
!3328 = !DILocation(line: 0, scope: !3314)
!3329 = !DILocation(line: 234, column: 3, scope: !3314)
!3330 = !DILocation(line: 235, column: 3, scope: !3314)
!3331 = !DILocation(line: 236, column: 3, scope: !3314)
!3332 = !DILocation(line: 237, column: 3, scope: !3314)
!3333 = !DILocation(line: 238, column: 1, scope: !3314)
!3334 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !640, file: !640, line: 241, type: !478, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762)
!3335 = !DILocation(line: 243, column: 3, scope: !3334)
!3336 = !DILocation(line: 248, column: 3, scope: !3334)
!3337 = !DILocation(line: 254, column: 3, scope: !3334)
!3338 = !DILocation(line: 259, column: 3, scope: !3334)
!3339 = !DILocation(line: 261, column: 1, scope: !3334)
!3340 = distinct !DISubprogram(name: "xnrealloc", scope: !3341, file: !3341, line: 147, type: !3342, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3344)
!3341 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!133, !133, !135, !135}
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "p", arg: 1, scope: !3340, file: !3341, line: 147, type: !133)
!3346 = !DILocalVariable(name: "n", arg: 2, scope: !3340, file: !3341, line: 147, type: !135)
!3347 = !DILocalVariable(name: "s", arg: 3, scope: !3340, file: !3341, line: 147, type: !135)
!3348 = !DILocation(line: 0, scope: !3340)
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !769, line: 83, type: !133)
!3350 = distinct !DISubprogram(name: "xreallocarray", scope: !769, file: !769, line: 83, type: !3342, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3351)
!3351 = !{!3349, !3352, !3353}
!3352 = !DILocalVariable(name: "n", arg: 2, scope: !3350, file: !769, line: 83, type: !135)
!3353 = !DILocalVariable(name: "s", arg: 3, scope: !3350, file: !769, line: 83, type: !135)
!3354 = !DILocation(line: 0, scope: !3350, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 149, column: 10, scope: !3340)
!3356 = !DILocation(line: 85, column: 25, scope: !3350, inlinedAt: !3355)
!3357 = !DILocalVariable(name: "p", arg: 1, scope: !3358, file: !769, line: 37, type: !133)
!3358 = distinct !DISubprogram(name: "check_nonnull", scope: !769, file: !769, line: 37, type: !3359, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!133, !133}
!3361 = !{!3357}
!3362 = !DILocation(line: 0, scope: !3358, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 85, column: 10, scope: !3350, inlinedAt: !3355)
!3364 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3363)
!3365 = distinct !DILexicalBlock(scope: !3358, file: !769, line: 39, column: 7)
!3366 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3363)
!3367 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3363)
!3368 = !DILocation(line: 149, column: 3, scope: !3340)
!3369 = !DILocation(line: 0, scope: !3350)
!3370 = !DILocation(line: 85, column: 25, scope: !3350)
!3371 = !DILocation(line: 0, scope: !3358, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 85, column: 10, scope: !3350)
!3373 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3372)
!3374 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3372)
!3375 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3372)
!3376 = !DILocation(line: 85, column: 3, scope: !3350)
!3377 = distinct !DISubprogram(name: "xmalloc", scope: !769, file: !769, line: 47, type: !3378, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!133, !135}
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "s", arg: 1, scope: !3377, file: !769, line: 47, type: !135)
!3382 = !DILocation(line: 0, scope: !3377)
!3383 = !DILocation(line: 49, column: 25, scope: !3377)
!3384 = !DILocation(line: 0, scope: !3358, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 49, column: 10, scope: !3377)
!3386 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3385)
!3389 = !DILocation(line: 49, column: 3, scope: !3377)
!3390 = !DISubprogram(name: "malloc", scope: !1030, file: !1030, line: 540, type: !3378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3391 = distinct !DISubprogram(name: "ximalloc", scope: !769, file: !769, line: 53, type: !3392, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!133, !788}
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "s", arg: 1, scope: !3391, file: !769, line: 53, type: !788)
!3396 = !DILocation(line: 0, scope: !3391)
!3397 = !DILocalVariable(name: "s", arg: 1, scope: !3398, file: !3399, line: 55, type: !788)
!3398 = distinct !DISubprogram(name: "imalloc", scope: !3399, file: !3399, line: 55, type: !3392, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3400)
!3399 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3400 = !{!3397}
!3401 = !DILocation(line: 0, scope: !3398, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 55, column: 25, scope: !3391)
!3403 = !DILocation(line: 57, column: 26, scope: !3398, inlinedAt: !3402)
!3404 = !DILocation(line: 0, scope: !3358, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 55, column: 10, scope: !3391)
!3406 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3405)
!3407 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3405)
!3408 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3405)
!3409 = !DILocation(line: 55, column: 3, scope: !3391)
!3410 = distinct !DISubprogram(name: "xcharalloc", scope: !769, file: !769, line: 59, type: !3411, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!132, !135}
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !769, line: 59, type: !135)
!3415 = !DILocation(line: 0, scope: !3410)
!3416 = !DILocation(line: 0, scope: !3377, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 61, column: 10, scope: !3410)
!3418 = !DILocation(line: 49, column: 25, scope: !3377, inlinedAt: !3417)
!3419 = !DILocation(line: 0, scope: !3358, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 49, column: 10, scope: !3377, inlinedAt: !3417)
!3421 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3420)
!3422 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3420)
!3423 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3420)
!3424 = !DILocation(line: 61, column: 3, scope: !3410)
!3425 = distinct !DISubprogram(name: "xrealloc", scope: !769, file: !769, line: 68, type: !3426, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!133, !133, !135}
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "p", arg: 1, scope: !3425, file: !769, line: 68, type: !133)
!3430 = !DILocalVariable(name: "s", arg: 2, scope: !3425, file: !769, line: 68, type: !135)
!3431 = !DILocation(line: 0, scope: !3425)
!3432 = !DILocalVariable(name: "ptr", arg: 1, scope: !3433, file: !3434, line: 2057, type: !133)
!3433 = distinct !DISubprogram(name: "rpl_realloc", scope: !3434, file: !3434, line: 2057, type: !3426, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3435)
!3434 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3435 = !{!3432, !3436}
!3436 = !DILocalVariable(name: "size", arg: 2, scope: !3433, file: !3434, line: 2057, type: !135)
!3437 = !DILocation(line: 0, scope: !3433, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 70, column: 25, scope: !3425)
!3439 = !DILocation(line: 2059, column: 24, scope: !3433, inlinedAt: !3438)
!3440 = !DILocation(line: 2059, column: 10, scope: !3433, inlinedAt: !3438)
!3441 = !DILocation(line: 0, scope: !3358, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 70, column: 10, scope: !3425)
!3443 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3442)
!3444 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3442)
!3445 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3442)
!3446 = !DILocation(line: 70, column: 3, scope: !3425)
!3447 = !DISubprogram(name: "realloc", scope: !1030, file: !1030, line: 551, type: !3426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3448 = distinct !DISubprogram(name: "xirealloc", scope: !769, file: !769, line: 74, type: !3449, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!133, !133, !788}
!3451 = !{!3452, !3453}
!3452 = !DILocalVariable(name: "p", arg: 1, scope: !3448, file: !769, line: 74, type: !133)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !769, line: 74, type: !788)
!3454 = !DILocation(line: 0, scope: !3448)
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3456, file: !3399, line: 66, type: !133)
!3456 = distinct !DISubprogram(name: "irealloc", scope: !3399, file: !3399, line: 66, type: !3449, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3457)
!3457 = !{!3455, !3458}
!3458 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !3399, line: 66, type: !788)
!3459 = !DILocation(line: 0, scope: !3456, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 76, column: 25, scope: !3448)
!3461 = !DILocation(line: 0, scope: !3433, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 68, column: 26, scope: !3456, inlinedAt: !3460)
!3463 = !DILocation(line: 2059, column: 24, scope: !3433, inlinedAt: !3462)
!3464 = !DILocation(line: 2059, column: 10, scope: !3433, inlinedAt: !3462)
!3465 = !DILocation(line: 0, scope: !3358, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 76, column: 10, scope: !3448)
!3467 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3466)
!3468 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3466)
!3469 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3466)
!3470 = !DILocation(line: 76, column: 3, scope: !3448)
!3471 = distinct !DISubprogram(name: "xireallocarray", scope: !769, file: !769, line: 89, type: !3472, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!133, !133, !788, !788}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "p", arg: 1, scope: !3471, file: !769, line: 89, type: !133)
!3476 = !DILocalVariable(name: "n", arg: 2, scope: !3471, file: !769, line: 89, type: !788)
!3477 = !DILocalVariable(name: "s", arg: 3, scope: !3471, file: !769, line: 89, type: !788)
!3478 = !DILocation(line: 0, scope: !3471)
!3479 = !DILocalVariable(name: "p", arg: 1, scope: !3480, file: !3399, line: 98, type: !133)
!3480 = distinct !DISubprogram(name: "ireallocarray", scope: !3399, file: !3399, line: 98, type: !3472, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3481)
!3481 = !{!3479, !3482, !3483}
!3482 = !DILocalVariable(name: "n", arg: 2, scope: !3480, file: !3399, line: 98, type: !788)
!3483 = !DILocalVariable(name: "s", arg: 3, scope: !3480, file: !3399, line: 98, type: !788)
!3484 = !DILocation(line: 0, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 91, column: 25, scope: !3471)
!3486 = !DILocation(line: 101, column: 13, scope: !3480, inlinedAt: !3485)
!3487 = !DILocation(line: 0, scope: !3358, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 91, column: 10, scope: !3471)
!3489 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3488)
!3490 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3488)
!3491 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3488)
!3492 = !DILocation(line: 91, column: 3, scope: !3471)
!3493 = distinct !DISubprogram(name: "xnmalloc", scope: !769, file: !769, line: 98, type: !3494, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!133, !135, !135}
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "n", arg: 1, scope: !3493, file: !769, line: 98, type: !135)
!3498 = !DILocalVariable(name: "s", arg: 2, scope: !3493, file: !769, line: 98, type: !135)
!3499 = !DILocation(line: 0, scope: !3493)
!3500 = !DILocation(line: 0, scope: !3350, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 100, column: 10, scope: !3493)
!3502 = !DILocation(line: 85, column: 25, scope: !3350, inlinedAt: !3501)
!3503 = !DILocation(line: 0, scope: !3358, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 85, column: 10, scope: !3350, inlinedAt: !3501)
!3505 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3504)
!3506 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3504)
!3507 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3504)
!3508 = !DILocation(line: 100, column: 3, scope: !3493)
!3509 = distinct !DISubprogram(name: "xinmalloc", scope: !769, file: !769, line: 104, type: !3510, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!133, !788, !788}
!3512 = !{!3513, !3514}
!3513 = !DILocalVariable(name: "n", arg: 1, scope: !3509, file: !769, line: 104, type: !788)
!3514 = !DILocalVariable(name: "s", arg: 2, scope: !3509, file: !769, line: 104, type: !788)
!3515 = !DILocation(line: 0, scope: !3509)
!3516 = !DILocation(line: 0, scope: !3471, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 106, column: 10, scope: !3509)
!3518 = !DILocation(line: 0, scope: !3480, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 91, column: 25, scope: !3471, inlinedAt: !3517)
!3520 = !DILocation(line: 101, column: 13, scope: !3480, inlinedAt: !3519)
!3521 = !DILocation(line: 0, scope: !3358, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 91, column: 10, scope: !3471, inlinedAt: !3517)
!3523 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3522)
!3524 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3522)
!3525 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3522)
!3526 = !DILocation(line: 106, column: 3, scope: !3509)
!3527 = distinct !DISubprogram(name: "x2realloc", scope: !769, file: !769, line: 116, type: !3528, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!133, !133, !775}
!3530 = !{!3531, !3532}
!3531 = !DILocalVariable(name: "p", arg: 1, scope: !3527, file: !769, line: 116, type: !133)
!3532 = !DILocalVariable(name: "ps", arg: 2, scope: !3527, file: !769, line: 116, type: !775)
!3533 = !DILocation(line: 0, scope: !3527)
!3534 = !DILocation(line: 0, scope: !772, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 118, column: 10, scope: !3527)
!3536 = !DILocation(line: 178, column: 14, scope: !772, inlinedAt: !3535)
!3537 = !DILocation(line: 180, column: 9, scope: !3538, inlinedAt: !3535)
!3538 = distinct !DILexicalBlock(scope: !772, file: !769, line: 180, column: 7)
!3539 = !DILocation(line: 180, column: 7, scope: !772, inlinedAt: !3535)
!3540 = !DILocation(line: 182, column: 13, scope: !3541, inlinedAt: !3535)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !769, line: 182, column: 11)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !769, line: 181, column: 5)
!3543 = !DILocation(line: 182, column: 11, scope: !3542, inlinedAt: !3535)
!3544 = !DILocation(line: 197, column: 11, scope: !3545, inlinedAt: !3535)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !769, line: 197, column: 11)
!3546 = distinct !DILexicalBlock(scope: !3538, file: !769, line: 195, column: 5)
!3547 = !DILocation(line: 197, column: 11, scope: !3546, inlinedAt: !3535)
!3548 = !DILocation(line: 198, column: 9, scope: !3545, inlinedAt: !3535)
!3549 = !DILocation(line: 0, scope: !3350, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 201, column: 7, scope: !772, inlinedAt: !3535)
!3551 = !DILocation(line: 85, column: 25, scope: !3350, inlinedAt: !3550)
!3552 = !DILocation(line: 0, scope: !3358, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 85, column: 10, scope: !3350, inlinedAt: !3550)
!3554 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3553)
!3555 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3553)
!3556 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3553)
!3557 = !DILocation(line: 202, column: 7, scope: !772, inlinedAt: !3535)
!3558 = !DILocation(line: 118, column: 3, scope: !3527)
!3559 = !DILocation(line: 0, scope: !772)
!3560 = !DILocation(line: 178, column: 14, scope: !772)
!3561 = !DILocation(line: 180, column: 9, scope: !3538)
!3562 = !DILocation(line: 180, column: 7, scope: !772)
!3563 = !DILocation(line: 182, column: 13, scope: !3541)
!3564 = !DILocation(line: 182, column: 11, scope: !3542)
!3565 = !DILocation(line: 190, column: 30, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3541, file: !769, line: 183, column: 9)
!3567 = !DILocation(line: 191, column: 16, scope: !3566)
!3568 = !DILocation(line: 191, column: 13, scope: !3566)
!3569 = !DILocation(line: 192, column: 9, scope: !3566)
!3570 = !DILocation(line: 197, column: 11, scope: !3545)
!3571 = !DILocation(line: 197, column: 11, scope: !3546)
!3572 = !DILocation(line: 198, column: 9, scope: !3545)
!3573 = !DILocation(line: 0, scope: !3350, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 201, column: 7, scope: !772)
!3575 = !DILocation(line: 85, column: 25, scope: !3350, inlinedAt: !3574)
!3576 = !DILocation(line: 0, scope: !3358, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 85, column: 10, scope: !3350, inlinedAt: !3574)
!3578 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3577)
!3579 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3577)
!3580 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3577)
!3581 = !DILocation(line: 202, column: 7, scope: !772)
!3582 = !DILocation(line: 203, column: 3, scope: !772)
!3583 = !DILocation(line: 0, scope: !784)
!3584 = !DILocation(line: 230, column: 14, scope: !784)
!3585 = !DILocation(line: 238, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !784, file: !769, line: 238, column: 7)
!3587 = !DILocation(line: 238, column: 7, scope: !784)
!3588 = !DILocation(line: 240, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !784, file: !769, line: 240, column: 7)
!3590 = !DILocation(line: 240, column: 18, scope: !3589)
!3591 = !DILocation(line: 253, column: 8, scope: !784)
!3592 = !DILocation(line: 256, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !784, file: !769, line: 256, column: 7)
!3594 = !DILocation(line: 256, column: 7, scope: !784)
!3595 = !DILocation(line: 258, column: 27, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !769, line: 257, column: 5)
!3597 = !DILocation(line: 259, column: 50, scope: !3596)
!3598 = !DILocation(line: 259, column: 32, scope: !3596)
!3599 = !DILocation(line: 260, column: 5, scope: !3596)
!3600 = !DILocation(line: 262, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !784, file: !769, line: 262, column: 7)
!3602 = !DILocation(line: 262, column: 7, scope: !784)
!3603 = !DILocation(line: 263, column: 9, scope: !3601)
!3604 = !DILocation(line: 263, column: 5, scope: !3601)
!3605 = !DILocation(line: 264, column: 9, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !784, file: !769, line: 264, column: 7)
!3607 = !DILocation(line: 264, column: 14, scope: !3606)
!3608 = !DILocation(line: 265, column: 7, scope: !3606)
!3609 = !DILocation(line: 265, column: 11, scope: !3606)
!3610 = !DILocation(line: 266, column: 11, scope: !3606)
!3611 = !DILocation(line: 267, column: 14, scope: !3606)
!3612 = !DILocation(line: 264, column: 7, scope: !784)
!3613 = !DILocation(line: 268, column: 5, scope: !3606)
!3614 = !DILocation(line: 0, scope: !3425, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 269, column: 8, scope: !784)
!3616 = !DILocation(line: 0, scope: !3433, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 70, column: 25, scope: !3425, inlinedAt: !3615)
!3618 = !DILocation(line: 2059, column: 24, scope: !3433, inlinedAt: !3617)
!3619 = !DILocation(line: 2059, column: 10, scope: !3433, inlinedAt: !3617)
!3620 = !DILocation(line: 0, scope: !3358, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 70, column: 10, scope: !3425, inlinedAt: !3615)
!3622 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3621)
!3623 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3621)
!3624 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3621)
!3625 = !DILocation(line: 270, column: 7, scope: !784)
!3626 = !DILocation(line: 271, column: 3, scope: !784)
!3627 = distinct !DISubprogram(name: "xzalloc", scope: !769, file: !769, line: 279, type: !3378, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3628)
!3628 = !{!3629}
!3629 = !DILocalVariable(name: "s", arg: 1, scope: !3627, file: !769, line: 279, type: !135)
!3630 = !DILocation(line: 0, scope: !3627)
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !769, line: 294, type: !135)
!3632 = distinct !DISubprogram(name: "xcalloc", scope: !769, file: !769, line: 294, type: !3494, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3633)
!3633 = !{!3631, !3634}
!3634 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !769, line: 294, type: !135)
!3635 = !DILocation(line: 0, scope: !3632, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 281, column: 10, scope: !3627)
!3637 = !DILocation(line: 296, column: 25, scope: !3632, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3358, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 296, column: 10, scope: !3632, inlinedAt: !3636)
!3640 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3639)
!3643 = !DILocation(line: 281, column: 3, scope: !3627)
!3644 = !DISubprogram(name: "calloc", scope: !1030, file: !1030, line: 543, type: !3494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3645 = !DILocation(line: 0, scope: !3632)
!3646 = !DILocation(line: 296, column: 25, scope: !3632)
!3647 = !DILocation(line: 0, scope: !3358, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 296, column: 10, scope: !3632)
!3649 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3648)
!3650 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3648)
!3651 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3648)
!3652 = !DILocation(line: 296, column: 3, scope: !3632)
!3653 = distinct !DISubprogram(name: "xizalloc", scope: !769, file: !769, line: 285, type: !3392, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3654)
!3654 = !{!3655}
!3655 = !DILocalVariable(name: "s", arg: 1, scope: !3653, file: !769, line: 285, type: !788)
!3656 = !DILocation(line: 0, scope: !3653)
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3658, file: !769, line: 300, type: !788)
!3658 = distinct !DISubprogram(name: "xicalloc", scope: !769, file: !769, line: 300, type: !3510, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3659)
!3659 = !{!3657, !3660}
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !769, line: 300, type: !788)
!3661 = !DILocation(line: 0, scope: !3658, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 287, column: 10, scope: !3653)
!3663 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !3399, line: 77, type: !788)
!3664 = distinct !DISubprogram(name: "icalloc", scope: !3399, file: !3399, line: 77, type: !3510, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3665)
!3665 = !{!3663, !3666}
!3666 = !DILocalVariable(name: "s", arg: 2, scope: !3664, file: !3399, line: 77, type: !788)
!3667 = !DILocation(line: 0, scope: !3664, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 302, column: 25, scope: !3658, inlinedAt: !3662)
!3669 = !DILocation(line: 91, column: 10, scope: !3664, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !3358, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 302, column: 10, scope: !3658, inlinedAt: !3662)
!3672 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3671)
!3673 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3671)
!3674 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3671)
!3675 = !DILocation(line: 287, column: 3, scope: !3653)
!3676 = !DILocation(line: 0, scope: !3658)
!3677 = !DILocation(line: 0, scope: !3664, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 302, column: 25, scope: !3658)
!3679 = !DILocation(line: 91, column: 10, scope: !3664, inlinedAt: !3678)
!3680 = !DILocation(line: 0, scope: !3358, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 302, column: 10, scope: !3658)
!3682 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3681)
!3683 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3681)
!3684 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3681)
!3685 = !DILocation(line: 302, column: 3, scope: !3658)
!3686 = distinct !DISubprogram(name: "xmemdup", scope: !769, file: !769, line: 310, type: !3687, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!133, !1054, !135}
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "p", arg: 1, scope: !3686, file: !769, line: 310, type: !1054)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !769, line: 310, type: !135)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocation(line: 0, scope: !3377, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 312, column: 18, scope: !3686)
!3695 = !DILocation(line: 49, column: 25, scope: !3377, inlinedAt: !3694)
!3696 = !DILocation(line: 0, scope: !3358, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 49, column: 10, scope: !3377, inlinedAt: !3694)
!3698 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3697)
!3699 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3697)
!3700 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3697)
!3701 = !DILocalVariable(name: "__dest", arg: 1, scope: !3702, file: !1262, line: 26, type: !3705)
!3702 = distinct !DISubprogram(name: "memcpy", scope: !1262, file: !1262, line: 26, type: !3703, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3706)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!133, !3705, !1053, !135}
!3705 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!3706 = !{!3701, !3707, !3708}
!3707 = !DILocalVariable(name: "__src", arg: 2, scope: !3702, file: !1262, line: 26, type: !1053)
!3708 = !DILocalVariable(name: "__len", arg: 3, scope: !3702, file: !1262, line: 26, type: !135)
!3709 = !DILocation(line: 0, scope: !3702, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 312, column: 10, scope: !3686)
!3711 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3710)
!3712 = !DILocation(line: 312, column: 3, scope: !3686)
!3713 = distinct !DISubprogram(name: "ximemdup", scope: !769, file: !769, line: 316, type: !3714, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!133, !1054, !788}
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "p", arg: 1, scope: !3713, file: !769, line: 316, type: !1054)
!3718 = !DILocalVariable(name: "s", arg: 2, scope: !3713, file: !769, line: 316, type: !788)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 0, scope: !3391, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 318, column: 18, scope: !3713)
!3722 = !DILocation(line: 0, scope: !3398, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 55, column: 25, scope: !3391, inlinedAt: !3721)
!3724 = !DILocation(line: 57, column: 26, scope: !3398, inlinedAt: !3723)
!3725 = !DILocation(line: 0, scope: !3358, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 55, column: 10, scope: !3391, inlinedAt: !3721)
!3727 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3726)
!3728 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3726)
!3729 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3726)
!3730 = !DILocation(line: 0, scope: !3702, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 318, column: 10, scope: !3713)
!3732 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3731)
!3733 = !DILocation(line: 318, column: 3, scope: !3713)
!3734 = distinct !DISubprogram(name: "ximemdup0", scope: !769, file: !769, line: 325, type: !3735, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!132, !1054, !788}
!3737 = !{!3738, !3739, !3740}
!3738 = !DILocalVariable(name: "p", arg: 1, scope: !3734, file: !769, line: 325, type: !1054)
!3739 = !DILocalVariable(name: "s", arg: 2, scope: !3734, file: !769, line: 325, type: !788)
!3740 = !DILocalVariable(name: "result", scope: !3734, file: !769, line: 327, type: !132)
!3741 = !DILocation(line: 0, scope: !3734)
!3742 = !DILocation(line: 327, column: 30, scope: !3734)
!3743 = !DILocation(line: 0, scope: !3391, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 327, column: 18, scope: !3734)
!3745 = !DILocation(line: 0, scope: !3398, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 55, column: 25, scope: !3391, inlinedAt: !3744)
!3747 = !DILocation(line: 57, column: 26, scope: !3398, inlinedAt: !3746)
!3748 = !DILocation(line: 0, scope: !3358, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 55, column: 10, scope: !3391, inlinedAt: !3744)
!3750 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3749)
!3751 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3749)
!3752 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3749)
!3753 = !DILocation(line: 328, column: 3, scope: !3734)
!3754 = !DILocation(line: 328, column: 13, scope: !3734)
!3755 = !DILocation(line: 0, scope: !3702, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 329, column: 10, scope: !3734)
!3757 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3756)
!3758 = !DILocation(line: 329, column: 3, scope: !3734)
!3759 = distinct !DISubprogram(name: "xstrdup", scope: !769, file: !769, line: 335, type: !1032, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3760)
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "string", arg: 1, scope: !3759, file: !769, line: 335, type: !138)
!3762 = !DILocation(line: 0, scope: !3759)
!3763 = !DILocation(line: 337, column: 27, scope: !3759)
!3764 = !DILocation(line: 337, column: 43, scope: !3759)
!3765 = !DILocation(line: 0, scope: !3686, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 337, column: 10, scope: !3759)
!3767 = !DILocation(line: 0, scope: !3377, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 312, column: 18, scope: !3686, inlinedAt: !3766)
!3769 = !DILocation(line: 49, column: 25, scope: !3377, inlinedAt: !3768)
!3770 = !DILocation(line: 0, scope: !3358, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 49, column: 10, scope: !3377, inlinedAt: !3768)
!3772 = !DILocation(line: 39, column: 8, scope: !3365, inlinedAt: !3771)
!3773 = !DILocation(line: 39, column: 7, scope: !3358, inlinedAt: !3771)
!3774 = !DILocation(line: 40, column: 5, scope: !3365, inlinedAt: !3771)
!3775 = !DILocation(line: 0, scope: !3702, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 312, column: 10, scope: !3686, inlinedAt: !3766)
!3777 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3776)
!3778 = !DILocation(line: 337, column: 3, scope: !3759)
!3779 = distinct !DISubprogram(name: "xalloc_die", scope: !731, file: !731, line: 32, type: !478, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3780)
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "__errstatus", scope: !3782, file: !731, line: 34, type: !3783)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !731, line: 34, column: 3)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3784 = !DILocation(line: 34, column: 3, scope: !3782)
!3785 = !DILocation(line: 0, scope: !3782)
!3786 = !DILocation(line: 40, column: 3, scope: !3779)
!3787 = distinct !DISubprogram(name: "close_stream", scope: !806, file: !806, line: 55, type: !3788, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3824)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!74, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3792)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3792, file: !193, line: 51, baseType: !74, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3792, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3792, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3792, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3792, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3792, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3792, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3792, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3792, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3792, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3792, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3792, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3792, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3792, file: !193, line: 70, baseType: !3808, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3792, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3792, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3792, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3792, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3792, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3792, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3792, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3792, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3792, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3792, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3792, file: !193, line: 93, baseType: !3808, size: 64, offset: 1344)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3792, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3792, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3792, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3792, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3824 = !{!3825, !3826, !3828, !3829}
!3825 = !DILocalVariable(name: "stream", arg: 1, scope: !3787, file: !806, line: 55, type: !3790)
!3826 = !DILocalVariable(name: "some_pending", scope: !3787, file: !806, line: 57, type: !3827)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3828 = !DILocalVariable(name: "prev_fail", scope: !3787, file: !806, line: 58, type: !3827)
!3829 = !DILocalVariable(name: "fclose_fail", scope: !3787, file: !806, line: 59, type: !3827)
!3830 = !DILocation(line: 0, scope: !3787)
!3831 = !DILocation(line: 57, column: 30, scope: !3787)
!3832 = !DILocalVariable(name: "__stream", arg: 1, scope: !3833, file: !1598, line: 135, type: !3790)
!3833 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1598, file: !1598, line: 135, type: !3788, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3834)
!3834 = !{!3832}
!3835 = !DILocation(line: 0, scope: !3833, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 58, column: 27, scope: !3787)
!3837 = !DILocation(line: 137, column: 10, scope: !3833, inlinedAt: !3836)
!3838 = !{!1607, !907, i64 0}
!3839 = !DILocation(line: 58, column: 43, scope: !3787)
!3840 = !DILocation(line: 59, column: 29, scope: !3787)
!3841 = !DILocation(line: 59, column: 45, scope: !3787)
!3842 = !DILocation(line: 69, column: 17, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3787, file: !806, line: 69, column: 7)
!3844 = !DILocation(line: 57, column: 50, scope: !3787)
!3845 = !DILocation(line: 69, column: 33, scope: !3843)
!3846 = !DILocation(line: 69, column: 53, scope: !3843)
!3847 = !DILocation(line: 69, column: 59, scope: !3843)
!3848 = !DILocation(line: 69, column: 7, scope: !3787)
!3849 = !DILocation(line: 71, column: 11, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3843, file: !806, line: 70, column: 5)
!3851 = !DILocation(line: 72, column: 9, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3850, file: !806, line: 71, column: 11)
!3853 = !DILocation(line: 72, column: 15, scope: !3852)
!3854 = !DILocation(line: 77, column: 1, scope: !3787)
!3855 = !DISubprogram(name: "__fpending", scope: !3856, file: !3856, line: 75, type: !3857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3856 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!135, !3790}
!3859 = distinct !DISubprogram(name: "rpl_fclose", scope: !808, file: !808, line: 58, type: !3860, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3896)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!74, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3864)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3864, file: !193, line: 51, baseType: !74, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3864, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3864, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3864, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3864, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3864, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3864, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3864, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3864, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3864, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3864, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3864, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3864, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3864, file: !193, line: 70, baseType: !3880, size: 64, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3864, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3864, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3864, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3864, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3864, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3864, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3864, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3864, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3864, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3864, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3864, file: !193, line: 93, baseType: !3880, size: 64, offset: 1344)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3864, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3864, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3864, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3864, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DILocalVariable(name: "fp", arg: 1, scope: !3859, file: !808, line: 58, type: !3862)
!3898 = !DILocalVariable(name: "saved_errno", scope: !3859, file: !808, line: 60, type: !74)
!3899 = !DILocalVariable(name: "fd", scope: !3859, file: !808, line: 63, type: !74)
!3900 = !DILocalVariable(name: "result", scope: !3859, file: !808, line: 74, type: !74)
!3901 = !DILocation(line: 0, scope: !3859)
!3902 = !DILocation(line: 63, column: 12, scope: !3859)
!3903 = !DILocation(line: 64, column: 10, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3859, file: !808, line: 64, column: 7)
!3905 = !DILocation(line: 64, column: 7, scope: !3859)
!3906 = !DILocation(line: 65, column: 12, scope: !3904)
!3907 = !DILocation(line: 65, column: 5, scope: !3904)
!3908 = !DILocation(line: 70, column: 9, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3859, file: !808, line: 70, column: 7)
!3910 = !DILocation(line: 70, column: 23, scope: !3909)
!3911 = !DILocation(line: 70, column: 33, scope: !3909)
!3912 = !DILocation(line: 70, column: 26, scope: !3909)
!3913 = !DILocation(line: 70, column: 59, scope: !3909)
!3914 = !DILocation(line: 71, column: 7, scope: !3909)
!3915 = !DILocation(line: 71, column: 10, scope: !3909)
!3916 = !DILocation(line: 70, column: 7, scope: !3859)
!3917 = !DILocation(line: 100, column: 12, scope: !3859)
!3918 = !DILocation(line: 105, column: 7, scope: !3859)
!3919 = !DILocation(line: 72, column: 19, scope: !3909)
!3920 = !DILocation(line: 105, column: 19, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3859, file: !808, line: 105, column: 7)
!3922 = !DILocation(line: 107, column: 13, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3921, file: !808, line: 106, column: 5)
!3924 = !DILocation(line: 109, column: 5, scope: !3923)
!3925 = !DILocation(line: 112, column: 1, scope: !3859)
!3926 = !DISubprogram(name: "fileno", scope: !901, file: !901, line: 809, type: !3860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3927 = !DISubprogram(name: "fclose", scope: !901, file: !901, line: 178, type: !3860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3928 = !DISubprogram(name: "__freading", scope: !3856, file: !3856, line: 51, type: !3860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3929 = !DISubprogram(name: "lseek", scope: !1429, file: !1429, line: 339, type: !3930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!215, !74, !215, !74}
!3932 = distinct !DISubprogram(name: "rpl_fflush", scope: !810, file: !810, line: 130, type: !3933, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3969)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!74, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3937, file: !193, line: 51, baseType: !74, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3937, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3937, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3937, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3937, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3937, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3937, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3937, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3937, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3937, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3937, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3937, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3937, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3937, file: !193, line: 70, baseType: !3953, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3937, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3937, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3937, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3937, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3937, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3937, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3937, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3937, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3937, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3937, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3937, file: !193, line: 93, baseType: !3953, size: 64, offset: 1344)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3937, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3937, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3937, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3937, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3969 = !{!3970}
!3970 = !DILocalVariable(name: "stream", arg: 1, scope: !3932, file: !810, line: 130, type: !3935)
!3971 = !DILocation(line: 0, scope: !3932)
!3972 = !DILocation(line: 151, column: 14, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3932, file: !810, line: 151, column: 7)
!3974 = !DILocation(line: 151, column: 22, scope: !3973)
!3975 = !DILocation(line: 151, column: 27, scope: !3973)
!3976 = !DILocation(line: 151, column: 7, scope: !3932)
!3977 = !DILocation(line: 152, column: 12, scope: !3973)
!3978 = !DILocation(line: 152, column: 5, scope: !3973)
!3979 = !DILocalVariable(name: "fp", arg: 1, scope: !3980, file: !810, line: 42, type: !3935)
!3980 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !810, file: !810, line: 42, type: !3981, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !3935}
!3983 = !{!3979}
!3984 = !DILocation(line: 0, scope: !3980, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 157, column: 3, scope: !3932)
!3986 = !DILocation(line: 44, column: 12, scope: !3987, inlinedAt: !3985)
!3987 = distinct !DILexicalBlock(scope: !3980, file: !810, line: 44, column: 7)
!3988 = !DILocation(line: 44, column: 19, scope: !3987, inlinedAt: !3985)
!3989 = !DILocation(line: 44, column: 7, scope: !3980, inlinedAt: !3985)
!3990 = !DILocation(line: 46, column: 5, scope: !3987, inlinedAt: !3985)
!3991 = !DILocation(line: 159, column: 10, scope: !3932)
!3992 = !DILocation(line: 159, column: 3, scope: !3932)
!3993 = !DILocation(line: 236, column: 1, scope: !3932)
!3994 = !DISubprogram(name: "fflush", scope: !901, file: !901, line: 230, type: !3933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3995 = distinct !DISubprogram(name: "rpl_fseeko", scope: !812, file: !812, line: 28, type: !3996, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4033)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!74, !3998, !4032, !74}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4000)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4000, file: !193, line: 51, baseType: !74, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4000, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4000, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4000, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4000, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4000, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4000, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4000, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4000, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4000, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4000, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4000, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4000, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4000, file: !193, line: 70, baseType: !4016, size: 64, offset: 832)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4000, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4000, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4000, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4000, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4000, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4000, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4000, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4000, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4000, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4000, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4000, file: !193, line: 93, baseType: !4016, size: 64, offset: 1344)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4000, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4000, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4000, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4000, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !901, line: 63, baseType: !215)
!4033 = !{!4034, !4035, !4036, !4037}
!4034 = !DILocalVariable(name: "fp", arg: 1, scope: !3995, file: !812, line: 28, type: !3998)
!4035 = !DILocalVariable(name: "offset", arg: 2, scope: !3995, file: !812, line: 28, type: !4032)
!4036 = !DILocalVariable(name: "whence", arg: 3, scope: !3995, file: !812, line: 28, type: !74)
!4037 = !DILocalVariable(name: "pos", scope: !4038, file: !812, line: 123, type: !4032)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !812, line: 119, column: 5)
!4039 = distinct !DILexicalBlock(scope: !3995, file: !812, line: 55, column: 7)
!4040 = !DILocation(line: 0, scope: !3995)
!4041 = !DILocation(line: 55, column: 12, scope: !4039)
!4042 = !{!1607, !843, i64 16}
!4043 = !DILocation(line: 55, column: 33, scope: !4039)
!4044 = !{!1607, !843, i64 8}
!4045 = !DILocation(line: 55, column: 25, scope: !4039)
!4046 = !DILocation(line: 56, column: 7, scope: !4039)
!4047 = !DILocation(line: 56, column: 15, scope: !4039)
!4048 = !DILocation(line: 56, column: 37, scope: !4039)
!4049 = !{!1607, !843, i64 32}
!4050 = !DILocation(line: 56, column: 29, scope: !4039)
!4051 = !DILocation(line: 57, column: 7, scope: !4039)
!4052 = !DILocation(line: 57, column: 15, scope: !4039)
!4053 = !{!1607, !843, i64 72}
!4054 = !DILocation(line: 57, column: 29, scope: !4039)
!4055 = !DILocation(line: 55, column: 7, scope: !3995)
!4056 = !DILocation(line: 123, column: 26, scope: !4038)
!4057 = !DILocation(line: 123, column: 19, scope: !4038)
!4058 = !DILocation(line: 0, scope: !4038)
!4059 = !DILocation(line: 124, column: 15, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4038, file: !812, line: 124, column: 11)
!4061 = !DILocation(line: 124, column: 11, scope: !4038)
!4062 = !DILocation(line: 135, column: 19, scope: !4038)
!4063 = !DILocation(line: 136, column: 12, scope: !4038)
!4064 = !DILocation(line: 136, column: 20, scope: !4038)
!4065 = !{!1607, !1608, i64 144}
!4066 = !DILocation(line: 167, column: 7, scope: !4038)
!4067 = !DILocation(line: 169, column: 10, scope: !3995)
!4068 = !DILocation(line: 169, column: 3, scope: !3995)
!4069 = !DILocation(line: 170, column: 1, scope: !3995)
!4070 = !DISubprogram(name: "fseeko", scope: !901, file: !901, line: 736, type: !4071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!74, !3998, !215, !74}
!4073 = distinct !DISubprogram(name: "hard_locale", scope: !738, file: !738, line: 28, type: !4074, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!176, !74}
!4076 = !{!4077, !4078}
!4077 = !DILocalVariable(name: "category", arg: 1, scope: !4073, file: !738, line: 28, type: !74)
!4078 = !DILocalVariable(name: "locale", scope: !4073, file: !738, line: 30, type: !4079)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4080)
!4080 = !{!4081}
!4081 = !DISubrange(count: 257)
!4082 = distinct !DIAssignID()
!4083 = !DILocation(line: 0, scope: !4073)
!4084 = !DILocation(line: 30, column: 3, scope: !4073)
!4085 = !DILocation(line: 32, column: 7, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4073, file: !738, line: 32, column: 7)
!4087 = !DILocation(line: 32, column: 7, scope: !4073)
!4088 = !DILocalVariable(name: "__s1", arg: 1, scope: !4089, file: !919, line: 1359, type: !138)
!4089 = distinct !DISubprogram(name: "streq", scope: !919, file: !919, line: 1359, type: !920, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4090)
!4090 = !{!4088, !4091}
!4091 = !DILocalVariable(name: "__s2", arg: 2, scope: !4089, file: !919, line: 1359, type: !138)
!4092 = !DILocation(line: 0, scope: !4089, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 35, column: 9, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4073, file: !738, line: 35, column: 7)
!4095 = !DILocation(line: 1361, column: 11, scope: !4089, inlinedAt: !4093)
!4096 = !DILocation(line: 35, column: 29, scope: !4094)
!4097 = !DILocation(line: 0, scope: !4089, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 35, column: 32, scope: !4094)
!4099 = !DILocation(line: 1361, column: 11, scope: !4089, inlinedAt: !4098)
!4100 = !DILocation(line: 1361, column: 10, scope: !4089, inlinedAt: !4098)
!4101 = !DILocation(line: 35, column: 7, scope: !4073)
!4102 = !DILocation(line: 46, column: 3, scope: !4073)
!4103 = !DILocation(line: 47, column: 1, scope: !4073)
!4104 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !741, file: !741, line: 100, type: !4105, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4108)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!135, !1837, !138, !135, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!4108 = !{!4109, !4110, !4111, !4112, !4113}
!4109 = !DILocalVariable(name: "pwc", arg: 1, scope: !4104, file: !741, line: 100, type: !1837)
!4110 = !DILocalVariable(name: "s", arg: 2, scope: !4104, file: !741, line: 100, type: !138)
!4111 = !DILocalVariable(name: "n", arg: 3, scope: !4104, file: !741, line: 100, type: !135)
!4112 = !DILocalVariable(name: "ps", arg: 4, scope: !4104, file: !741, line: 100, type: !4107)
!4113 = !DILocalVariable(name: "ret", scope: !4104, file: !741, line: 130, type: !135)
!4114 = !DILocation(line: 0, scope: !4104)
!4115 = !DILocation(line: 105, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4104, file: !741, line: 105, column: 7)
!4117 = !DILocation(line: 105, column: 7, scope: !4104)
!4118 = !DILocation(line: 117, column: 10, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4104, file: !741, line: 117, column: 7)
!4120 = !DILocation(line: 117, column: 7, scope: !4104)
!4121 = !DILocation(line: 130, column: 16, scope: !4104)
!4122 = !DILocation(line: 135, column: 11, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4104, file: !741, line: 135, column: 7)
!4124 = !DILocation(line: 135, column: 25, scope: !4123)
!4125 = !DILocation(line: 135, column: 30, scope: !4123)
!4126 = !DILocation(line: 135, column: 7, scope: !4104)
!4127 = !DILocalVariable(name: "ps", arg: 1, scope: !4128, file: !1253, line: 1135, type: !4107)
!4128 = distinct !DISubprogram(name: "mbszero", scope: !1253, file: !1253, line: 1135, type: !4129, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !4107}
!4131 = !{!4127}
!4132 = !DILocation(line: 0, scope: !4128, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 137, column: 5, scope: !4123)
!4134 = !DILocalVariable(name: "__dest", arg: 1, scope: !4135, file: !1262, line: 57, type: !133)
!4135 = distinct !DISubprogram(name: "memset", scope: !1262, file: !1262, line: 57, type: !1263, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4136)
!4136 = !{!4134, !4137, !4138}
!4137 = !DILocalVariable(name: "__ch", arg: 2, scope: !4135, file: !1262, line: 57, type: !74)
!4138 = !DILocalVariable(name: "__len", arg: 3, scope: !4135, file: !1262, line: 57, type: !135)
!4139 = !DILocation(line: 0, scope: !4135, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 1137, column: 3, scope: !4128, inlinedAt: !4133)
!4141 = !DILocation(line: 59, column: 10, scope: !4135, inlinedAt: !4140)
!4142 = !DILocation(line: 137, column: 5, scope: !4123)
!4143 = !DILocation(line: 138, column: 11, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4104, file: !741, line: 138, column: 7)
!4145 = !DILocation(line: 138, column: 7, scope: !4104)
!4146 = !DILocation(line: 139, column: 5, scope: !4144)
!4147 = !DILocation(line: 143, column: 26, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4104, file: !741, line: 143, column: 7)
!4149 = !DILocation(line: 143, column: 41, scope: !4148)
!4150 = !DILocation(line: 143, column: 7, scope: !4104)
!4151 = !DILocation(line: 145, column: 15, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !741, line: 145, column: 11)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !741, line: 144, column: 5)
!4154 = !DILocation(line: 145, column: 11, scope: !4153)
!4155 = !DILocation(line: 146, column: 32, scope: !4152)
!4156 = !DILocation(line: 146, column: 16, scope: !4152)
!4157 = !DILocation(line: 146, column: 14, scope: !4152)
!4158 = !DILocation(line: 146, column: 9, scope: !4152)
!4159 = !DILocation(line: 286, column: 1, scope: !4104)
!4160 = !DISubprogram(name: "mbsinit", scope: !1763, file: !1763, line: 293, type: !4161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!74, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!4165 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !818, file: !818, line: 27, type: !3342, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4166)
!4166 = !{!4167, !4168, !4169, !4170}
!4167 = !DILocalVariable(name: "ptr", arg: 1, scope: !4165, file: !818, line: 27, type: !133)
!4168 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4165, file: !818, line: 27, type: !135)
!4169 = !DILocalVariable(name: "size", arg: 3, scope: !4165, file: !818, line: 27, type: !135)
!4170 = !DILocalVariable(name: "nbytes", scope: !4165, file: !818, line: 29, type: !135)
!4171 = !DILocation(line: 0, scope: !4165)
!4172 = !DILocation(line: 30, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4165, file: !818, line: 30, column: 7)
!4174 = !DILocation(line: 30, column: 7, scope: !4165)
!4175 = !DILocation(line: 32, column: 7, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4173, file: !818, line: 31, column: 5)
!4177 = !DILocation(line: 32, column: 13, scope: !4176)
!4178 = !DILocation(line: 33, column: 7, scope: !4176)
!4179 = !DILocalVariable(name: "ptr", arg: 1, scope: !4180, file: !3434, line: 2057, type: !133)
!4180 = distinct !DISubprogram(name: "rpl_realloc", scope: !3434, file: !3434, line: 2057, type: !3426, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4181)
!4181 = !{!4179, !4182}
!4182 = !DILocalVariable(name: "size", arg: 2, scope: !4180, file: !3434, line: 2057, type: !135)
!4183 = !DILocation(line: 0, scope: !4180, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 37, column: 10, scope: !4165)
!4185 = !DILocation(line: 2059, column: 24, scope: !4180, inlinedAt: !4184)
!4186 = !DILocation(line: 2059, column: 10, scope: !4180, inlinedAt: !4184)
!4187 = !DILocation(line: 37, column: 3, scope: !4165)
!4188 = !DILocation(line: 38, column: 1, scope: !4165)
!4189 = distinct !DISubprogram(name: "setlocale_null_r", scope: !820, file: !820, line: 154, type: !4190, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!74, !74, !132, !135}
!4192 = !{!4193, !4194, !4195}
!4193 = !DILocalVariable(name: "category", arg: 1, scope: !4189, file: !820, line: 154, type: !74)
!4194 = !DILocalVariable(name: "buf", arg: 2, scope: !4189, file: !820, line: 154, type: !132)
!4195 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4189, file: !820, line: 154, type: !135)
!4196 = !DILocation(line: 0, scope: !4189)
!4197 = !DILocation(line: 159, column: 10, scope: !4189)
!4198 = !DILocation(line: 159, column: 3, scope: !4189)
!4199 = distinct !DISubprogram(name: "setlocale_null", scope: !820, file: !820, line: 186, type: !4200, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!138, !74}
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "category", arg: 1, scope: !4199, file: !820, line: 186, type: !74)
!4204 = !DILocation(line: 0, scope: !4199)
!4205 = !DILocation(line: 189, column: 10, scope: !4199)
!4206 = !DILocation(line: 189, column: 3, scope: !4199)
!4207 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !822, file: !822, line: 35, type: !4200, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4208)
!4208 = !{!4209, !4210}
!4209 = !DILocalVariable(name: "category", arg: 1, scope: !4207, file: !822, line: 35, type: !74)
!4210 = !DILocalVariable(name: "result", scope: !4207, file: !822, line: 37, type: !138)
!4211 = !DILocation(line: 0, scope: !4207)
!4212 = !DILocation(line: 37, column: 24, scope: !4207)
!4213 = !DILocation(line: 62, column: 3, scope: !4207)
!4214 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !822, file: !822, line: 66, type: !4190, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220}
!4216 = !DILocalVariable(name: "category", arg: 1, scope: !4214, file: !822, line: 66, type: !74)
!4217 = !DILocalVariable(name: "buf", arg: 2, scope: !4214, file: !822, line: 66, type: !132)
!4218 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4214, file: !822, line: 66, type: !135)
!4219 = !DILocalVariable(name: "result", scope: !4214, file: !822, line: 111, type: !138)
!4220 = !DILocalVariable(name: "length", scope: !4221, file: !822, line: 125, type: !135)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !822, line: 124, column: 5)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !822, line: 113, column: 7)
!4223 = !DILocation(line: 0, scope: !4214)
!4224 = !DILocation(line: 0, scope: !4207, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 111, column: 24, scope: !4214)
!4226 = !DILocation(line: 37, column: 24, scope: !4207, inlinedAt: !4225)
!4227 = !DILocation(line: 113, column: 14, scope: !4222)
!4228 = !DILocation(line: 113, column: 7, scope: !4214)
!4229 = !DILocation(line: 116, column: 19, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !822, line: 116, column: 11)
!4231 = distinct !DILexicalBlock(scope: !4222, file: !822, line: 114, column: 5)
!4232 = !DILocation(line: 116, column: 11, scope: !4231)
!4233 = !DILocation(line: 120, column: 16, scope: !4230)
!4234 = !DILocation(line: 120, column: 9, scope: !4230)
!4235 = !DILocation(line: 125, column: 23, scope: !4221)
!4236 = !DILocation(line: 0, scope: !4221)
!4237 = !DILocation(line: 126, column: 18, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4221, file: !822, line: 126, column: 11)
!4239 = !DILocation(line: 126, column: 11, scope: !4221)
!4240 = !DILocation(line: 128, column: 39, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !822, line: 127, column: 9)
!4242 = !DILocalVariable(name: "__dest", arg: 1, scope: !4243, file: !1262, line: 26, type: !3705)
!4243 = distinct !DISubprogram(name: "memcpy", scope: !1262, file: !1262, line: 26, type: !3703, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4244)
!4244 = !{!4242, !4245, !4246}
!4245 = !DILocalVariable(name: "__src", arg: 2, scope: !4243, file: !1262, line: 26, type: !1053)
!4246 = !DILocalVariable(name: "__len", arg: 3, scope: !4243, file: !1262, line: 26, type: !135)
!4247 = !DILocation(line: 0, scope: !4243, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 128, column: 11, scope: !4241)
!4249 = !DILocation(line: 29, column: 10, scope: !4243, inlinedAt: !4248)
!4250 = !DILocation(line: 129, column: 11, scope: !4241)
!4251 = !DILocation(line: 133, column: 23, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !822, line: 133, column: 15)
!4253 = distinct !DILexicalBlock(scope: !4238, file: !822, line: 132, column: 9)
!4254 = !DILocation(line: 133, column: 15, scope: !4253)
!4255 = !DILocation(line: 138, column: 44, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4252, file: !822, line: 134, column: 13)
!4257 = !DILocation(line: 0, scope: !4243, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 138, column: 15, scope: !4256)
!4259 = !DILocation(line: 29, column: 10, scope: !4243, inlinedAt: !4258)
!4260 = !DILocation(line: 139, column: 15, scope: !4256)
!4261 = !DILocation(line: 139, column: 32, scope: !4256)
!4262 = !DILocation(line: 140, column: 13, scope: !4256)
!4263 = !DILocation(line: 0, scope: !4222)
!4264 = !DILocation(line: 145, column: 1, scope: !4214)
