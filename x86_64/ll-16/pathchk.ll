; ModuleID = 'src/pathchk.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !467
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !437
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !457
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !459
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !461
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !463
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !465
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !469
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !471
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !476
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !481
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !499
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !505
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !507
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !509
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !538
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !541
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !543
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !545
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !547
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !549
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !551
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !553
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !555
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !557
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 16, !dbg !559
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !570
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !584
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !622
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !629
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !586
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !631
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !574
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !591
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !593
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !595
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !597
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !599
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !637
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !640
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !642
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !644
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !646
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !648
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !653
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !658
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !660
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !665
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !670
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !675
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !680
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !682
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !687
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !689
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !694
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !699
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !701
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !703
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !705
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !707
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !709
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !711
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !716
@exit_failure = dso_local global i32 1, align 4, !dbg !722
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !728
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !731
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !733
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !735
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !738
@internal_state.150 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !741

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !834
  %2 = icmp eq i32 %0, 0, !dbg !835
  br i1 %2, label %8, label %3, !dbg !837

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !838, !tbaa !840
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !838
  %6 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !840
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !838
  br label %34, !dbg !838

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !844
  %10 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !840
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !844
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !846
  %13 = load ptr, ptr @stdout, align 8, !dbg !846, !tbaa !840
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !846
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !847
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !847
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !848
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !848
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !849
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !849
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !850
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !850
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !851
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !852, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !864, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr poison, metadata !864, metadata !DIExpression()), !dbg !869
  tail call void @emit_bug_reporting_address() #36, !dbg !871
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !872
  call void @llvm.dbg.value(metadata ptr %20, metadata !867, metadata !DIExpression()), !dbg !869
  %21 = icmp eq ptr %20, null, !dbg !873
  br i1 %21, label %29, label %22, !dbg !875

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #37, !dbg !876
  %24 = icmp eq i32 %23, 0, !dbg !876
  br i1 %24, label %29, label %25, !dbg !877

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !878
  %27 = load ptr, ptr @stdout, align 8, !dbg !878, !tbaa !840
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !878
  br label %29, !dbg !880

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !864, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !869
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #36, !dbg !881
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #36, !dbg !881
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #36, !dbg !882
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #36, !dbg !882
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !883
  unreachable, !dbg !883
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !884 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !889 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !895 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !898 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !166 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !170, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !902
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !903, !tbaa !904
  %3 = icmp eq i32 %2, -1, !dbg !906
  br i1 %3, label %4, label %16, !dbg !907

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #36, !dbg !908
  call void @llvm.dbg.value(metadata ptr %5, metadata !172, metadata !DIExpression()), !dbg !909
  %6 = icmp eq ptr %5, null, !dbg !910
  br i1 %6, label %14, label %7, !dbg !911

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !912, !tbaa !913
  %9 = icmp eq i8 %8, 0, !dbg !912
  br i1 %9, label %14, label %10, !dbg !914

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !915, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !921, metadata !DIExpression()), !dbg !922
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #37, !dbg !924
  %12 = icmp eq i32 %11, 0, !dbg !925
  %13 = zext i1 %12 to i32, !dbg !914
  br label %14, !dbg !914

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !926, !tbaa !904
  br label %16, !dbg !927

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !928
  %18 = icmp eq i32 %17, 0, !dbg !928
  br i1 %18, label %22, label %19, !dbg !930

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !840
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !931
  br label %128, !dbg !933

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !902
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #37, !dbg !934
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !935
  call void @llvm.dbg.value(metadata ptr %24, metadata !177, metadata !DIExpression()), !dbg !902
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !936
  call void @llvm.dbg.value(metadata ptr %25, metadata !178, metadata !DIExpression()), !dbg !902
  %26 = icmp eq ptr %25, null, !dbg !937
  br i1 %26, label %58, label %27, !dbg !938

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !939
  br i1 %28, label %58, label %29, !dbg !940

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !179, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !941
  %30 = icmp ult ptr %24, %25, !dbg !942
  br i1 %30, label %31, label %52, !dbg !943

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !902
  %33 = load ptr, ptr %32, align 8, !tbaa !840
  br label %34, !dbg !943

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !179, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i64 %36, metadata !183, metadata !DIExpression()), !dbg !941
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !944
  call void @llvm.dbg.value(metadata ptr %37, metadata !179, metadata !DIExpression()), !dbg !941
  %38 = load i8, ptr %35, align 1, !dbg !944, !tbaa !913
  %39 = sext i8 %38 to i64, !dbg !944
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !944
  %41 = load i16, ptr %40, align 2, !dbg !944, !tbaa !945
  %42 = freeze i16 %41, !dbg !947
  %43 = lshr i16 %42, 13, !dbg !947
  %44 = and i16 %43, 1, !dbg !947
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !948
  call void @llvm.dbg.value(metadata i64 %46, metadata !183, metadata !DIExpression()), !dbg !941
  %47 = icmp ult ptr %37, %25, !dbg !942
  %48 = icmp ult i64 %46, 2, !dbg !949
  %49 = select i1 %47, i1 %48, i1 false, !dbg !949
  br i1 %49, label %34, label %50, !dbg !943, !llvm.loop !950

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !952
  br i1 %51, label %52, label %54, !dbg !954

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !954

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !954
  call void @llvm.dbg.value(metadata i8 %57, metadata !175, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr %56, metadata !178, metadata !DIExpression()), !dbg !902
  br label %58, !dbg !955

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !902
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !902
  call void @llvm.dbg.value(metadata i8 %60, metadata !175, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr %59, metadata !178, metadata !DIExpression()), !dbg !902
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.21) #37, !dbg !956
  call void @llvm.dbg.value(metadata i64 %61, metadata !184, metadata !DIExpression()), !dbg !902
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !957
  call void @llvm.dbg.value(metadata ptr %62, metadata !185, metadata !DIExpression()), !dbg !902
  br label %63, !dbg !958

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !902
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !902
  call void @llvm.dbg.value(metadata i8 %65, metadata !175, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr %64, metadata !185, metadata !DIExpression()), !dbg !902
  %66 = load i8, ptr %64, align 1, !dbg !959, !tbaa !913
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !960

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !961
  %69 = load i8, ptr %68, align 1, !dbg !964, !tbaa !913
  %70 = icmp eq i8 %69, 45, !dbg !965
  %71 = select i1 %70, i8 0, i8 %65, !dbg !966
  br label %72, !dbg !966

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !902
  call void @llvm.dbg.value(metadata i8 %73, metadata !175, metadata !DIExpression()), !dbg !902
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !967
  %75 = load ptr, ptr %74, align 8, !dbg !967, !tbaa !840
  %76 = sext i8 %66 to i64, !dbg !967
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !967
  %78 = load i16, ptr %77, align 2, !dbg !967, !tbaa !945
  %79 = and i16 %78, 8192, !dbg !967
  %80 = icmp eq i16 %79, 0, !dbg !967
  br i1 %80, label %96, label %81, !dbg !969

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !970
  br i1 %82, label %98, label %83, !dbg !973

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !974
  %85 = load i8, ptr %84, align 1, !dbg !974, !tbaa !913
  %86 = sext i8 %85 to i64, !dbg !974
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !974
  %88 = load i16, ptr %87, align 2, !dbg !974, !tbaa !945
  %89 = and i16 %88, 8192, !dbg !974
  %90 = icmp eq i16 %89, 0, !dbg !974
  br i1 %90, label %91, label %98, !dbg !975

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !976
  %93 = icmp ne i8 %92, 0, !dbg !976
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !978
  br i1 %95, label %96, label %98, !dbg !978

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !979
  call void @llvm.dbg.value(metadata ptr %97, metadata !185, metadata !DIExpression()), !dbg !902
  br label %63, !dbg !958, !llvm.loop !980

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !982
  %100 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !840
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !915, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !242, metadata !DIExpression()), !dbg !902
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #37, !dbg !1003
  %103 = icmp eq i32 %102, 0, !dbg !1003
  br i1 %103, label %107, label %104, !dbg !1005

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #37, !dbg !1006
  %106 = icmp eq i32 %105, 0, !dbg !1006
  br i1 %106, label %107, label %110, !dbg !1007

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1008
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !1008
  br label %113, !dbg !1010

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1011
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !1011
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !840
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %114), !dbg !1013
  %116 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !840
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !1014
  %118 = ptrtoint ptr %64 to i64, !dbg !1015
  %119 = sub i64 %118, %99, !dbg !1015
  %120 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !840
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1015
  %122 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !840
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %122), !dbg !1016
  %124 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !840
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %124), !dbg !1017
  %126 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !840
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1018
  br label %128, !dbg !1019

128:                                              ; preds = %113, %19
  ret void, !dbg !1019
}

; Function Attrs: nounwind
declare !dbg !1020 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1024 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1028 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1030 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1033 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1036 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1039 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1042 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1048 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1049 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1055 {
  %3 = alloca %struct.__mbstate_t, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1060, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata ptr %1, metadata !1061, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 1, metadata !1062, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 0, metadata !1063, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1066
  %5 = load ptr, ptr %1, align 8, !dbg !1067, !tbaa !840
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !1068
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #36, !dbg !1069
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #36, !dbg !1070
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #36, !dbg !1071
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1072
  br label %10, !dbg !1073

10:                                               ; preds = %18, %2
  %11 = phi i1 [ false, %18 ], [ true, %2 ]
  %12 = phi i8 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1066
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %13, metadata !1065, metadata !DIExpression()), !dbg !1066
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 128, label %18
    i32 112, label %16
    i32 80, label %14
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1073, !llvm.loop !1075

14:                                               ; preds = %10, %20
  call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 poison, metadata !1063, metadata !DIExpression()), !dbg !1066
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %15, metadata !1065, metadata !DIExpression()), !dbg !1066
  switch i32 %15, label %28 [
    i32 -1, label %29
    i32 128, label %18
    i32 112, label %16
    i32 80, label %20
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1073, !llvm.loop !1075

16:                                               ; preds = %14, %10
  %17 = phi i8 [ %12, %10 ], [ 1, %14 ], !dbg !1066
  call void @llvm.dbg.value(metadata i8 1, metadata !1063, metadata !DIExpression()), !dbg !1066
  br label %18, !dbg !1077

18:                                               ; preds = %10, %14, %16
  %19 = phi i8 [ %17, %16 ], [ 1, %14 ], [ 1, %10 ]
  br label %10, !dbg !1073, !llvm.loop !1075

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()), !dbg !1066
  br label %14, !dbg !1080, !llvm.loop !1081

21:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 0) #40, !dbg !1083
  unreachable, !dbg !1083

22:                                               ; preds = %10, %14
  %23 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !840
  %24 = load ptr, ptr @Version, align 8, !dbg !1084, !tbaa !840
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #36, !dbg !1084
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #36, !dbg !1084
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #36, !dbg !1084
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #36, !dbg !1084
  tail call void @exit(i32 noundef 0) #38, !dbg !1084
  unreachable, !dbg !1084

28:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 1) #40, !dbg !1085
  unreachable, !dbg !1085

29:                                               ; preds = %10, %14
  %30 = phi i8 [ 1, %14 ], [ %12, %10 ], !dbg !1066
  %31 = load i32, ptr @optind, align 4, !dbg !1086, !tbaa !904
  %32 = icmp eq i32 %31, %0, !dbg !1088
  br i1 %32, label %37, label %33, !dbg !1089

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 poison, metadata !1062, metadata !DIExpression()), !dbg !1066
  %34 = icmp slt i32 %31, %0, !dbg !1090
  br i1 %34, label %35, label %180, !dbg !1093

35:                                               ; preds = %33
  %36 = icmp ne i8 %30, 0
  br label %39, !dbg !1093

37:                                               ; preds = %29
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #36, !dbg !1094
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %38) #36, !dbg !1094
  tail call void @usage(i32 noundef 1) #40, !dbg !1096
  unreachable, !dbg !1096

39:                                               ; preds = %35, %171
  %40 = phi i32 [ %31, %35 ], [ %175, %171 ]
  %41 = phi i1 [ true, %35 ], [ %173, %171 ]
  %42 = sext i32 %40 to i64, !dbg !1097
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42, !dbg !1097
  %44 = load ptr, ptr %43, align 8, !dbg !1097, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %44, metadata !1098, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i1 %11, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1176
  call void @llvm.dbg.value(metadata i1 %36, metadata !1104, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1176
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #37, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %45, metadata !1105, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1176
  br i1 %36, label %46, label %63, !dbg !1179

46:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr %44, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %44, metadata !1186, metadata !DIExpression()), !dbg !1190
  %47 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 45) #37, !dbg !1191
  call void @llvm.dbg.value(metadata ptr %47, metadata !1186, metadata !DIExpression()), !dbg !1190
  %48 = icmp eq ptr %47, null, !dbg !1193
  br i1 %48, label %63, label %53, !dbg !1193

49:                                               ; preds = %56
  %50 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %50, metadata !1186, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %54, metadata !1186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1190
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 45) #37, !dbg !1191
  call void @llvm.dbg.value(metadata ptr %51, metadata !1186, metadata !DIExpression()), !dbg !1190
  %52 = icmp eq ptr %51, null, !dbg !1193
  br i1 %52, label %63, label %53, !dbg !1193, !llvm.loop !1195

53:                                               ; preds = %46, %49
  %54 = phi ptr [ %51, %49 ], [ %47, %46 ]
  %55 = icmp eq ptr %54, %44, !dbg !1197
  br i1 %55, label %60, label %56, !dbg !1199

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %54, i64 -1, !dbg !1200
  %58 = load i8, ptr %57, align 1, !dbg !1200, !tbaa !913
  %59 = icmp eq i8 %58, 47, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %54, metadata !1186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1190
  br i1 %59, label %60, label %49, !dbg !1202

60:                                               ; preds = %56, %53
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #36, !dbg !1203
  %62 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %44) #36, !dbg !1203
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %61, ptr noundef %62) #36, !dbg !1203
  br label %171, !dbg !1205

63:                                               ; preds = %49, %46, %39
  %64 = icmp eq i64 %45, 0
  br i1 %11, label %65, label %67, !dbg !1206

65:                                               ; preds = %63
  %66 = select i1 %36, i1 %64, i1 false, !dbg !1208
  br i1 %66, label %68, label %83, !dbg !1208

67:                                               ; preds = %63
  br i1 %64, label %68, label %70, !dbg !1209

68:                                               ; preds = %67, %65
  %69 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #36, !dbg !1210
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %69) #36, !dbg !1210
  br label %171, !dbg !1212

70:                                               ; preds = %67
  call void @llvm.dbg.value(metadata ptr %44, metadata !1213, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %45, metadata !1218, metadata !DIExpression()), !dbg !1235
  %71 = call i64 @strspn(ptr noundef %44, ptr noundef nonnull @.str.64) #37, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %71, metadata !1219, metadata !DIExpression()), !dbg !1235
  %72 = getelementptr inbounds i8, ptr %44, i64 %71, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %72, metadata !1220, metadata !DIExpression()), !dbg !1235
  %73 = load i8, ptr %72, align 1, !dbg !1241, !tbaa !913
  %74 = icmp eq i8 %73, 0, !dbg !1241
  br i1 %74, label %110, label %75, !dbg !1242

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #36, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1221, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %3, metadata !1245, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata ptr %3, metadata !1254, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 0, metadata !1260, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 8, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i64 0, ptr %3, align 8, !dbg !1264
  %76 = sub i64 %45, %71, !dbg !1265
  %77 = call i64 @rpl_mbrlen(ptr noundef nonnull %72, i64 noundef %76, ptr noundef nonnull %3) #36, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %77, metadata !1234, metadata !DIExpression()), !dbg !1267
  %78 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #36, !dbg !1268
  %79 = icmp ult i64 %77, 17, !dbg !1268
  %80 = select i1 %79, i64 %77, i64 1, !dbg !1268
  %81 = call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef nonnull %72, i64 noundef %80) #36, !dbg !1268
  %82 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %44) #36, !dbg !1268
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %78, ptr noundef %81, ptr noundef %82) #36, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #36, !dbg !1269
  br label %171, !dbg !1270

83:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #36, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1108, metadata !DIExpression()), !dbg !1272
  %84 = call i32 @lstat(ptr noundef %44, ptr noundef nonnull %4) #36, !dbg !1273
  %85 = icmp eq i32 %84, 0, !dbg !1275
  br i1 %85, label %86, label %87, !dbg !1276

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #36, !dbg !1277
  call void @llvm.dbg.value(metadata i1 %11, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1176
  br label %171, !dbg !1278

87:                                               ; preds = %83
  %88 = tail call ptr @__errno_location() #39, !dbg !1279
  %89 = load i32, ptr %88, align 4, !dbg !1279, !tbaa !904
  %90 = icmp ne i32 %89, 2, !dbg !1281
  %91 = select i1 %90, i1 true, i1 %64, !dbg !1282
  br i1 %91, label %92, label %94, !dbg !1282

92:                                               ; preds = %87
  %93 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %44) #36, !dbg !1283
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %89, ptr noundef nonnull @.str.57, ptr noundef %93) #36, !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #36, !dbg !1277
  br label %171

94:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #36, !dbg !1277
  %95 = icmp sgt i64 %45, 255
  br i1 %95, label %96, label %109, !dbg !1285

96:                                               ; preds = %94
  %97 = load i8, ptr %44, align 1, !dbg !1286, !tbaa !913
  %98 = icmp eq i8 %97, 47, !dbg !1287
  %99 = select i1 %98, ptr @.str.58, ptr @.str.59, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %99, metadata !1151, metadata !DIExpression()), !dbg !1288
  store i32 0, ptr %88, align 4, !dbg !1289, !tbaa !904
  %100 = call i64 @pathconf(ptr noundef nonnull %99, i32 noundef 4) #36, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %100, metadata !1148, metadata !DIExpression()), !dbg !1288
  %101 = icmp slt i64 %100, 0, !dbg !1291
  br i1 %101, label %102, label %107, !dbg !1293

102:                                              ; preds = %96
  %103 = load i32, ptr %88, align 4, !dbg !1294, !tbaa !904
  %104 = icmp eq i32 %103, 0, !dbg !1295
  br i1 %104, label %107, label %105, !dbg !1296

105:                                              ; preds = %102
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #36, !dbg !1297
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %103, ptr noundef %106, ptr noundef nonnull %99) #36, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %100, metadata !1145, metadata !DIExpression()), !dbg !1299
  br label %171

107:                                              ; preds = %102, %96
  call void @llvm.dbg.value(metadata i64 %100, metadata !1145, metadata !DIExpression()), !dbg !1299
  %108 = icmp sgt i64 %100, %45, !dbg !1300
  br i1 %108, label %109, label %112, !dbg !1302

109:                                              ; preds = %94, %107
  br label %117, !dbg !1303

110:                                              ; preds = %70
  call void @llvm.dbg.value(metadata i64 256, metadata !1145, metadata !DIExpression()), !dbg !1299
  %111 = icmp slt i64 %45, 256, !dbg !1300
  br i1 %111, label %132, label %112, !dbg !1302

112:                                              ; preds = %110, %107
  %113 = phi i64 [ 256, %110 ], [ %100, %107 ]
  %114 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #36, !dbg !1310
  %115 = add nsw i64 %113, -1, !dbg !1310
  %116 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %44) #36, !dbg !1310
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %114, i64 noundef %115, i64 noundef %45, ptr noundef %116) #36, !dbg !1310
  br label %171, !dbg !1312

117:                                              ; preds = %121, %109
  %118 = phi ptr [ %44, %109 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata ptr %118, metadata !1308, metadata !DIExpression()), !dbg !1313
  %119 = load i8, ptr %118, align 1, !dbg !1314, !tbaa !913
  %120 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %120, metadata !1308, metadata !DIExpression()), !dbg !1313
  switch i8 %119, label %123 [
    i8 47, label %121
    i8 0, label %171
  ], !dbg !1303

121:                                              ; preds = %117, %129
  %122 = phi ptr [ %120, %117 ], [ %130, %129 ]
  br label %117, !dbg !1313, !llvm.loop !1316

123:                                              ; preds = %117, %127
  %124 = phi i64 [ %128, %127 ], [ 1, %117 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %124, metadata !1326, metadata !DIExpression()), !dbg !1328
  %125 = getelementptr inbounds i8, ptr %118, i64 %124, !dbg !1329
  %126 = load i8, ptr %125, align 1, !dbg !1329, !tbaa !913
  switch i8 %126, label %127 [
    i8 47, label %129
    i8 0, label %129
  ], !dbg !1331

127:                                              ; preds = %123
  %128 = add i64 %124, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %128, metadata !1326, metadata !DIExpression()), !dbg !1328
  br label %123, !dbg !1333, !llvm.loop !1334

129:                                              ; preds = %123, %123
  %130 = getelementptr inbounds i8, ptr %118, i64 %124, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %124, metadata !1156, metadata !DIExpression()), !dbg !1337
  %131 = icmp ult i64 %124, 15, !dbg !1338
  call void @llvm.dbg.value(metadata i8 poison, metadata !1106, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata ptr poison, metadata !1152, metadata !DIExpression()), !dbg !1340
  br i1 %131, label %121, label %132

132:                                              ; preds = %129, %110
  %133 = phi i64 [ 14, %110 ], [ 0, %129 ]
  br label %134, !dbg !1341

134:                                              ; preds = %132, %165
  %135 = phi i64 [ %157, %165 ], [ 14, %132 ], !dbg !1342
  %136 = phi i64 [ %158, %165 ], [ %133, %132 ], !dbg !1343
  %137 = phi ptr [ %166, %165 ], [ %44, %132 ], !dbg !1344
  call void @llvm.dbg.value(metadata ptr %137, metadata !1163, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %136, metadata !1162, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %135, metadata !1159, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %137, metadata !1308, metadata !DIExpression()), !dbg !1346
  br label %138, !dbg !1348

138:                                              ; preds = %138, %134
  %139 = phi ptr [ %137, %134 ], [ %141, %138 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !1308, metadata !DIExpression()), !dbg !1346
  %140 = load i8, ptr %139, align 1, !dbg !1349, !tbaa !913
  %141 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %141, metadata !1308, metadata !DIExpression()), !dbg !1346
  switch i8 %140, label %142 [
    i8 47, label %138
    i8 0, label %171
  ], !dbg !1348

142:                                              ; preds = %138
  %143 = icmp eq i64 %136, 0, !dbg !1351
  br i1 %143, label %144, label %156, !dbg !1352

144:                                              ; preds = %142
  %145 = icmp eq ptr %139, %44, !dbg !1353
  %146 = select i1 %145, ptr @.str.59, ptr %44, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %146, metadata !1171, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %140, metadata !1172, metadata !DIExpression()), !dbg !1355
  %147 = tail call ptr @__errno_location() #39, !dbg !1356
  store i32 0, ptr %147, align 4, !dbg !1357, !tbaa !904
  store i8 0, ptr %139, align 1, !dbg !1358, !tbaa !913
  %148 = call i64 @pathconf(ptr noundef %146, i32 noundef 3) #36, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %148, metadata !1168, metadata !DIExpression()), !dbg !1355
  store i8 %140, ptr %139, align 1, !dbg !1360, !tbaa !913
  %149 = icmp sgt i64 %148, -1, !dbg !1361
  br i1 %149, label %156, label %150, !dbg !1363

150:                                              ; preds = %144
  %151 = load i32, ptr %147, align 4, !dbg !1364, !tbaa !904
  switch i32 %151, label %153 [
    i32 0, label %156
    i32 2, label %152
  ], !dbg !1365

152:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i64 %135, metadata !1162, metadata !DIExpression()), !dbg !1342
  br label %156, !dbg !1366

153:                                              ; preds = %150
  store i8 0, ptr %139, align 1, !dbg !1368, !tbaa !913
  %154 = load i32, ptr %147, align 4, !dbg !1369, !tbaa !904
  %155 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %146) #36, !dbg !1369
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %154, ptr noundef nonnull @.str.57, ptr noundef %155) #36, !dbg !1369
  store i8 %140, ptr %139, align 1, !dbg !1370, !tbaa !913
  call void @llvm.dbg.value(metadata i64 0, metadata !1162, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %135, metadata !1159, metadata !DIExpression()), !dbg !1342
  br label %171

156:                                              ; preds = %152, %150, %144, %142
  %157 = phi i64 [ %136, %142 ], [ 9223372036854775807, %150 ], [ %148, %144 ], [ %135, %152 ], !dbg !1371
  %158 = phi i64 [ %136, %142 ], [ 0, %150 ], [ 0, %144 ], [ %135, %152 ], !dbg !1343
  call void @llvm.dbg.value(metadata i64 %158, metadata !1162, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %157, metadata !1159, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %139, metadata !1325, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 1, metadata !1326, metadata !DIExpression()), !dbg !1372
  br label %159, !dbg !1374

159:                                              ; preds = %163, %156
  %160 = phi i64 [ 1, %156 ], [ %164, %163 ], !dbg !1375
  call void @llvm.dbg.value(metadata i64 %160, metadata !1326, metadata !DIExpression()), !dbg !1372
  %161 = getelementptr inbounds i8, ptr %139, i64 %160, !dbg !1376
  %162 = load i8, ptr %161, align 1, !dbg !1376, !tbaa !913
  switch i8 %162, label %163 [
    i8 47, label %165
    i8 0, label %165
  ], !dbg !1377

163:                                              ; preds = %159
  %164 = add i64 %160, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %164, metadata !1326, metadata !DIExpression()), !dbg !1372
  br label %159, !dbg !1379, !llvm.loop !1380

165:                                              ; preds = %159, %159
  %166 = getelementptr inbounds i8, ptr %139, i64 %160, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %160, metadata !1165, metadata !DIExpression()), !dbg !1383
  %167 = icmp slt i64 %157, %160, !dbg !1384
  br i1 %167, label %168, label %134, !dbg !1385, !llvm.loop !1386

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i8 %162, metadata !1173, metadata !DIExpression()), !dbg !1388
  store i8 0, ptr %166, align 1, !dbg !1389, !tbaa !913
  %169 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #36, !dbg !1390
  %170 = call ptr @quote(ptr noundef nonnull %139) #36, !dbg !1390
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %169, i64 noundef %157, i64 noundef %160, ptr noundef %170) #36, !dbg !1390
  store i8 %162, ptr %166, align 1, !dbg !1391, !tbaa !913
  br label %171

171:                                              ; preds = %117, %138, %60, %68, %75, %86, %92, %105, %112, %153, %168
  %172 = phi i1 [ false, %68 ], [ false, %92 ], [ false, %60 ], [ false, %75 ], [ false, %105 ], [ false, %112 ], [ false, %168 ], [ false, %153 ], [ true, %86 ], [ true, %138 ], [ true, %117 ]
  %173 = and i1 %41, %172, !dbg !1392
  call void @llvm.dbg.value(metadata i1 %173, metadata !1062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1066
  %174 = load i32, ptr @optind, align 4, !dbg !1393, !tbaa !904
  %175 = add nsw i32 %174, 1, !dbg !1393
  store i32 %175, ptr @optind, align 4, !dbg !1393, !tbaa !904
  call void @llvm.dbg.value(metadata i8 poison, metadata !1062, metadata !DIExpression()), !dbg !1066
  %176 = icmp slt i32 %175, %0, !dbg !1090
  br i1 %176, label %39, label %177, !dbg !1093, !llvm.loop !1394

177:                                              ; preds = %171
  %178 = xor i1 %173, true, !dbg !1396
  %179 = zext i1 %178 to i32, !dbg !1396
  br label %180, !dbg !1396

180:                                              ; preds = %177, %33
  %181 = phi i32 [ 0, %33 ], [ %179, %177 ]
  ret i32 %181, !dbg !1397
}

; Function Attrs: nounwind
declare !dbg !1398 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1401 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1402 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1405 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1411 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1414 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1420 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1424 i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1428 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1430, metadata !DIExpression()), !dbg !1431
  store ptr %0, ptr @file_name, align 8, !dbg !1432, !tbaa !840
  ret void, !dbg !1433
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1434 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1440, !tbaa !1441
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1444 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1449, !tbaa !840
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1450
  %3 = icmp eq i32 %2, 0, !dbg !1451
  br i1 %3, label %22, label %4, !dbg !1452

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1453, !tbaa !1441, !range !1454, !noundef !888
  %6 = icmp eq i8 %5, 0, !dbg !1453
  br i1 %6, label %11, label %7, !dbg !1455

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1456
  %9 = load i32, ptr %8, align 4, !dbg !1456, !tbaa !904
  %10 = icmp eq i32 %9, 32, !dbg !1457
  br i1 %10, label %22, label %11, !dbg !1458

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #36, !dbg !1459
  call void @llvm.dbg.value(metadata ptr %12, metadata !1446, metadata !DIExpression()), !dbg !1460
  %13 = load ptr, ptr @file_name, align 8, !dbg !1461, !tbaa !840
  %14 = icmp eq ptr %13, null, !dbg !1461
  %15 = tail call ptr @__errno_location() #39, !dbg !1463
  %16 = load i32, ptr %15, align 4, !dbg !1463, !tbaa !904
  br i1 %14, label %19, label %17, !dbg !1464

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1465
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #36, !dbg !1465
  br label %20, !dbg !1465

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #36, !dbg !1466
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1467, !tbaa !904
  tail call void @_exit(i32 noundef %21) #38, !dbg !1468
  unreachable, !dbg !1468

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1469, !tbaa !840
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1471
  %25 = icmp eq i32 %24, 0, !dbg !1472
  br i1 %25, label %28, label %26, !dbg !1473

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1474, !tbaa !904
  tail call void @_exit(i32 noundef %27) #38, !dbg !1475
  unreachable, !dbg !1475

28:                                               ; preds = %22
  ret void, !dbg !1476
}

; Function Attrs: noreturn
declare !dbg !1477 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1482, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata ptr %2, metadata !1484, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata ptr %3, metadata !1485, metadata !DIExpression()), !dbg !1486
  tail call fastcc void @flush_stdout(), !dbg !1487
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1488, !tbaa !840
  %6 = icmp eq ptr %5, null, !dbg !1488
  br i1 %6, label %8, label %7, !dbg !1490

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1491
  br label %12, !dbg !1491

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1492, !tbaa !840
  %10 = tail call ptr @getprogname() #37, !dbg !1492
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #36, !dbg !1492
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1496 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i32 1, metadata !1500, metadata !DIExpression()), !dbg !1505
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1508
  %2 = icmp slt i32 %1, 0, !dbg !1509
  br i1 %2, label %6, label %3, !dbg !1510

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1511, !tbaa !840
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1511
  br label %6, !dbg !1511

6:                                                ; preds = %3, %0
  ret void, !dbg !1512
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1513 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1515, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %2, metadata !1517, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %3, metadata !1518, metadata !DIExpression()), !dbg !1519
  %6 = load ptr, ptr @stderr, align 8, !dbg !1520, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %6, metadata !1521, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %2, metadata !1561, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %3, metadata !1562, metadata !DIExpression()), !dbg !1563
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1565
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1566, !tbaa !904
  %9 = add i32 %8, 1, !dbg !1566
  store i32 %9, ptr @error_message_count, align 4, !dbg !1566, !tbaa !904
  %10 = icmp eq i32 %1, 0, !dbg !1567
  br i1 %10, label %20, label %11, !dbg !1569

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1574, metadata !DIExpression()), !dbg !1581
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %12, metadata !1573, metadata !DIExpression()), !dbg !1578
  %13 = icmp eq ptr %12, null, !dbg !1583
  br i1 %13, label %14, label %16, !dbg !1585

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #36, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %15, metadata !1573, metadata !DIExpression()), !dbg !1578
  br label %16, !dbg !1587

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1578
  call void @llvm.dbg.value(metadata ptr %17, metadata !1573, metadata !DIExpression()), !dbg !1578
  %18 = load ptr, ptr @stderr, align 8, !dbg !1588, !tbaa !840
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #36, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1589
  br label %20, !dbg !1590

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1591, !tbaa !840
  call void @llvm.dbg.value(metadata i32 10, metadata !1592, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata ptr %21, metadata !1598, metadata !DIExpression()), !dbg !1599
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1601
  %23 = load ptr, ptr %22, align 8, !dbg !1601, !tbaa !1602
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1601
  %25 = load ptr, ptr %24, align 8, !dbg !1601, !tbaa !1605
  %26 = icmp ult ptr %23, %25, !dbg !1601
  br i1 %26, label %29, label %27, !dbg !1601, !prof !1606

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1601
  br label %31, !dbg !1601

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1601
  store ptr %30, ptr %22, align 8, !dbg !1601, !tbaa !1602
  store i8 10, ptr %23, align 1, !dbg !1601, !tbaa !913
  br label %31, !dbg !1601

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1607, !tbaa !840
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1607
  %34 = icmp eq i32 %0, 0, !dbg !1608
  br i1 %34, label %36, label %35, !dbg !1610

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1611
  unreachable, !dbg !1611

36:                                               ; preds = %31
  ret void, !dbg !1612
}

declare !dbg !1613 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1616 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1619 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1622 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1625 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1629 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1633, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %1, metadata !1634, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata ptr %2, metadata !1635, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !1644
  call void @llvm.va_start(ptr nonnull %4), !dbg !1645
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1646
  call void @llvm.va_end(ptr nonnull %4), !dbg !1647
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1648
  ret void, !dbg !1648
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !451, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %1, metadata !452, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %2, metadata !453, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %3, metadata !454, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %4, metadata !455, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %5, metadata !456, metadata !DIExpression()), !dbg !1649
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1650, !tbaa !904
  %8 = icmp eq i32 %7, 0, !dbg !1650
  br i1 %8, label %23, label %9, !dbg !1652

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1653, !tbaa !904
  %11 = icmp eq i32 %10, %3, !dbg !1656
  br i1 %11, label %12, label %22, !dbg !1657

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1658, !tbaa !840
  %14 = icmp eq ptr %13, %2, !dbg !1659
  br i1 %14, label %36, label %15, !dbg !1660

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1661
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1662
  br i1 %18, label %19, label %22, !dbg !1662

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1663
  %21 = icmp eq i32 %20, 0, !dbg !1664
  br i1 %21, label %36, label %22, !dbg !1665

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1666, !tbaa !840
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1667, !tbaa !904
  br label %23, !dbg !1668

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1669
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1670, !tbaa !840
  %25 = icmp eq ptr %24, null, !dbg !1670
  br i1 %25, label %27, label %26, !dbg !1672

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1673
  br label %31, !dbg !1673

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1674, !tbaa !840
  %29 = tail call ptr @getprogname() #37, !dbg !1674
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #36, !dbg !1674
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1676, !tbaa !840
  %33 = icmp eq ptr %2, null, !dbg !1676
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1676
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1676
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1677
  br label %36, !dbg !1678

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1678
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1679 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1683, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %1, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %2, metadata !1685, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %3, metadata !1686, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %4, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.va_start(ptr nonnull %6), !dbg !1692
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1693
  call void @llvm.va_end(ptr nonnull %6), !dbg !1694
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1695
  ret void, !dbg !1695
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1696 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1699, !tbaa !840
  ret ptr %1, !dbg !1700
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1701 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1706, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %1, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1709
  %4 = icmp eq ptr %2, null, !dbg !1710
  %5 = select i1 %4, ptr @internal_state, ptr %2, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %5, metadata !1708, metadata !DIExpression()), !dbg !1709
  %6 = tail call i64 @rpl_mbrtowc(ptr noundef null, ptr noundef %0, i64 noundef %1, ptr noundef %5) #36, !dbg !1713
  ret i64 %6, !dbg !1714
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !1715 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1732, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %1, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %2, metadata !1734, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %3, metadata !1735, metadata !DIExpression()), !dbg !1741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #36, !dbg !1742
  %6 = icmp eq ptr %0, null, !dbg !1743
  %7 = select i1 %6, ptr %5, ptr %0, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %7, metadata !1732, metadata !DIExpression()), !dbg !1741
  %8 = call i64 @mbrtowc(ptr noundef %7, ptr noundef %1, i64 noundef %2, ptr noundef %3) #36, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %8, metadata !1737, metadata !DIExpression()), !dbg !1741
  %9 = icmp ugt i64 %8, -3, !dbg !1747
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9, !dbg !1748
  br i1 %11, label %12, label %17, !dbg !1748

12:                                               ; preds = %4
  %13 = call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !1749
  br i1 %13, label %17, label %14, !dbg !1750

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 1, !dbg !1751, !tbaa !913
  call void @llvm.dbg.value(metadata i8 %15, metadata !1738, metadata !DIExpression()), !dbg !1752
  %16 = zext i8 %15 to i32, !dbg !1753
  store i32 %16, ptr %7, align 4, !dbg !1754, !tbaa !904
  br label %17

17:                                               ; preds = %4, %12, %14
  %18 = phi i64 [ 1, %14 ], [ %8, %12 ], [ %8, %4 ], !dbg !1741
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #36, !dbg !1755
  ret i64 %18, !dbg !1755
}

; Function Attrs: nounwind
declare !dbg !1756 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1762 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1764, metadata !DIExpression()), !dbg !1767
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %2, metadata !1765, metadata !DIExpression()), !dbg !1767
  %3 = icmp eq ptr %2, null, !dbg !1769
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1769
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %5, metadata !1766, metadata !DIExpression()), !dbg !1767
  %6 = ptrtoint ptr %5 to i64, !dbg !1770
  %7 = ptrtoint ptr %0 to i64, !dbg !1770
  %8 = sub i64 %6, %7, !dbg !1770
  %9 = icmp sgt i64 %8, 6, !dbg !1772
  br i1 %9, label %10, label %19, !dbg !1773

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %11, metadata !1775, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !1780, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 7, metadata !1781, metadata !DIExpression()), !dbg !1782
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !1784
  %13 = icmp eq i32 %12, 0, !dbg !1785
  br i1 %13, label %14, label %19, !dbg !1786

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1764, metadata !DIExpression()), !dbg !1767
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #37, !dbg !1787
  %16 = icmp eq i32 %15, 0, !dbg !1790
  %17 = select i1 %16, i64 3, i64 0, !dbg !1791
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1791
  br label %19, !dbg !1791

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1767
  call void @llvm.dbg.value(metadata ptr %21, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata ptr %20, metadata !1764, metadata !DIExpression()), !dbg !1767
  store ptr %20, ptr @program_name, align 8, !dbg !1792, !tbaa !840
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1793, !tbaa !840
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1794, !tbaa !840
  ret void, !dbg !1795
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1796 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !511 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !518, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %1, metadata !519, metadata !DIExpression()), !dbg !1797
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1797
  %6 = icmp eq ptr %5, %0, !dbg !1799
  br i1 %6, label %7, label %14, !dbg !1801

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1802
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %4, metadata !526, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata ptr %4, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 8, metadata !1817, metadata !DIExpression()), !dbg !1818
  store i64 0, ptr %4, align 8, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %3, metadata !521, metadata !DIExpression(DW_OP_deref)), !dbg !1797
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1821
  %9 = icmp eq i64 %8, 2, !dbg !1823
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !521, metadata !DIExpression()), !dbg !1797
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1824
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1797
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1825
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1797
  ret ptr %15, !dbg !1825
}

; Function Attrs: nounwind
declare !dbg !1826 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1837, metadata !DIExpression()), !dbg !1840
  %2 = tail call ptr @__errno_location() #39, !dbg !1841
  %3 = load i32, ptr %2, align 4, !dbg !1841, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %3, metadata !1838, metadata !DIExpression()), !dbg !1840
  %4 = icmp eq ptr %0, null, !dbg !1842
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1842
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %6, metadata !1839, metadata !DIExpression()), !dbg !1840
  store i32 %3, ptr %2, align 4, !dbg !1844, !tbaa !904
  ret ptr %6, !dbg !1845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1852, metadata !DIExpression()), !dbg !1853
  %2 = icmp eq ptr %0, null, !dbg !1854
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1854
  %4 = load i32, ptr %3, align 8, !dbg !1855, !tbaa !1856
  ret i32 %4, !dbg !1858
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1863, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32 %1, metadata !1864, metadata !DIExpression()), !dbg !1865
  %3 = icmp eq ptr %0, null, !dbg !1866
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1866
  store i32 %1, ptr %4, align 8, !dbg !1867, !tbaa !1856
  ret void, !dbg !1868
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1869 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1873, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i32 %2, metadata !1875, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %1, metadata !1876, metadata !DIExpression()), !dbg !1881
  %4 = icmp eq ptr %0, null, !dbg !1882
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1882
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1883
  %7 = lshr i8 %1, 5, !dbg !1884
  %8 = zext i8 %7 to i64, !dbg !1884
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %9, metadata !1877, metadata !DIExpression()), !dbg !1881
  %10 = and i8 %1, 31, !dbg !1886
  %11 = zext i8 %10 to i32, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %11, metadata !1879, metadata !DIExpression()), !dbg !1881
  %12 = load i32, ptr %9, align 4, !dbg !1887, !tbaa !904
  %13 = lshr i32 %12, %11, !dbg !1888
  %14 = and i32 %13, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %14, metadata !1880, metadata !DIExpression()), !dbg !1881
  %15 = xor i32 %13, %2, !dbg !1890
  %16 = and i32 %15, 1, !dbg !1890
  %17 = shl nuw i32 %16, %11, !dbg !1891
  %18 = xor i32 %17, %12, !dbg !1892
  store i32 %18, ptr %9, align 4, !dbg !1892, !tbaa !904
  ret i32 %14, !dbg !1893
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1898, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 %1, metadata !1899, metadata !DIExpression()), !dbg !1901
  %3 = icmp eq ptr %0, null, !dbg !1902
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1904
  call void @llvm.dbg.value(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !1901
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1905
  %6 = load i32, ptr %5, align 4, !dbg !1905, !tbaa !1906
  call void @llvm.dbg.value(metadata i32 %6, metadata !1900, metadata !DIExpression()), !dbg !1901
  store i32 %1, ptr %5, align 4, !dbg !1907, !tbaa !1906
  ret i32 %6, !dbg !1908
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1909 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1913, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %1, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %2, metadata !1915, metadata !DIExpression()), !dbg !1916
  %4 = icmp eq ptr %0, null, !dbg !1917
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1919
  call void @llvm.dbg.value(metadata ptr %5, metadata !1913, metadata !DIExpression()), !dbg !1916
  store i32 10, ptr %5, align 8, !dbg !1920, !tbaa !1856
  %6 = icmp ne ptr %1, null, !dbg !1921
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1923
  br i1 %8, label %10, label %9, !dbg !1923

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1924
  unreachable, !dbg !1924

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1925
  store ptr %1, ptr %11, align 8, !dbg !1926, !tbaa !1927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1928
  store ptr %2, ptr %12, align 8, !dbg !1929, !tbaa !1930
  ret void, !dbg !1931
}

; Function Attrs: noreturn nounwind
declare !dbg !1932 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1933 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1937, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %1, metadata !1938, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata ptr %2, metadata !1939, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %3, metadata !1940, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !1945
  %6 = icmp eq ptr %4, null, !dbg !1946
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1946
  call void @llvm.dbg.value(metadata ptr %7, metadata !1942, metadata !DIExpression()), !dbg !1945
  %8 = tail call ptr @__errno_location() #39, !dbg !1947
  %9 = load i32, ptr %8, align 4, !dbg !1947, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %9, metadata !1943, metadata !DIExpression()), !dbg !1945
  %10 = load i32, ptr %7, align 8, !dbg !1948, !tbaa !1856
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1949
  %12 = load i32, ptr %11, align 4, !dbg !1949, !tbaa !1906
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1950
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1951
  %15 = load ptr, ptr %14, align 8, !dbg !1951, !tbaa !1927
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1952
  %17 = load ptr, ptr %16, align 8, !dbg !1952, !tbaa !1930
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %18, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i32 %9, ptr %8, align 4, !dbg !1954, !tbaa !904
  ret i64 %18, !dbg !1955
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1956 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1962, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %1, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %2, metadata !1964, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %3, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %4, metadata !1966, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %5, metadata !1967, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %6, metadata !1968, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %7, metadata !1969, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %8, metadata !1970, metadata !DIExpression()), !dbg !2024
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2025
  %17 = icmp eq i64 %16, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i1 %17, metadata !1971, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  call void @llvm.dbg.value(metadata i64 0, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr null, metadata !1974, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 0, metadata !1975, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2024
  %18 = trunc i32 %5 to i8, !dbg !2027
  %19 = lshr i8 %18, 1, !dbg !2027
  %20 = and i8 %19, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i8 %20, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2024
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2028

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2029
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2030
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2031
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2032
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2024
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2033
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2034
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %39, metadata !1979, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %38, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %37, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %36, metadata !1976, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %35, metadata !1975, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %34, metadata !1974, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %33, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 0, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %32, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %31, metadata !1970, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %30, metadata !1969, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %29, metadata !1966, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.label(metadata !2017), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !2024
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
  ], !dbg !2036

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 5, metadata !1966, metadata !DIExpression()), !dbg !2024
  br label %115, !dbg !2037

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 5, metadata !1966, metadata !DIExpression()), !dbg !2024
  %43 = and i8 %37, 1, !dbg !2038
  %44 = icmp eq i8 %43, 0, !dbg !2038
  br i1 %44, label %45, label %115, !dbg !2037

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2040
  br i1 %46, label %115, label %47, !dbg !2043

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2040, !tbaa !913
  br label %115, !dbg !2040

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !605, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i32 %29, metadata !606, metadata !DIExpression()), !dbg !2044
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #36, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %49, metadata !607, metadata !DIExpression()), !dbg !2044
  %50 = icmp eq ptr %49, @.str.11.80, !dbg !2049
  br i1 %50, label %51, label %60, !dbg !2051

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2052
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %13, metadata !609, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr %13, metadata !2055, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata ptr %13, metadata !2063, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 0, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 8, metadata !2067, metadata !DIExpression()), !dbg !2068
  store i64 0, ptr %13, align 8, !dbg !2070
  call void @llvm.dbg.value(metadata ptr %12, metadata !608, metadata !DIExpression(DW_OP_deref)), !dbg !2044
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2071
  %53 = icmp eq i64 %52, 3, !dbg !2073
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !608, metadata !DIExpression()), !dbg !2044
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2074
  %57 = icmp eq i32 %29, 9, !dbg !2074
  %58 = select i1 %57, ptr @.str.10.82, ptr @.str.12.83, !dbg !2074
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2074
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2075
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2075
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2044
  call void @llvm.dbg.value(metadata ptr %61, metadata !1969, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !605, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %29, metadata !606, metadata !DIExpression()), !dbg !2076
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #36, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %62, metadata !607, metadata !DIExpression()), !dbg !2076
  %63 = icmp eq ptr %62, @.str.12.83, !dbg !2079
  br i1 %63, label %64, label %73, !dbg !2080

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %11, metadata !609, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata ptr %11, metadata !2055, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %11, metadata !2063, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !2066, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 8, metadata !2067, metadata !DIExpression()), !dbg !2086
  store i64 0, ptr %11, align 8, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %10, metadata !608, metadata !DIExpression(DW_OP_deref)), !dbg !2076
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2089
  %66 = icmp eq i64 %65, 3, !dbg !2090
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !608, metadata !DIExpression()), !dbg !2076
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2091
  %70 = icmp eq i32 %29, 9, !dbg !2091
  %71 = select i1 %70, ptr @.str.10.82, ptr @.str.12.83, !dbg !2091
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2092
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1970, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %74, metadata !1969, metadata !DIExpression()), !dbg !2024
  %76 = and i8 %37, 1, !dbg !2093
  %77 = icmp eq i8 %76, 0, !dbg !2093
  br i1 %77, label %78, label %93, !dbg !2094

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1981, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, metadata !1972, metadata !DIExpression()), !dbg !2024
  %79 = load i8, ptr %74, align 1, !dbg !2096, !tbaa !913
  %80 = icmp eq i8 %79, 0, !dbg !2098
  br i1 %80, label %93, label %81, !dbg !2098

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1981, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %84, metadata !1972, metadata !DIExpression()), !dbg !2024
  %85 = icmp ult i64 %84, %40, !dbg !2099
  br i1 %85, label %86, label %88, !dbg !2102

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2099
  store i8 %82, ptr %87, align 1, !dbg !2099, !tbaa !913
  br label %88, !dbg !2099

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %89, metadata !1972, metadata !DIExpression()), !dbg !2024
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2103
  call void @llvm.dbg.value(metadata ptr %90, metadata !1981, metadata !DIExpression()), !dbg !2095
  %91 = load i8, ptr %90, align 1, !dbg !2096, !tbaa !913
  %92 = icmp eq i8 %91, 0, !dbg !2098
  br i1 %92, label %93, label %81, !dbg !2098, !llvm.loop !2104

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2106
  call void @llvm.dbg.value(metadata i64 %94, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %75, metadata !1974, metadata !DIExpression()), !dbg !2024
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %95, metadata !1975, metadata !DIExpression()), !dbg !2024
  br label %115, !dbg !2108

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2024
  br label %97, !dbg !2109

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %98, metadata !1976, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2024
  br label %99, !dbg !2110

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2032
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %101, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %100, metadata !1976, metadata !DIExpression()), !dbg !2024
  %102 = and i8 %101, 1, !dbg !2111
  %103 = icmp eq i8 %102, 0, !dbg !2111
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2113
  br label %105, !dbg !2113

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2024
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %107, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %106, metadata !1976, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 2, metadata !1966, metadata !DIExpression()), !dbg !2024
  %108 = and i8 %107, 1, !dbg !2114
  %109 = icmp eq i8 %108, 0, !dbg !2114
  br i1 %109, label %110, label %115, !dbg !2116

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2117
  br i1 %111, label %115, label %112, !dbg !2120

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2117, !tbaa !913
  br label %115, !dbg !2117

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2024
  br label %115, !dbg !2121

114:                                              ; preds = %28
  call void @abort() #38, !dbg !2122
  unreachable, !dbg !2122

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2106
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.82, %45 ], [ @.str.10.82, %47 ], [ @.str.10.82, %42 ], [ %34, %28 ], [ @.str.12.83, %110 ], [ @.str.12.83, %112 ], [ @.str.12.83, %105 ], [ @.str.10.82, %41 ], !dbg !2024
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2024
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2024
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %123, metadata !1977, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %122, metadata !1976, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %121, metadata !1975, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %120, metadata !1974, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %119, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %118, metadata !1970, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %117, metadata !1969, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %116, metadata !1966, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 0, metadata !1986, metadata !DIExpression()), !dbg !2123
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
  br label %138, !dbg !2124

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2106
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2029
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2033
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2034
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2125
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2126
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %145, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %144, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %143, metadata !1979, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %142, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %141, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %140, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %139, metadata !1965, metadata !DIExpression()), !dbg !2024
  %147 = icmp eq i64 %139, -1, !dbg !2127
  br i1 %147, label %148, label %152, !dbg !2128

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2129
  %150 = load i8, ptr %149, align 1, !dbg !2129, !tbaa !913
  %151 = icmp eq i8 %150, 0, !dbg !2130
  br i1 %151, label %627, label %154, !dbg !2131

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2132
  br i1 %153, label %627, label %154, !dbg !2131

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 0, metadata !1992, metadata !DIExpression()), !dbg !2133
  br i1 %129, label %155, label %170, !dbg !2134

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2136
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2137
  br i1 %157, label %158, label %160, !dbg !2137

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %159, metadata !1965, metadata !DIExpression()), !dbg !2024
  br label %160, !dbg !2139

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2139
  call void @llvm.dbg.value(metadata i64 %161, metadata !1965, metadata !DIExpression()), !dbg !2024
  %162 = icmp ugt i64 %156, %161, !dbg !2140
  br i1 %162, label %170, label %163, !dbg !2141

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %164, metadata !2143, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr %120, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %121, metadata !2147, metadata !DIExpression()), !dbg !2148
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2150
  %166 = icmp ne i32 %165, 0, !dbg !2151
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2152
  %168 = xor i1 %166, true, !dbg !2152
  %169 = zext i1 %168 to i8, !dbg !2152
  br i1 %167, label %170, label %688, !dbg !2152

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2133
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %173, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %171, metadata !1965, metadata !DIExpression()), !dbg !2024
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2153
  %175 = load i8, ptr %174, align 1, !dbg !2153, !tbaa !913
  call void @llvm.dbg.value(metadata i8 %175, metadata !1993, metadata !DIExpression()), !dbg !2133
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
  ], !dbg !2154

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2155

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2156

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2133
  %179 = and i8 %144, 1, !dbg !2160
  %180 = icmp eq i8 %179, 0, !dbg !2160
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2160
  br i1 %181, label %182, label %198, !dbg !2160

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2162
  br i1 %183, label %184, label %186, !dbg !2166

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2162
  store i8 39, ptr %185, align 1, !dbg !2162, !tbaa !913
  br label %186, !dbg !2162

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %187, metadata !1972, metadata !DIExpression()), !dbg !2024
  %188 = icmp ult i64 %187, %146, !dbg !2167
  br i1 %188, label %189, label %191, !dbg !2170

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2167
  store i8 36, ptr %190, align 1, !dbg !2167, !tbaa !913
  br label %191, !dbg !2167

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %192, metadata !1972, metadata !DIExpression()), !dbg !2024
  %193 = icmp ult i64 %192, %146, !dbg !2171
  br i1 %193, label %194, label %196, !dbg !2174

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2171
  store i8 39, ptr %195, align 1, !dbg !2171, !tbaa !913
  br label %196, !dbg !2171

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %197, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %198, !dbg !2175

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2024
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %200, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %199, metadata !1972, metadata !DIExpression()), !dbg !2024
  %201 = icmp ult i64 %199, %146, !dbg !2176
  br i1 %201, label %202, label %204, !dbg !2179

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2176
  store i8 92, ptr %203, align 1, !dbg !2176, !tbaa !913
  br label %204, !dbg !2176

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %205, metadata !1972, metadata !DIExpression()), !dbg !2024
  br i1 %126, label %206, label %491, !dbg !2180

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2182
  %208 = icmp ult i64 %207, %171, !dbg !2183
  br i1 %208, label %209, label %480, !dbg !2184

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2185
  %211 = load i8, ptr %210, align 1, !dbg !2185, !tbaa !913
  %212 = add i8 %211, -48, !dbg !2186
  %213 = icmp ult i8 %212, 10, !dbg !2186
  br i1 %213, label %214, label %480, !dbg !2186

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2187
  br i1 %215, label %216, label %218, !dbg !2191

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2187
  store i8 48, ptr %217, align 1, !dbg !2187, !tbaa !913
  br label %218, !dbg !2187

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %219, metadata !1972, metadata !DIExpression()), !dbg !2024
  %220 = icmp ult i64 %219, %146, !dbg !2192
  br i1 %220, label %221, label %223, !dbg !2195

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2192
  store i8 48, ptr %222, align 1, !dbg !2192, !tbaa !913
  br label %223, !dbg !2192

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %224, metadata !1972, metadata !DIExpression()), !dbg !2024
  br label %480, !dbg !2196

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2197

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2198

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2199

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2201

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2203
  %231 = icmp ult i64 %230, %171, !dbg !2204
  br i1 %231, label %232, label %480, !dbg !2205

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2206
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2207
  %235 = load i8, ptr %234, align 1, !dbg !2207, !tbaa !913
  %236 = icmp eq i8 %235, 63, !dbg !2208
  br i1 %236, label %237, label %480, !dbg !2209

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2210
  %239 = load i8, ptr %238, align 1, !dbg !2210, !tbaa !913
  %240 = sext i8 %239 to i32, !dbg !2210
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
  ], !dbg !2211

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2212

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %230, metadata !1986, metadata !DIExpression()), !dbg !2123
  %243 = icmp ult i64 %140, %146, !dbg !2214
  br i1 %243, label %244, label %246, !dbg !2217

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2214
  store i8 63, ptr %245, align 1, !dbg !2214, !tbaa !913
  br label %246, !dbg !2214

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %247, metadata !1972, metadata !DIExpression()), !dbg !2024
  %248 = icmp ult i64 %247, %146, !dbg !2218
  br i1 %248, label %249, label %251, !dbg !2221

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2218
  store i8 34, ptr %250, align 1, !dbg !2218, !tbaa !913
  br label %251, !dbg !2218

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %252, metadata !1972, metadata !DIExpression()), !dbg !2024
  %253 = icmp ult i64 %252, %146, !dbg !2222
  br i1 %253, label %254, label %256, !dbg !2225

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2222
  store i8 34, ptr %255, align 1, !dbg !2222, !tbaa !913
  br label %256, !dbg !2222

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %257, metadata !1972, metadata !DIExpression()), !dbg !2024
  %258 = icmp ult i64 %257, %146, !dbg !2226
  br i1 %258, label %259, label %261, !dbg !2229

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2226
  store i8 63, ptr %260, align 1, !dbg !2226, !tbaa !913
  br label %261, !dbg !2226

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %262, metadata !1972, metadata !DIExpression()), !dbg !2024
  br label %480, !dbg !2230

263:                                              ; preds = %170
  br label %274, !dbg !2231

264:                                              ; preds = %170
  br label %274, !dbg !2232

265:                                              ; preds = %170
  br label %272, !dbg !2233

266:                                              ; preds = %170
  br label %272, !dbg !2234

267:                                              ; preds = %170
  br label %274, !dbg !2235

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2236

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2237

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2240

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2242

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2243
  call void @llvm.dbg.label(metadata !2018), !dbg !2244
  br i1 %134, label %274, label %670, !dbg !2245

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2243
  call void @llvm.dbg.label(metadata !2020), !dbg !2247
  br i1 %125, label %535, label %491, !dbg !2248

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2249

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2250, !tbaa !913
  %279 = icmp eq i8 %278, 0, !dbg !2252
  br i1 %279, label %280, label %480, !dbg !2253

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2254
  br i1 %281, label %282, label %480, !dbg !2256

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1992, metadata !DIExpression()), !dbg !2133
  br label %283, !dbg !2257

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %284, metadata !1992, metadata !DIExpression()), !dbg !2133
  br i1 %134, label %480, label %670, !dbg !2258

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1992, metadata !DIExpression()), !dbg !2133
  br i1 %133, label %286, label %480, !dbg !2260

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2261

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2264
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2266
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2266
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %292, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %291, metadata !1973, metadata !DIExpression()), !dbg !2024
  %293 = icmp ult i64 %140, %292, !dbg !2267
  br i1 %293, label %294, label %296, !dbg !2270

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2267
  store i8 39, ptr %295, align 1, !dbg !2267, !tbaa !913
  br label %296, !dbg !2267

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %297, metadata !1972, metadata !DIExpression()), !dbg !2024
  %298 = icmp ult i64 %297, %292, !dbg !2271
  br i1 %298, label %299, label %301, !dbg !2274

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2271
  store i8 92, ptr %300, align 1, !dbg !2271, !tbaa !913
  br label %301, !dbg !2271

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %302, metadata !1972, metadata !DIExpression()), !dbg !2024
  %303 = icmp ult i64 %302, %292, !dbg !2275
  br i1 %303, label %304, label %306, !dbg !2278

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2275
  store i8 39, ptr %305, align 1, !dbg !2275, !tbaa !913
  br label %306, !dbg !2275

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %307, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %480, !dbg !2279

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2280

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1994, metadata !DIExpression()), !dbg !2281
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2282
  %311 = load ptr, ptr %310, align 8, !dbg !2282, !tbaa !840
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2282
  %314 = load i16, ptr %313, align 2, !dbg !2282, !tbaa !945
  %315 = lshr i16 %314, 14, !dbg !2284
  %316 = trunc i16 %315 to i8, !dbg !2284
  %317 = and i8 %316, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i8 %317, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %171, metadata !1965, metadata !DIExpression()), !dbg !2024
  %318 = icmp eq i8 %317, 0, !dbg !2285
  call void @llvm.dbg.value(metadata i1 %318, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2133
  br label %368, !dbg !2286

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2287
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1998, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %14, metadata !2055, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata ptr %14, metadata !2063, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !2066, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 8, metadata !2067, metadata !DIExpression()), !dbg !2291
  store i64 0, ptr %14, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2281
  %320 = icmp eq i64 %171, -1, !dbg !2294
  br i1 %320, label %321, label %323, !dbg !2296

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %322, metadata !1965, metadata !DIExpression()), !dbg !2024
  br label %323, !dbg !2298

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2133
  call void @llvm.dbg.value(metadata i64 %324, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2299
  %325 = sub i64 %324, %145, !dbg !2300
  call void @llvm.dbg.value(metadata ptr %15, metadata !2001, metadata !DIExpression(DW_OP_deref)), !dbg !2301
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %326, metadata !2005, metadata !DIExpression()), !dbg !2301
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2303

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2281
  %328 = icmp ugt i64 %324, %145, !dbg !2304
  br i1 %328, label %331, label %329, !dbg !2306

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %324, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i1 true, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2133
  br label %368, !dbg !2286

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2281
  br label %360, !dbg !2309

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1994, metadata !DIExpression()), !dbg !2281
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2311
  %335 = load i8, ptr %334, align 1, !dbg !2311, !tbaa !913
  %336 = icmp eq i8 %335, 0, !dbg !2306
  br i1 %336, label %363, label %337, !dbg !2312

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %338, metadata !1994, metadata !DIExpression()), !dbg !2281
  %339 = add i64 %338, %145, !dbg !2314
  %340 = icmp eq i64 %338, %325, !dbg !2304
  br i1 %340, label %363, label %331, !dbg !2306, !llvm.loop !2315

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2316
  %344 = and i1 %343, %133, !dbg !2316
  call void @llvm.dbg.value(metadata i64 1, metadata !2006, metadata !DIExpression()), !dbg !2317
  br i1 %344, label %345, label %354, !dbg !2316

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2006, metadata !DIExpression()), !dbg !2317
  %347 = add i64 %346, %145, !dbg !2318
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2320
  %349 = load i8, ptr %348, align 1, !dbg !2320, !tbaa !913
  %350 = sext i8 %349 to i32, !dbg !2320
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2321

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %352, metadata !2006, metadata !DIExpression()), !dbg !2317
  %353 = icmp eq i64 %352, %326, !dbg !2323
  br i1 %353, label %354, label %345, !dbg !2324, !llvm.loop !2325

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2327, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %355, metadata !2001, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %355, metadata !2329, metadata !DIExpression()), !dbg !2337
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !2339
  %357 = icmp ne i32 %356, 0, !dbg !2340
  %358 = zext i1 %357 to i8, !dbg !2341
  call void @llvm.dbg.value(metadata i8 %358, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %326, metadata !1994, metadata !DIExpression()), !dbg !2281
  br label %363, !dbg !2342

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2308
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 0, metadata !1994, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %324, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i1 %361, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2133
  br label %368, !dbg !2286

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1997, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %364, metadata !1994, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %324, metadata !1965, metadata !DIExpression()), !dbg !2024
  %366 = icmp eq i8 %365, 0, !dbg !2285
  call void @llvm.dbg.value(metadata i1 %366, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2133
  %367 = icmp ugt i64 %364, 1, !dbg !2343
  br i1 %367, label %374, label %368, !dbg !2286

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2344
  br i1 %373, label %374, label %480, !dbg !2344

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %379, metadata !2014, metadata !DIExpression()), !dbg !2346
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2347

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2024
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2125
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2123
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2133
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2348
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %387, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %386, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %385, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %384, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %383, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %382, metadata !1972, metadata !DIExpression()), !dbg !2024
  br i1 %380, label %388, label %434, !dbg !2349

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2354

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2133
  %390 = and i8 %383, 1, !dbg !2357
  %391 = icmp eq i8 %390, 0, !dbg !2357
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2357
  br i1 %392, label %393, label %409, !dbg !2357

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2359
  br i1 %394, label %395, label %397, !dbg !2363

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2359
  store i8 39, ptr %396, align 1, !dbg !2359, !tbaa !913
  br label %397, !dbg !2359

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %398, metadata !1972, metadata !DIExpression()), !dbg !2024
  %399 = icmp ult i64 %398, %146, !dbg !2364
  br i1 %399, label %400, label %402, !dbg !2367

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2364
  store i8 36, ptr %401, align 1, !dbg !2364, !tbaa !913
  br label %402, !dbg !2364

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %403, metadata !1972, metadata !DIExpression()), !dbg !2024
  %404 = icmp ult i64 %403, %146, !dbg !2368
  br i1 %404, label %405, label %407, !dbg !2371

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2368
  store i8 39, ptr %406, align 1, !dbg !2368, !tbaa !913
  br label %407, !dbg !2368

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %408, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %409, !dbg !2372

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2024
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %411, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %410, metadata !1972, metadata !DIExpression()), !dbg !2024
  %412 = icmp ult i64 %410, %146, !dbg !2373
  br i1 %412, label %413, label %415, !dbg !2376

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2373
  store i8 92, ptr %414, align 1, !dbg !2373, !tbaa !913
  br label %415, !dbg !2373

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %416, metadata !1972, metadata !DIExpression()), !dbg !2024
  %417 = icmp ult i64 %416, %146, !dbg !2377
  br i1 %417, label %418, label %422, !dbg !2380

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2377
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2377
  store i8 %420, ptr %421, align 1, !dbg !2377, !tbaa !913
  br label %422, !dbg !2377

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %423, metadata !1972, metadata !DIExpression()), !dbg !2024
  %424 = icmp ult i64 %423, %146, !dbg !2381
  br i1 %424, label %425, label %430, !dbg !2384

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2381
  %428 = or i8 %427, 48, !dbg !2381
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2381
  store i8 %428, ptr %429, align 1, !dbg !2381, !tbaa !913
  br label %430, !dbg !2381

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %431, metadata !1972, metadata !DIExpression()), !dbg !2024
  %432 = and i8 %387, 7, !dbg !2385
  %433 = or i8 %432, 48, !dbg !2386
  call void @llvm.dbg.value(metadata i8 %433, metadata !1993, metadata !DIExpression()), !dbg !2133
  br label %443, !dbg !2387

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2388
  %436 = icmp eq i8 %435, 0, !dbg !2388
  br i1 %436, label %443, label %437, !dbg !2390

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2391
  br i1 %438, label %439, label %441, !dbg !2395

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2391
  store i8 92, ptr %440, align 1, !dbg !2391, !tbaa !913
  br label %441, !dbg !2391

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %442, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2133
  br label %443, !dbg !2396

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2024
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2125
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2133
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2133
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %448, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %447, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %446, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %445, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %444, metadata !1972, metadata !DIExpression()), !dbg !2024
  %449 = add i64 %384, 1, !dbg !2397
  %450 = icmp ugt i64 %379, %449, !dbg !2399
  br i1 %450, label %451, label %478, !dbg !2400

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2401
  %453 = icmp ne i8 %452, 0, !dbg !2401
  %454 = and i8 %447, 1, !dbg !2401
  %455 = icmp eq i8 %454, 0, !dbg !2401
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2401
  br i1 %456, label %457, label %468, !dbg !2401

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2404
  br i1 %458, label %459, label %461, !dbg !2408

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2404
  store i8 39, ptr %460, align 1, !dbg !2404, !tbaa !913
  br label %461, !dbg !2404

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %462, metadata !1972, metadata !DIExpression()), !dbg !2024
  %463 = icmp ult i64 %462, %146, !dbg !2409
  br i1 %463, label %464, label %466, !dbg !2412

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2409
  store i8 39, ptr %465, align 1, !dbg !2409, !tbaa !913
  br label %466, !dbg !2409

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %467, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %468, !dbg !2413

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2414
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %470, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %469, metadata !1972, metadata !DIExpression()), !dbg !2024
  %471 = icmp ult i64 %469, %146, !dbg !2415
  br i1 %471, label %472, label %474, !dbg !2418

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2415
  store i8 %448, ptr %473, align 1, !dbg !2415, !tbaa !913
  br label %474, !dbg !2415

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %475, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %449, metadata !1986, metadata !DIExpression()), !dbg !2123
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2419
  %477 = load i8, ptr %476, align 1, !dbg !2419, !tbaa !913
  call void @llvm.dbg.value(metadata i8 %477, metadata !1993, metadata !DIExpression()), !dbg !2133
  br label %381, !dbg !2420, !llvm.loop !2421

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i8 %448, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %479, metadata !1992, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %447, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %446, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %384, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %445, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %444, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %378, metadata !1965, metadata !DIExpression()), !dbg !2024
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2424
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2024
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2029
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2024
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2024
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2123
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2133
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2133
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2133
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %489, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %488, metadata !1992, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %487, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %173, metadata !1988, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %486, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %485, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %484, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %483, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %482, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %481, metadata !1965, metadata !DIExpression()), !dbg !2024
  br i1 %127, label %502, label %491, !dbg !2425

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
  br i1 %137, label %503, label %524, !dbg !2427

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2428

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
  %514 = lshr i8 %505, 5, !dbg !2429
  %515 = zext i8 %514 to i64, !dbg !2429
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2430
  %517 = load i32, ptr %516, align 4, !dbg !2430, !tbaa !904
  %518 = and i8 %505, 31, !dbg !2431
  %519 = zext i8 %518 to i32, !dbg !2431
  %520 = shl nuw i32 1, %519, !dbg !2432
  %521 = and i32 %517, %520, !dbg !2432
  %522 = icmp eq i32 %521, 0, !dbg !2432
  %523 = and i1 %172, %522, !dbg !2433
  br i1 %523, label %573, label %535, !dbg !2433

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
  br i1 %172, label %573, label %535, !dbg !2434

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2424
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2024
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2029
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2033
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2125
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2435
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2133
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2133
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %543, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %542, metadata !1992, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %541, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %540, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %539, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %538, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %537, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %536, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.label(metadata !2021), !dbg !2436
  br i1 %132, label %545, label %674, !dbg !2437

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2133
  %546 = and i8 %540, 1, !dbg !2439
  %547 = icmp eq i8 %546, 0, !dbg !2439
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2439
  br i1 %548, label %549, label %565, !dbg !2439

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2441
  br i1 %550, label %551, label %553, !dbg !2445

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2441
  store i8 39, ptr %552, align 1, !dbg !2441, !tbaa !913
  br label %553, !dbg !2441

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %554, metadata !1972, metadata !DIExpression()), !dbg !2024
  %555 = icmp ult i64 %554, %544, !dbg !2446
  br i1 %555, label %556, label %558, !dbg !2449

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2446
  store i8 36, ptr %557, align 1, !dbg !2446, !tbaa !913
  br label %558, !dbg !2446

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %559, metadata !1972, metadata !DIExpression()), !dbg !2024
  %560 = icmp ult i64 %559, %544, !dbg !2450
  br i1 %560, label %561, label %563, !dbg !2453

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2450
  store i8 39, ptr %562, align 1, !dbg !2450, !tbaa !913
  br label %563, !dbg !2450

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %564, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 1, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %565, !dbg !2454

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2133
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %567, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %566, metadata !1972, metadata !DIExpression()), !dbg !2024
  %568 = icmp ult i64 %566, %544, !dbg !2455
  br i1 %568, label %569, label %571, !dbg !2458

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2455
  store i8 92, ptr %570, align 1, !dbg !2455, !tbaa !913
  br label %571, !dbg !2455

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %544, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %543, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %542, metadata !1992, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %541, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %567, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %539, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %538, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %572, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %536, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.label(metadata !2022), !dbg !2459
  br label %600, !dbg !2460

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2424
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2024
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2029
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2033
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2125
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2435
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2133
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2133
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2463
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %582, metadata !1993, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %581, metadata !1992, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %580, metadata !1991, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %579, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %578, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %577, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %576, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %575, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %574, metadata !1965, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.label(metadata !2022), !dbg !2459
  %584 = and i8 %578, 1, !dbg !2460
  %585 = icmp ne i8 %584, 0, !dbg !2460
  %586 = and i8 %580, 1, !dbg !2460
  %587 = icmp eq i8 %586, 0, !dbg !2460
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2460
  br i1 %588, label %589, label %600, !dbg !2460

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2464
  br i1 %590, label %591, label %593, !dbg !2468

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2464
  store i8 39, ptr %592, align 1, !dbg !2464, !tbaa !913
  br label %593, !dbg !2464

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %594, metadata !1972, metadata !DIExpression()), !dbg !2024
  %595 = icmp ult i64 %594, %583, !dbg !2469
  br i1 %595, label %596, label %598, !dbg !2472

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2469
  store i8 39, ptr %597, align 1, !dbg !2469, !tbaa !913
  br label %598, !dbg !2469

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %599, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !2024
  br label %600, !dbg !2473

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2133
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %609, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %608, metadata !1972, metadata !DIExpression()), !dbg !2024
  %610 = icmp ult i64 %608, %601, !dbg !2474
  br i1 %610, label %611, label %613, !dbg !2477

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2474
  store i8 %602, ptr %612, align 1, !dbg !2474, !tbaa !913
  br label %613, !dbg !2474

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %614, metadata !1972, metadata !DIExpression()), !dbg !2024
  %615 = icmp eq i8 %603, 0, !dbg !2478
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2480
  call void @llvm.dbg.value(metadata i8 %616, metadata !1979, metadata !DIExpression()), !dbg !2024
  br label %617, !dbg !2481

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2424
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2024
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2029
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2033
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2034
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2125
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2435
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %624, metadata !1986, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %623, metadata !1980, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %622, metadata !1979, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %621, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %620, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %619, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %618, metadata !1965, metadata !DIExpression()), !dbg !2024
  %626 = add i64 %624, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %626, metadata !1986, metadata !DIExpression()), !dbg !2123
  br label %138, !dbg !2483, !llvm.loop !2484

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1963, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %143, metadata !1979, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %142, metadata !1978, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %141, metadata !1973, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %140, metadata !1972, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %139, metadata !1965, metadata !DIExpression()), !dbg !2024
  %628 = icmp eq i64 %140, 0, !dbg !2486
  %629 = and i1 %133, %628, !dbg !2488
  %630 = xor i1 %629, true, !dbg !2488
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2488
  br i1 %631, label %632, label %670, !dbg !2488

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2489
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2489
  br i1 %636, label %637, label %646, !dbg !2489

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2491
  %639 = icmp eq i8 %638, 0, !dbg !2491
  br i1 %639, label %642, label %640, !dbg !2494

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2495
  br label %694, !dbg !2496

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2497
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2499
  br i1 %645, label %28, label %646, !dbg !2499

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2500
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2502
  br i1 %649, label %650, label %665, !dbg !2502

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1974, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %140, metadata !1972, metadata !DIExpression()), !dbg !2024
  %651 = load i8, ptr %120, align 1, !dbg !2503, !tbaa !913
  %652 = icmp eq i8 %651, 0, !dbg !2506
  br i1 %652, label %665, label %653, !dbg !2506

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1974, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %656, metadata !1972, metadata !DIExpression()), !dbg !2024
  %657 = icmp ult i64 %656, %146, !dbg !2507
  br i1 %657, label %658, label %660, !dbg !2510

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2507
  store i8 %654, ptr %659, align 1, !dbg !2507, !tbaa !913
  br label %660, !dbg !2507

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %661, metadata !1972, metadata !DIExpression()), !dbg !2024
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %662, metadata !1974, metadata !DIExpression()), !dbg !2024
  %663 = load i8, ptr %662, align 1, !dbg !2503, !tbaa !913
  %664 = icmp eq i8 %663, 0, !dbg !2506
  br i1 %664, label %665, label %653, !dbg !2506, !llvm.loop !2512

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2106
  call void @llvm.dbg.value(metadata i64 %666, metadata !1972, metadata !DIExpression()), !dbg !2024
  %667 = icmp ult i64 %666, %146, !dbg !2514
  br i1 %667, label %668, label %694, !dbg !2516

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2517
  store i8 0, ptr %669, align 1, !dbg !2518, !tbaa !913
  br label %694, !dbg !2517

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2023), !dbg !2519
  %672 = icmp eq i8 %124, 0, !dbg !2520
  %673 = select i1 %672, i32 2, i32 4, !dbg !2520
  br label %684, !dbg !2520

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2520
  %678 = select i1 %677, i32 2, i32 4, !dbg !2520
  br label %679, !dbg !2522

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2023), !dbg !2519
  %683 = icmp eq i32 %116, 2, !dbg !2522
  br i1 %683, label %684, label %688, !dbg !2520

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2520

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1966, metadata !DIExpression()), !dbg !2024
  %692 = and i32 %5, -3, !dbg !2523
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2524
  br label %694, !dbg !2525

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2526
}

; Function Attrs: nounwind
declare !dbg !2527 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2529 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2531 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %1, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr null, metadata !2545, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %2, metadata !2546, metadata !DIExpression()), !dbg !2552
  %4 = icmp eq ptr %2, null, !dbg !2554
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %5, metadata !2547, metadata !DIExpression()), !dbg !2552
  %6 = tail call ptr @__errno_location() #39, !dbg !2555
  %7 = load i32, ptr %6, align 4, !dbg !2555, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %7, metadata !2548, metadata !DIExpression()), !dbg !2552
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2556
  %9 = load i32, ptr %8, align 4, !dbg !2556, !tbaa !1906
  %10 = or i32 %9, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %10, metadata !2549, metadata !DIExpression()), !dbg !2552
  %11 = load i32, ptr %5, align 8, !dbg !2558, !tbaa !1856
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2559
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2560
  %14 = load ptr, ptr %13, align 8, !dbg !2560, !tbaa !1927
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2561
  %16 = load ptr, ptr %15, align 8, !dbg !2561, !tbaa !1930
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2562
  %18 = add i64 %17, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %18, metadata !2550, metadata !DIExpression()), !dbg !2552
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %19, metadata !2551, metadata !DIExpression()), !dbg !2552
  %20 = load i32, ptr %5, align 8, !dbg !2565, !tbaa !1856
  %21 = load ptr, ptr %13, align 8, !dbg !2566, !tbaa !1927
  %22 = load ptr, ptr %15, align 8, !dbg !2567, !tbaa !1930
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2568
  store i32 %7, ptr %6, align 4, !dbg !2569, !tbaa !904
  ret ptr %19, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %3, metadata !2546, metadata !DIExpression()), !dbg !2571
  %5 = icmp eq ptr %3, null, !dbg !2572
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %6, metadata !2547, metadata !DIExpression()), !dbg !2571
  %7 = tail call ptr @__errno_location() #39, !dbg !2573
  %8 = load i32, ptr %7, align 4, !dbg !2573, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %8, metadata !2548, metadata !DIExpression()), !dbg !2571
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2574
  %10 = load i32, ptr %9, align 4, !dbg !2574, !tbaa !1906
  %11 = icmp eq ptr %2, null, !dbg !2575
  %12 = zext i1 %11 to i32, !dbg !2575
  %13 = or i32 %10, %12, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %13, metadata !2549, metadata !DIExpression()), !dbg !2571
  %14 = load i32, ptr %6, align 8, !dbg !2577, !tbaa !1856
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2578
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2579
  %17 = load ptr, ptr %16, align 8, !dbg !2579, !tbaa !1927
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2580
  %19 = load ptr, ptr %18, align 8, !dbg !2580, !tbaa !1930
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2581
  %21 = add i64 %20, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %21, metadata !2550, metadata !DIExpression()), !dbg !2571
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %22, metadata !2551, metadata !DIExpression()), !dbg !2571
  %23 = load i32, ptr %6, align 8, !dbg !2584, !tbaa !1856
  %24 = load ptr, ptr %16, align 8, !dbg !2585, !tbaa !1927
  %25 = load ptr, ptr %18, align 8, !dbg !2586, !tbaa !1930
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2587
  store i32 %8, ptr %7, align 4, !dbg !2588, !tbaa !904
  br i1 %11, label %28, label %27, !dbg !2589

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2590, !tbaa !2592
  br label %28, !dbg !2593

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2595 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2600, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %1, metadata !2597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 1, metadata !2598, metadata !DIExpression()), !dbg !2602
  %2 = load i32, ptr @nslots, align 4, !tbaa !904
  call void @llvm.dbg.value(metadata i32 1, metadata !2598, metadata !DIExpression()), !dbg !2602
  %3 = icmp sgt i32 %2, 1, !dbg !2603
  br i1 %3, label %4, label %6, !dbg !2605

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2603
  br label %10, !dbg !2605

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2606
  %8 = load ptr, ptr %7, align 8, !dbg !2606, !tbaa !2608
  %9 = icmp eq ptr %8, @slot0, !dbg !2610
  br i1 %9, label %17, label %16, !dbg !2611

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2598, metadata !DIExpression()), !dbg !2602
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2612
  %13 = load ptr, ptr %12, align 8, !dbg !2612, !tbaa !2608
  tail call void @free(ptr noundef %13) #36, !dbg !2613
  %14 = add nuw nsw i64 %11, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %14, metadata !2598, metadata !DIExpression()), !dbg !2602
  %15 = icmp eq i64 %14, %5, !dbg !2603
  br i1 %15, label %6, label %10, !dbg !2605, !llvm.loop !2615

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2617
  store i64 256, ptr @slotvec0, align 8, !dbg !2619, !tbaa !2620
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2621, !tbaa !2608
  br label %17, !dbg !2622

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2623
  br i1 %18, label %20, label %19, !dbg !2625

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2626
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2628, !tbaa !840
  br label %20, !dbg !2629

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2630, !tbaa !904
  ret void, !dbg !2631
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2632 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2639
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2640
  ret ptr %3, !dbg !2641
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2642 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %2, metadata !2648, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2662
  %6 = tail call ptr @__errno_location() #39, !dbg !2663
  %7 = load i32, ptr %6, align 4, !dbg !2663, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %7, metadata !2650, metadata !DIExpression()), !dbg !2662
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2664, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %8, metadata !2651, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2652, metadata !DIExpression()), !dbg !2662
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2665
  br i1 %9, label %10, label %11, !dbg !2665

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2667
  unreachable, !dbg !2667

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2668, !tbaa !904
  %13 = icmp sgt i32 %12, %0, !dbg !2669
  br i1 %13, label %32, label %14, !dbg !2670

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2671
  call void @llvm.dbg.value(metadata i1 %15, metadata !2653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2673
  %16 = sext i32 %12 to i64, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %16, metadata !2656, metadata !DIExpression()), !dbg !2672
  store i64 %16, ptr %5, align 8, !dbg !2675, !tbaa !2592
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2676
  %18 = add nuw nsw i32 %0, 1, !dbg !2677
  %19 = sub i32 %18, %12, !dbg !2678
  %20 = sext i32 %19 to i64, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %5, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2672
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %21, metadata !2651, metadata !DIExpression()), !dbg !2662
  store ptr %21, ptr @slotvec, align 8, !dbg !2681, !tbaa !840
  br i1 %15, label %22, label %23, !dbg !2682

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2683, !tbaa.struct !2685
  br label %23, !dbg !2686

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2687, !tbaa !904
  %25 = sext i32 %24 to i64, !dbg !2688
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2688
  %27 = load i64, ptr %5, align 8, !dbg !2689, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %27, metadata !2656, metadata !DIExpression()), !dbg !2672
  %28 = sub nsw i64 %27, %25, !dbg !2690
  %29 = shl i64 %28, 4, !dbg !2691
  call void @llvm.dbg.value(metadata ptr %26, metadata !2063, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2066, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %29, metadata !2067, metadata !DIExpression()), !dbg !2692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2694
  %30 = load i64, ptr %5, align 8, !dbg !2695, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %30, metadata !2656, metadata !DIExpression()), !dbg !2672
  %31 = trunc i64 %30 to i32, !dbg !2695
  store i32 %31, ptr @nslots, align 4, !dbg !2696, !tbaa !904
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2697
  br label %32, !dbg !2698

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2662
  call void @llvm.dbg.value(metadata ptr %33, metadata !2651, metadata !DIExpression()), !dbg !2662
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2699
  %36 = load i64, ptr %35, align 8, !dbg !2700, !tbaa !2620
  call void @llvm.dbg.value(metadata i64 %36, metadata !2657, metadata !DIExpression()), !dbg !2701
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2702
  %38 = load ptr, ptr %37, align 8, !dbg !2702, !tbaa !2608
  call void @llvm.dbg.value(metadata ptr %38, metadata !2659, metadata !DIExpression()), !dbg !2701
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2703
  %40 = load i32, ptr %39, align 4, !dbg !2703, !tbaa !1906
  %41 = or i32 %40, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %41, metadata !2660, metadata !DIExpression()), !dbg !2701
  %42 = load i32, ptr %3, align 8, !dbg !2705, !tbaa !1856
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2706
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2707
  %45 = load ptr, ptr %44, align 8, !dbg !2707, !tbaa !1927
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2708
  %47 = load ptr, ptr %46, align 8, !dbg !2708, !tbaa !1930
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %48, metadata !2661, metadata !DIExpression()), !dbg !2701
  %49 = icmp ugt i64 %36, %48, !dbg !2710
  br i1 %49, label %60, label %50, !dbg !2712

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %51, metadata !2657, metadata !DIExpression()), !dbg !2701
  store i64 %51, ptr %35, align 8, !dbg !2715, !tbaa !2620
  %52 = icmp eq ptr %38, @slot0, !dbg !2716
  br i1 %52, label %54, label %53, !dbg !2718

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2719
  br label %54, !dbg !2719

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %55, metadata !2659, metadata !DIExpression()), !dbg !2701
  store ptr %55, ptr %37, align 8, !dbg !2721, !tbaa !2608
  %56 = load i32, ptr %3, align 8, !dbg !2722, !tbaa !1856
  %57 = load ptr, ptr %44, align 8, !dbg !2723, !tbaa !1927
  %58 = load ptr, ptr %46, align 8, !dbg !2724, !tbaa !1930
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2725
  br label %60, !dbg !2726

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2701
  call void @llvm.dbg.value(metadata ptr %61, metadata !2659, metadata !DIExpression()), !dbg !2701
  store i32 %7, ptr %6, align 4, !dbg !2727, !tbaa !904
  ret ptr %61, !dbg !2728
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %1, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %2, metadata !2735, metadata !DIExpression()), !dbg !2736
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2737
  ret ptr %4, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2743
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2745
  ret ptr %2, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2754
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2756
  ret ptr %3, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2758 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2765, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2781, !alias.scope !2769
  %5 = icmp eq i32 %1, 10, !dbg !2782
  br i1 %5, label %6, label %7, !dbg !2784

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2785, !noalias !2769
  unreachable, !dbg !2785

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2786, !tbaa !1856, !alias.scope !2769
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2788
  ret ptr %8, !dbg !2789
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2790 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %2, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %3, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2778, metadata !DIExpression()), !dbg !2808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2808, !alias.scope !2802
  %6 = icmp eq i32 %1, 10, !dbg !2809
  br i1 %6, label %7, label %8, !dbg !2810

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2811, !noalias !2802
  unreachable, !dbg !2811

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2812, !tbaa !1856, !alias.scope !2802
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2814
  ret ptr %9, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2816 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2765, metadata !DIExpression()), !dbg !2826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2778, metadata !DIExpression()), !dbg !2833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2833, !alias.scope !2827
  %4 = icmp eq i32 %0, 10, !dbg !2834
  br i1 %4, label %5, label %6, !dbg !2835

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2836, !noalias !2827
  unreachable, !dbg !2836

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2837, !tbaa !1856, !alias.scope !2827
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2839
  ret ptr %7, !dbg !2840
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2841 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !2796, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2778, metadata !DIExpression()), !dbg !2859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2859, !alias.scope !2853
  %5 = icmp eq i32 %0, 10, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2861

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2862, !noalias !2853
  unreachable, !dbg !2862

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2863, !tbaa !1856, !alias.scope !2853
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2865
  ret ptr %8, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 %2, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2878, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %4, metadata !1873, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1876, metadata !DIExpression()), !dbg !2880
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2882
  %6 = lshr i8 %2, 5, !dbg !2883
  %7 = zext i8 %6 to i64, !dbg !2883
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %8, metadata !1877, metadata !DIExpression()), !dbg !2880
  %9 = and i8 %2, 31, !dbg !2885
  %10 = zext i8 %9 to i32, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %10, metadata !1879, metadata !DIExpression()), !dbg !2880
  %11 = load i32, ptr %8, align 4, !dbg !2886, !tbaa !904
  %12 = lshr i32 %11, %10, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %12, metadata !1880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2880
  %13 = and i32 %12, 1, !dbg !2888
  %14 = xor i32 %13, 1, !dbg !2888
  %15 = shl nuw i32 %14, %10, !dbg !2889
  %16 = xor i32 %15, %11, !dbg !2890
  store i32 %16, ptr %8, align 4, !dbg !2890, !tbaa !904
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2891
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2892
  ret ptr %17, !dbg !2893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2894 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %1, metadata !2873, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2905, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !1873, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1876, metadata !DIExpression()), !dbg !2906
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2908
  %5 = lshr i8 %1, 5, !dbg !2909
  %6 = zext i8 %5 to i64, !dbg !2909
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %7, metadata !1877, metadata !DIExpression()), !dbg !2906
  %8 = and i8 %1, 31, !dbg !2911
  %9 = zext i8 %8 to i32, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %9, metadata !1879, metadata !DIExpression()), !dbg !2906
  %10 = load i32, ptr %7, align 4, !dbg !2912, !tbaa !904
  %11 = lshr i32 %10, %9, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %11, metadata !1880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2906
  %12 = and i32 %11, 1, !dbg !2914
  %13 = xor i32 %12, 1, !dbg !2914
  %14 = shl nuw i32 %13, %9, !dbg !2915
  %15 = xor i32 %14, %10, !dbg !2916
  store i32 %15, ptr %7, align 4, !dbg !2916, !tbaa !904
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2917
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2918
  ret ptr %16, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2920 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 58, metadata !2899, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2928
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2874, metadata !DIExpression()), !dbg !2929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2930, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %2, metadata !1873, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1876, metadata !DIExpression()), !dbg !2931
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %3, metadata !1877, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 26, metadata !1879, metadata !DIExpression()), !dbg !2931
  %4 = load i32, ptr %3, align 4, !dbg !2934, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %4, metadata !1880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2931
  %5 = or i32 %4, 67108864, !dbg !2935
  store i32 %5, ptr %3, align 4, !dbg !2935, !tbaa !904
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2936
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2937
  ret ptr %6, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2939 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2944
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2948, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !1873, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1876, metadata !DIExpression()), !dbg !2949
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2951
  call void @llvm.dbg.value(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 26, metadata !1879, metadata !DIExpression()), !dbg !2949
  %5 = load i32, ptr %4, align 4, !dbg !2952, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %5, metadata !1880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2949
  %6 = or i32 %5, 67108864, !dbg !2953
  store i32 %6, ptr %4, align 4, !dbg !2953, !tbaa !904
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2954
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2955
  ret ptr %7, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2957 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 %1, metadata !2960, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  %5 = icmp eq i32 %1, 10, !dbg !2969
  br i1 %5, label %6, label %7, !dbg !2970

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2971, !noalias !2972
  unreachable, !dbg !2971

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  store i32 %1, ptr %4, align 8, !dbg !2975, !tbaa.struct !2879
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %4, metadata !1873, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1876, metadata !DIExpression()), !dbg !2976
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %9, metadata !1877, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 26, metadata !1879, metadata !DIExpression()), !dbg !2976
  %10 = load i32, ptr %9, align 4, !dbg !2979, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %10, metadata !1880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2976
  %11 = or i32 %10, 67108864, !dbg !2980
  store i32 %11, ptr %9, align 4, !dbg !2980, !tbaa !904
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2981
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2982
  ret ptr %12, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2984 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %3, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %1, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %2, metadata !2999, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %3, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3007, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %5, metadata !1913, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !1914, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !1915, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %5, metadata !1913, metadata !DIExpression()), !dbg !3008
  store i32 10, ptr %5, align 8, !dbg !3010, !tbaa !1856
  %6 = icmp ne ptr %1, null, !dbg !3011
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3012
  br i1 %8, label %10, label %9, !dbg !3012

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3013
  unreachable, !dbg !3013

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3014
  store ptr %1, ptr %11, align 8, !dbg !3015, !tbaa !1927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3016
  store ptr %2, ptr %12, align 8, !dbg !3017, !tbaa !1930
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3019
  ret ptr %13, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2994 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %1, metadata !2998, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %2, metadata !2999, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %3, metadata !3000, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %4, metadata !3001, metadata !DIExpression()), !dbg !3021
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3002, metadata !DIExpression()), !dbg !3023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3024, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %6, metadata !1913, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %1, metadata !1914, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %2, metadata !1915, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %6, metadata !1913, metadata !DIExpression()), !dbg !3025
  store i32 10, ptr %6, align 8, !dbg !3027, !tbaa !1856
  %7 = icmp ne ptr %1, null, !dbg !3028
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3029
  br i1 %9, label %11, label %10, !dbg !3029

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3030
  unreachable, !dbg !3030

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3031
  store ptr %1, ptr %12, align 8, !dbg !3032, !tbaa !1927
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3033
  store ptr %2, ptr %13, align 8, !dbg !3034, !tbaa !1930
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3035
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3036
  ret ptr %14, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3038 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !2988, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %0, metadata !2989, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %1, metadata !2990, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %2, metadata !2991, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3002, metadata !DIExpression()), !dbg !3051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3052, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %4, metadata !1913, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %4, metadata !1913, metadata !DIExpression()), !dbg !3053
  store i32 10, ptr %4, align 8, !dbg !3055, !tbaa !1856
  %5 = icmp ne ptr %0, null, !dbg !3056
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3057
  br i1 %7, label %9, label %8, !dbg !3057

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3058
  unreachable, !dbg !3058

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3059
  store ptr %0, ptr %10, align 8, !dbg !3060, !tbaa !1927
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3061
  store ptr %1, ptr %11, align 8, !dbg !3062, !tbaa !1930
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3063
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3064
  ret ptr %12, !dbg !3065
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3066 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %1, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %2, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %3, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %3, metadata !3001, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3002, metadata !DIExpression()), !dbg !3078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3079, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %5, metadata !1913, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %5, metadata !1913, metadata !DIExpression()), !dbg !3080
  store i32 10, ptr %5, align 8, !dbg !3082, !tbaa !1856
  %6 = icmp ne ptr %0, null, !dbg !3083
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3084
  br i1 %8, label %10, label %9, !dbg !3084

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3085
  unreachable, !dbg !3085

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3086
  store ptr %0, ptr %11, align 8, !dbg !3087, !tbaa !1927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3088
  store ptr %1, ptr %12, align 8, !dbg !3089, !tbaa !1930
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3090
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3091
  ret ptr %13, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %1, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %2, metadata !3099, metadata !DIExpression()), !dbg !3100
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3101
  ret ptr %4, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3103 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3099, metadata !DIExpression()), !dbg !3110
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3112
  ret ptr %3, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %1, metadata !3098, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()), !dbg !3121
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3123
  ret ptr %3, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()), !dbg !3133
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3135
  ret ptr %2, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3137 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %5, metadata !3181, metadata !DIExpression()), !dbg !3182
  %7 = icmp eq ptr %1, null, !dbg !3183
  br i1 %7, label %10, label %8, !dbg !3185

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3186
  br label %12, !dbg !3186

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.97, ptr noundef %2, ptr noundef %3) #36, !dbg !3187
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.3.99, i32 noundef 5) #36, !dbg !3188
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3188
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3189
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.5.101, i32 noundef 5) #36, !dbg !3190
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.102) #36, !dbg !3190
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %0), !dbg !3191
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
  ], !dbg !3192

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.7.103, i32 noundef 5) #36, !dbg !3193
  %21 = load ptr, ptr %4, align 8, !dbg !3193, !tbaa !840
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3193
  br label %147, !dbg !3195

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.8.104, i32 noundef 5) #36, !dbg !3196
  %25 = load ptr, ptr %4, align 8, !dbg !3196, !tbaa !840
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3196
  %27 = load ptr, ptr %26, align 8, !dbg !3196, !tbaa !840
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3196
  br label %147, !dbg !3197

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.9.105, i32 noundef 5) #36, !dbg !3198
  %31 = load ptr, ptr %4, align 8, !dbg !3198, !tbaa !840
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3198
  %33 = load ptr, ptr %32, align 8, !dbg !3198, !tbaa !840
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3198
  %35 = load ptr, ptr %34, align 8, !dbg !3198, !tbaa !840
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3198
  br label %147, !dbg !3199

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.10.106, i32 noundef 5) #36, !dbg !3200
  %39 = load ptr, ptr %4, align 8, !dbg !3200, !tbaa !840
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3200
  %41 = load ptr, ptr %40, align 8, !dbg !3200, !tbaa !840
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3200
  %43 = load ptr, ptr %42, align 8, !dbg !3200, !tbaa !840
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3200
  %45 = load ptr, ptr %44, align 8, !dbg !3200, !tbaa !840
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3200
  br label %147, !dbg !3201

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.11.107, i32 noundef 5) #36, !dbg !3202
  %49 = load ptr, ptr %4, align 8, !dbg !3202, !tbaa !840
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3202
  %51 = load ptr, ptr %50, align 8, !dbg !3202, !tbaa !840
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3202
  %53 = load ptr, ptr %52, align 8, !dbg !3202, !tbaa !840
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3202
  %55 = load ptr, ptr %54, align 8, !dbg !3202, !tbaa !840
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3202
  %57 = load ptr, ptr %56, align 8, !dbg !3202, !tbaa !840
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3202
  br label %147, !dbg !3203

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.12.108, i32 noundef 5) #36, !dbg !3204
  %61 = load ptr, ptr %4, align 8, !dbg !3204, !tbaa !840
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3204
  %63 = load ptr, ptr %62, align 8, !dbg !3204, !tbaa !840
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3204
  %65 = load ptr, ptr %64, align 8, !dbg !3204, !tbaa !840
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3204
  %67 = load ptr, ptr %66, align 8, !dbg !3204, !tbaa !840
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3204
  %69 = load ptr, ptr %68, align 8, !dbg !3204, !tbaa !840
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3204
  %71 = load ptr, ptr %70, align 8, !dbg !3204, !tbaa !840
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3204
  br label %147, !dbg !3205

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.13.109, i32 noundef 5) #36, !dbg !3206
  %75 = load ptr, ptr %4, align 8, !dbg !3206, !tbaa !840
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3206
  %77 = load ptr, ptr %76, align 8, !dbg !3206, !tbaa !840
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3206
  %79 = load ptr, ptr %78, align 8, !dbg !3206, !tbaa !840
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3206
  %81 = load ptr, ptr %80, align 8, !dbg !3206, !tbaa !840
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3206
  %83 = load ptr, ptr %82, align 8, !dbg !3206, !tbaa !840
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3206
  %85 = load ptr, ptr %84, align 8, !dbg !3206, !tbaa !840
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3206
  %87 = load ptr, ptr %86, align 8, !dbg !3206, !tbaa !840
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3206
  br label %147, !dbg !3207

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.14.110, i32 noundef 5) #36, !dbg !3208
  %91 = load ptr, ptr %4, align 8, !dbg !3208, !tbaa !840
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3208
  %93 = load ptr, ptr %92, align 8, !dbg !3208, !tbaa !840
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3208
  %95 = load ptr, ptr %94, align 8, !dbg !3208, !tbaa !840
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3208
  %97 = load ptr, ptr %96, align 8, !dbg !3208, !tbaa !840
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3208
  %99 = load ptr, ptr %98, align 8, !dbg !3208, !tbaa !840
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3208
  %101 = load ptr, ptr %100, align 8, !dbg !3208, !tbaa !840
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3208
  %103 = load ptr, ptr %102, align 8, !dbg !3208, !tbaa !840
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3208
  %105 = load ptr, ptr %104, align 8, !dbg !3208, !tbaa !840
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3208
  br label %147, !dbg !3209

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.15.111, i32 noundef 5) #36, !dbg !3210
  %109 = load ptr, ptr %4, align 8, !dbg !3210, !tbaa !840
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3210
  %111 = load ptr, ptr %110, align 8, !dbg !3210, !tbaa !840
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3210
  %113 = load ptr, ptr %112, align 8, !dbg !3210, !tbaa !840
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3210
  %115 = load ptr, ptr %114, align 8, !dbg !3210, !tbaa !840
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3210
  %117 = load ptr, ptr %116, align 8, !dbg !3210, !tbaa !840
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3210
  %119 = load ptr, ptr %118, align 8, !dbg !3210, !tbaa !840
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3210
  %121 = load ptr, ptr %120, align 8, !dbg !3210, !tbaa !840
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3210
  %123 = load ptr, ptr %122, align 8, !dbg !3210, !tbaa !840
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3210
  %125 = load ptr, ptr %124, align 8, !dbg !3210, !tbaa !840
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3210
  br label %147, !dbg !3211

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.16.112, i32 noundef 5) #36, !dbg !3212
  %129 = load ptr, ptr %4, align 8, !dbg !3212, !tbaa !840
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3212
  %131 = load ptr, ptr %130, align 8, !dbg !3212, !tbaa !840
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3212
  %133 = load ptr, ptr %132, align 8, !dbg !3212, !tbaa !840
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3212
  %135 = load ptr, ptr %134, align 8, !dbg !3212, !tbaa !840
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3212
  %137 = load ptr, ptr %136, align 8, !dbg !3212, !tbaa !840
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3212
  %139 = load ptr, ptr %138, align 8, !dbg !3212, !tbaa !840
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3212
  %141 = load ptr, ptr %140, align 8, !dbg !3212, !tbaa !840
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3212
  %143 = load ptr, ptr %142, align 8, !dbg !3212, !tbaa !840
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3212
  %145 = load ptr, ptr %144, align 8, !dbg !3212, !tbaa !840
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3212
  br label %147, !dbg !3213

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3215 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3220, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %2, metadata !3221, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %3, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %4, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 0, metadata !3224, metadata !DIExpression()), !dbg !3225
  br label %6, !dbg !3226

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3228
  call void @llvm.dbg.value(metadata i64 %7, metadata !3224, metadata !DIExpression()), !dbg !3225
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3229
  %9 = load ptr, ptr %8, align 8, !dbg !3229, !tbaa !840
  %10 = icmp eq ptr %9, null, !dbg !3231
  %11 = add i64 %7, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %11, metadata !3224, metadata !DIExpression()), !dbg !3225
  br i1 %10, label %12, label %6, !dbg !3231, !llvm.loop !3233

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3235
  ret void, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3237 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3249, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %2, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !3252, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %4, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  %10 = icmp ult i32 %9, 41, !dbg !3260
  br i1 %10, label %11, label %16, !dbg !3260

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3260
  %13 = zext i32 %9 to i64, !dbg !3260
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3260
  %15 = add nuw nsw i32 %9, 8, !dbg !3260
  store i32 %15, ptr %4, align 8, !dbg !3260
  br label %19, !dbg !3260

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3260
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3260
  store ptr %18, ptr %7, align 8, !dbg !3260
  br label %19, !dbg !3260

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3260
  %22 = load ptr, ptr %21, align 8, !dbg !3260
  store ptr %22, ptr %6, align 16, !dbg !3263, !tbaa !840
  %23 = icmp eq ptr %22, null, !dbg !3264
  br i1 %23, label %128, label %24, !dbg !3265

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3257
  %25 = icmp ult i32 %20, 41, !dbg !3260
  br i1 %25, label %29, label %26, !dbg !3260

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3260
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3260
  store ptr %28, ptr %7, align 8, !dbg !3260
  br label %34, !dbg !3260

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3260
  %31 = zext i32 %20 to i64, !dbg !3260
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3260
  %33 = add nuw nsw i32 %20, 8, !dbg !3260
  store i32 %33, ptr %4, align 8, !dbg !3260
  br label %34, !dbg !3260

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3260
  %37 = load ptr, ptr %36, align 8, !dbg !3260
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3266
  store ptr %37, ptr %38, align 8, !dbg !3263, !tbaa !840
  %39 = icmp eq ptr %37, null, !dbg !3264
  br i1 %39, label %128, label %40, !dbg !3265

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 2, metadata !3254, metadata !DIExpression()), !dbg !3257
  %41 = icmp ult i32 %35, 41, !dbg !3260
  br i1 %41, label %45, label %42, !dbg !3260

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3260
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3260
  store ptr %44, ptr %7, align 8, !dbg !3260
  br label %50, !dbg !3260

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3260
  %47 = zext i32 %35 to i64, !dbg !3260
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3260
  %49 = add nuw nsw i32 %35, 8, !dbg !3260
  store i32 %49, ptr %4, align 8, !dbg !3260
  br label %50, !dbg !3260

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3260
  %53 = load ptr, ptr %52, align 8, !dbg !3260
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3266
  store ptr %53, ptr %54, align 16, !dbg !3263, !tbaa !840
  %55 = icmp eq ptr %53, null, !dbg !3264
  br i1 %55, label %128, label %56, !dbg !3265

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 3, metadata !3254, metadata !DIExpression()), !dbg !3257
  %57 = icmp ult i32 %51, 41, !dbg !3260
  br i1 %57, label %61, label %58, !dbg !3260

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3260
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3260
  store ptr %60, ptr %7, align 8, !dbg !3260
  br label %66, !dbg !3260

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3260
  %63 = zext i32 %51 to i64, !dbg !3260
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3260
  %65 = add nuw nsw i32 %51, 8, !dbg !3260
  store i32 %65, ptr %4, align 8, !dbg !3260
  br label %66, !dbg !3260

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3260
  %69 = load ptr, ptr %68, align 8, !dbg !3260
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3266
  store ptr %69, ptr %70, align 8, !dbg !3263, !tbaa !840
  %71 = icmp eq ptr %69, null, !dbg !3264
  br i1 %71, label %128, label %72, !dbg !3265

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 4, metadata !3254, metadata !DIExpression()), !dbg !3257
  %73 = icmp ult i32 %67, 41, !dbg !3260
  br i1 %73, label %77, label %74, !dbg !3260

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3260
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3260
  store ptr %76, ptr %7, align 8, !dbg !3260
  br label %82, !dbg !3260

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3260
  %79 = zext i32 %67 to i64, !dbg !3260
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3260
  %81 = add nuw nsw i32 %67, 8, !dbg !3260
  store i32 %81, ptr %4, align 8, !dbg !3260
  br label %82, !dbg !3260

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3260
  %85 = load ptr, ptr %84, align 8, !dbg !3260
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3266
  store ptr %85, ptr %86, align 16, !dbg !3263, !tbaa !840
  %87 = icmp eq ptr %85, null, !dbg !3264
  br i1 %87, label %128, label %88, !dbg !3265

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 5, metadata !3254, metadata !DIExpression()), !dbg !3257
  %89 = icmp ult i32 %83, 41, !dbg !3260
  br i1 %89, label %93, label %90, !dbg !3260

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3260
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3260
  store ptr %92, ptr %7, align 8, !dbg !3260
  br label %98, !dbg !3260

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3260
  %95 = zext i32 %83 to i64, !dbg !3260
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3260
  %97 = add nuw nsw i32 %83, 8, !dbg !3260
  store i32 %97, ptr %4, align 8, !dbg !3260
  br label %98, !dbg !3260

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3260
  %100 = load ptr, ptr %99, align 8, !dbg !3260
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3266
  store ptr %100, ptr %101, align 8, !dbg !3263, !tbaa !840
  %102 = icmp eq ptr %100, null, !dbg !3264
  br i1 %102, label %128, label %103, !dbg !3265

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3254, metadata !DIExpression()), !dbg !3257
  %104 = load ptr, ptr %7, align 8, !dbg !3260
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3260
  store ptr %105, ptr %7, align 8, !dbg !3260
  %106 = load ptr, ptr %104, align 8, !dbg !3260
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3266
  store ptr %106, ptr %107, align 16, !dbg !3263, !tbaa !840
  %108 = icmp eq ptr %106, null, !dbg !3264
  br i1 %108, label %128, label %109, !dbg !3265

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3254, metadata !DIExpression()), !dbg !3257
  %110 = load ptr, ptr %7, align 8, !dbg !3260
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3260
  store ptr %111, ptr %7, align 8, !dbg !3260
  %112 = load ptr, ptr %110, align 8, !dbg !3260
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3266
  store ptr %112, ptr %113, align 8, !dbg !3263, !tbaa !840
  %114 = icmp eq ptr %112, null, !dbg !3264
  br i1 %114, label %128, label %115, !dbg !3265

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3254, metadata !DIExpression()), !dbg !3257
  %116 = load ptr, ptr %7, align 8, !dbg !3260
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3260
  store ptr %117, ptr %7, align 8, !dbg !3260
  %118 = load ptr, ptr %116, align 8, !dbg !3260
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3266
  store ptr %118, ptr %119, align 16, !dbg !3263, !tbaa !840
  %120 = icmp eq ptr %118, null, !dbg !3264
  br i1 %120, label %128, label %121, !dbg !3265

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3254, metadata !DIExpression()), !dbg !3257
  %122 = load ptr, ptr %7, align 8, !dbg !3260
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3260
  store ptr %123, ptr %7, align 8, !dbg !3260
  %124 = load ptr, ptr %122, align 8, !dbg !3260
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3266
  store ptr %124, ptr %125, align 8, !dbg !3263, !tbaa !840
  %126 = icmp eq ptr %124, null, !dbg !3264
  %127 = select i1 %126, i64 9, i64 10, !dbg !3265
  br label %128, !dbg !3265

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3267
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3268
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3269
  ret void, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3270 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %1, metadata !3275, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !3276, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %3, metadata !3277, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !3284
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3278, metadata !DIExpression()), !dbg !3285
  call void @llvm.va_start(ptr nonnull %5), !dbg !3286
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3287
  call void @llvm.va_end(ptr nonnull %5), !dbg !3288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !3289
  ret void, !dbg !3289
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3290 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3291, !tbaa !840
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.100, ptr noundef %1), !dbg !3291
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.17.117, i32 noundef 5) #36, !dbg !3292
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.118) #36, !dbg !3292
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.19.119, i32 noundef 5) #36, !dbg !3293
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.120, ptr noundef nonnull @.str.21.121) #36, !dbg !3293
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.98, ptr noundef nonnull @.str.22.122, i32 noundef 5) #36, !dbg !3294
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3294
  ret void, !dbg !3295
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %2, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3318
  %5 = icmp eq ptr %4, null, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3322

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3323
  unreachable, !dbg !3323

7:                                                ; preds = %3
  ret ptr %4, !dbg !3324
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3325
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3326
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3327
  %5 = icmp eq ptr %4, null, !dbg !3329
  br i1 %5, label %6, label %7, !dbg !3330

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3331
  unreachable, !dbg !3331

7:                                                ; preds = %3
  ret ptr %4, !dbg !3332
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3333 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3338
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3339
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3340
  %3 = icmp eq ptr %2, null, !dbg !3342
  br i1 %3, label %4, label %5, !dbg !3343

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3344
  unreachable, !dbg !3344

5:                                                ; preds = %1
  ret ptr %2, !dbg !3345
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3346 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3347 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3360
  %3 = icmp eq ptr %2, null, !dbg !3362
  br i1 %3, label %4, label %5, !dbg !3363

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3364
  unreachable, !dbg !3364

5:                                                ; preds = %1
  ret ptr %2, !dbg !3365
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3366 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3372
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3375
  %3 = icmp eq ptr %2, null, !dbg !3377
  br i1 %3, label %4, label %5, !dbg !3378

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3379
  unreachable, !dbg !3379

5:                                                ; preds = %1
  ret ptr %2, !dbg !3380
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3381 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  %3 = icmp eq i64 %1, 0, !dbg !3395
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3395
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %5, metadata !3313, metadata !DIExpression()), !dbg !3397
  %6 = icmp eq ptr %5, null, !dbg !3399
  br i1 %6, label %7, label %8, !dbg !3400

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3401
  unreachable, !dbg !3401

8:                                                ; preds = %2
  ret ptr %5, !dbg !3402
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3403 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3417
  %3 = icmp eq i64 %1, 0, !dbg !3419
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3419
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3420
  call void @llvm.dbg.value(metadata ptr %5, metadata !3313, metadata !DIExpression()), !dbg !3421
  %6 = icmp eq ptr %5, null, !dbg !3423
  br i1 %6, label %7, label %8, !dbg !3424

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3425
  unreachable, !dbg !3425

8:                                                ; preds = %2
  ret ptr %5, !dbg !3426
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %2, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %2, metadata !3439, metadata !DIExpression()), !dbg !3440
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3443
  %5 = icmp eq ptr %4, null, !dbg !3445
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3447
  unreachable, !dbg !3447

7:                                                ; preds = %3
  ret ptr %4, !dbg !3448
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3449 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr null, metadata !3305, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3456
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3459
  %4 = icmp eq ptr %3, null, !dbg !3461
  br i1 %4, label %5, label %6, !dbg !3462

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3463
  unreachable, !dbg !3463

6:                                                ; preds = %2
  ret ptr %3, !dbg !3464
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3465 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3469, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr null, metadata !3431, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %0, metadata !3432, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr null, metadata !3435, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %0, metadata !3438, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3474
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3477
  %4 = icmp eq ptr %3, null, !dbg !3479
  br i1 %4, label %5, label %6, !dbg !3480

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3481
  unreachable, !dbg !3481

6:                                                ; preds = %2
  ret ptr %3, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3483 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !776, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %1, metadata !777, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 1, metadata !778, metadata !DIExpression()), !dbg !3490
  %3 = load i64, ptr %1, align 8, !dbg !3492, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %3, metadata !779, metadata !DIExpression()), !dbg !3490
  %4 = icmp eq ptr %0, null, !dbg !3493
  br i1 %4, label %5, label %8, !dbg !3495

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3496
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3499
  br label %15, !dbg !3499

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3500
  %10 = add nuw i64 %9, 1, !dbg !3500
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3500
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3500
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %13, metadata !779, metadata !DIExpression()), !dbg !3490
  br i1 %12, label %14, label %15, !dbg !3503

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3504
  unreachable, !dbg !3504

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3490
  call void @llvm.dbg.value(metadata i64 %16, metadata !779, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %16, metadata !3308, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 1, metadata !3309, metadata !DIExpression()), !dbg !3505
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %17, metadata !3313, metadata !DIExpression()), !dbg !3508
  %18 = icmp eq ptr %17, null, !dbg !3510
  br i1 %18, label %19, label %20, !dbg !3511

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3512
  unreachable, !dbg !3512

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !776, metadata !DIExpression()), !dbg !3490
  store i64 %16, ptr %1, align 8, !dbg !3513, !tbaa !2592
  ret ptr %17, !dbg !3514
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !776, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %1, metadata !777, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %2, metadata !778, metadata !DIExpression()), !dbg !3515
  %4 = load i64, ptr %1, align 8, !dbg !3516, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %4, metadata !779, metadata !DIExpression()), !dbg !3515
  %5 = icmp eq ptr %0, null, !dbg !3517
  br i1 %5, label %6, label %13, !dbg !3518

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3519
  br i1 %7, label %8, label %20, !dbg !3520

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %9, metadata !779, metadata !DIExpression()), !dbg !3515
  %10 = icmp ugt i64 %2, 128, !dbg !3523
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %12, metadata !779, metadata !DIExpression()), !dbg !3515
  br label %20, !dbg !3525

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3526
  %15 = add nuw i64 %14, 1, !dbg !3526
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3526
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3526
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %18, metadata !779, metadata !DIExpression()), !dbg !3515
  br i1 %17, label %19, label %20, !dbg !3527

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3528
  unreachable, !dbg !3528

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3515
  call void @llvm.dbg.value(metadata i64 %21, metadata !779, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %21, metadata !3308, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3529
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3531
  call void @llvm.dbg.value(metadata ptr %22, metadata !3313, metadata !DIExpression()), !dbg !3532
  %23 = icmp eq ptr %22, null, !dbg !3534
  br i1 %23, label %24, label %25, !dbg !3535

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3536
  unreachable, !dbg !3536

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !776, metadata !DIExpression()), !dbg !3515
  store i64 %21, ptr %1, align 8, !dbg !3537, !tbaa !2592
  ret ptr %22, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !783 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !791, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %1, metadata !792, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %2, metadata !793, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %3, metadata !794, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %4, metadata !795, metadata !DIExpression()), !dbg !3539
  %6 = load i64, ptr %1, align 8, !dbg !3540, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %6, metadata !796, metadata !DIExpression()), !dbg !3539
  %7 = ashr i64 %6, 1, !dbg !3541
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3541
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3541
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %10, metadata !797, metadata !DIExpression()), !dbg !3539
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %11, metadata !797, metadata !DIExpression()), !dbg !3539
  %12 = icmp sgt i64 %3, -1, !dbg !3544
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3546
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %15, metadata !797, metadata !DIExpression()), !dbg !3539
  %16 = icmp slt i64 %4, 0, !dbg !3547
  br i1 %16, label %17, label %30, !dbg !3547

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3547
  br i1 %18, label %19, label %24, !dbg !3547

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3547
  %21 = udiv i64 9223372036854775807, %20, !dbg !3547
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3547
  br i1 %23, label %46, label %43, !dbg !3547

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3547
  br i1 %25, label %43, label %26, !dbg !3547

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3547
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3547
  %29 = icmp ult i64 %28, %15, !dbg !3547
  br i1 %29, label %46, label %43, !dbg !3547

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3547
  br i1 %31, label %43, label %32, !dbg !3547

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3547
  br i1 %33, label %34, label %40, !dbg !3547

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3547
  br i1 %35, label %43, label %36, !dbg !3547

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3547
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3547
  %39 = icmp ult i64 %38, %4, !dbg !3547
  br i1 %39, label %46, label %43, !dbg !3547

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3547
  br i1 %42, label %46, label %43, !dbg !3547

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !798, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3539
  %44 = mul i64 %15, %4, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %44, metadata !798, metadata !DIExpression()), !dbg !3539
  %45 = icmp slt i64 %44, 128, !dbg !3547
  br i1 %45, label %46, label %51, !dbg !3547

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !799, metadata !DIExpression()), !dbg !3539
  %48 = sdiv i64 %47, %4, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %48, metadata !797, metadata !DIExpression()), !dbg !3539
  %49 = srem i64 %47, %4, !dbg !3551
  %50 = sub nsw i64 %47, %49, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %50, metadata !798, metadata !DIExpression()), !dbg !3539
  br label %51, !dbg !3553

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3539
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3539
  call void @llvm.dbg.value(metadata i64 %53, metadata !798, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %52, metadata !797, metadata !DIExpression()), !dbg !3539
  %54 = icmp eq ptr %0, null, !dbg !3554
  br i1 %54, label %55, label %56, !dbg !3556

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3557, !tbaa !2592
  br label %56, !dbg !3558

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3559
  %58 = icmp slt i64 %57, %2, !dbg !3561
  br i1 %58, label %59, label %96, !dbg !3562

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3563
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3563
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %62, metadata !797, metadata !DIExpression()), !dbg !3539
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3564
  br i1 %65, label %95, label %66, !dbg !3564

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3565

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3565
  br i1 %68, label %69, label %74, !dbg !3565

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3565
  %71 = udiv i64 9223372036854775807, %70, !dbg !3565
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3565
  br i1 %73, label %95, label %93, !dbg !3565

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3565
  br i1 %75, label %93, label %76, !dbg !3565

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3565
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3565
  %79 = icmp ult i64 %78, %62, !dbg !3565
  br i1 %79, label %95, label %93, !dbg !3565

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3565
  br i1 %81, label %93, label %82, !dbg !3565

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3565
  br i1 %83, label %84, label %90, !dbg !3565

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3565
  br i1 %85, label %93, label %86, !dbg !3565

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3565
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3565
  %89 = icmp ult i64 %88, %4, !dbg !3565
  br i1 %89, label %95, label %93, !dbg !3565

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3565
  br i1 %92, label %95, label %93, !dbg !3565

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !798, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3539
  %94 = mul i64 %62, %4, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %94, metadata !798, metadata !DIExpression()), !dbg !3539
  br label %96, !dbg !3566

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3567
  unreachable, !dbg !3567

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3539
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3539
  call void @llvm.dbg.value(metadata i64 %98, metadata !798, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %97, metadata !797, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %98, metadata !3386, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %98, metadata !3392, metadata !DIExpression()), !dbg !3570
  %99 = icmp eq i64 %98, 0, !dbg !3572
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3572
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3573
  call void @llvm.dbg.value(metadata ptr %101, metadata !3313, metadata !DIExpression()), !dbg !3574
  %102 = icmp eq ptr %101, null, !dbg !3576
  br i1 %102, label %103, label %104, !dbg !3577

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3578
  unreachable, !dbg !3578

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !791, metadata !DIExpression()), !dbg !3539
  store i64 %97, ptr %1, align 8, !dbg !3579, !tbaa !2592
  ret ptr %101, !dbg !3580
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3581 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 1, metadata !3588, metadata !DIExpression()), !dbg !3589
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3592
  %3 = icmp eq ptr %2, null, !dbg !3594
  br i1 %3, label %4, label %5, !dbg !3595

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3596
  unreachable, !dbg !3596

5:                                                ; preds = %1
  ret ptr %2, !dbg !3597
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3598 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3586 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3588, metadata !DIExpression()), !dbg !3599
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3600
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3601
  %4 = icmp eq ptr %3, null, !dbg !3603
  br i1 %4, label %5, label %6, !dbg !3604

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3605
  unreachable, !dbg !3605

6:                                                ; preds = %2
  ret ptr %3, !dbg !3606
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3607 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()), !dbg !3621
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3624
  %3 = icmp eq ptr %2, null, !dbg !3626
  br i1 %3, label %4, label %5, !dbg !3627

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3628
  unreachable, !dbg !3628

5:                                                ; preds = %1
  ret ptr %2, !dbg !3629
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3612 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3631
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3634
  %4 = icmp eq ptr %3, null, !dbg !3636
  br i1 %4, label %5, label %6, !dbg !3637

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3638
  unreachable, !dbg !3638

6:                                                ; preds = %2
  ret ptr %3, !dbg !3639
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3640 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3647
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3650
  %4 = icmp eq ptr %3, null, !dbg !3652
  br i1 %4, label %5, label %6, !dbg !3653

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3654
  unreachable, !dbg !3654

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3665
  ret ptr %3, !dbg !3666
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3667 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %1, metadata !3351, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3676
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3678
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3679
  %4 = icmp eq ptr %3, null, !dbg !3681
  br i1 %4, label %5, label %6, !dbg !3682

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3683
  unreachable, !dbg !3683

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3686
  ret ptr %3, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3693, metadata !DIExpression()), !dbg !3695
  %3 = add nsw i64 %1, 1, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %3, metadata !3351, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()), !dbg !3699
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3701
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3702
  %5 = icmp eq ptr %4, null, !dbg !3704
  br i1 %5, label %6, label %7, !dbg !3705

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3706
  unreachable, !dbg !3706

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3694, metadata !DIExpression()), !dbg !3695
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3707
  store i8 0, ptr %8, align 1, !dbg !3708, !tbaa !913
  call void @llvm.dbg.value(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3711
  ret ptr %4, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3713 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3716
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3717
  %3 = add i64 %2, 1, !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !3645, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !3337, metadata !DIExpression()), !dbg !3721
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3724
  %5 = icmp eq ptr %4, null, !dbg !3726
  br i1 %5, label %6, label %7, !dbg !3727

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3728
  unreachable, !dbg !3728

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3662, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3731
  ret ptr %4, !dbg !3732
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3733 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3738, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3739
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #36, !dbg !3738
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #36, !dbg !3738
  %3 = icmp eq i32 %1, 0, !dbg !3738
  tail call void @llvm.assume(i1 %3), !dbg !3738
  tail call void @abort() #38, !dbg !3740
  unreachable, !dbg !3740
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3741 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3784
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3785
  call void @llvm.dbg.value(metadata i1 poison, metadata !3780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3789
  %3 = load i32, ptr %0, align 8, !dbg !3791, !tbaa !3792
  %4 = and i32 %3, 32, !dbg !3793
  %5 = icmp eq i32 %4, 0, !dbg !3793
  call void @llvm.dbg.value(metadata i1 %5, metadata !3782, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3784
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3794
  %7 = icmp eq i32 %6, 0, !dbg !3795
  call void @llvm.dbg.value(metadata i1 %7, metadata !3783, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3784
  br i1 %5, label %8, label %18, !dbg !3796

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3798
  call void @llvm.dbg.value(metadata i1 %9, metadata !3780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3784
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3799
  %11 = xor i1 %7, true, !dbg !3799
  %12 = sext i1 %11 to i32, !dbg !3799
  br i1 %10, label %21, label %13, !dbg !3799

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3800
  %15 = load i32, ptr %14, align 4, !dbg !3800, !tbaa !904
  %16 = icmp ne i32 %15, 9, !dbg !3801
  %17 = sext i1 %16 to i32, !dbg !3802
  br label %21, !dbg !3802

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3803

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3805
  store i32 0, ptr %20, align 4, !dbg !3807, !tbaa !904
  br label %21, !dbg !3805

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3784
  ret i32 %22, !dbg !3808
}

; Function Attrs: nounwind
declare !dbg !3809 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3813 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3852, metadata !DIExpression()), !dbg !3855
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3856
  call void @llvm.dbg.value(metadata i32 %2, metadata !3853, metadata !DIExpression()), !dbg !3855
  %3 = icmp slt i32 %2, 0, !dbg !3857
  br i1 %3, label %4, label %6, !dbg !3859

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3860
  br label %24, !dbg !3861

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3862
  %8 = icmp eq i32 %7, 0, !dbg !3862
  br i1 %8, label %13, label %9, !dbg !3864

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3865
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3866
  %12 = icmp eq i64 %11, -1, !dbg !3867
  br i1 %12, label %16, label %13, !dbg !3868

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3869
  %15 = icmp eq i32 %14, 0, !dbg !3869
  br i1 %15, label %16, label %18, !dbg !3870

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3855
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3871
  call void @llvm.dbg.value(metadata i32 %17, metadata !3854, metadata !DIExpression()), !dbg !3855
  br label %24, !dbg !3872

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3873
  %20 = load i32, ptr %19, align 4, !dbg !3873, !tbaa !904
  call void @llvm.dbg.value(metadata i32 %20, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3855
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3871
  call void @llvm.dbg.value(metadata i32 %21, metadata !3854, metadata !DIExpression()), !dbg !3855
  %22 = icmp eq i32 %20, 0, !dbg !3874
  br i1 %22, label %24, label %23, !dbg !3872

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3876, !tbaa !904
  call void @llvm.dbg.value(metadata i32 -1, metadata !3854, metadata !DIExpression()), !dbg !3855
  br label %24, !dbg !3878

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3855
  ret i32 %25, !dbg !3879
}

; Function Attrs: nofree nounwind
declare !dbg !3880 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3881 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3882 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3883 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3924, metadata !DIExpression()), !dbg !3925
  %2 = icmp eq ptr %0, null, !dbg !3926
  br i1 %2, label %6, label %3, !dbg !3928

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3929
  %5 = icmp eq i32 %4, 0, !dbg !3929
  br i1 %5, label %6, label %8, !dbg !3930

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3931
  br label %16, !dbg !3932

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !3938
  %9 = load i32, ptr %0, align 8, !dbg !3940, !tbaa !3792
  %10 = and i32 %9, 256, !dbg !3942
  %11 = icmp eq i32 %10, 0, !dbg !3942
  br i1 %11, label %14, label %12, !dbg !3943

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3944
  br label %14, !dbg !3944

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3945
  br label %16, !dbg !3946

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3925
  ret i32 %17, !dbg !3947
}

; Function Attrs: nofree nounwind
declare !dbg !3948 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %2, metadata !3990, metadata !DIExpression()), !dbg !3994
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3995
  %5 = load ptr, ptr %4, align 8, !dbg !3995, !tbaa !3996
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3997
  %7 = load ptr, ptr %6, align 8, !dbg !3997, !tbaa !3998
  %8 = icmp eq ptr %5, %7, !dbg !3999
  br i1 %8, label %9, label %27, !dbg !4000

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4001
  %11 = load ptr, ptr %10, align 8, !dbg !4001, !tbaa !1602
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4002
  %13 = load ptr, ptr %12, align 8, !dbg !4002, !tbaa !4003
  %14 = icmp eq ptr %11, %13, !dbg !4004
  br i1 %14, label %15, label %27, !dbg !4005

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4006
  %17 = load ptr, ptr %16, align 8, !dbg !4006, !tbaa !4007
  %18 = icmp eq ptr %17, null, !dbg !4008
  br i1 %18, label %19, label %27, !dbg !4009

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4010
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %21, metadata !3991, metadata !DIExpression()), !dbg !4012
  %22 = icmp eq i64 %21, -1, !dbg !4013
  br i1 %22, label %29, label %23, !dbg !4015

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4016, !tbaa !3792
  %25 = and i32 %24, -17, !dbg !4016
  store i32 %25, ptr %0, align 8, !dbg !4016, !tbaa !3792
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4017
  store i64 %21, ptr %26, align 8, !dbg !4018, !tbaa !4019
  br label %29, !dbg !4020

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4021
  br label %29, !dbg !4022

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3994
  ret i32 %30, !dbg !4023
}

; Function Attrs: nofree nounwind
declare !dbg !4024 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4027 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4032, metadata !DIExpression()), !dbg !4038
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4039
  %4 = icmp eq i32 %3, 0, !dbg !4039
  br i1 %4, label %5, label %12, !dbg !4041

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4042, metadata !DIExpression()), !dbg !4046
  %6 = load i16, ptr %2, align 16, !dbg !4049
  %7 = icmp eq i16 %6, 67, !dbg !4049
  br i1 %7, label %11, label %8, !dbg !4050

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4042, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4045, metadata !DIExpression()), !dbg !4051
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4053
  %10 = icmp eq i32 %9, 0, !dbg !4054
  br i1 %10, label %11, label %12, !dbg !4055

11:                                               ; preds = %8, %5
  br label %12, !dbg !4056

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4036
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4057
  ret i1 %13, !dbg !4057
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4058 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4063, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %1, metadata !4064, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %2, metadata !4065, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %3, metadata !4066, metadata !DIExpression()), !dbg !4068
  %5 = icmp eq ptr %1, null, !dbg !4069
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4071
  %7 = select i1 %5, ptr @.str.149, ptr %1, !dbg !4071
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %8, metadata !4065, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %7, metadata !4064, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %6, metadata !4063, metadata !DIExpression()), !dbg !4068
  %9 = icmp eq ptr %3, null, !dbg !4072
  %10 = select i1 %9, ptr @internal_state.150, ptr %3, !dbg !4074
  call void @llvm.dbg.value(metadata ptr %10, metadata !4066, metadata !DIExpression()), !dbg !4068
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4075
  call void @llvm.dbg.value(metadata i64 %11, metadata !4067, metadata !DIExpression()), !dbg !4068
  %12 = icmp ult i64 %11, -3, !dbg !4076
  br i1 %12, label %13, label %17, !dbg !4078

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4079
  %15 = icmp eq i32 %14, 0, !dbg !4079
  br i1 %15, label %16, label %29, !dbg !4080

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4081, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata ptr %10, metadata !4088, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i32 0, metadata !4091, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 8, metadata !4092, metadata !DIExpression()), !dbg !4093
  store i64 0, ptr %10, align 1, !dbg !4095
  br label %29, !dbg !4096

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4097
  br i1 %18, label %19, label %20, !dbg !4099

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4100
  unreachable, !dbg !4100

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4101

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !4103
  br i1 %23, label %29, label %24, !dbg !4104

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4105
  br i1 %25, label %29, label %26, !dbg !4108

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4109, !tbaa !913
  %28 = zext i8 %27 to i32, !dbg !4110
  store i32 %28, ptr %6, align 4, !dbg !4111, !tbaa !904
  br label %29, !dbg !4112

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4068
  ret i64 %30, !dbg !4113
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4114 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4119 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %2, metadata !4123, metadata !DIExpression()), !dbg !4125
  %4 = icmp eq i64 %2, 0, !dbg !4126
  br i1 %4, label %8, label %5, !dbg !4126

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4126
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4126
  br i1 %7, label %13, label %8, !dbg !4126

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4125
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4125
  %9 = mul i64 %2, %1, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %9, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %0, metadata !4128, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %9, metadata !4131, metadata !DIExpression()), !dbg !4132
  %10 = icmp eq i64 %9, 0, !dbg !4134
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4134
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !4135
  br label %15, !dbg !4136

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4125
  %14 = tail call ptr @__errno_location() #39, !dbg !4137
  store i32 12, ptr %14, align 4, !dbg !4139, !tbaa !904
  br label %15, !dbg !4140

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4125
  ret ptr %16, !dbg !4141
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4146, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata ptr %1, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 %2, metadata !4148, metadata !DIExpression()), !dbg !4149
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4150
  ret i32 %4, !dbg !4151
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4156, metadata !DIExpression()), !dbg !4157
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4158
  ret ptr %2, !dbg !4159
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4164
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4165
  call void @llvm.dbg.value(metadata ptr %2, metadata !4163, metadata !DIExpression()), !dbg !4164
  ret ptr %2, !dbg !4166
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %1, metadata !4170, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %2, metadata !4171, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4177
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4179
  call void @llvm.dbg.value(metadata ptr %4, metadata !4163, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %4, metadata !4172, metadata !DIExpression()), !dbg !4176
  %5 = icmp eq ptr %4, null, !dbg !4180
  br i1 %5, label %6, label %9, !dbg !4181

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4182
  br i1 %7, label %19, label %8, !dbg !4185

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4186, !tbaa !913
  br label %19, !dbg !4187

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %10, metadata !4173, metadata !DIExpression()), !dbg !4189
  %11 = icmp ult i64 %10, %2, !dbg !4190
  br i1 %11, label %12, label %14, !dbg !4192

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4193
  call void @llvm.dbg.value(metadata ptr %1, metadata !4195, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %13, metadata !4199, metadata !DIExpression()), !dbg !4200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4202
  br label %19, !dbg !4203

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4204
  br i1 %15, label %19, label %16, !dbg !4207

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %1, metadata !4195, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %17, metadata !4199, metadata !DIExpression()), !dbg !4210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4212
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4213
  store i8 0, ptr %18, align 1, !dbg !4214, !tbaa !913
  br label %19, !dbg !4215

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4216
  ret i32 %20, !dbg !4217
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !412, !416, !431, !724, !756, !483, !758, !501, !515, !561, !761, !718, !767, !801, !803, !805, !807, !809, !811, !743, !815, !818, !820}
!llvm.ident = !{!822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822}
!llvm.module.flags = !{!823, !824, !825, !826, !827, !828}

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
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !131, globals: !141, splitDebugInlining: false, nameTableKind: None)
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
!430 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !431, file: !432, line: 66, type: !478, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, globals: !434, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!433 = !{!133, !140}
!434 = !{!435, !437, !457, !459, !461, !463, !429, !465, !467, !469, !471, !476}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !432, line: 272, type: !249, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "old_file_name", scope: !439, file: !432, line: 304, type: !138, isLocal: true, isDefinition: true)
!439 = distinct !DISubprogram(name: "verror_at_line", scope: !432, file: !432, line: 298, type: !440, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !450)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !74, !74, !138, !69, !138, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !444)
!444 = !{!445, !447, !448, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !443, file: !446, baseType: !69, size: 32)
!446 = !DIFile(filename: "lib/error.c", directory: "/src")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !443, file: !446, baseType: !69, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !443, file: !446, baseType: !133, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !443, file: !446, baseType: !133, size: 64, offset: 128)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DILocalVariable(name: "status", arg: 1, scope: !439, file: !432, line: 298, type: !74)
!452 = !DILocalVariable(name: "errnum", arg: 2, scope: !439, file: !432, line: 298, type: !74)
!453 = !DILocalVariable(name: "file_name", arg: 3, scope: !439, file: !432, line: 298, type: !138)
!454 = !DILocalVariable(name: "line_number", arg: 4, scope: !439, file: !432, line: 298, type: !69)
!455 = !DILocalVariable(name: "message", arg: 5, scope: !439, file: !432, line: 298, type: !138)
!456 = !DILocalVariable(name: "args", arg: 6, scope: !439, file: !432, line: 298, type: !442)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "old_line_number", scope: !439, file: !432, line: 305, type: !69, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !432, line: 338, type: !61, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !19, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !432, line: 346, type: !263, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "error_message_count", scope: !431, file: !432, line: 69, type: !69, isLocal: false, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !431, file: !432, line: 295, type: !74, isLocal: false, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !283, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !432, line: 208, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 21)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !432, line: 214, type: !249, isLocal: true, isDefinition: true)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "internal_state", scope: !483, file: !484, line: 24, type: !487, isLocal: true, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !484, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !485, globals: !486, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!485 = !{!133}
!486 = !{!481}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !489)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !491, file: !490, line: 15, baseType: !74, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !491, file: !490, line: 20, baseType: !495, size: 32, offset: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !490, line: 16, size: 32, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !495, file: !490, line: 18, baseType: !69, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !495, file: !490, line: 19, baseType: !61, size: 32)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "program_name", scope: !501, file: !502, line: 31, type: !138, isLocal: false, isDefinition: true)
!501 = distinct !DICompileUnit(language: DW_LANG_C11, file: !502, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !503, globals: !504, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!503 = !{!132}
!504 = !{!499, !505, !507}
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !502, line: 46, type: !19, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !502, line: 49, type: !61, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "utf07FF", scope: !511, file: !512, line: 46, type: !537, isLocal: true, isDefinition: true)
!511 = distinct !DISubprogram(name: "proper_name_lite", scope: !512, file: !512, line: 38, type: !513, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !517)
!512 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!513 = !DISubroutineType(types: !514)
!514 = !{!138, !138, !138}
!515 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !516, splitDebugInlining: false, nameTableKind: None)
!516 = !{!509}
!517 = !{!518, !519, !520, !521, !526}
!518 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !511, file: !512, line: 38, type: !138)
!519 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !511, file: !512, line: 38, type: !138)
!520 = !DILocalVariable(name: "translation", scope: !511, file: !512, line: 40, type: !138)
!521 = !DILocalVariable(name: "w", scope: !511, file: !512, line: 47, type: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !523, line: 37, baseType: !524)
!523 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !216, line: 57, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !216, line: 42, baseType: !69)
!526 = !DILocalVariable(name: "mbs", scope: !511, file: !512, line: 48, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !529, file: !490, line: 15, baseType: !74, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !529, file: !490, line: 20, baseType: !533, size: 32, offset: 32)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !490, line: 16, size: 32, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !533, file: !490, line: 18, baseType: !69, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !533, file: !490, line: 19, baseType: !61, size: 32)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !264)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !540, line: 78, type: !19, isLocal: true, isDefinition: true)
!540 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !540, line: 79, type: !258, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !540, line: 80, type: !159, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !540, line: 81, type: !159, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !540, line: 82, type: !238, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !540, line: 83, type: !263, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !540, line: 84, type: !19, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !540, line: 85, type: !283, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !540, line: 86, type: !283, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !540, line: 87, type: !19, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !561, file: !540, line: 76, type: !633, isLocal: false, isDefinition: true)
!561 = distinct !DICompileUnit(language: DW_LANG_C11, file: !540, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !562, retainedTypes: !568, globals: !569, splitDebugInlining: false, nameTableKind: None)
!562 = !{!93, !563, !78}
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !94, line: 254, baseType: !69, size: 32, elements: !564)
!564 = !{!565, !566, !567}
!565 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!566 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!567 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!568 = !{!74, !134, !135}
!569 = !{!538, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !570, !574, !584, !586, !591, !593, !595, !597, !599, !622, !629, !631}
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !561, file: !540, line: 92, type: !572, isLocal: false, isDefinition: true)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 320, elements: !52)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !561, file: !540, line: 1040, type: !576, isLocal: false, isDefinition: true)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !540, line: 56, size: 448, elements: !577)
!577 = !{!578, !579, !580, !582, !583}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !576, file: !540, line: 59, baseType: !93, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !540, line: 62, baseType: !74, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !576, file: !540, line: 66, baseType: !581, size: 256, offset: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !20)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !576, file: !540, line: 69, baseType: !138, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !576, file: !540, line: 72, baseType: !138, size: 64, offset: 384)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !561, file: !540, line: 107, type: !576, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "slot0", scope: !561, file: !540, line: 831, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 256)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !540, line: 321, type: !263, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !540, line: 357, type: !263, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !540, line: 358, type: !263, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !540, line: 199, type: !283, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "quote", scope: !601, file: !540, line: 228, type: !620, isLocal: true, isDefinition: true)
!601 = distinct !DISubprogram(name: "gettext_quote", scope: !540, file: !540, line: 197, type: !602, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!138, !138, !93}
!604 = !{!605, !606, !607, !608, !609}
!605 = !DILocalVariable(name: "msgid", arg: 1, scope: !601, file: !540, line: 197, type: !138)
!606 = !DILocalVariable(name: "s", arg: 2, scope: !601, file: !540, line: 197, type: !93)
!607 = !DILocalVariable(name: "translation", scope: !601, file: !540, line: 199, type: !138)
!608 = !DILocalVariable(name: "w", scope: !601, file: !540, line: 229, type: !522)
!609 = !DILocalVariable(name: "mbs", scope: !601, file: !540, line: 230, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !612, file: !490, line: 15, baseType: !74, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !612, file: !490, line: 20, baseType: !616, size: 32, offset: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !490, line: 16, size: 32, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !616, file: !490, line: 18, baseType: !69, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !616, file: !490, line: 19, baseType: !61, size: 32)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !621)
!621 = !{!265, !63}
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "slotvec", scope: !561, file: !540, line: 834, type: !624, isLocal: true, isDefinition: true)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !540, line: 823, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !625, file: !540, line: 825, baseType: !135, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !625, file: !540, line: 826, baseType: !132, size: 64, offset: 64)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "nslots", scope: !561, file: !540, line: 832, type: !74, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "slotvec0", scope: !561, file: !540, line: 833, type: !625, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 704, elements: !635)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!635 = !{!636}
!636 = !DISubrange(count: 11)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !639, line: 67, type: !149, isLocal: true, isDefinition: true)
!639 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !639, line: 69, type: !283, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !639, line: 83, type: !283, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !639, line: 83, type: !61, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !639, line: 85, type: !263, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !639, line: 88, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 171)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !639, line: 88, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 34)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !639, line: 105, type: !154, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !639, line: 109, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 23)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !639, line: 113, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 28)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !639, line: 120, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 32)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !639, line: 127, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 36)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !639, line: 134, type: !307, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !639, line: 142, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 44)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !639, line: 150, type: !26, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !639, line: 159, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 52)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !639, line: 170, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 60)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !639, line: 248, type: !238, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !639, line: 248, type: !332, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !639, line: 254, type: !238, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !639, line: 254, type: !144, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !639, line: 254, type: !307, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !639, line: 259, type: !3, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !639, line: 259, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 29)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !718, file: !719, line: 26, type: !721, isLocal: false, isDefinition: true)
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !720, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!720 = !{!716}
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !15)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "exit_failure", scope: !724, file: !725, line: 24, type: !727, isLocal: false, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!726 = !{!722}
!727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !272, isLocal: true, isDefinition: true)
!730 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !283, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !302, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !737, line: 35, type: !258, isLocal: true, isDefinition: true)
!737 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !740, line: 108, type: !46, isLocal: true, isDefinition: true)
!740 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "internal_state", scope: !743, file: !740, line: 97, type: !746, isLocal: true, isDefinition: true)
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, globals: !745, splitDebugInlining: false, nameTableKind: None)
!744 = !{!133, !135, !140}
!745 = !{!738, !741}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !748, file: !490, line: 15, baseType: !74, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !748, file: !490, line: 20, baseType: !752, size: 32, offset: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !490, line: 16, size: 32, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !752, file: !490, line: 18, baseType: !69, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !752, file: !490, line: 19, baseType: !61, size: 32)
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!760 = !{!135}
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !762, retainedTypes: !485, globals: !766, splitDebugInlining: false, nameTableKind: None)
!762 = !{!763}
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !639, line: 40, baseType: !69, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!766 = !{!637, !640, !642, !644, !646, !648, !653, !658, !660, !665, !670, !675, !680, !682, !687, !689, !694, !699, !701, !703, !705, !707, !709, !711}
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!769 = !{!770, !782}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !771, file: !768, line: 188, baseType: !69, size: 32, elements: !780)
!771 = distinct !DISubprogram(name: "x2nrealloc", scope: !768, file: !768, line: 176, type: !772, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !775)
!772 = !DISubroutineType(types: !773)
!773 = !{!133, !133, !774, !135}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!775 = !{!776, !777, !778, !779}
!776 = !DILocalVariable(name: "p", arg: 1, scope: !771, file: !768, line: 176, type: !133)
!777 = !DILocalVariable(name: "pn", arg: 2, scope: !771, file: !768, line: 176, type: !774)
!778 = !DILocalVariable(name: "s", arg: 3, scope: !771, file: !768, line: 176, type: !135)
!779 = !DILocalVariable(name: "n", scope: !771, file: !768, line: 178, type: !135)
!780 = !{!781}
!781 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !783, file: !768, line: 228, baseType: !69, size: 32, elements: !780)
!783 = distinct !DISubprogram(name: "xpalloc", scope: !768, file: !768, line: 223, type: !784, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !790)
!784 = !DISubroutineType(types: !785)
!785 = !{!133, !133, !786, !787, !789, !787}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !788, line: 130, baseType: !789)
!788 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !136, line: 35, baseType: !217)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !799}
!791 = !DILocalVariable(name: "pa", arg: 1, scope: !783, file: !768, line: 223, type: !133)
!792 = !DILocalVariable(name: "pn", arg: 2, scope: !783, file: !768, line: 223, type: !786)
!793 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !783, file: !768, line: 223, type: !787)
!794 = !DILocalVariable(name: "n_max", arg: 4, scope: !783, file: !768, line: 223, type: !789)
!795 = !DILocalVariable(name: "s", arg: 5, scope: !783, file: !768, line: 223, type: !787)
!796 = !DILocalVariable(name: "n0", scope: !783, file: !768, line: 230, type: !787)
!797 = !DILocalVariable(name: "n", scope: !783, file: !768, line: 237, type: !787)
!798 = !DILocalVariable(name: "nbytes", scope: !783, file: !768, line: 248, type: !787)
!799 = !DILocalVariable(name: "adjusted_nbytes", scope: !783, file: !768, line: 252, type: !787)
!800 = !{!132, !133, !176, !217, !137}
!801 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !802, splitDebugInlining: false, nameTableKind: None)
!802 = !{!728, !731, !733}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !812, splitDebugInlining: false, nameTableKind: None)
!812 = !{!813, !735}
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !737, line: 35, type: !263, isLocal: true, isDefinition: true)
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!817 = !{!176, !137, !133}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!822 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!823 = !{i32 7, !"Dwarf Version", i32 5}
!824 = !{i32 2, !"Debug Info Version", i32 3}
!825 = !{i32 1, !"wchar_size", i32 4}
!826 = !{i32 8, !"PIC Level", i32 2}
!827 = !{i32 7, !"PIE Level", i32 2}
!828 = !{i32 7, !"uwtable", i32 2}
!829 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !830, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !74}
!832 = !{!833}
!833 = !DILocalVariable(name: "status", arg: 1, scope: !829, file: !2, line: 81, type: !74)
!834 = !DILocation(line: 0, scope: !829)
!835 = !DILocation(line: 83, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !2, line: 83, column: 7)
!837 = !DILocation(line: 83, column: 7, scope: !829)
!838 = !DILocation(line: 84, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !2, line: 84, column: 5)
!840 = !{!841, !841, i64 0}
!841 = !{!"any pointer", !842, i64 0}
!842 = !{!"omnipotent char", !843, i64 0}
!843 = !{!"Simple C/C++ TBAA"}
!844 = !DILocation(line: 87, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !2, line: 86, column: 5)
!846 = !DILocation(line: 88, column: 7, scope: !845)
!847 = !DILocation(line: 92, column: 7, scope: !845)
!848 = !DILocation(line: 95, column: 7, scope: !845)
!849 = !DILocation(line: 98, column: 7, scope: !845)
!850 = !DILocation(line: 102, column: 7, scope: !845)
!851 = !DILocation(line: 103, column: 7, scope: !845)
!852 = !DILocalVariable(name: "program", arg: 1, scope: !853, file: !73, line: 836, type: !138)
!853 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !73, file: !73, line: 836, type: !854, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !138}
!856 = !{!852, !857, !864, !865, !867, !868}
!857 = !DILocalVariable(name: "infomap", scope: !853, file: !73, line: 838, type: !858)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 896, elements: !284)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !853, file: !73, line: 838, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !860, file: !73, line: 838, baseType: !138, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !860, file: !73, line: 838, baseType: !138, size: 64, offset: 64)
!864 = !DILocalVariable(name: "node", scope: !853, file: !73, line: 848, type: !138)
!865 = !DILocalVariable(name: "map_prog", scope: !853, file: !73, line: 849, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!867 = !DILocalVariable(name: "lc_messages", scope: !853, file: !73, line: 861, type: !138)
!868 = !DILocalVariable(name: "url_program", scope: !853, file: !73, line: 874, type: !138)
!869 = !DILocation(line: 0, scope: !853, inlinedAt: !870)
!870 = distinct !DILocation(line: 104, column: 7, scope: !845)
!871 = !DILocation(line: 857, column: 3, scope: !853, inlinedAt: !870)
!872 = !DILocation(line: 861, column: 29, scope: !853, inlinedAt: !870)
!873 = !DILocation(line: 862, column: 7, scope: !874, inlinedAt: !870)
!874 = distinct !DILexicalBlock(scope: !853, file: !73, line: 862, column: 7)
!875 = !DILocation(line: 862, column: 19, scope: !874, inlinedAt: !870)
!876 = !DILocation(line: 862, column: 22, scope: !874, inlinedAt: !870)
!877 = !DILocation(line: 862, column: 7, scope: !853, inlinedAt: !870)
!878 = !DILocation(line: 868, column: 7, scope: !879, inlinedAt: !870)
!879 = distinct !DILexicalBlock(scope: !874, file: !73, line: 863, column: 5)
!880 = !DILocation(line: 870, column: 5, scope: !879, inlinedAt: !870)
!881 = !DILocation(line: 875, column: 3, scope: !853, inlinedAt: !870)
!882 = !DILocation(line: 877, column: 3, scope: !853, inlinedAt: !870)
!883 = !DILocation(line: 106, column: 3, scope: !829)
!884 = !DISubprogram(name: "dcgettext", scope: !885, file: !885, line: 51, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!885 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!886 = !DISubroutineType(types: !887)
!887 = !{!132, !138, !138, !74}
!888 = !{}
!889 = !DISubprogram(name: "__fprintf_chk", scope: !890, file: !890, line: 93, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!891 = !DISubroutineType(types: !892)
!892 = !{!74, !893, !74, !894, null}
!893 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !189)
!894 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!895 = !DISubprogram(name: "__printf_chk", scope: !890, file: !890, line: 95, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!896 = !DISubroutineType(types: !897)
!897 = !{!74, !74, !894, null}
!898 = !DISubprogram(name: "fputs_unlocked", scope: !899, file: !899, line: 691, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!899 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!900 = !DISubroutineType(types: !901)
!901 = !{!74, !894, !893}
!902 = !DILocation(line: 0, scope: !166)
!903 = !DILocation(line: 581, column: 7, scope: !174)
!904 = !{!905, !905, i64 0}
!905 = !{!"int", !842, i64 0}
!906 = !DILocation(line: 581, column: 19, scope: !174)
!907 = !DILocation(line: 581, column: 7, scope: !166)
!908 = !DILocation(line: 585, column: 26, scope: !173)
!909 = !DILocation(line: 0, scope: !173)
!910 = !DILocation(line: 586, column: 23, scope: !173)
!911 = !DILocation(line: 586, column: 28, scope: !173)
!912 = !DILocation(line: 586, column: 32, scope: !173)
!913 = !{!842, !842, i64 0}
!914 = !DILocation(line: 586, column: 38, scope: !173)
!915 = !DILocalVariable(name: "__s1", arg: 1, scope: !916, file: !917, line: 1359, type: !138)
!916 = distinct !DISubprogram(name: "streq", scope: !917, file: !917, line: 1359, type: !918, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !920)
!917 = !DIFile(filename: "./lib/string.h", directory: "/src")
!918 = !DISubroutineType(types: !919)
!919 = !{!176, !138, !138}
!920 = !{!915, !921}
!921 = !DILocalVariable(name: "__s2", arg: 2, scope: !916, file: !917, line: 1359, type: !138)
!922 = !DILocation(line: 0, scope: !916, inlinedAt: !923)
!923 = distinct !DILocation(line: 586, column: 41, scope: !173)
!924 = !DILocation(line: 1361, column: 11, scope: !916, inlinedAt: !923)
!925 = !DILocation(line: 1361, column: 10, scope: !916, inlinedAt: !923)
!926 = !DILocation(line: 586, column: 19, scope: !173)
!927 = !DILocation(line: 587, column: 5, scope: !173)
!928 = !DILocation(line: 588, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !166, file: !73, line: 588, column: 7)
!930 = !DILocation(line: 588, column: 7, scope: !166)
!931 = !DILocation(line: 590, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !73, line: 589, column: 5)
!933 = !DILocation(line: 591, column: 7, scope: !932)
!934 = !DILocation(line: 595, column: 37, scope: !166)
!935 = !DILocation(line: 595, column: 35, scope: !166)
!936 = !DILocation(line: 596, column: 29, scope: !166)
!937 = !DILocation(line: 597, column: 8, scope: !182)
!938 = !DILocation(line: 597, column: 7, scope: !166)
!939 = !DILocation(line: 604, column: 24, scope: !181)
!940 = !DILocation(line: 604, column: 12, scope: !182)
!941 = !DILocation(line: 0, scope: !180)
!942 = !DILocation(line: 610, column: 16, scope: !180)
!943 = !DILocation(line: 610, column: 7, scope: !180)
!944 = !DILocation(line: 611, column: 21, scope: !180)
!945 = !{!946, !946, i64 0}
!946 = !{!"short", !842, i64 0}
!947 = !DILocation(line: 611, column: 19, scope: !180)
!948 = !DILocation(line: 611, column: 16, scope: !180)
!949 = !DILocation(line: 610, column: 30, scope: !180)
!950 = distinct !{!950, !943, !944, !951}
!951 = !{!"llvm.loop.mustprogress"}
!952 = !DILocation(line: 612, column: 18, scope: !953)
!953 = distinct !DILexicalBlock(scope: !180, file: !73, line: 612, column: 11)
!954 = !DILocation(line: 612, column: 11, scope: !180)
!955 = !DILocation(line: 618, column: 5, scope: !180)
!956 = !DILocation(line: 620, column: 23, scope: !166)
!957 = !DILocation(line: 625, column: 39, scope: !166)
!958 = !DILocation(line: 626, column: 3, scope: !166)
!959 = !DILocation(line: 626, column: 10, scope: !166)
!960 = !DILocation(line: 626, column: 21, scope: !166)
!961 = !DILocation(line: 628, column: 44, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !73, line: 628, column: 11)
!963 = distinct !DILexicalBlock(scope: !166, file: !73, line: 627, column: 5)
!964 = !DILocation(line: 628, column: 32, scope: !962)
!965 = !DILocation(line: 628, column: 49, scope: !962)
!966 = !DILocation(line: 628, column: 11, scope: !963)
!967 = !DILocation(line: 630, column: 11, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !73, line: 630, column: 11)
!969 = !DILocation(line: 630, column: 11, scope: !963)
!970 = !DILocation(line: 632, column: 26, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !73, line: 632, column: 15)
!972 = distinct !DILexicalBlock(scope: !968, file: !73, line: 631, column: 9)
!973 = !DILocation(line: 632, column: 34, scope: !971)
!974 = !DILocation(line: 632, column: 37, scope: !971)
!975 = !DILocation(line: 632, column: 15, scope: !972)
!976 = !DILocation(line: 636, column: 16, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !73, line: 636, column: 15)
!978 = !DILocation(line: 636, column: 29, scope: !977)
!979 = !DILocation(line: 640, column: 16, scope: !963)
!980 = distinct !{!980, !958, !981, !951}
!981 = !DILocation(line: 641, column: 5, scope: !166)
!982 = !DILocation(line: 644, column: 3, scope: !166)
!983 = !DILocation(line: 0, scope: !916, inlinedAt: !984)
!984 = distinct !DILocation(line: 648, column: 31, scope: !166)
!985 = !DILocation(line: 0, scope: !916, inlinedAt: !986)
!986 = distinct !DILocation(line: 649, column: 31, scope: !166)
!987 = !DILocation(line: 0, scope: !916, inlinedAt: !988)
!988 = distinct !DILocation(line: 650, column: 31, scope: !166)
!989 = !DILocation(line: 0, scope: !916, inlinedAt: !990)
!990 = distinct !DILocation(line: 651, column: 31, scope: !166)
!991 = !DILocation(line: 0, scope: !916, inlinedAt: !992)
!992 = distinct !DILocation(line: 652, column: 31, scope: !166)
!993 = !DILocation(line: 0, scope: !916, inlinedAt: !994)
!994 = distinct !DILocation(line: 653, column: 31, scope: !166)
!995 = !DILocation(line: 0, scope: !916, inlinedAt: !996)
!996 = distinct !DILocation(line: 654, column: 31, scope: !166)
!997 = !DILocation(line: 0, scope: !916, inlinedAt: !998)
!998 = distinct !DILocation(line: 655, column: 31, scope: !166)
!999 = !DILocation(line: 0, scope: !916, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 656, column: 31, scope: !166)
!1001 = !DILocation(line: 0, scope: !916, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 657, column: 31, scope: !166)
!1003 = !DILocation(line: 663, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !166, file: !73, line: 663, column: 7)
!1005 = !DILocation(line: 664, column: 7, scope: !1004)
!1006 = !DILocation(line: 664, column: 10, scope: !1004)
!1007 = !DILocation(line: 663, column: 7, scope: !166)
!1008 = !DILocation(line: 669, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !73, line: 665, column: 5)
!1010 = !DILocation(line: 671, column: 5, scope: !1009)
!1011 = !DILocation(line: 676, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1004, file: !73, line: 673, column: 5)
!1013 = !DILocation(line: 679, column: 3, scope: !166)
!1014 = !DILocation(line: 683, column: 3, scope: !166)
!1015 = !DILocation(line: 686, column: 3, scope: !166)
!1016 = !DILocation(line: 688, column: 3, scope: !166)
!1017 = !DILocation(line: 691, column: 3, scope: !166)
!1018 = !DILocation(line: 695, column: 3, scope: !166)
!1019 = !DILocation(line: 696, column: 1, scope: !166)
!1020 = !DISubprogram(name: "setlocale", scope: !1021, file: !1021, line: 122, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1021 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!132, !74, !138}
!1024 = !DISubprogram(name: "strncmp", scope: !1025, file: !1025, line: 159, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1025 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!74, !138, !138, !135}
!1028 = !DISubprogram(name: "exit", scope: !1029, file: !1029, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1029 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1030 = !DISubprogram(name: "getenv", scope: !1029, file: !1029, line: 641, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!132, !138}
!1033 = !DISubprogram(name: "strcmp", scope: !1025, file: !1025, line: 156, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!74, !138, !138}
!1036 = !DISubprogram(name: "strspn", scope: !1025, file: !1025, line: 297, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!137, !138, !138}
!1039 = !DISubprogram(name: "strchr", scope: !1025, file: !1025, line: 246, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!132, !138, !74}
!1042 = !DISubprogram(name: "__ctype_b_loc", scope: !79, file: !79, line: 79, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1048 = !DISubprogram(name: "strcspn", scope: !1025, file: !1025, line: 293, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1049 = !DISubprogram(name: "fwrite_unlocked", scope: !899, file: !899, line: 704, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!135, !1052, !135, !135, !893}
!1052 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1055 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 110, type: !1056, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1059)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!74, !74, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065}
!1060 = !DILocalVariable(name: "argc", arg: 1, scope: !1055, file: !2, line: 110, type: !74)
!1061 = !DILocalVariable(name: "argv", arg: 2, scope: !1055, file: !2, line: 110, type: !1058)
!1062 = !DILocalVariable(name: "ok", scope: !1055, file: !2, line: 112, type: !176)
!1063 = !DILocalVariable(name: "check_basic_portability", scope: !1055, file: !2, line: 113, type: !176)
!1064 = !DILocalVariable(name: "check_extra_portability", scope: !1055, file: !2, line: 114, type: !176)
!1065 = !DILocalVariable(name: "optc", scope: !1055, file: !2, line: 115, type: !74)
!1066 = !DILocation(line: 0, scope: !1055)
!1067 = !DILocation(line: 118, column: 21, scope: !1055)
!1068 = !DILocation(line: 118, column: 3, scope: !1055)
!1069 = !DILocation(line: 119, column: 3, scope: !1055)
!1070 = !DILocation(line: 120, column: 3, scope: !1055)
!1071 = !DILocation(line: 121, column: 3, scope: !1055)
!1072 = !DILocation(line: 123, column: 3, scope: !1055)
!1073 = !DILocation(line: 125, column: 3, scope: !1055)
!1074 = !DILocation(line: 125, column: 18, scope: !1055)
!1075 = distinct !{!1075, !1073, !1076, !951}
!1076 = !DILocation(line: 149, column: 5, scope: !1055)
!1077 = !DILocation(line: 136, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 128, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 126, column: 5)
!1080 = !DILocation(line: 140, column: 11, scope: !1078)
!1081 = distinct !{!1081, !1073, !1076, !951, !1082}
!1082 = !{!"llvm.loop.peeled.count", i32 1}
!1083 = !DILocation(line: 142, column: 9, scope: !1078)
!1084 = !DILocation(line: 144, column: 9, scope: !1078)
!1085 = !DILocation(line: 147, column: 11, scope: !1078)
!1086 = !DILocation(line: 151, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 151, column: 7)
!1088 = !DILocation(line: 151, column: 14, scope: !1087)
!1089 = !DILocation(line: 151, column: 7, scope: !1055)
!1090 = !DILocation(line: 157, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 157, column: 3)
!1092 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 157, column: 3)
!1093 = !DILocation(line: 157, column: 3, scope: !1092)
!1094 = !DILocation(line: 153, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 152, column: 5)
!1096 = !DILocation(line: 154, column: 7, scope: !1095)
!1097 = !DILocation(line: 158, column: 31, scope: !1091)
!1098 = !DILocalVariable(name: "file", arg: 1, scope: !1099, file: !2, line: 253, type: !132)
!1099 = distinct !DISubprogram(name: "validate_file_name", scope: !2, file: !2, line: 253, type: !1100, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!176, !132, !176, !176}
!1102 = !{!1098, !1103, !1104, !1105, !1106, !1107, !1108, !1145, !1148, !1151, !1152, !1156, !1159, !1162, !1163, !1165, !1168, !1171, !1172, !1173}
!1103 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !1099, file: !2, line: 253, type: !176)
!1104 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !1099, file: !2, line: 254, type: !176)
!1105 = !DILocalVariable(name: "filelen", scope: !1099, file: !2, line: 256, type: !787)
!1106 = !DILocalVariable(name: "check_component_lengths", scope: !1099, file: !2, line: 259, type: !176)
!1107 = !DILocalVariable(name: "file_exists", scope: !1099, file: !2, line: 262, type: !176)
!1108 = !DILocalVariable(name: "st", scope: !1109, file: !2, line: 290, type: !1111)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 284, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 278, column: 7)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1112, line: 26, size: 1152, elements: !1113)
!1112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1113 = !{!1114, !1116, !1118, !1120, !1122, !1124, !1126, !1127, !1128, !1129, !1131, !1133, !1141, !1142, !1143}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1111, file: !1112, line: 31, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !216, line: 145, baseType: !137)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1111, file: !1112, line: 36, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !216, line: 148, baseType: !137)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1111, file: !1112, line: 44, baseType: !1119, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !216, line: 151, baseType: !137)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1111, file: !1112, line: 45, baseType: !1121, size: 32, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !216, line: 150, baseType: !69)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1111, file: !1112, line: 47, baseType: !1123, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !216, line: 146, baseType: !69)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1111, file: !1112, line: 48, baseType: !1125, size: 32, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !216, line: 147, baseType: !69)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1111, file: !1112, line: 50, baseType: !74, size: 32, offset: 288)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1111, file: !1112, line: 52, baseType: !1115, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1111, file: !1112, line: 57, baseType: !215, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1111, file: !1112, line: 61, baseType: !1130, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !216, line: 175, baseType: !217)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1111, file: !1112, line: 63, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !216, line: 180, baseType: !217)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1111, file: !1112, line: 74, baseType: !1134, size: 128, offset: 576)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1135, line: 11, size: 128, elements: !1136)
!1135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1136 = !{!1137, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1134, file: !1135, line: 16, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !216, line: 160, baseType: !217)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1134, file: !1135, line: 21, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !216, line: 197, baseType: !217)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1111, file: !1112, line: 75, baseType: !1134, size: 128, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1111, file: !1112, line: 76, baseType: !1134, size: 128, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1111, file: !1112, line: 89, baseType: !1144, size: 192, offset: 960)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 192, elements: !273)
!1145 = !DILocalVariable(name: "maxsize", scope: !1146, file: !2, line: 303, type: !787)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 302, column: 5)
!1147 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 300, column: 7)
!1148 = !DILocalVariable(name: "size", scope: !1149, file: !2, line: 309, type: !217)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 308, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 305, column: 11)
!1151 = !DILocalVariable(name: "dir", scope: !1149, file: !2, line: 310, type: !138)
!1152 = !DILocalVariable(name: "start", scope: !1153, file: !2, line: 339, type: !132)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 339, column: 7)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 338, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 337, column: 7)
!1156 = !DILocalVariable(name: "length", scope: !1157, file: !2, line: 341, type: !135)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 340, column: 9)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 339, column: 7)
!1159 = !DILocalVariable(name: "name_max", scope: !1160, file: !2, line: 359, type: !787)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 354, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 353, column: 7)
!1162 = !DILocalVariable(name: "known_name_max", scope: !1160, file: !2, line: 362, type: !787)
!1163 = !DILocalVariable(name: "start", scope: !1164, file: !2, line: 364, type: !132)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 364, column: 7)
!1165 = !DILocalVariable(name: "length", scope: !1166, file: !2, line: 366, type: !787)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 365, column: 9)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 364, column: 7)
!1168 = !DILocalVariable(name: "len", scope: !1169, file: !2, line: 372, type: !217)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 371, column: 13)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 368, column: 15)
!1171 = !DILocalVariable(name: "dir", scope: !1169, file: !2, line: 373, type: !138)
!1172 = !DILocalVariable(name: "c", scope: !1169, file: !2, line: 374, type: !4)
!1173 = !DILocalVariable(name: "c", scope: !1174, file: !2, line: 406, type: !4)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 405, column: 13)
!1175 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 404, column: 15)
!1176 = !DILocation(line: 0, scope: !1099, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 158, column: 11, scope: !1091)
!1178 = !DILocation(line: 256, column: 19, scope: !1099, inlinedAt: !1177)
!1179 = !DILocation(line: 264, column: 31, scope: !1180, inlinedAt: !1177)
!1180 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 264, column: 7)
!1181 = !DILocalVariable(name: "file", arg: 1, scope: !1182, file: !2, line: 168, type: !138)
!1182 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !2, file: !2, line: 168, type: !1183, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!176, !138}
!1185 = !{!1181, !1186}
!1186 = !DILocalVariable(name: "p", scope: !1187, file: !2, line: 170, type: !138)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 170, column: 3)
!1188 = !DILocation(line: 0, scope: !1182, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 264, column: 36, scope: !1180, inlinedAt: !1177)
!1190 = !DILocation(line: 0, scope: !1187, inlinedAt: !1189)
!1191 = !DILocation(line: 170, column: 36, scope: !1192, inlinedAt: !1189)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 170, column: 3)
!1193 = !DILocation(line: 170, column: 3, scope: !1187, inlinedAt: !1189)
!1194 = !DILocation(line: 170, column: 56, scope: !1192, inlinedAt: !1189)
!1195 = distinct !{!1195, !1193, !1196, !951}
!1196 = !DILocation(line: 176, column: 7, scope: !1187, inlinedAt: !1189)
!1197 = !DILocation(line: 171, column: 11, scope: !1198, inlinedAt: !1189)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 171, column: 9)
!1199 = !DILocation(line: 171, column: 19, scope: !1198, inlinedAt: !1189)
!1200 = !DILocation(line: 171, column: 22, scope: !1198, inlinedAt: !1189)
!1201 = !DILocation(line: 171, column: 28, scope: !1198, inlinedAt: !1189)
!1202 = !DILocation(line: 171, column: 9, scope: !1192, inlinedAt: !1189)
!1203 = !DILocation(line: 173, column: 9, scope: !1204, inlinedAt: !1189)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 172, column: 7)
!1205 = !DILocation(line: 264, column: 7, scope: !1099, inlinedAt: !1177)
!1206 = !DILocation(line: 267, column: 32, scope: !1207, inlinedAt: !1177)
!1207 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 267, column: 7)
!1208 = !DILocation(line: 268, column: 7, scope: !1207, inlinedAt: !1177)
!1209 = !DILocation(line: 267, column: 7, scope: !1099, inlinedAt: !1177)
!1210 = !DILocation(line: 274, column: 7, scope: !1211, inlinedAt: !1177)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 269, column: 5)
!1212 = !DILocation(line: 275, column: 7, scope: !1211, inlinedAt: !1177)
!1213 = !DILocalVariable(name: "file", arg: 1, scope: !1214, file: !2, line: 185, type: !138)
!1214 = distinct !DISubprogram(name: "portable_chars_only", scope: !2, file: !2, line: 185, type: !1215, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1217)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!176, !138, !135}
!1217 = !{!1213, !1218, !1219, !1220, !1221, !1234}
!1218 = !DILocalVariable(name: "filelen", arg: 2, scope: !1214, file: !2, line: 185, type: !135)
!1219 = !DILocalVariable(name: "validlen", scope: !1214, file: !2, line: 187, type: !135)
!1220 = !DILocalVariable(name: "invalid", scope: !1214, file: !2, line: 192, type: !138)
!1221 = !DILocalVariable(name: "mbstate", scope: !1222, file: !2, line: 196, type: !1224)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 195, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 194, column: 7)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1226, file: !490, line: 15, baseType: !74, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1226, file: !490, line: 20, baseType: !1230, size: 32, offset: 32)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !490, line: 16, size: 32, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1230, file: !490, line: 18, baseType: !69, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1230, file: !490, line: 19, baseType: !61, size: 32)
!1234 = !DILocalVariable(name: "charlen", scope: !1222, file: !2, line: 197, type: !135)
!1235 = !DILocation(line: 0, scope: !1214, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 280, column: 13, scope: !1237, inlinedAt: !1177)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 280, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 279, column: 5)
!1239 = !DILocation(line: 187, column: 21, scope: !1214, inlinedAt: !1236)
!1240 = !DILocation(line: 192, column: 30, scope: !1214, inlinedAt: !1236)
!1241 = !DILocation(line: 194, column: 7, scope: !1223, inlinedAt: !1236)
!1242 = !DILocation(line: 194, column: 7, scope: !1214, inlinedAt: !1236)
!1243 = !DILocation(line: 196, column: 7, scope: !1222, inlinedAt: !1236)
!1244 = !DILocation(line: 196, column: 17, scope: !1222, inlinedAt: !1236)
!1245 = !DILocalVariable(name: "ps", arg: 1, scope: !1246, file: !1247, line: 1135, type: !1250)
!1246 = distinct !DISubprogram(name: "mbszero", scope: !1247, file: !1247, line: 1135, type: !1248, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1251)
!1247 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1251 = !{!1245}
!1252 = !DILocation(line: 0, scope: !1246, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 196, column: 26, scope: !1222, inlinedAt: !1236)
!1254 = !DILocalVariable(name: "__dest", arg: 1, scope: !1255, file: !1256, line: 57, type: !133)
!1255 = distinct !DISubprogram(name: "memset", scope: !1256, file: !1256, line: 57, type: !1257, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1259)
!1256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!133, !133, !74, !135}
!1259 = !{!1254, !1260, !1261}
!1260 = !DILocalVariable(name: "__ch", arg: 2, scope: !1255, file: !1256, line: 57, type: !74)
!1261 = !DILocalVariable(name: "__len", arg: 3, scope: !1255, file: !1256, line: 57, type: !135)
!1262 = !DILocation(line: 0, scope: !1255, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 1137, column: 3, scope: !1246, inlinedAt: !1253)
!1264 = !DILocation(line: 59, column: 10, scope: !1255, inlinedAt: !1263)
!1265 = !DILocation(line: 197, column: 49, scope: !1222, inlinedAt: !1236)
!1266 = !DILocation(line: 197, column: 24, scope: !1222, inlinedAt: !1236)
!1267 = !DILocation(line: 0, scope: !1222, inlinedAt: !1236)
!1268 = !DILocation(line: 198, column: 7, scope: !1222, inlinedAt: !1236)
!1269 = !DILocation(line: 204, column: 5, scope: !1223, inlinedAt: !1236)
!1270 = !DILocation(line: 280, column: 11, scope: !1238, inlinedAt: !1177)
!1271 = !DILocation(line: 290, column: 7, scope: !1109, inlinedAt: !1177)
!1272 = !DILocation(line: 290, column: 19, scope: !1109, inlinedAt: !1177)
!1273 = !DILocation(line: 291, column: 11, scope: !1274, inlinedAt: !1177)
!1274 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 291, column: 11)
!1275 = !DILocation(line: 291, column: 29, scope: !1274, inlinedAt: !1177)
!1276 = !DILocation(line: 291, column: 11, scope: !1109, inlinedAt: !1177)
!1277 = !DILocation(line: 298, column: 5, scope: !1110, inlinedAt: !1177)
!1278 = !DILocation(line: 353, column: 7, scope: !1099, inlinedAt: !1177)
!1279 = !DILocation(line: 293, column: 16, scope: !1280, inlinedAt: !1177)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 293, column: 16)
!1281 = !DILocation(line: 293, column: 22, scope: !1280, inlinedAt: !1177)
!1282 = !DILocation(line: 293, column: 32, scope: !1280, inlinedAt: !1177)
!1283 = !DILocation(line: 295, column: 11, scope: !1284, inlinedAt: !1177)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 294, column: 9)
!1285 = !DILocation(line: 301, column: 25, scope: !1147, inlinedAt: !1177)
!1286 = !DILocation(line: 310, column: 30, scope: !1149, inlinedAt: !1177)
!1287 = !DILocation(line: 310, column: 36, scope: !1149, inlinedAt: !1177)
!1288 = !DILocation(line: 0, scope: !1149, inlinedAt: !1177)
!1289 = !DILocation(line: 311, column: 17, scope: !1149, inlinedAt: !1177)
!1290 = !DILocation(line: 312, column: 18, scope: !1149, inlinedAt: !1177)
!1291 = !DILocation(line: 313, column: 20, scope: !1292, inlinedAt: !1177)
!1292 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 313, column: 15)
!1293 = !DILocation(line: 313, column: 24, scope: !1292, inlinedAt: !1177)
!1294 = !DILocation(line: 313, column: 27, scope: !1292, inlinedAt: !1177)
!1295 = !DILocation(line: 313, column: 33, scope: !1292, inlinedAt: !1177)
!1296 = !DILocation(line: 313, column: 15, scope: !1149, inlinedAt: !1177)
!1297 = !DILocation(line: 315, column: 15, scope: !1298, inlinedAt: !1177)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 314, column: 13)
!1299 = !DILocation(line: 0, scope: !1146, inlinedAt: !1177)
!1300 = !DILocation(line: 323, column: 19, scope: !1301, inlinedAt: !1177)
!1301 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 323, column: 11)
!1302 = !DILocation(line: 323, column: 11, scope: !1146, inlinedAt: !1177)
!1303 = !DILocation(line: 215, column: 3, scope: !1304, inlinedAt: !1309)
!1304 = distinct !DISubprogram(name: "component_start", scope: !2, file: !2, line: 213, type: !1305, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!132, !132}
!1307 = !{!1308}
!1308 = !DILocalVariable(name: "f", arg: 1, scope: !1304, file: !2, line: 213, type: !132)
!1309 = distinct !DILocation(line: 339, column: 42, scope: !1158, inlinedAt: !1177)
!1310 = !DILocation(line: 325, column: 11, scope: !1311, inlinedAt: !1177)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 324, column: 9)
!1312 = !DILocation(line: 327, column: 11, scope: !1311, inlinedAt: !1177)
!1313 = !DILocation(line: 0, scope: !1304, inlinedAt: !1309)
!1314 = !DILocation(line: 215, column: 10, scope: !1304, inlinedAt: !1309)
!1315 = !DILocation(line: 216, column: 6, scope: !1304, inlinedAt: !1309)
!1316 = distinct !{!1316, !1317, !1318, !951}
!1317 = !DILocation(line: 339, column: 7, scope: !1153, inlinedAt: !1177)
!1318 = !DILocation(line: 350, column: 9, scope: !1153, inlinedAt: !1177)
!1319 = !DILocation(line: 227, scope: !1320, inlinedAt: !1327)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 227, column: 3)
!1321 = distinct !DISubprogram(name: "component_len", scope: !2, file: !2, line: 224, type: !1322, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1324)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!135, !138}
!1324 = !{!1325, !1326}
!1325 = !DILocalVariable(name: "f", arg: 1, scope: !1321, file: !2, line: 224, type: !138)
!1326 = !DILocalVariable(name: "len", scope: !1321, file: !2, line: 226, type: !135)
!1327 = distinct !DILocation(line: 341, column: 27, scope: !1157, inlinedAt: !1177)
!1328 = !DILocation(line: 0, scope: !1321, inlinedAt: !1327)
!1329 = !DILocation(line: 227, column: 17, scope: !1330, inlinedAt: !1327)
!1330 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 227, column: 3)
!1331 = !DILocation(line: 227, column: 31, scope: !1330, inlinedAt: !1327)
!1332 = !DILocation(line: 227, column: 45, scope: !1330, inlinedAt: !1327)
!1333 = !DILocation(line: 227, column: 3, scope: !1330, inlinedAt: !1327)
!1334 = distinct !{!1334, !1335, !1336, !951}
!1335 = !DILocation(line: 227, column: 3, scope: !1320, inlinedAt: !1327)
!1336 = !DILocation(line: 228, column: 5, scope: !1320, inlinedAt: !1327)
!1337 = !DILocation(line: 0, scope: !1157, inlinedAt: !1177)
!1338 = !DILocation(line: 343, column: 32, scope: !1339, inlinedAt: !1177)
!1339 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 343, column: 15)
!1340 = !DILocation(line: 0, scope: !1153, inlinedAt: !1177)
!1341 = !DILocation(line: 364, column: 7, scope: !1164, inlinedAt: !1177)
!1342 = !DILocation(line: 0, scope: !1160, inlinedAt: !1177)
!1343 = !DILocation(line: 362, column: 13, scope: !1160, inlinedAt: !1177)
!1344 = !DILocation(line: 364, scope: !1164, inlinedAt: !1177)
!1345 = !DILocation(line: 0, scope: !1164, inlinedAt: !1177)
!1346 = !DILocation(line: 0, scope: !1304, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 364, column: 42, scope: !1167, inlinedAt: !1177)
!1348 = !DILocation(line: 215, column: 3, scope: !1304, inlinedAt: !1347)
!1349 = !DILocation(line: 215, column: 10, scope: !1304, inlinedAt: !1347)
!1350 = !DILocation(line: 216, column: 6, scope: !1304, inlinedAt: !1347)
!1351 = !DILocation(line: 368, column: 15, scope: !1170, inlinedAt: !1177)
!1352 = !DILocation(line: 368, column: 15, scope: !1166, inlinedAt: !1177)
!1353 = !DILocation(line: 373, column: 40, scope: !1169, inlinedAt: !1177)
!1354 = !DILocation(line: 373, column: 34, scope: !1169, inlinedAt: !1177)
!1355 = !DILocation(line: 0, scope: !1169, inlinedAt: !1177)
!1356 = !DILocation(line: 375, column: 15, scope: !1169, inlinedAt: !1177)
!1357 = !DILocation(line: 375, column: 21, scope: !1169, inlinedAt: !1177)
!1358 = !DILocation(line: 376, column: 22, scope: !1169, inlinedAt: !1177)
!1359 = !DILocation(line: 377, column: 21, scope: !1169, inlinedAt: !1177)
!1360 = !DILocation(line: 378, column: 22, scope: !1169, inlinedAt: !1177)
!1361 = !DILocation(line: 379, column: 21, scope: !1362, inlinedAt: !1177)
!1362 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 379, column: 19)
!1363 = !DILocation(line: 379, column: 19, scope: !1169, inlinedAt: !1177)
!1364 = !DILocation(line: 382, column: 25, scope: !1362, inlinedAt: !1177)
!1365 = !DILocation(line: 382, column: 17, scope: !1362, inlinedAt: !1177)
!1366 = !DILocation(line: 392, column: 21, scope: !1367, inlinedAt: !1177)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 383, column: 19)
!1368 = !DILocation(line: 395, column: 28, scope: !1367, inlinedAt: !1177)
!1369 = !DILocation(line: 396, column: 21, scope: !1367, inlinedAt: !1177)
!1370 = !DILocation(line: 397, column: 28, scope: !1367, inlinedAt: !1177)
!1371 = !DILocation(line: 0, scope: !1170, inlinedAt: !1177)
!1372 = !DILocation(line: 0, scope: !1321, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 402, column: 20, scope: !1166, inlinedAt: !1177)
!1374 = !DILocation(line: 227, column: 8, scope: !1320, inlinedAt: !1373)
!1375 = !DILocation(line: 227, scope: !1320, inlinedAt: !1373)
!1376 = !DILocation(line: 227, column: 17, scope: !1330, inlinedAt: !1373)
!1377 = !DILocation(line: 227, column: 31, scope: !1330, inlinedAt: !1373)
!1378 = !DILocation(line: 227, column: 45, scope: !1330, inlinedAt: !1373)
!1379 = !DILocation(line: 227, column: 3, scope: !1330, inlinedAt: !1373)
!1380 = distinct !{!1380, !1381, !1382, !951}
!1381 = !DILocation(line: 227, column: 3, scope: !1320, inlinedAt: !1373)
!1382 = !DILocation(line: 228, column: 5, scope: !1320, inlinedAt: !1373)
!1383 = !DILocation(line: 0, scope: !1166, inlinedAt: !1177)
!1384 = !DILocation(line: 404, column: 24, scope: !1175, inlinedAt: !1177)
!1385 = !DILocation(line: 404, column: 15, scope: !1166, inlinedAt: !1177)
!1386 = distinct !{!1386, !1341, !1387, !951}
!1387 = !DILocation(line: 417, column: 9, scope: !1164, inlinedAt: !1177)
!1388 = !DILocation(line: 0, scope: !1174, inlinedAt: !1177)
!1389 = !DILocation(line: 407, column: 29, scope: !1174, inlinedAt: !1177)
!1390 = !DILocation(line: 408, column: 15, scope: !1174, inlinedAt: !1177)
!1391 = !DILocation(line: 412, column: 29, scope: !1174, inlinedAt: !1177)
!1392 = !DILocation(line: 158, column: 8, scope: !1091)
!1393 = !DILocation(line: 157, column: 25, scope: !1091)
!1394 = distinct !{!1394, !1093, !1395, !951}
!1395 = !DILocation(line: 159, column: 79, scope: !1092)
!1396 = !DILocation(line: 161, column: 10, scope: !1055)
!1397 = !DILocation(line: 161, column: 3, scope: !1055)
!1398 = !DISubprogram(name: "bindtextdomain", scope: !885, file: !885, line: 86, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!132, !138, !138}
!1401 = !DISubprogram(name: "textdomain", scope: !885, file: !885, line: 82, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1402 = !DISubprogram(name: "atexit", scope: !1029, file: !1029, line: 602, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!74, !478}
!1405 = !DISubprogram(name: "getopt_long", scope: !400, file: !400, line: 66, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!74, !74, !1408, !138, !1410, !405}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1411 = !DISubprogram(name: "strlen", scope: !1025, file: !1025, line: 407, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!137, !138}
!1414 = !DISubprogram(name: "lstat", scope: !1415, file: !1415, line: 313, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1415 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!74, !894, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1420 = !DISubprogram(name: "__errno_location", scope: !1421, file: !1421, line: 37, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1421 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!405}
!1424 = !DISubprogram(name: "pathconf", scope: !1425, file: !1425, line: 633, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1425 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!217, !138, !74}
!1428 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !417, file: !417, line: 50, type: !854, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1429)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "file", arg: 1, scope: !1428, file: !417, line: 50, type: !138)
!1431 = !DILocation(line: 0, scope: !1428)
!1432 = !DILocation(line: 52, column: 13, scope: !1428)
!1433 = !DILocation(line: 53, column: 1, scope: !1428)
!1434 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !417, file: !417, line: 87, type: !1435, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !176}
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "ignore", arg: 1, scope: !1434, file: !417, line: 87, type: !176)
!1439 = !DILocation(line: 0, scope: !1434)
!1440 = !DILocation(line: 89, column: 16, scope: !1434)
!1441 = !{!1442, !1442, i64 0}
!1442 = !{!"_Bool", !842, i64 0}
!1443 = !DILocation(line: 90, column: 1, scope: !1434)
!1444 = distinct !DISubprogram(name: "close_stdout", scope: !417, file: !417, line: 116, type: !479, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1445)
!1445 = !{!1446}
!1446 = !DILocalVariable(name: "write_error", scope: !1447, file: !417, line: 121, type: !138)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !417, line: 120, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !417, line: 118, column: 7)
!1449 = !DILocation(line: 118, column: 21, scope: !1448)
!1450 = !DILocation(line: 118, column: 7, scope: !1448)
!1451 = !DILocation(line: 118, column: 29, scope: !1448)
!1452 = !DILocation(line: 119, column: 7, scope: !1448)
!1453 = !DILocation(line: 119, column: 12, scope: !1448)
!1454 = !{i8 0, i8 2}
!1455 = !DILocation(line: 119, column: 25, scope: !1448)
!1456 = !DILocation(line: 119, column: 28, scope: !1448)
!1457 = !DILocation(line: 119, column: 34, scope: !1448)
!1458 = !DILocation(line: 118, column: 7, scope: !1444)
!1459 = !DILocation(line: 121, column: 33, scope: !1447)
!1460 = !DILocation(line: 0, scope: !1447)
!1461 = !DILocation(line: 122, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1447, file: !417, line: 122, column: 11)
!1463 = !DILocation(line: 0, scope: !1462)
!1464 = !DILocation(line: 122, column: 11, scope: !1447)
!1465 = !DILocation(line: 123, column: 9, scope: !1462)
!1466 = !DILocation(line: 126, column: 9, scope: !1462)
!1467 = !DILocation(line: 128, column: 14, scope: !1447)
!1468 = !DILocation(line: 128, column: 7, scope: !1447)
!1469 = !DILocation(line: 133, column: 42, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1444, file: !417, line: 133, column: 7)
!1471 = !DILocation(line: 133, column: 28, scope: !1470)
!1472 = !DILocation(line: 133, column: 50, scope: !1470)
!1473 = !DILocation(line: 133, column: 7, scope: !1444)
!1474 = !DILocation(line: 134, column: 12, scope: !1470)
!1475 = !DILocation(line: 134, column: 5, scope: !1470)
!1476 = !DILocation(line: 135, column: 1, scope: !1444)
!1477 = !DISubprogram(name: "_exit", scope: !1425, file: !1425, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1478 = distinct !DISubprogram(name: "verror", scope: !432, file: !432, line: 251, type: !1479, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !74, !74, !138, !442}
!1481 = !{!1482, !1483, !1484, !1485}
!1482 = !DILocalVariable(name: "status", arg: 1, scope: !1478, file: !432, line: 251, type: !74)
!1483 = !DILocalVariable(name: "errnum", arg: 2, scope: !1478, file: !432, line: 251, type: !74)
!1484 = !DILocalVariable(name: "message", arg: 3, scope: !1478, file: !432, line: 251, type: !138)
!1485 = !DILocalVariable(name: "args", arg: 4, scope: !1478, file: !432, line: 251, type: !442)
!1486 = !DILocation(line: 0, scope: !1478)
!1487 = !DILocation(line: 261, column: 3, scope: !1478)
!1488 = !DILocation(line: 265, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1478, file: !432, line: 265, column: 7)
!1490 = !DILocation(line: 265, column: 7, scope: !1478)
!1491 = !DILocation(line: 266, column: 5, scope: !1489)
!1492 = !DILocation(line: 272, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !432, line: 268, column: 5)
!1494 = !DILocation(line: 276, column: 3, scope: !1478)
!1495 = !DILocation(line: 282, column: 1, scope: !1478)
!1496 = distinct !DISubprogram(name: "flush_stdout", scope: !432, file: !432, line: 163, type: !479, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1497)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "stdout_fd", scope: !1496, file: !432, line: 166, type: !74)
!1499 = !DILocation(line: 0, scope: !1496)
!1500 = !DILocalVariable(name: "fd", arg: 1, scope: !1501, file: !432, line: 145, type: !74)
!1501 = distinct !DISubprogram(name: "is_open", scope: !432, file: !432, line: 145, type: !1502, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!74, !74}
!1504 = !{!1500}
!1505 = !DILocation(line: 0, scope: !1501, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 182, column: 25, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1496, file: !432, line: 182, column: 7)
!1508 = !DILocation(line: 157, column: 15, scope: !1501, inlinedAt: !1506)
!1509 = !DILocation(line: 157, column: 12, scope: !1501, inlinedAt: !1506)
!1510 = !DILocation(line: 182, column: 7, scope: !1496)
!1511 = !DILocation(line: 184, column: 5, scope: !1507)
!1512 = !DILocation(line: 185, column: 1, scope: !1496)
!1513 = distinct !DISubprogram(name: "error_tail", scope: !432, file: !432, line: 219, type: !1479, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DILocalVariable(name: "status", arg: 1, scope: !1513, file: !432, line: 219, type: !74)
!1516 = !DILocalVariable(name: "errnum", arg: 2, scope: !1513, file: !432, line: 219, type: !74)
!1517 = !DILocalVariable(name: "message", arg: 3, scope: !1513, file: !432, line: 219, type: !138)
!1518 = !DILocalVariable(name: "args", arg: 4, scope: !1513, file: !432, line: 219, type: !442)
!1519 = !DILocation(line: 0, scope: !1513)
!1520 = !DILocation(line: 229, column: 13, scope: !1513)
!1521 = !DILocalVariable(name: "__stream", arg: 1, scope: !1522, file: !890, line: 132, type: !1525)
!1522 = distinct !DISubprogram(name: "vfprintf", scope: !890, file: !890, line: 132, type: !1523, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1560)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!74, !1525, !894, !442}
!1525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1528, file: !193, line: 51, baseType: !74, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1528, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1528, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1528, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1528, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1528, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1528, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1528, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1528, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1528, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1528, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1528, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1528, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1528, file: !193, line: 70, baseType: !1544, size: 64, offset: 832)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1528, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1528, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1528, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1528, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1528, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1528, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1528, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1528, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1528, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1528, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1528, file: !193, line: 93, baseType: !1544, size: 64, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1528, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1528, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1528, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1528, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!1560 = !{!1521, !1561, !1562}
!1561 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1522, file: !890, line: 133, type: !894)
!1562 = !DILocalVariable(name: "__ap", arg: 3, scope: !1522, file: !890, line: 133, type: !442)
!1563 = !DILocation(line: 0, scope: !1522, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 229, column: 3, scope: !1513)
!1565 = !DILocation(line: 135, column: 10, scope: !1522, inlinedAt: !1564)
!1566 = !DILocation(line: 232, column: 3, scope: !1513)
!1567 = !DILocation(line: 233, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1513, file: !432, line: 233, column: 7)
!1569 = !DILocation(line: 233, column: 7, scope: !1513)
!1570 = !DILocalVariable(name: "errnum", arg: 1, scope: !1571, file: !432, line: 188, type: !74)
!1571 = distinct !DISubprogram(name: "print_errno_message", scope: !432, file: !432, line: 188, type: !830, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1572)
!1572 = !{!1570, !1573, !1574}
!1573 = !DILocalVariable(name: "s", scope: !1571, file: !432, line: 190, type: !138)
!1574 = !DILocalVariable(name: "errbuf", scope: !1571, file: !432, line: 193, type: !1575)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 1024)
!1578 = !DILocation(line: 0, scope: !1571, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 234, column: 5, scope: !1568)
!1580 = !DILocation(line: 193, column: 3, scope: !1571, inlinedAt: !1579)
!1581 = !DILocation(line: 193, column: 8, scope: !1571, inlinedAt: !1579)
!1582 = !DILocation(line: 195, column: 7, scope: !1571, inlinedAt: !1579)
!1583 = !DILocation(line: 207, column: 9, scope: !1584, inlinedAt: !1579)
!1584 = distinct !DILexicalBlock(scope: !1571, file: !432, line: 207, column: 7)
!1585 = !DILocation(line: 207, column: 7, scope: !1571, inlinedAt: !1579)
!1586 = !DILocation(line: 208, column: 9, scope: !1584, inlinedAt: !1579)
!1587 = !DILocation(line: 208, column: 5, scope: !1584, inlinedAt: !1579)
!1588 = !DILocation(line: 214, column: 3, scope: !1571, inlinedAt: !1579)
!1589 = !DILocation(line: 216, column: 1, scope: !1571, inlinedAt: !1579)
!1590 = !DILocation(line: 234, column: 5, scope: !1568)
!1591 = !DILocation(line: 238, column: 3, scope: !1513)
!1592 = !DILocalVariable(name: "__c", arg: 1, scope: !1593, file: !1594, line: 101, type: !74)
!1593 = distinct !DISubprogram(name: "putc_unlocked", scope: !1594, file: !1594, line: 101, type: !1595, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1597)
!1594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!74, !74, !1526}
!1597 = !{!1592, !1598}
!1598 = !DILocalVariable(name: "__stream", arg: 2, scope: !1593, file: !1594, line: 101, type: !1526)
!1599 = !DILocation(line: 0, scope: !1593, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 238, column: 3, scope: !1513)
!1601 = !DILocation(line: 103, column: 10, scope: !1593, inlinedAt: !1600)
!1602 = !{!1603, !841, i64 40}
!1603 = !{!"_IO_FILE", !905, i64 0, !841, i64 8, !841, i64 16, !841, i64 24, !841, i64 32, !841, i64 40, !841, i64 48, !841, i64 56, !841, i64 64, !841, i64 72, !841, i64 80, !841, i64 88, !841, i64 96, !841, i64 104, !905, i64 112, !905, i64 116, !1604, i64 120, !946, i64 128, !842, i64 130, !842, i64 131, !841, i64 136, !1604, i64 144, !841, i64 152, !841, i64 160, !841, i64 168, !841, i64 176, !1604, i64 184, !905, i64 192, !842, i64 196}
!1604 = !{!"long", !842, i64 0}
!1605 = !{!1603, !841, i64 48}
!1606 = !{!"branch_weights", i32 2000, i32 1}
!1607 = !DILocation(line: 240, column: 3, scope: !1513)
!1608 = !DILocation(line: 241, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1513, file: !432, line: 241, column: 7)
!1610 = !DILocation(line: 241, column: 7, scope: !1513)
!1611 = !DILocation(line: 242, column: 5, scope: !1609)
!1612 = !DILocation(line: 243, column: 1, scope: !1513)
!1613 = !DISubprogram(name: "__vfprintf_chk", scope: !890, file: !890, line: 96, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!74, !1525, !74, !894, !442}
!1616 = !DISubprogram(name: "strerror_r", scope: !1025, file: !1025, line: 444, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!132, !74, !132, !135}
!1619 = !DISubprogram(name: "__overflow", scope: !899, file: !899, line: 886, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!74, !1526, !74}
!1622 = !DISubprogram(name: "fflush_unlocked", scope: !899, file: !899, line: 239, type: !1623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!74, !1526}
!1625 = !DISubprogram(name: "fcntl", scope: !1626, file: !1626, line: 149, type: !1627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1626 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!74, !74, !74, null}
!1629 = distinct !DISubprogram(name: "error", scope: !432, file: !432, line: 285, type: !1630, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !74, !74, !138, null}
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = !DILocalVariable(name: "status", arg: 1, scope: !1629, file: !432, line: 285, type: !74)
!1634 = !DILocalVariable(name: "errnum", arg: 2, scope: !1629, file: !432, line: 285, type: !74)
!1635 = !DILocalVariable(name: "message", arg: 3, scope: !1629, file: !432, line: 285, type: !138)
!1636 = !DILocalVariable(name: "ap", scope: !1629, file: !432, line: 287, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !899, line: 52, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1639, line: 14, baseType: !1640)
!1639 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !446, baseType: !1641)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !47)
!1642 = !DILocation(line: 0, scope: !1629)
!1643 = !DILocation(line: 287, column: 3, scope: !1629)
!1644 = !DILocation(line: 287, column: 11, scope: !1629)
!1645 = !DILocation(line: 288, column: 3, scope: !1629)
!1646 = !DILocation(line: 289, column: 3, scope: !1629)
!1647 = !DILocation(line: 290, column: 3, scope: !1629)
!1648 = !DILocation(line: 291, column: 1, scope: !1629)
!1649 = !DILocation(line: 0, scope: !439)
!1650 = !DILocation(line: 302, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !439, file: !432, line: 302, column: 7)
!1652 = !DILocation(line: 302, column: 7, scope: !439)
!1653 = !DILocation(line: 307, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !432, line: 307, column: 11)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !432, line: 303, column: 5)
!1656 = !DILocation(line: 307, column: 27, scope: !1654)
!1657 = !DILocation(line: 308, column: 11, scope: !1654)
!1658 = !DILocation(line: 308, column: 28, scope: !1654)
!1659 = !DILocation(line: 308, column: 25, scope: !1654)
!1660 = !DILocation(line: 309, column: 15, scope: !1654)
!1661 = !DILocation(line: 309, column: 33, scope: !1654)
!1662 = !DILocation(line: 310, column: 19, scope: !1654)
!1663 = !DILocation(line: 311, column: 22, scope: !1654)
!1664 = !DILocation(line: 311, column: 56, scope: !1654)
!1665 = !DILocation(line: 307, column: 11, scope: !1655)
!1666 = !DILocation(line: 316, column: 21, scope: !1655)
!1667 = !DILocation(line: 317, column: 23, scope: !1655)
!1668 = !DILocation(line: 318, column: 5, scope: !1655)
!1669 = !DILocation(line: 327, column: 3, scope: !439)
!1670 = !DILocation(line: 331, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !439, file: !432, line: 331, column: 7)
!1672 = !DILocation(line: 331, column: 7, scope: !439)
!1673 = !DILocation(line: 332, column: 5, scope: !1671)
!1674 = !DILocation(line: 338, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !432, line: 334, column: 5)
!1676 = !DILocation(line: 346, column: 3, scope: !439)
!1677 = !DILocation(line: 350, column: 3, scope: !439)
!1678 = !DILocation(line: 356, column: 1, scope: !439)
!1679 = distinct !DISubprogram(name: "error_at_line", scope: !432, file: !432, line: 359, type: !1680, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !74, !74, !138, !69, !138, null}
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688}
!1683 = !DILocalVariable(name: "status", arg: 1, scope: !1679, file: !432, line: 359, type: !74)
!1684 = !DILocalVariable(name: "errnum", arg: 2, scope: !1679, file: !432, line: 359, type: !74)
!1685 = !DILocalVariable(name: "file_name", arg: 3, scope: !1679, file: !432, line: 359, type: !138)
!1686 = !DILocalVariable(name: "line_number", arg: 4, scope: !1679, file: !432, line: 360, type: !69)
!1687 = !DILocalVariable(name: "message", arg: 5, scope: !1679, file: !432, line: 360, type: !138)
!1688 = !DILocalVariable(name: "ap", scope: !1679, file: !432, line: 362, type: !1637)
!1689 = !DILocation(line: 0, scope: !1679)
!1690 = !DILocation(line: 362, column: 3, scope: !1679)
!1691 = !DILocation(line: 362, column: 11, scope: !1679)
!1692 = !DILocation(line: 363, column: 3, scope: !1679)
!1693 = !DILocation(line: 364, column: 3, scope: !1679)
!1694 = !DILocation(line: 366, column: 3, scope: !1679)
!1695 = !DILocation(line: 367, column: 1, scope: !1679)
!1696 = distinct !DISubprogram(name: "getprogname", scope: !757, file: !757, line: 54, type: !1697, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !888)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!138}
!1699 = !DILocation(line: 58, column: 10, scope: !1696)
!1700 = !DILocation(line: 58, column: 3, scope: !1696)
!1701 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !484, file: !484, line: 27, type: !1702, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1705)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!135, !138, !135, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1705 = !{!1706, !1707, !1708}
!1706 = !DILocalVariable(name: "s", arg: 1, scope: !1701, file: !484, line: 27, type: !138)
!1707 = !DILocalVariable(name: "n", arg: 2, scope: !1701, file: !484, line: 27, type: !135)
!1708 = !DILocalVariable(name: "ps", arg: 3, scope: !1701, file: !484, line: 27, type: !1704)
!1709 = !DILocation(line: 0, scope: !1701)
!1710 = !DILocation(line: 29, column: 10, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1701, file: !484, line: 29, column: 7)
!1712 = !DILocation(line: 29, column: 7, scope: !1701)
!1713 = !DILocation(line: 31, column: 10, scope: !1701)
!1714 = !DILocation(line: 31, column: 3, scope: !1701)
!1715 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !759, file: !759, line: 82, type: !1716, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1731)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!135, !1718, !138, !135, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !136, line: 74, baseType: !74)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !488, line: 6, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !490, line: 21, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 13, size: 64, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1723, file: !490, line: 15, baseType: !74, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1723, file: !490, line: 20, baseType: !1727, size: 32, offset: 32)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !490, line: 16, size: 32, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1727, file: !490, line: 18, baseType: !69, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1727, file: !490, line: 19, baseType: !61, size: 32)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1732 = !DILocalVariable(name: "pwc", arg: 1, scope: !1715, file: !759, line: 82, type: !1718)
!1733 = !DILocalVariable(name: "s", arg: 2, scope: !1715, file: !759, line: 82, type: !138)
!1734 = !DILocalVariable(name: "n", arg: 3, scope: !1715, file: !759, line: 82, type: !135)
!1735 = !DILocalVariable(name: "ps", arg: 4, scope: !1715, file: !759, line: 82, type: !1720)
!1736 = !DILocalVariable(name: "wc", scope: !1715, file: !759, line: 98, type: !1719)
!1737 = !DILocalVariable(name: "ret", scope: !1715, file: !759, line: 134, type: !135)
!1738 = !DILocalVariable(name: "uc", scope: !1739, file: !759, line: 151, type: !140)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !759, line: 150, column: 5)
!1740 = distinct !DILexicalBlock(scope: !1715, file: !759, line: 149, column: 7)
!1741 = !DILocation(line: 0, scope: !1715)
!1742 = !DILocation(line: 98, column: 3, scope: !1715)
!1743 = !DILocation(line: 99, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1715, file: !759, line: 99, column: 7)
!1745 = !DILocation(line: 99, column: 7, scope: !1715)
!1746 = !DILocation(line: 140, column: 9, scope: !1715)
!1747 = !DILocation(line: 149, column: 19, scope: !1740)
!1748 = !DILocation(line: 149, column: 26, scope: !1740)
!1749 = !DILocation(line: 149, column: 41, scope: !1740)
!1750 = !DILocation(line: 149, column: 7, scope: !1715)
!1751 = !DILocation(line: 151, column: 26, scope: !1739)
!1752 = !DILocation(line: 0, scope: !1739)
!1753 = !DILocation(line: 152, column: 14, scope: !1739)
!1754 = !DILocation(line: 152, column: 12, scope: !1739)
!1755 = !DILocation(line: 158, column: 1, scope: !1715)
!1756 = !DISubprogram(name: "mbrtowc", scope: !1757, file: !1757, line: 297, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1757 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!135, !1760, !894, !135, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1718)
!1761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1720)
!1762 = distinct !DISubprogram(name: "set_program_name", scope: !502, file: !502, line: 37, type: !854, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DILocalVariable(name: "argv0", arg: 1, scope: !1762, file: !502, line: 37, type: !138)
!1765 = !DILocalVariable(name: "slash", scope: !1762, file: !502, line: 44, type: !138)
!1766 = !DILocalVariable(name: "base", scope: !1762, file: !502, line: 45, type: !138)
!1767 = !DILocation(line: 0, scope: !1762)
!1768 = !DILocation(line: 44, column: 23, scope: !1762)
!1769 = !DILocation(line: 45, column: 22, scope: !1762)
!1770 = !DILocation(line: 46, column: 17, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1762, file: !502, line: 46, column: 7)
!1772 = !DILocation(line: 46, column: 9, scope: !1771)
!1773 = !DILocation(line: 46, column: 25, scope: !1771)
!1774 = !DILocation(line: 46, column: 40, scope: !1771)
!1775 = !DILocalVariable(name: "__s1", arg: 1, scope: !1776, file: !917, line: 974, type: !1053)
!1776 = distinct !DISubprogram(name: "memeq", scope: !917, file: !917, line: 974, type: !1777, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!176, !1053, !1053, !135}
!1779 = !{!1775, !1780, !1781}
!1780 = !DILocalVariable(name: "__s2", arg: 2, scope: !1776, file: !917, line: 974, type: !1053)
!1781 = !DILocalVariable(name: "__n", arg: 3, scope: !1776, file: !917, line: 974, type: !135)
!1782 = !DILocation(line: 0, scope: !1776, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 46, column: 28, scope: !1771)
!1784 = !DILocation(line: 976, column: 11, scope: !1776, inlinedAt: !1783)
!1785 = !DILocation(line: 976, column: 10, scope: !1776, inlinedAt: !1783)
!1786 = !DILocation(line: 46, column: 7, scope: !1762)
!1787 = !DILocation(line: 49, column: 11, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !502, line: 49, column: 11)
!1789 = distinct !DILexicalBlock(scope: !1771, file: !502, line: 47, column: 5)
!1790 = !DILocation(line: 49, column: 36, scope: !1788)
!1791 = !DILocation(line: 49, column: 11, scope: !1789)
!1792 = !DILocation(line: 65, column: 16, scope: !1762)
!1793 = !DILocation(line: 71, column: 27, scope: !1762)
!1794 = !DILocation(line: 74, column: 33, scope: !1762)
!1795 = !DILocation(line: 76, column: 1, scope: !1762)
!1796 = !DISubprogram(name: "strrchr", scope: !1025, file: !1025, line: 273, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1797 = !DILocation(line: 0, scope: !511)
!1798 = !DILocation(line: 40, column: 29, scope: !511)
!1799 = !DILocation(line: 41, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !511, file: !512, line: 41, column: 7)
!1801 = !DILocation(line: 41, column: 7, scope: !511)
!1802 = !DILocation(line: 47, column: 3, scope: !511)
!1803 = !DILocation(line: 48, column: 3, scope: !511)
!1804 = !DILocation(line: 48, column: 13, scope: !511)
!1805 = !DILocalVariable(name: "ps", arg: 1, scope: !1806, file: !1247, line: 1135, type: !1809)
!1806 = distinct !DISubprogram(name: "mbszero", scope: !1247, file: !1247, line: 1135, type: !1807, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !1810)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !1809}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1810 = !{!1805}
!1811 = !DILocation(line: 0, scope: !1806, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 48, column: 18, scope: !511)
!1813 = !DILocalVariable(name: "__dest", arg: 1, scope: !1814, file: !1256, line: 57, type: !133)
!1814 = distinct !DISubprogram(name: "memset", scope: !1256, file: !1256, line: 57, type: !1257, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !1815)
!1815 = !{!1813, !1816, !1817}
!1816 = !DILocalVariable(name: "__ch", arg: 2, scope: !1814, file: !1256, line: 57, type: !74)
!1817 = !DILocalVariable(name: "__len", arg: 3, scope: !1814, file: !1256, line: 57, type: !135)
!1818 = !DILocation(line: 0, scope: !1814, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 1137, column: 3, scope: !1806, inlinedAt: !1812)
!1820 = !DILocation(line: 59, column: 10, scope: !1814, inlinedAt: !1819)
!1821 = !DILocation(line: 49, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !511, file: !512, line: 49, column: 7)
!1823 = !DILocation(line: 49, column: 39, scope: !1822)
!1824 = !DILocation(line: 49, column: 44, scope: !1822)
!1825 = !DILocation(line: 54, column: 1, scope: !511)
!1826 = !DISubprogram(name: "mbrtoc32", scope: !523, file: !523, line: 57, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!135, !1829, !894, !135, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1809)
!1832 = distinct !DISubprogram(name: "clone_quoting_options", scope: !540, file: !540, line: 113, type: !1833, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1836)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "o", arg: 1, scope: !1832, file: !540, line: 113, type: !1835)
!1838 = !DILocalVariable(name: "saved_errno", scope: !1832, file: !540, line: 115, type: !74)
!1839 = !DILocalVariable(name: "p", scope: !1832, file: !540, line: 116, type: !1835)
!1840 = !DILocation(line: 0, scope: !1832)
!1841 = !DILocation(line: 115, column: 21, scope: !1832)
!1842 = !DILocation(line: 116, column: 40, scope: !1832)
!1843 = !DILocation(line: 116, column: 31, scope: !1832)
!1844 = !DILocation(line: 118, column: 9, scope: !1832)
!1845 = !DILocation(line: 119, column: 3, scope: !1832)
!1846 = distinct !DISubprogram(name: "get_quoting_style", scope: !540, file: !540, line: 124, type: !1847, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1851)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!93, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "o", arg: 1, scope: !1846, file: !540, line: 124, type: !1849)
!1853 = !DILocation(line: 0, scope: !1846)
!1854 = !DILocation(line: 126, column: 11, scope: !1846)
!1855 = !DILocation(line: 126, column: 46, scope: !1846)
!1856 = !{!1857, !842, i64 0}
!1857 = !{!"quoting_options", !842, i64 0, !905, i64 4, !842, i64 8, !841, i64 40, !841, i64 48}
!1858 = !DILocation(line: 126, column: 3, scope: !1846)
!1859 = distinct !DISubprogram(name: "set_quoting_style", scope: !540, file: !540, line: 132, type: !1860, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1835, !93}
!1862 = !{!1863, !1864}
!1863 = !DILocalVariable(name: "o", arg: 1, scope: !1859, file: !540, line: 132, type: !1835)
!1864 = !DILocalVariable(name: "s", arg: 2, scope: !1859, file: !540, line: 132, type: !93)
!1865 = !DILocation(line: 0, scope: !1859)
!1866 = !DILocation(line: 134, column: 4, scope: !1859)
!1867 = !DILocation(line: 134, column: 45, scope: !1859)
!1868 = !DILocation(line: 135, column: 1, scope: !1859)
!1869 = distinct !DISubprogram(name: "set_char_quoting", scope: !540, file: !540, line: 143, type: !1870, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!74, !1835, !4, !74}
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1879, !1880}
!1873 = !DILocalVariable(name: "o", arg: 1, scope: !1869, file: !540, line: 143, type: !1835)
!1874 = !DILocalVariable(name: "c", arg: 2, scope: !1869, file: !540, line: 143, type: !4)
!1875 = !DILocalVariable(name: "i", arg: 3, scope: !1869, file: !540, line: 143, type: !74)
!1876 = !DILocalVariable(name: "uc", scope: !1869, file: !540, line: 145, type: !140)
!1877 = !DILocalVariable(name: "p", scope: !1869, file: !540, line: 146, type: !1878)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1879 = !DILocalVariable(name: "shift", scope: !1869, file: !540, line: 148, type: !74)
!1880 = !DILocalVariable(name: "r", scope: !1869, file: !540, line: 149, type: !69)
!1881 = !DILocation(line: 0, scope: !1869)
!1882 = !DILocation(line: 147, column: 6, scope: !1869)
!1883 = !DILocation(line: 147, column: 41, scope: !1869)
!1884 = !DILocation(line: 147, column: 62, scope: !1869)
!1885 = !DILocation(line: 147, column: 57, scope: !1869)
!1886 = !DILocation(line: 148, column: 15, scope: !1869)
!1887 = !DILocation(line: 149, column: 21, scope: !1869)
!1888 = !DILocation(line: 149, column: 24, scope: !1869)
!1889 = !DILocation(line: 149, column: 34, scope: !1869)
!1890 = !DILocation(line: 150, column: 19, scope: !1869)
!1891 = !DILocation(line: 150, column: 24, scope: !1869)
!1892 = !DILocation(line: 150, column: 6, scope: !1869)
!1893 = !DILocation(line: 151, column: 3, scope: !1869)
!1894 = distinct !DISubprogram(name: "set_quoting_flags", scope: !540, file: !540, line: 159, type: !1895, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!74, !1835, !74}
!1897 = !{!1898, !1899, !1900}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1894, file: !540, line: 159, type: !1835)
!1899 = !DILocalVariable(name: "i", arg: 2, scope: !1894, file: !540, line: 159, type: !74)
!1900 = !DILocalVariable(name: "r", scope: !1894, file: !540, line: 163, type: !74)
!1901 = !DILocation(line: 0, scope: !1894)
!1902 = !DILocation(line: 161, column: 8, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !540, line: 161, column: 7)
!1904 = !DILocation(line: 161, column: 7, scope: !1894)
!1905 = !DILocation(line: 163, column: 14, scope: !1894)
!1906 = !{!1857, !905, i64 4}
!1907 = !DILocation(line: 164, column: 12, scope: !1894)
!1908 = !DILocation(line: 165, column: 3, scope: !1894)
!1909 = distinct !DISubprogram(name: "set_custom_quoting", scope: !540, file: !540, line: 169, type: !1910, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !1835, !138, !138}
!1912 = !{!1913, !1914, !1915}
!1913 = !DILocalVariable(name: "o", arg: 1, scope: !1909, file: !540, line: 169, type: !1835)
!1914 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1909, file: !540, line: 170, type: !138)
!1915 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1909, file: !540, line: 170, type: !138)
!1916 = !DILocation(line: 0, scope: !1909)
!1917 = !DILocation(line: 172, column: 8, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !540, line: 172, column: 7)
!1919 = !DILocation(line: 172, column: 7, scope: !1909)
!1920 = !DILocation(line: 174, column: 12, scope: !1909)
!1921 = !DILocation(line: 175, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !540, line: 175, column: 7)
!1923 = !DILocation(line: 175, column: 19, scope: !1922)
!1924 = !DILocation(line: 176, column: 5, scope: !1922)
!1925 = !DILocation(line: 177, column: 6, scope: !1909)
!1926 = !DILocation(line: 177, column: 17, scope: !1909)
!1927 = !{!1857, !841, i64 40}
!1928 = !DILocation(line: 178, column: 6, scope: !1909)
!1929 = !DILocation(line: 178, column: 18, scope: !1909)
!1930 = !{!1857, !841, i64 48}
!1931 = !DILocation(line: 179, column: 1, scope: !1909)
!1932 = !DISubprogram(name: "abort", scope: !1029, file: !1029, line: 598, type: !479, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !888)
!1933 = distinct !DISubprogram(name: "quotearg_buffer", scope: !540, file: !540, line: 774, type: !1934, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!135, !132, !135, !138, !135, !1849}
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1937 = !DILocalVariable(name: "buffer", arg: 1, scope: !1933, file: !540, line: 774, type: !132)
!1938 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1933, file: !540, line: 774, type: !135)
!1939 = !DILocalVariable(name: "arg", arg: 3, scope: !1933, file: !540, line: 775, type: !138)
!1940 = !DILocalVariable(name: "argsize", arg: 4, scope: !1933, file: !540, line: 775, type: !135)
!1941 = !DILocalVariable(name: "o", arg: 5, scope: !1933, file: !540, line: 776, type: !1849)
!1942 = !DILocalVariable(name: "p", scope: !1933, file: !540, line: 778, type: !1849)
!1943 = !DILocalVariable(name: "saved_errno", scope: !1933, file: !540, line: 779, type: !74)
!1944 = !DILocalVariable(name: "r", scope: !1933, file: !540, line: 780, type: !135)
!1945 = !DILocation(line: 0, scope: !1933)
!1946 = !DILocation(line: 778, column: 37, scope: !1933)
!1947 = !DILocation(line: 779, column: 21, scope: !1933)
!1948 = !DILocation(line: 781, column: 43, scope: !1933)
!1949 = !DILocation(line: 781, column: 53, scope: !1933)
!1950 = !DILocation(line: 781, column: 63, scope: !1933)
!1951 = !DILocation(line: 782, column: 43, scope: !1933)
!1952 = !DILocation(line: 782, column: 58, scope: !1933)
!1953 = !DILocation(line: 780, column: 14, scope: !1933)
!1954 = !DILocation(line: 783, column: 9, scope: !1933)
!1955 = !DILocation(line: 784, column: 3, scope: !1933)
!1956 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !540, file: !540, line: 251, type: !1957, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1961)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!135, !132, !135, !138, !135, !93, !74, !1959, !138, !138}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1986, !1988, !1991, !1992, !1993, !1994, !1997, !1998, !2001, !2005, !2006, !2014, !2017, !2018, !2020, !2021, !2022, !2023}
!1962 = !DILocalVariable(name: "buffer", arg: 1, scope: !1956, file: !540, line: 251, type: !132)
!1963 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1956, file: !540, line: 251, type: !135)
!1964 = !DILocalVariable(name: "arg", arg: 3, scope: !1956, file: !540, line: 252, type: !138)
!1965 = !DILocalVariable(name: "argsize", arg: 4, scope: !1956, file: !540, line: 252, type: !135)
!1966 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1956, file: !540, line: 253, type: !93)
!1967 = !DILocalVariable(name: "flags", arg: 6, scope: !1956, file: !540, line: 253, type: !74)
!1968 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1956, file: !540, line: 254, type: !1959)
!1969 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1956, file: !540, line: 255, type: !138)
!1970 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1956, file: !540, line: 256, type: !138)
!1971 = !DILocalVariable(name: "unibyte_locale", scope: !1956, file: !540, line: 258, type: !176)
!1972 = !DILocalVariable(name: "len", scope: !1956, file: !540, line: 260, type: !135)
!1973 = !DILocalVariable(name: "orig_buffersize", scope: !1956, file: !540, line: 261, type: !135)
!1974 = !DILocalVariable(name: "quote_string", scope: !1956, file: !540, line: 262, type: !138)
!1975 = !DILocalVariable(name: "quote_string_len", scope: !1956, file: !540, line: 263, type: !135)
!1976 = !DILocalVariable(name: "backslash_escapes", scope: !1956, file: !540, line: 264, type: !176)
!1977 = !DILocalVariable(name: "elide_outer_quotes", scope: !1956, file: !540, line: 265, type: !176)
!1978 = !DILocalVariable(name: "encountered_single_quote", scope: !1956, file: !540, line: 266, type: !176)
!1979 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1956, file: !540, line: 267, type: !176)
!1980 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1956, file: !540, line: 309, type: !176)
!1981 = !DILocalVariable(name: "lq", scope: !1982, file: !540, line: 361, type: !138)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !540, line: 361, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !540, line: 360, column: 13)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !540, line: 333, column: 7)
!1985 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 312, column: 5)
!1986 = !DILocalVariable(name: "i", scope: !1987, file: !540, line: 395, type: !135)
!1987 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 395, column: 3)
!1988 = !DILocalVariable(name: "is_right_quote", scope: !1989, file: !540, line: 397, type: !176)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !540, line: 396, column: 5)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !540, line: 395, column: 3)
!1991 = !DILocalVariable(name: "escaping", scope: !1989, file: !540, line: 398, type: !176)
!1992 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1989, file: !540, line: 399, type: !176)
!1993 = !DILocalVariable(name: "c", scope: !1989, file: !540, line: 417, type: !140)
!1994 = !DILocalVariable(name: "m", scope: !1995, file: !540, line: 598, type: !135)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 596, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 419, column: 9)
!1997 = !DILocalVariable(name: "printable", scope: !1995, file: !540, line: 600, type: !176)
!1998 = !DILocalVariable(name: "mbs", scope: !1999, file: !540, line: 609, type: !610)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !540, line: 608, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !540, line: 602, column: 17)
!2001 = !DILocalVariable(name: "w", scope: !2002, file: !540, line: 618, type: !522)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !540, line: 617, column: 19)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !540, line: 616, column: 17)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !540, line: 616, column: 17)
!2005 = !DILocalVariable(name: "bytes", scope: !2002, file: !540, line: 619, type: !135)
!2006 = !DILocalVariable(name: "j", scope: !2007, file: !540, line: 648, type: !135)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !540, line: 648, column: 29)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !540, line: 647, column: 27)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !540, line: 645, column: 29)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !540, line: 636, column: 23)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !540, line: 628, column: 30)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !540, line: 623, column: 30)
!2013 = distinct !DILexicalBlock(scope: !2002, file: !540, line: 621, column: 25)
!2014 = !DILocalVariable(name: "ilim", scope: !2015, file: !540, line: 674, type: !135)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !540, line: 671, column: 15)
!2016 = distinct !DILexicalBlock(scope: !1995, file: !540, line: 670, column: 17)
!2017 = !DILabel(scope: !1956, name: "process_input", file: !540, line: 308)
!2018 = !DILabel(scope: !2019, name: "c_and_shell_escape", file: !540, line: 502)
!2019 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 478, column: 9)
!2020 = !DILabel(scope: !2019, name: "c_escape", file: !540, line: 507)
!2021 = !DILabel(scope: !1989, name: "store_escape", file: !540, line: 709)
!2022 = !DILabel(scope: !1989, name: "store_c", file: !540, line: 712)
!2023 = !DILabel(scope: !1956, name: "force_outer_quoting_style", file: !540, line: 753)
!2024 = !DILocation(line: 0, scope: !1956)
!2025 = !DILocation(line: 258, column: 25, scope: !1956)
!2026 = !DILocation(line: 258, column: 36, scope: !1956)
!2027 = !DILocation(line: 265, column: 8, scope: !1956)
!2028 = !DILocation(line: 267, column: 3, scope: !1956)
!2029 = !DILocation(line: 261, column: 10, scope: !1956)
!2030 = !DILocation(line: 262, column: 15, scope: !1956)
!2031 = !DILocation(line: 263, column: 10, scope: !1956)
!2032 = !DILocation(line: 264, column: 8, scope: !1956)
!2033 = !DILocation(line: 266, column: 8, scope: !1956)
!2034 = !DILocation(line: 267, column: 8, scope: !1956)
!2035 = !DILocation(line: 308, column: 2, scope: !1956)
!2036 = !DILocation(line: 311, column: 3, scope: !1956)
!2037 = !DILocation(line: 318, column: 11, scope: !1985)
!2038 = !DILocation(line: 318, column: 12, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1985, file: !540, line: 318, column: 11)
!2040 = !DILocation(line: 319, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !540, line: 319, column: 9)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !540, line: 319, column: 9)
!2043 = !DILocation(line: 319, column: 9, scope: !2042)
!2044 = !DILocation(line: 0, scope: !601, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 357, column: 26, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !540, line: 335, column: 11)
!2047 = distinct !DILexicalBlock(scope: !1984, file: !540, line: 334, column: 13)
!2048 = !DILocation(line: 199, column: 29, scope: !601, inlinedAt: !2045)
!2049 = !DILocation(line: 201, column: 19, scope: !2050, inlinedAt: !2045)
!2050 = distinct !DILexicalBlock(scope: !601, file: !540, line: 201, column: 7)
!2051 = !DILocation(line: 201, column: 7, scope: !601, inlinedAt: !2045)
!2052 = !DILocation(line: 229, column: 3, scope: !601, inlinedAt: !2045)
!2053 = !DILocation(line: 230, column: 3, scope: !601, inlinedAt: !2045)
!2054 = !DILocation(line: 230, column: 13, scope: !601, inlinedAt: !2045)
!2055 = !DILocalVariable(name: "ps", arg: 1, scope: !2056, file: !1247, line: 1135, type: !2059)
!2056 = distinct !DISubprogram(name: "mbszero", scope: !1247, file: !1247, line: 1135, type: !2057, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2060)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!2060 = !{!2055}
!2061 = !DILocation(line: 0, scope: !2056, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 230, column: 18, scope: !601, inlinedAt: !2045)
!2063 = !DILocalVariable(name: "__dest", arg: 1, scope: !2064, file: !1256, line: 57, type: !133)
!2064 = distinct !DISubprogram(name: "memset", scope: !1256, file: !1256, line: 57, type: !1257, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2065)
!2065 = !{!2063, !2066, !2067}
!2066 = !DILocalVariable(name: "__ch", arg: 2, scope: !2064, file: !1256, line: 57, type: !74)
!2067 = !DILocalVariable(name: "__len", arg: 3, scope: !2064, file: !1256, line: 57, type: !135)
!2068 = !DILocation(line: 0, scope: !2064, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 1137, column: 3, scope: !2056, inlinedAt: !2062)
!2070 = !DILocation(line: 59, column: 10, scope: !2064, inlinedAt: !2069)
!2071 = !DILocation(line: 231, column: 7, scope: !2072, inlinedAt: !2045)
!2072 = distinct !DILexicalBlock(scope: !601, file: !540, line: 231, column: 7)
!2073 = !DILocation(line: 231, column: 40, scope: !2072, inlinedAt: !2045)
!2074 = !DILocation(line: 231, column: 45, scope: !2072, inlinedAt: !2045)
!2075 = !DILocation(line: 235, column: 1, scope: !601, inlinedAt: !2045)
!2076 = !DILocation(line: 0, scope: !601, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 358, column: 27, scope: !2046)
!2078 = !DILocation(line: 199, column: 29, scope: !601, inlinedAt: !2077)
!2079 = !DILocation(line: 201, column: 19, scope: !2050, inlinedAt: !2077)
!2080 = !DILocation(line: 201, column: 7, scope: !601, inlinedAt: !2077)
!2081 = !DILocation(line: 229, column: 3, scope: !601, inlinedAt: !2077)
!2082 = !DILocation(line: 230, column: 3, scope: !601, inlinedAt: !2077)
!2083 = !DILocation(line: 230, column: 13, scope: !601, inlinedAt: !2077)
!2084 = !DILocation(line: 0, scope: !2056, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 230, column: 18, scope: !601, inlinedAt: !2077)
!2086 = !DILocation(line: 0, scope: !2064, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 1137, column: 3, scope: !2056, inlinedAt: !2085)
!2088 = !DILocation(line: 59, column: 10, scope: !2064, inlinedAt: !2087)
!2089 = !DILocation(line: 231, column: 7, scope: !2072, inlinedAt: !2077)
!2090 = !DILocation(line: 231, column: 40, scope: !2072, inlinedAt: !2077)
!2091 = !DILocation(line: 231, column: 45, scope: !2072, inlinedAt: !2077)
!2092 = !DILocation(line: 235, column: 1, scope: !601, inlinedAt: !2077)
!2093 = !DILocation(line: 360, column: 14, scope: !1983)
!2094 = !DILocation(line: 360, column: 13, scope: !1984)
!2095 = !DILocation(line: 0, scope: !1982)
!2096 = !DILocation(line: 361, column: 45, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1982, file: !540, line: 361, column: 11)
!2098 = !DILocation(line: 361, column: 11, scope: !1982)
!2099 = !DILocation(line: 362, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !540, line: 362, column: 13)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !540, line: 362, column: 13)
!2102 = !DILocation(line: 362, column: 13, scope: !2101)
!2103 = !DILocation(line: 361, column: 52, scope: !2097)
!2104 = distinct !{!2104, !2098, !2105, !951}
!2105 = !DILocation(line: 362, column: 13, scope: !1982)
!2106 = !DILocation(line: 260, column: 10, scope: !1956)
!2107 = !DILocation(line: 365, column: 28, scope: !1984)
!2108 = !DILocation(line: 367, column: 7, scope: !1985)
!2109 = !DILocation(line: 370, column: 7, scope: !1985)
!2110 = !DILocation(line: 373, column: 7, scope: !1985)
!2111 = !DILocation(line: 376, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1985, file: !540, line: 376, column: 11)
!2113 = !DILocation(line: 376, column: 11, scope: !1985)
!2114 = !DILocation(line: 381, column: 12, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1985, file: !540, line: 381, column: 11)
!2116 = !DILocation(line: 381, column: 11, scope: !1985)
!2117 = !DILocation(line: 382, column: 9, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !540, line: 382, column: 9)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !540, line: 382, column: 9)
!2120 = !DILocation(line: 382, column: 9, scope: !2119)
!2121 = !DILocation(line: 389, column: 7, scope: !1985)
!2122 = !DILocation(line: 392, column: 7, scope: !1985)
!2123 = !DILocation(line: 0, scope: !1987)
!2124 = !DILocation(line: 395, column: 8, scope: !1987)
!2125 = !DILocation(line: 309, column: 8, scope: !1956)
!2126 = !DILocation(line: 395, scope: !1987)
!2127 = !DILocation(line: 395, column: 34, scope: !1990)
!2128 = !DILocation(line: 395, column: 26, scope: !1990)
!2129 = !DILocation(line: 395, column: 48, scope: !1990)
!2130 = !DILocation(line: 395, column: 55, scope: !1990)
!2131 = !DILocation(line: 395, column: 3, scope: !1987)
!2132 = !DILocation(line: 395, column: 67, scope: !1990)
!2133 = !DILocation(line: 0, scope: !1989)
!2134 = !DILocation(line: 402, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 401, column: 11)
!2136 = !DILocation(line: 404, column: 17, scope: !2135)
!2137 = !DILocation(line: 405, column: 39, scope: !2135)
!2138 = !DILocation(line: 409, column: 32, scope: !2135)
!2139 = !DILocation(line: 405, column: 19, scope: !2135)
!2140 = !DILocation(line: 405, column: 15, scope: !2135)
!2141 = !DILocation(line: 410, column: 11, scope: !2135)
!2142 = !DILocation(line: 410, column: 25, scope: !2135)
!2143 = !DILocalVariable(name: "__s1", arg: 1, scope: !2144, file: !917, line: 974, type: !1053)
!2144 = distinct !DISubprogram(name: "memeq", scope: !917, file: !917, line: 974, type: !1777, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2145)
!2145 = !{!2143, !2146, !2147}
!2146 = !DILocalVariable(name: "__s2", arg: 2, scope: !2144, file: !917, line: 974, type: !1053)
!2147 = !DILocalVariable(name: "__n", arg: 3, scope: !2144, file: !917, line: 974, type: !135)
!2148 = !DILocation(line: 0, scope: !2144, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 410, column: 14, scope: !2135)
!2150 = !DILocation(line: 976, column: 11, scope: !2144, inlinedAt: !2149)
!2151 = !DILocation(line: 976, column: 10, scope: !2144, inlinedAt: !2149)
!2152 = !DILocation(line: 401, column: 11, scope: !1989)
!2153 = !DILocation(line: 417, column: 25, scope: !1989)
!2154 = !DILocation(line: 418, column: 7, scope: !1989)
!2155 = !DILocation(line: 421, column: 15, scope: !1996)
!2156 = !DILocation(line: 423, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !540, line: 423, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !540, line: 422, column: 13)
!2159 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 421, column: 15)
!2160 = !DILocation(line: 423, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !540, line: 423, column: 15)
!2162 = !DILocation(line: 423, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !540, line: 423, column: 15)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !540, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !540, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2164)
!2167 = !DILocation(line: 423, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !540, line: 423, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !540, line: 423, column: 15)
!2170 = !DILocation(line: 423, column: 15, scope: !2169)
!2171 = !DILocation(line: 423, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !540, line: 423, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2165, file: !540, line: 423, column: 15)
!2174 = !DILocation(line: 423, column: 15, scope: !2173)
!2175 = !DILocation(line: 423, column: 15, scope: !2165)
!2176 = !DILocation(line: 423, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !540, line: 423, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2157, file: !540, line: 423, column: 15)
!2179 = !DILocation(line: 423, column: 15, scope: !2178)
!2180 = !DILocation(line: 431, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2158, file: !540, line: 430, column: 19)
!2182 = !DILocation(line: 431, column: 24, scope: !2181)
!2183 = !DILocation(line: 431, column: 28, scope: !2181)
!2184 = !DILocation(line: 431, column: 38, scope: !2181)
!2185 = !DILocation(line: 431, column: 48, scope: !2181)
!2186 = !DILocation(line: 431, column: 59, scope: !2181)
!2187 = !DILocation(line: 433, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !540, line: 433, column: 19)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !540, line: 433, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2181, file: !540, line: 432, column: 17)
!2191 = !DILocation(line: 433, column: 19, scope: !2189)
!2192 = !DILocation(line: 434, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !540, line: 434, column: 19)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !540, line: 434, column: 19)
!2195 = !DILocation(line: 434, column: 19, scope: !2194)
!2196 = !DILocation(line: 435, column: 17, scope: !2190)
!2197 = !DILocation(line: 442, column: 20, scope: !2159)
!2198 = !DILocation(line: 447, column: 11, scope: !1996)
!2199 = !DILocation(line: 450, column: 19, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 448, column: 13)
!2201 = !DILocation(line: 456, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2200, file: !540, line: 455, column: 19)
!2203 = !DILocation(line: 456, column: 24, scope: !2202)
!2204 = !DILocation(line: 456, column: 28, scope: !2202)
!2205 = !DILocation(line: 456, column: 38, scope: !2202)
!2206 = !DILocation(line: 456, column: 47, scope: !2202)
!2207 = !DILocation(line: 456, column: 41, scope: !2202)
!2208 = !DILocation(line: 456, column: 52, scope: !2202)
!2209 = !DILocation(line: 455, column: 19, scope: !2200)
!2210 = !DILocation(line: 457, column: 25, scope: !2202)
!2211 = !DILocation(line: 457, column: 17, scope: !2202)
!2212 = !DILocation(line: 464, column: 25, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2202, file: !540, line: 458, column: 19)
!2214 = !DILocation(line: 468, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !540, line: 468, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !540, line: 468, column: 21)
!2217 = !DILocation(line: 468, column: 21, scope: !2216)
!2218 = !DILocation(line: 469, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !540, line: 469, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2213, file: !540, line: 469, column: 21)
!2221 = !DILocation(line: 469, column: 21, scope: !2220)
!2222 = !DILocation(line: 470, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !540, line: 470, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2213, file: !540, line: 470, column: 21)
!2225 = !DILocation(line: 470, column: 21, scope: !2224)
!2226 = !DILocation(line: 471, column: 21, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !540, line: 471, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2213, file: !540, line: 471, column: 21)
!2229 = !DILocation(line: 471, column: 21, scope: !2228)
!2230 = !DILocation(line: 472, column: 21, scope: !2213)
!2231 = !DILocation(line: 482, column: 33, scope: !2019)
!2232 = !DILocation(line: 483, column: 33, scope: !2019)
!2233 = !DILocation(line: 485, column: 33, scope: !2019)
!2234 = !DILocation(line: 486, column: 33, scope: !2019)
!2235 = !DILocation(line: 487, column: 33, scope: !2019)
!2236 = !DILocation(line: 490, column: 17, scope: !2019)
!2237 = !DILocation(line: 492, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !540, line: 491, column: 15)
!2239 = distinct !DILexicalBlock(scope: !2019, file: !540, line: 490, column: 17)
!2240 = !DILocation(line: 499, column: 35, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2019, file: !540, line: 499, column: 17)
!2242 = !DILocation(line: 499, column: 57, scope: !2241)
!2243 = !DILocation(line: 0, scope: !2019)
!2244 = !DILocation(line: 502, column: 11, scope: !2019)
!2245 = !DILocation(line: 504, column: 17, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2019, file: !540, line: 503, column: 17)
!2247 = !DILocation(line: 507, column: 11, scope: !2019)
!2248 = !DILocation(line: 508, column: 17, scope: !2019)
!2249 = !DILocation(line: 517, column: 15, scope: !1996)
!2250 = !DILocation(line: 517, column: 40, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 517, column: 15)
!2252 = !DILocation(line: 517, column: 47, scope: !2251)
!2253 = !DILocation(line: 517, column: 18, scope: !2251)
!2254 = !DILocation(line: 521, column: 17, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 521, column: 15)
!2256 = !DILocation(line: 521, column: 15, scope: !1996)
!2257 = !DILocation(line: 525, column: 11, scope: !1996)
!2258 = !DILocation(line: 537, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 536, column: 15)
!2260 = !DILocation(line: 544, column: 15, scope: !1996)
!2261 = !DILocation(line: 546, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !540, line: 545, column: 13)
!2263 = distinct !DILexicalBlock(scope: !1996, file: !540, line: 544, column: 15)
!2264 = !DILocation(line: 549, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !540, line: 549, column: 19)
!2266 = !DILocation(line: 549, column: 30, scope: !2265)
!2267 = !DILocation(line: 558, column: 15, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !540, line: 558, column: 15)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !540, line: 558, column: 15)
!2270 = !DILocation(line: 558, column: 15, scope: !2269)
!2271 = !DILocation(line: 559, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !540, line: 559, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2262, file: !540, line: 559, column: 15)
!2274 = !DILocation(line: 559, column: 15, scope: !2273)
!2275 = !DILocation(line: 560, column: 15, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !540, line: 560, column: 15)
!2277 = distinct !DILexicalBlock(scope: !2262, file: !540, line: 560, column: 15)
!2278 = !DILocation(line: 560, column: 15, scope: !2277)
!2279 = !DILocation(line: 562, column: 13, scope: !2262)
!2280 = !DILocation(line: 602, column: 17, scope: !1995)
!2281 = !DILocation(line: 0, scope: !1995)
!2282 = !DILocation(line: 605, column: 29, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2000, file: !540, line: 603, column: 15)
!2284 = !DILocation(line: 605, column: 27, scope: !2283)
!2285 = !DILocation(line: 668, column: 40, scope: !1995)
!2286 = !DILocation(line: 670, column: 23, scope: !2016)
!2287 = !DILocation(line: 609, column: 17, scope: !1999)
!2288 = !DILocation(line: 609, column: 27, scope: !1999)
!2289 = !DILocation(line: 0, scope: !2056, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 609, column: 32, scope: !1999)
!2291 = !DILocation(line: 0, scope: !2064, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 1137, column: 3, scope: !2056, inlinedAt: !2290)
!2293 = !DILocation(line: 59, column: 10, scope: !2064, inlinedAt: !2292)
!2294 = !DILocation(line: 613, column: 29, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1999, file: !540, line: 613, column: 21)
!2296 = !DILocation(line: 613, column: 21, scope: !1999)
!2297 = !DILocation(line: 614, column: 29, scope: !2295)
!2298 = !DILocation(line: 614, column: 19, scope: !2295)
!2299 = !DILocation(line: 618, column: 21, scope: !2002)
!2300 = !DILocation(line: 620, column: 54, scope: !2002)
!2301 = !DILocation(line: 0, scope: !2002)
!2302 = !DILocation(line: 619, column: 36, scope: !2002)
!2303 = !DILocation(line: 621, column: 25, scope: !2002)
!2304 = !DILocation(line: 631, column: 38, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2011, file: !540, line: 629, column: 23)
!2306 = !DILocation(line: 631, column: 48, scope: !2305)
!2307 = !DILocation(line: 665, column: 19, scope: !2003)
!2308 = !DILocation(line: 666, column: 15, scope: !2000)
!2309 = !DILocation(line: 626, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2012, file: !540, line: 624, column: 23)
!2311 = !DILocation(line: 631, column: 51, scope: !2305)
!2312 = !DILocation(line: 631, column: 25, scope: !2305)
!2313 = !DILocation(line: 632, column: 28, scope: !2305)
!2314 = !DILocation(line: 631, column: 34, scope: !2305)
!2315 = distinct !{!2315, !2312, !2313, !951}
!2316 = !DILocation(line: 646, column: 29, scope: !2009)
!2317 = !DILocation(line: 0, scope: !2007)
!2318 = !DILocation(line: 649, column: 49, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2007, file: !540, line: 648, column: 29)
!2320 = !DILocation(line: 649, column: 39, scope: !2319)
!2321 = !DILocation(line: 649, column: 31, scope: !2319)
!2322 = !DILocation(line: 648, column: 60, scope: !2319)
!2323 = !DILocation(line: 648, column: 50, scope: !2319)
!2324 = !DILocation(line: 648, column: 29, scope: !2007)
!2325 = distinct !{!2325, !2324, !2326, !951}
!2326 = !DILocation(line: 654, column: 33, scope: !2007)
!2327 = !DILocation(line: 657, column: 43, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2010, file: !540, line: 657, column: 29)
!2329 = !DILocalVariable(name: "wc", arg: 1, scope: !2330, file: !2331, line: 865, type: !2334)
!2330 = distinct !DISubprogram(name: "c32isprint", scope: !2331, file: !2331, line: 865, type: !2332, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2336)
!2331 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!74, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2335, line: 20, baseType: !69)
!2335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2336 = !{!2329}
!2337 = !DILocation(line: 0, scope: !2330, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 657, column: 31, scope: !2328)
!2339 = !DILocation(line: 871, column: 10, scope: !2330, inlinedAt: !2338)
!2340 = !DILocation(line: 657, column: 31, scope: !2328)
!2341 = !DILocation(line: 657, column: 29, scope: !2010)
!2342 = !DILocation(line: 664, column: 23, scope: !2002)
!2343 = !DILocation(line: 670, column: 19, scope: !2016)
!2344 = !DILocation(line: 670, column: 45, scope: !2016)
!2345 = !DILocation(line: 674, column: 33, scope: !2015)
!2346 = !DILocation(line: 0, scope: !2015)
!2347 = !DILocation(line: 676, column: 17, scope: !2015)
!2348 = !DILocation(line: 398, column: 12, scope: !1989)
!2349 = !DILocation(line: 678, column: 43, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !540, line: 678, column: 25)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !540, line: 677, column: 19)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !540, line: 676, column: 17)
!2353 = distinct !DILexicalBlock(scope: !2015, file: !540, line: 676, column: 17)
!2354 = !DILocation(line: 680, column: 25, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !540, line: 680, column: 25)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !540, line: 679, column: 23)
!2357 = !DILocation(line: 680, column: 25, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !540, line: 680, column: 25)
!2359 = !DILocation(line: 680, column: 25, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !540, line: 680, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !540, line: 680, column: 25)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !540, line: 680, column: 25)
!2363 = !DILocation(line: 680, column: 25, scope: !2361)
!2364 = !DILocation(line: 680, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !540, line: 680, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !540, line: 680, column: 25)
!2367 = !DILocation(line: 680, column: 25, scope: !2366)
!2368 = !DILocation(line: 680, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !540, line: 680, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2362, file: !540, line: 680, column: 25)
!2371 = !DILocation(line: 680, column: 25, scope: !2370)
!2372 = !DILocation(line: 680, column: 25, scope: !2362)
!2373 = !DILocation(line: 680, column: 25, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !540, line: 680, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2355, file: !540, line: 680, column: 25)
!2376 = !DILocation(line: 680, column: 25, scope: !2375)
!2377 = !DILocation(line: 681, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !540, line: 681, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2356, file: !540, line: 681, column: 25)
!2380 = !DILocation(line: 681, column: 25, scope: !2379)
!2381 = !DILocation(line: 682, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !540, line: 682, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2356, file: !540, line: 682, column: 25)
!2384 = !DILocation(line: 682, column: 25, scope: !2383)
!2385 = !DILocation(line: 683, column: 38, scope: !2356)
!2386 = !DILocation(line: 683, column: 33, scope: !2356)
!2387 = !DILocation(line: 684, column: 23, scope: !2356)
!2388 = !DILocation(line: 685, column: 30, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2350, file: !540, line: 685, column: 30)
!2390 = !DILocation(line: 685, column: 30, scope: !2350)
!2391 = !DILocation(line: 687, column: 25, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !540, line: 687, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !540, line: 687, column: 25)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !540, line: 686, column: 23)
!2395 = !DILocation(line: 687, column: 25, scope: !2393)
!2396 = !DILocation(line: 689, column: 23, scope: !2394)
!2397 = !DILocation(line: 690, column: 35, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2351, file: !540, line: 690, column: 25)
!2399 = !DILocation(line: 690, column: 30, scope: !2398)
!2400 = !DILocation(line: 690, column: 25, scope: !2351)
!2401 = !DILocation(line: 692, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !540, line: 692, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2351, file: !540, line: 692, column: 21)
!2404 = !DILocation(line: 692, column: 21, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !540, line: 692, column: 21)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !540, line: 692, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !540, line: 692, column: 21)
!2408 = !DILocation(line: 692, column: 21, scope: !2406)
!2409 = !DILocation(line: 692, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !540, line: 692, column: 21)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !540, line: 692, column: 21)
!2412 = !DILocation(line: 692, column: 21, scope: !2411)
!2413 = !DILocation(line: 692, column: 21, scope: !2407)
!2414 = !DILocation(line: 0, scope: !2351)
!2415 = !DILocation(line: 693, column: 21, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !540, line: 693, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2351, file: !540, line: 693, column: 21)
!2418 = !DILocation(line: 693, column: 21, scope: !2417)
!2419 = !DILocation(line: 694, column: 25, scope: !2351)
!2420 = !DILocation(line: 676, column: 17, scope: !2352)
!2421 = distinct !{!2421, !2422, !2423}
!2422 = !DILocation(line: 676, column: 17, scope: !2353)
!2423 = !DILocation(line: 695, column: 19, scope: !2353)
!2424 = !DILocation(line: 409, column: 30, scope: !2135)
!2425 = !DILocation(line: 702, column: 34, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 702, column: 11)
!2427 = !DILocation(line: 704, column: 14, scope: !2426)
!2428 = !DILocation(line: 705, column: 14, scope: !2426)
!2429 = !DILocation(line: 705, column: 35, scope: !2426)
!2430 = !DILocation(line: 705, column: 17, scope: !2426)
!2431 = !DILocation(line: 705, column: 47, scope: !2426)
!2432 = !DILocation(line: 705, column: 65, scope: !2426)
!2433 = !DILocation(line: 706, column: 11, scope: !2426)
!2434 = !DILocation(line: 702, column: 11, scope: !1989)
!2435 = !DILocation(line: 395, column: 15, scope: !1987)
!2436 = !DILocation(line: 709, column: 5, scope: !1989)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 710, column: 7)
!2439 = !DILocation(line: 710, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !540, line: 710, column: 7)
!2441 = !DILocation(line: 710, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !540, line: 710, column: 7)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !540, line: 710, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !540, line: 710, column: 7)
!2445 = !DILocation(line: 710, column: 7, scope: !2443)
!2446 = !DILocation(line: 710, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !540, line: 710, column: 7)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !540, line: 710, column: 7)
!2449 = !DILocation(line: 710, column: 7, scope: !2448)
!2450 = !DILocation(line: 710, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !540, line: 710, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2444, file: !540, line: 710, column: 7)
!2453 = !DILocation(line: 710, column: 7, scope: !2452)
!2454 = !DILocation(line: 710, column: 7, scope: !2444)
!2455 = !DILocation(line: 710, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !540, line: 710, column: 7)
!2457 = distinct !DILexicalBlock(scope: !2438, file: !540, line: 710, column: 7)
!2458 = !DILocation(line: 710, column: 7, scope: !2457)
!2459 = !DILocation(line: 712, column: 5, scope: !1989)
!2460 = !DILocation(line: 713, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !540, line: 713, column: 7)
!2462 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 713, column: 7)
!2463 = !DILocation(line: 417, column: 21, scope: !1989)
!2464 = !DILocation(line: 713, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !540, line: 713, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !540, line: 713, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !540, line: 713, column: 7)
!2468 = !DILocation(line: 713, column: 7, scope: !2466)
!2469 = !DILocation(line: 713, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !540, line: 713, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !540, line: 713, column: 7)
!2472 = !DILocation(line: 713, column: 7, scope: !2471)
!2473 = !DILocation(line: 713, column: 7, scope: !2467)
!2474 = !DILocation(line: 714, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !540, line: 714, column: 7)
!2476 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 714, column: 7)
!2477 = !DILocation(line: 714, column: 7, scope: !2476)
!2478 = !DILocation(line: 716, column: 13, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !1989, file: !540, line: 716, column: 11)
!2480 = !DILocation(line: 716, column: 11, scope: !1989)
!2481 = !DILocation(line: 718, column: 5, scope: !1990)
!2482 = !DILocation(line: 395, column: 82, scope: !1990)
!2483 = !DILocation(line: 395, column: 3, scope: !1990)
!2484 = distinct !{!2484, !2131, !2485, !951}
!2485 = !DILocation(line: 718, column: 5, scope: !1987)
!2486 = !DILocation(line: 720, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 720, column: 7)
!2488 = !DILocation(line: 720, column: 16, scope: !2487)
!2489 = !DILocation(line: 728, column: 51, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 728, column: 7)
!2491 = !DILocation(line: 731, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !540, line: 731, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !540, line: 730, column: 5)
!2494 = !DILocation(line: 731, column: 11, scope: !2493)
!2495 = !DILocation(line: 732, column: 16, scope: !2492)
!2496 = !DILocation(line: 732, column: 9, scope: !2492)
!2497 = !DILocation(line: 736, column: 18, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !540, line: 736, column: 16)
!2499 = !DILocation(line: 736, column: 29, scope: !2498)
!2500 = !DILocation(line: 745, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 745, column: 7)
!2502 = !DILocation(line: 745, column: 20, scope: !2501)
!2503 = !DILocation(line: 746, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !540, line: 746, column: 5)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !540, line: 746, column: 5)
!2506 = !DILocation(line: 746, column: 5, scope: !2505)
!2507 = !DILocation(line: 747, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !540, line: 747, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !540, line: 747, column: 7)
!2510 = !DILocation(line: 747, column: 7, scope: !2509)
!2511 = !DILocation(line: 746, column: 39, scope: !2504)
!2512 = distinct !{!2512, !2506, !2513, !951}
!2513 = !DILocation(line: 747, column: 7, scope: !2505)
!2514 = !DILocation(line: 749, column: 11, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 749, column: 7)
!2516 = !DILocation(line: 749, column: 7, scope: !1956)
!2517 = !DILocation(line: 750, column: 5, scope: !2515)
!2518 = !DILocation(line: 750, column: 17, scope: !2515)
!2519 = !DILocation(line: 753, column: 2, scope: !1956)
!2520 = !DILocation(line: 756, column: 51, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !1956, file: !540, line: 756, column: 7)
!2522 = !DILocation(line: 756, column: 21, scope: !2521)
!2523 = !DILocation(line: 760, column: 42, scope: !1956)
!2524 = !DILocation(line: 758, column: 10, scope: !1956)
!2525 = !DILocation(line: 758, column: 3, scope: !1956)
!2526 = !DILocation(line: 762, column: 1, scope: !1956)
!2527 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1029, file: !1029, line: 98, type: !2528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!2528 = !DISubroutineType(types: !760)
!2529 = !DISubprogram(name: "iswprint", scope: !2530, file: !2530, line: 120, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!2530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2531 = distinct !DISubprogram(name: "quotearg_alloc", scope: !540, file: !540, line: 788, type: !2532, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!132, !138, !135, !1849}
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !540, line: 788, type: !138)
!2536 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !540, line: 788, type: !135)
!2537 = !DILocalVariable(name: "o", arg: 3, scope: !2531, file: !540, line: 789, type: !1849)
!2538 = !DILocation(line: 0, scope: !2531)
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2540, file: !540, line: 801, type: !138)
!2540 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !540, file: !540, line: 801, type: !2541, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!132, !138, !135, !774, !1849}
!2543 = !{!2539, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2544 = !DILocalVariable(name: "argsize", arg: 2, scope: !2540, file: !540, line: 801, type: !135)
!2545 = !DILocalVariable(name: "size", arg: 3, scope: !2540, file: !540, line: 801, type: !774)
!2546 = !DILocalVariable(name: "o", arg: 4, scope: !2540, file: !540, line: 802, type: !1849)
!2547 = !DILocalVariable(name: "p", scope: !2540, file: !540, line: 804, type: !1849)
!2548 = !DILocalVariable(name: "saved_errno", scope: !2540, file: !540, line: 805, type: !74)
!2549 = !DILocalVariable(name: "flags", scope: !2540, file: !540, line: 807, type: !74)
!2550 = !DILocalVariable(name: "bufsize", scope: !2540, file: !540, line: 808, type: !135)
!2551 = !DILocalVariable(name: "buf", scope: !2540, file: !540, line: 812, type: !132)
!2552 = !DILocation(line: 0, scope: !2540, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 791, column: 10, scope: !2531)
!2554 = !DILocation(line: 804, column: 37, scope: !2540, inlinedAt: !2553)
!2555 = !DILocation(line: 805, column: 21, scope: !2540, inlinedAt: !2553)
!2556 = !DILocation(line: 807, column: 18, scope: !2540, inlinedAt: !2553)
!2557 = !DILocation(line: 807, column: 24, scope: !2540, inlinedAt: !2553)
!2558 = !DILocation(line: 808, column: 72, scope: !2540, inlinedAt: !2553)
!2559 = !DILocation(line: 809, column: 56, scope: !2540, inlinedAt: !2553)
!2560 = !DILocation(line: 810, column: 49, scope: !2540, inlinedAt: !2553)
!2561 = !DILocation(line: 811, column: 49, scope: !2540, inlinedAt: !2553)
!2562 = !DILocation(line: 808, column: 20, scope: !2540, inlinedAt: !2553)
!2563 = !DILocation(line: 811, column: 62, scope: !2540, inlinedAt: !2553)
!2564 = !DILocation(line: 812, column: 15, scope: !2540, inlinedAt: !2553)
!2565 = !DILocation(line: 813, column: 60, scope: !2540, inlinedAt: !2553)
!2566 = !DILocation(line: 815, column: 32, scope: !2540, inlinedAt: !2553)
!2567 = !DILocation(line: 815, column: 47, scope: !2540, inlinedAt: !2553)
!2568 = !DILocation(line: 813, column: 3, scope: !2540, inlinedAt: !2553)
!2569 = !DILocation(line: 816, column: 9, scope: !2540, inlinedAt: !2553)
!2570 = !DILocation(line: 791, column: 3, scope: !2531)
!2571 = !DILocation(line: 0, scope: !2540)
!2572 = !DILocation(line: 804, column: 37, scope: !2540)
!2573 = !DILocation(line: 805, column: 21, scope: !2540)
!2574 = !DILocation(line: 807, column: 18, scope: !2540)
!2575 = !DILocation(line: 807, column: 27, scope: !2540)
!2576 = !DILocation(line: 807, column: 24, scope: !2540)
!2577 = !DILocation(line: 808, column: 72, scope: !2540)
!2578 = !DILocation(line: 809, column: 56, scope: !2540)
!2579 = !DILocation(line: 810, column: 49, scope: !2540)
!2580 = !DILocation(line: 811, column: 49, scope: !2540)
!2581 = !DILocation(line: 808, column: 20, scope: !2540)
!2582 = !DILocation(line: 811, column: 62, scope: !2540)
!2583 = !DILocation(line: 812, column: 15, scope: !2540)
!2584 = !DILocation(line: 813, column: 60, scope: !2540)
!2585 = !DILocation(line: 815, column: 32, scope: !2540)
!2586 = !DILocation(line: 815, column: 47, scope: !2540)
!2587 = !DILocation(line: 813, column: 3, scope: !2540)
!2588 = !DILocation(line: 816, column: 9, scope: !2540)
!2589 = !DILocation(line: 817, column: 7, scope: !2540)
!2590 = !DILocation(line: 818, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2540, file: !540, line: 817, column: 7)
!2592 = !{!1604, !1604, i64 0}
!2593 = !DILocation(line: 818, column: 5, scope: !2591)
!2594 = !DILocation(line: 819, column: 3, scope: !2540)
!2595 = distinct !DISubprogram(name: "quotearg_free", scope: !540, file: !540, line: 837, type: !479, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "sv", scope: !2595, file: !540, line: 839, type: !624)
!2598 = !DILocalVariable(name: "i", scope: !2599, file: !540, line: 840, type: !74)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !540, line: 840, column: 3)
!2600 = !DILocation(line: 839, column: 24, scope: !2595)
!2601 = !DILocation(line: 0, scope: !2595)
!2602 = !DILocation(line: 0, scope: !2599)
!2603 = !DILocation(line: 840, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !540, line: 840, column: 3)
!2605 = !DILocation(line: 840, column: 3, scope: !2599)
!2606 = !DILocation(line: 842, column: 13, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2595, file: !540, line: 842, column: 7)
!2608 = !{!2609, !841, i64 8}
!2609 = !{!"slotvec", !1604, i64 0, !841, i64 8}
!2610 = !DILocation(line: 842, column: 17, scope: !2607)
!2611 = !DILocation(line: 842, column: 7, scope: !2595)
!2612 = !DILocation(line: 841, column: 17, scope: !2604)
!2613 = !DILocation(line: 841, column: 5, scope: !2604)
!2614 = !DILocation(line: 840, column: 32, scope: !2604)
!2615 = distinct !{!2615, !2605, !2616, !951}
!2616 = !DILocation(line: 841, column: 20, scope: !2599)
!2617 = !DILocation(line: 844, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2607, file: !540, line: 843, column: 5)
!2619 = !DILocation(line: 845, column: 21, scope: !2618)
!2620 = !{!2609, !1604, i64 0}
!2621 = !DILocation(line: 846, column: 20, scope: !2618)
!2622 = !DILocation(line: 847, column: 5, scope: !2618)
!2623 = !DILocation(line: 848, column: 10, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2595, file: !540, line: 848, column: 7)
!2625 = !DILocation(line: 848, column: 7, scope: !2595)
!2626 = !DILocation(line: 850, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !540, line: 849, column: 5)
!2628 = !DILocation(line: 851, column: 15, scope: !2627)
!2629 = !DILocation(line: 852, column: 5, scope: !2627)
!2630 = !DILocation(line: 853, column: 10, scope: !2595)
!2631 = !DILocation(line: 854, column: 1, scope: !2595)
!2632 = !DISubprogram(name: "free", scope: !1247, file: !1247, line: 786, type: !2633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !133}
!2635 = distinct !DISubprogram(name: "quotearg_n", scope: !540, file: !540, line: 919, type: !1022, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2636)
!2636 = !{!2637, !2638}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !540, line: 919, type: !74)
!2638 = !DILocalVariable(name: "arg", arg: 2, scope: !2635, file: !540, line: 919, type: !138)
!2639 = !DILocation(line: 0, scope: !2635)
!2640 = !DILocation(line: 921, column: 10, scope: !2635)
!2641 = !DILocation(line: 921, column: 3, scope: !2635)
!2642 = distinct !DISubprogram(name: "quotearg_n_options", scope: !540, file: !540, line: 866, type: !2643, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!132, !74, !138, !135, !1849}
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2656, !2657, !2659, !2660, !2661}
!2646 = !DILocalVariable(name: "n", arg: 1, scope: !2642, file: !540, line: 866, type: !74)
!2647 = !DILocalVariable(name: "arg", arg: 2, scope: !2642, file: !540, line: 866, type: !138)
!2648 = !DILocalVariable(name: "argsize", arg: 3, scope: !2642, file: !540, line: 866, type: !135)
!2649 = !DILocalVariable(name: "options", arg: 4, scope: !2642, file: !540, line: 867, type: !1849)
!2650 = !DILocalVariable(name: "saved_errno", scope: !2642, file: !540, line: 869, type: !74)
!2651 = !DILocalVariable(name: "sv", scope: !2642, file: !540, line: 871, type: !624)
!2652 = !DILocalVariable(name: "nslots_max", scope: !2642, file: !540, line: 873, type: !74)
!2653 = !DILocalVariable(name: "preallocated", scope: !2654, file: !540, line: 879, type: !176)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !540, line: 878, column: 5)
!2655 = distinct !DILexicalBlock(scope: !2642, file: !540, line: 877, column: 7)
!2656 = !DILocalVariable(name: "new_nslots", scope: !2654, file: !540, line: 880, type: !787)
!2657 = !DILocalVariable(name: "size", scope: !2658, file: !540, line: 891, type: !135)
!2658 = distinct !DILexicalBlock(scope: !2642, file: !540, line: 890, column: 3)
!2659 = !DILocalVariable(name: "val", scope: !2658, file: !540, line: 892, type: !132)
!2660 = !DILocalVariable(name: "flags", scope: !2658, file: !540, line: 894, type: !74)
!2661 = !DILocalVariable(name: "qsize", scope: !2658, file: !540, line: 895, type: !135)
!2662 = !DILocation(line: 0, scope: !2642)
!2663 = !DILocation(line: 869, column: 21, scope: !2642)
!2664 = !DILocation(line: 871, column: 24, scope: !2642)
!2665 = !DILocation(line: 874, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2642, file: !540, line: 874, column: 7)
!2667 = !DILocation(line: 875, column: 5, scope: !2666)
!2668 = !DILocation(line: 877, column: 7, scope: !2655)
!2669 = !DILocation(line: 877, column: 14, scope: !2655)
!2670 = !DILocation(line: 877, column: 7, scope: !2642)
!2671 = !DILocation(line: 879, column: 31, scope: !2654)
!2672 = !DILocation(line: 0, scope: !2654)
!2673 = !DILocation(line: 880, column: 7, scope: !2654)
!2674 = !DILocation(line: 880, column: 26, scope: !2654)
!2675 = !DILocation(line: 880, column: 13, scope: !2654)
!2676 = !DILocation(line: 882, column: 31, scope: !2654)
!2677 = !DILocation(line: 883, column: 33, scope: !2654)
!2678 = !DILocation(line: 883, column: 42, scope: !2654)
!2679 = !DILocation(line: 883, column: 31, scope: !2654)
!2680 = !DILocation(line: 882, column: 22, scope: !2654)
!2681 = !DILocation(line: 882, column: 15, scope: !2654)
!2682 = !DILocation(line: 884, column: 11, scope: !2654)
!2683 = !DILocation(line: 885, column: 15, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2654, file: !540, line: 884, column: 11)
!2685 = !{i64 0, i64 8, !2592, i64 8, i64 8, !840}
!2686 = !DILocation(line: 885, column: 9, scope: !2684)
!2687 = !DILocation(line: 886, column: 20, scope: !2654)
!2688 = !DILocation(line: 886, column: 18, scope: !2654)
!2689 = !DILocation(line: 886, column: 32, scope: !2654)
!2690 = !DILocation(line: 886, column: 43, scope: !2654)
!2691 = !DILocation(line: 886, column: 53, scope: !2654)
!2692 = !DILocation(line: 0, scope: !2064, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 886, column: 7, scope: !2654)
!2694 = !DILocation(line: 59, column: 10, scope: !2064, inlinedAt: !2693)
!2695 = !DILocation(line: 887, column: 16, scope: !2654)
!2696 = !DILocation(line: 887, column: 14, scope: !2654)
!2697 = !DILocation(line: 888, column: 5, scope: !2655)
!2698 = !DILocation(line: 888, column: 5, scope: !2654)
!2699 = !DILocation(line: 891, column: 19, scope: !2658)
!2700 = !DILocation(line: 891, column: 25, scope: !2658)
!2701 = !DILocation(line: 0, scope: !2658)
!2702 = !DILocation(line: 892, column: 23, scope: !2658)
!2703 = !DILocation(line: 894, column: 26, scope: !2658)
!2704 = !DILocation(line: 894, column: 32, scope: !2658)
!2705 = !DILocation(line: 896, column: 55, scope: !2658)
!2706 = !DILocation(line: 897, column: 55, scope: !2658)
!2707 = !DILocation(line: 898, column: 55, scope: !2658)
!2708 = !DILocation(line: 899, column: 55, scope: !2658)
!2709 = !DILocation(line: 895, column: 20, scope: !2658)
!2710 = !DILocation(line: 901, column: 14, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2658, file: !540, line: 901, column: 9)
!2712 = !DILocation(line: 901, column: 9, scope: !2658)
!2713 = !DILocation(line: 903, column: 35, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !540, line: 902, column: 7)
!2715 = !DILocation(line: 903, column: 20, scope: !2714)
!2716 = !DILocation(line: 904, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !540, line: 904, column: 13)
!2718 = !DILocation(line: 904, column: 13, scope: !2714)
!2719 = !DILocation(line: 905, column: 11, scope: !2717)
!2720 = !DILocation(line: 906, column: 27, scope: !2714)
!2721 = !DILocation(line: 906, column: 19, scope: !2714)
!2722 = !DILocation(line: 907, column: 69, scope: !2714)
!2723 = !DILocation(line: 909, column: 44, scope: !2714)
!2724 = !DILocation(line: 910, column: 44, scope: !2714)
!2725 = !DILocation(line: 907, column: 9, scope: !2714)
!2726 = !DILocation(line: 911, column: 7, scope: !2714)
!2727 = !DILocation(line: 913, column: 11, scope: !2658)
!2728 = !DILocation(line: 914, column: 5, scope: !2658)
!2729 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !540, file: !540, line: 925, type: !2730, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!132, !74, !138, !135}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !540, line: 925, type: !74)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !540, line: 925, type: !138)
!2735 = !DILocalVariable(name: "argsize", arg: 3, scope: !2729, file: !540, line: 925, type: !135)
!2736 = !DILocation(line: 0, scope: !2729)
!2737 = !DILocation(line: 927, column: 10, scope: !2729)
!2738 = !DILocation(line: 927, column: 3, scope: !2729)
!2739 = distinct !DISubprogram(name: "quotearg", scope: !540, file: !540, line: 931, type: !1031, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2740)
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !540, line: 931, type: !138)
!2742 = !DILocation(line: 0, scope: !2739)
!2743 = !DILocation(line: 0, scope: !2635, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 933, column: 10, scope: !2739)
!2745 = !DILocation(line: 921, column: 10, scope: !2635, inlinedAt: !2744)
!2746 = !DILocation(line: 933, column: 3, scope: !2739)
!2747 = distinct !DISubprogram(name: "quotearg_mem", scope: !540, file: !540, line: 937, type: !2748, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!132, !138, !135}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !540, line: 937, type: !138)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !540, line: 937, type: !135)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2729, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 939, column: 10, scope: !2747)
!2756 = !DILocation(line: 927, column: 10, scope: !2729, inlinedAt: !2755)
!2757 = !DILocation(line: 939, column: 3, scope: !2747)
!2758 = distinct !DISubprogram(name: "quotearg_n_style", scope: !540, file: !540, line: 943, type: !2759, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!132, !74, !93, !138}
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !540, line: 943, type: !74)
!2763 = !DILocalVariable(name: "s", arg: 2, scope: !2758, file: !540, line: 943, type: !93)
!2764 = !DILocalVariable(name: "arg", arg: 3, scope: !2758, file: !540, line: 943, type: !138)
!2765 = !DILocalVariable(name: "o", scope: !2758, file: !540, line: 945, type: !1850)
!2766 = !DILocation(line: 0, scope: !2758)
!2767 = !DILocation(line: 945, column: 3, scope: !2758)
!2768 = !DILocation(line: 945, column: 32, scope: !2758)
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"quoting_options_from_style: argument 0"}
!2771 = distinct !{!2771, !"quoting_options_from_style"}
!2772 = !DILocation(line: 945, column: 36, scope: !2758)
!2773 = !DILocalVariable(name: "style", arg: 1, scope: !2774, file: !540, line: 183, type: !93)
!2774 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !540, file: !540, line: 183, type: !2775, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!576, !93}
!2777 = !{!2773, !2778}
!2778 = !DILocalVariable(name: "o", scope: !2774, file: !540, line: 185, type: !576)
!2779 = !DILocation(line: 0, scope: !2774, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 945, column: 36, scope: !2758)
!2781 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2780)
!2782 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2780)
!2783 = distinct !DILexicalBlock(scope: !2774, file: !540, line: 186, column: 7)
!2784 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2780)
!2785 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2780)
!2786 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2780)
!2787 = !DILocation(line: 946, column: 10, scope: !2758)
!2788 = !DILocation(line: 947, column: 1, scope: !2758)
!2789 = !DILocation(line: 946, column: 3, scope: !2758)
!2790 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !540, file: !540, line: 950, type: !2791, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!132, !74, !93, !138, !135}
!2793 = !{!2794, !2795, !2796, !2797, !2798}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !540, line: 950, type: !74)
!2795 = !DILocalVariable(name: "s", arg: 2, scope: !2790, file: !540, line: 950, type: !93)
!2796 = !DILocalVariable(name: "arg", arg: 3, scope: !2790, file: !540, line: 951, type: !138)
!2797 = !DILocalVariable(name: "argsize", arg: 4, scope: !2790, file: !540, line: 951, type: !135)
!2798 = !DILocalVariable(name: "o", scope: !2790, file: !540, line: 953, type: !1850)
!2799 = !DILocation(line: 0, scope: !2790)
!2800 = !DILocation(line: 953, column: 3, scope: !2790)
!2801 = !DILocation(line: 953, column: 32, scope: !2790)
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"quoting_options_from_style: argument 0"}
!2804 = distinct !{!2804, !"quoting_options_from_style"}
!2805 = !DILocation(line: 953, column: 36, scope: !2790)
!2806 = !DILocation(line: 0, scope: !2774, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 953, column: 36, scope: !2790)
!2808 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2807)
!2809 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2807)
!2810 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2807)
!2811 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2807)
!2812 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2807)
!2813 = !DILocation(line: 954, column: 10, scope: !2790)
!2814 = !DILocation(line: 955, column: 1, scope: !2790)
!2815 = !DILocation(line: 954, column: 3, scope: !2790)
!2816 = distinct !DISubprogram(name: "quotearg_style", scope: !540, file: !540, line: 958, type: !2817, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!132, !93, !138}
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "s", arg: 1, scope: !2816, file: !540, line: 958, type: !93)
!2821 = !DILocalVariable(name: "arg", arg: 2, scope: !2816, file: !540, line: 958, type: !138)
!2822 = !DILocation(line: 0, scope: !2816)
!2823 = !DILocation(line: 0, scope: !2758, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 960, column: 10, scope: !2816)
!2825 = !DILocation(line: 945, column: 3, scope: !2758, inlinedAt: !2824)
!2826 = !DILocation(line: 945, column: 32, scope: !2758, inlinedAt: !2824)
!2827 = !{!2828}
!2828 = distinct !{!2828, !2829, !"quoting_options_from_style: argument 0"}
!2829 = distinct !{!2829, !"quoting_options_from_style"}
!2830 = !DILocation(line: 945, column: 36, scope: !2758, inlinedAt: !2824)
!2831 = !DILocation(line: 0, scope: !2774, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 945, column: 36, scope: !2758, inlinedAt: !2824)
!2833 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2832)
!2834 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2832)
!2835 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2832)
!2836 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2832)
!2837 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2832)
!2838 = !DILocation(line: 946, column: 10, scope: !2758, inlinedAt: !2824)
!2839 = !DILocation(line: 947, column: 1, scope: !2758, inlinedAt: !2824)
!2840 = !DILocation(line: 960, column: 3, scope: !2816)
!2841 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !540, file: !540, line: 964, type: !2842, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!132, !93, !138, !135}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "s", arg: 1, scope: !2841, file: !540, line: 964, type: !93)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !540, line: 964, type: !138)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2841, file: !540, line: 964, type: !135)
!2848 = !DILocation(line: 0, scope: !2841)
!2849 = !DILocation(line: 0, scope: !2790, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 966, column: 10, scope: !2841)
!2851 = !DILocation(line: 953, column: 3, scope: !2790, inlinedAt: !2850)
!2852 = !DILocation(line: 953, column: 32, scope: !2790, inlinedAt: !2850)
!2853 = !{!2854}
!2854 = distinct !{!2854, !2855, !"quoting_options_from_style: argument 0"}
!2855 = distinct !{!2855, !"quoting_options_from_style"}
!2856 = !DILocation(line: 953, column: 36, scope: !2790, inlinedAt: !2850)
!2857 = !DILocation(line: 0, scope: !2774, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 953, column: 36, scope: !2790, inlinedAt: !2850)
!2859 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2858)
!2860 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2858)
!2861 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2858)
!2862 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2858)
!2863 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2858)
!2864 = !DILocation(line: 954, column: 10, scope: !2790, inlinedAt: !2850)
!2865 = !DILocation(line: 955, column: 1, scope: !2790, inlinedAt: !2850)
!2866 = !DILocation(line: 966, column: 3, scope: !2841)
!2867 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !540, file: !540, line: 970, type: !2868, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!132, !138, !135, !4}
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !540, line: 970, type: !138)
!2872 = !DILocalVariable(name: "argsize", arg: 2, scope: !2867, file: !540, line: 970, type: !135)
!2873 = !DILocalVariable(name: "ch", arg: 3, scope: !2867, file: !540, line: 970, type: !4)
!2874 = !DILocalVariable(name: "options", scope: !2867, file: !540, line: 972, type: !576)
!2875 = !DILocation(line: 0, scope: !2867)
!2876 = !DILocation(line: 972, column: 3, scope: !2867)
!2877 = !DILocation(line: 972, column: 26, scope: !2867)
!2878 = !DILocation(line: 973, column: 13, scope: !2867)
!2879 = !{i64 0, i64 4, !913, i64 4, i64 4, !904, i64 8, i64 32, !913, i64 40, i64 8, !840, i64 48, i64 8, !840}
!2880 = !DILocation(line: 0, scope: !1869, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 974, column: 3, scope: !2867)
!2882 = !DILocation(line: 147, column: 41, scope: !1869, inlinedAt: !2881)
!2883 = !DILocation(line: 147, column: 62, scope: !1869, inlinedAt: !2881)
!2884 = !DILocation(line: 147, column: 57, scope: !1869, inlinedAt: !2881)
!2885 = !DILocation(line: 148, column: 15, scope: !1869, inlinedAt: !2881)
!2886 = !DILocation(line: 149, column: 21, scope: !1869, inlinedAt: !2881)
!2887 = !DILocation(line: 149, column: 24, scope: !1869, inlinedAt: !2881)
!2888 = !DILocation(line: 150, column: 19, scope: !1869, inlinedAt: !2881)
!2889 = !DILocation(line: 150, column: 24, scope: !1869, inlinedAt: !2881)
!2890 = !DILocation(line: 150, column: 6, scope: !1869, inlinedAt: !2881)
!2891 = !DILocation(line: 975, column: 10, scope: !2867)
!2892 = !DILocation(line: 976, column: 1, scope: !2867)
!2893 = !DILocation(line: 975, column: 3, scope: !2867)
!2894 = distinct !DISubprogram(name: "quotearg_char", scope: !540, file: !540, line: 979, type: !2895, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!132, !138, !4}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !540, line: 979, type: !138)
!2899 = !DILocalVariable(name: "ch", arg: 2, scope: !2894, file: !540, line: 979, type: !4)
!2900 = !DILocation(line: 0, scope: !2894)
!2901 = !DILocation(line: 0, scope: !2867, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 981, column: 10, scope: !2894)
!2903 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2902)
!2904 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2902)
!2905 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2902)
!2906 = !DILocation(line: 0, scope: !1869, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2902)
!2908 = !DILocation(line: 147, column: 41, scope: !1869, inlinedAt: !2907)
!2909 = !DILocation(line: 147, column: 62, scope: !1869, inlinedAt: !2907)
!2910 = !DILocation(line: 147, column: 57, scope: !1869, inlinedAt: !2907)
!2911 = !DILocation(line: 148, column: 15, scope: !1869, inlinedAt: !2907)
!2912 = !DILocation(line: 149, column: 21, scope: !1869, inlinedAt: !2907)
!2913 = !DILocation(line: 149, column: 24, scope: !1869, inlinedAt: !2907)
!2914 = !DILocation(line: 150, column: 19, scope: !1869, inlinedAt: !2907)
!2915 = !DILocation(line: 150, column: 24, scope: !1869, inlinedAt: !2907)
!2916 = !DILocation(line: 150, column: 6, scope: !1869, inlinedAt: !2907)
!2917 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2902)
!2918 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2902)
!2919 = !DILocation(line: 981, column: 3, scope: !2894)
!2920 = distinct !DISubprogram(name: "quotearg_colon", scope: !540, file: !540, line: 985, type: !1031, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !540, line: 985, type: !138)
!2923 = !DILocation(line: 0, scope: !2920)
!2924 = !DILocation(line: 0, scope: !2894, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 987, column: 10, scope: !2920)
!2926 = !DILocation(line: 0, scope: !2867, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 981, column: 10, scope: !2894, inlinedAt: !2925)
!2928 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2927)
!2929 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2927)
!2930 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2927)
!2931 = !DILocation(line: 0, scope: !1869, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2927)
!2933 = !DILocation(line: 147, column: 57, scope: !1869, inlinedAt: !2932)
!2934 = !DILocation(line: 149, column: 21, scope: !1869, inlinedAt: !2932)
!2935 = !DILocation(line: 150, column: 6, scope: !1869, inlinedAt: !2932)
!2936 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2927)
!2937 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2927)
!2938 = !DILocation(line: 987, column: 3, scope: !2920)
!2939 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !540, file: !540, line: 991, type: !2748, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2940)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !540, line: 991, type: !138)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !540, line: 991, type: !135)
!2943 = !DILocation(line: 0, scope: !2939)
!2944 = !DILocation(line: 0, scope: !2867, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 993, column: 10, scope: !2939)
!2946 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2945)
!2947 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2945)
!2948 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2945)
!2949 = !DILocation(line: 0, scope: !1869, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2945)
!2951 = !DILocation(line: 147, column: 57, scope: !1869, inlinedAt: !2950)
!2952 = !DILocation(line: 149, column: 21, scope: !1869, inlinedAt: !2950)
!2953 = !DILocation(line: 150, column: 6, scope: !1869, inlinedAt: !2950)
!2954 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2945)
!2955 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2945)
!2956 = !DILocation(line: 993, column: 3, scope: !2939)
!2957 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !540, file: !540, line: 997, type: !2759, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !540, line: 997, type: !74)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !540, line: 997, type: !93)
!2961 = !DILocalVariable(name: "arg", arg: 3, scope: !2957, file: !540, line: 997, type: !138)
!2962 = !DILocalVariable(name: "options", scope: !2957, file: !540, line: 999, type: !576)
!2963 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1000, column: 13, scope: !2957)
!2965 = !DILocation(line: 0, scope: !2957)
!2966 = !DILocation(line: 999, column: 3, scope: !2957)
!2967 = !DILocation(line: 999, column: 26, scope: !2957)
!2968 = !DILocation(line: 0, scope: !2774, inlinedAt: !2964)
!2969 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2964)
!2970 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2964)
!2971 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2964)
!2972 = !{!2973}
!2973 = distinct !{!2973, !2974, !"quoting_options_from_style: argument 0"}
!2974 = distinct !{!2974, !"quoting_options_from_style"}
!2975 = !DILocation(line: 1000, column: 13, scope: !2957)
!2976 = !DILocation(line: 0, scope: !1869, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1001, column: 3, scope: !2957)
!2978 = !DILocation(line: 147, column: 57, scope: !1869, inlinedAt: !2977)
!2979 = !DILocation(line: 149, column: 21, scope: !1869, inlinedAt: !2977)
!2980 = !DILocation(line: 150, column: 6, scope: !1869, inlinedAt: !2977)
!2981 = !DILocation(line: 1002, column: 10, scope: !2957)
!2982 = !DILocation(line: 1003, column: 1, scope: !2957)
!2983 = !DILocation(line: 1002, column: 3, scope: !2957)
!2984 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !540, file: !540, line: 1006, type: !2985, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!132, !74, !138, !138, !138}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !540, line: 1006, type: !74)
!2989 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2984, file: !540, line: 1006, type: !138)
!2990 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2984, file: !540, line: 1007, type: !138)
!2991 = !DILocalVariable(name: "arg", arg: 4, scope: !2984, file: !540, line: 1007, type: !138)
!2992 = !DILocation(line: 0, scope: !2984)
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !540, line: 1014, type: !74)
!2994 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !540, file: !540, line: 1014, type: !2995, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!132, !74, !138, !138, !138, !135}
!2997 = !{!2993, !2998, !2999, !3000, !3001, !3002}
!2998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2994, file: !540, line: 1014, type: !138)
!2999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2994, file: !540, line: 1015, type: !138)
!3000 = !DILocalVariable(name: "arg", arg: 4, scope: !2994, file: !540, line: 1016, type: !138)
!3001 = !DILocalVariable(name: "argsize", arg: 5, scope: !2994, file: !540, line: 1016, type: !135)
!3002 = !DILocalVariable(name: "o", scope: !2994, file: !540, line: 1018, type: !576)
!3003 = !DILocation(line: 0, scope: !2994, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1009, column: 10, scope: !2984)
!3005 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3004)
!3006 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3004)
!3007 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3004)
!3008 = !DILocation(line: 0, scope: !1909, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3004)
!3010 = !DILocation(line: 174, column: 12, scope: !1909, inlinedAt: !3009)
!3011 = !DILocation(line: 175, column: 8, scope: !1922, inlinedAt: !3009)
!3012 = !DILocation(line: 175, column: 19, scope: !1922, inlinedAt: !3009)
!3013 = !DILocation(line: 176, column: 5, scope: !1922, inlinedAt: !3009)
!3014 = !DILocation(line: 177, column: 6, scope: !1909, inlinedAt: !3009)
!3015 = !DILocation(line: 177, column: 17, scope: !1909, inlinedAt: !3009)
!3016 = !DILocation(line: 178, column: 6, scope: !1909, inlinedAt: !3009)
!3017 = !DILocation(line: 178, column: 18, scope: !1909, inlinedAt: !3009)
!3018 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3004)
!3019 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3004)
!3020 = !DILocation(line: 1009, column: 3, scope: !2984)
!3021 = !DILocation(line: 0, scope: !2994)
!3022 = !DILocation(line: 1018, column: 3, scope: !2994)
!3023 = !DILocation(line: 1018, column: 26, scope: !2994)
!3024 = !DILocation(line: 1018, column: 30, scope: !2994)
!3025 = !DILocation(line: 0, scope: !1909, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1019, column: 3, scope: !2994)
!3027 = !DILocation(line: 174, column: 12, scope: !1909, inlinedAt: !3026)
!3028 = !DILocation(line: 175, column: 8, scope: !1922, inlinedAt: !3026)
!3029 = !DILocation(line: 175, column: 19, scope: !1922, inlinedAt: !3026)
!3030 = !DILocation(line: 176, column: 5, scope: !1922, inlinedAt: !3026)
!3031 = !DILocation(line: 177, column: 6, scope: !1909, inlinedAt: !3026)
!3032 = !DILocation(line: 177, column: 17, scope: !1909, inlinedAt: !3026)
!3033 = !DILocation(line: 178, column: 6, scope: !1909, inlinedAt: !3026)
!3034 = !DILocation(line: 178, column: 18, scope: !1909, inlinedAt: !3026)
!3035 = !DILocation(line: 1020, column: 10, scope: !2994)
!3036 = !DILocation(line: 1021, column: 1, scope: !2994)
!3037 = !DILocation(line: 1020, column: 3, scope: !2994)
!3038 = distinct !DISubprogram(name: "quotearg_custom", scope: !540, file: !540, line: 1024, type: !3039, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!132, !138, !138, !138}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3038, file: !540, line: 1024, type: !138)
!3043 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3038, file: !540, line: 1024, type: !138)
!3044 = !DILocalVariable(name: "arg", arg: 3, scope: !3038, file: !540, line: 1025, type: !138)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 0, scope: !2984, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1027, column: 10, scope: !3038)
!3048 = !DILocation(line: 0, scope: !2994, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1009, column: 10, scope: !2984, inlinedAt: !3047)
!3050 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3049)
!3051 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3049)
!3052 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3049)
!3053 = !DILocation(line: 0, scope: !1909, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3049)
!3055 = !DILocation(line: 174, column: 12, scope: !1909, inlinedAt: !3054)
!3056 = !DILocation(line: 175, column: 8, scope: !1922, inlinedAt: !3054)
!3057 = !DILocation(line: 175, column: 19, scope: !1922, inlinedAt: !3054)
!3058 = !DILocation(line: 176, column: 5, scope: !1922, inlinedAt: !3054)
!3059 = !DILocation(line: 177, column: 6, scope: !1909, inlinedAt: !3054)
!3060 = !DILocation(line: 177, column: 17, scope: !1909, inlinedAt: !3054)
!3061 = !DILocation(line: 178, column: 6, scope: !1909, inlinedAt: !3054)
!3062 = !DILocation(line: 178, column: 18, scope: !1909, inlinedAt: !3054)
!3063 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3049)
!3064 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3049)
!3065 = !DILocation(line: 1027, column: 3, scope: !3038)
!3066 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !540, file: !540, line: 1031, type: !3067, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!132, !138, !138, !138, !135}
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3066, file: !540, line: 1031, type: !138)
!3071 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3066, file: !540, line: 1031, type: !138)
!3072 = !DILocalVariable(name: "arg", arg: 3, scope: !3066, file: !540, line: 1032, type: !138)
!3073 = !DILocalVariable(name: "argsize", arg: 4, scope: !3066, file: !540, line: 1032, type: !135)
!3074 = !DILocation(line: 0, scope: !3066)
!3075 = !DILocation(line: 0, scope: !2994, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1034, column: 10, scope: !3066)
!3077 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3076)
!3078 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3076)
!3079 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3076)
!3080 = !DILocation(line: 0, scope: !1909, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3076)
!3082 = !DILocation(line: 174, column: 12, scope: !1909, inlinedAt: !3081)
!3083 = !DILocation(line: 175, column: 8, scope: !1922, inlinedAt: !3081)
!3084 = !DILocation(line: 175, column: 19, scope: !1922, inlinedAt: !3081)
!3085 = !DILocation(line: 176, column: 5, scope: !1922, inlinedAt: !3081)
!3086 = !DILocation(line: 177, column: 6, scope: !1909, inlinedAt: !3081)
!3087 = !DILocation(line: 177, column: 17, scope: !1909, inlinedAt: !3081)
!3088 = !DILocation(line: 178, column: 6, scope: !1909, inlinedAt: !3081)
!3089 = !DILocation(line: 178, column: 18, scope: !1909, inlinedAt: !3081)
!3090 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3076)
!3091 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3076)
!3092 = !DILocation(line: 1034, column: 3, scope: !3066)
!3093 = distinct !DISubprogram(name: "quote_n_mem", scope: !540, file: !540, line: 1049, type: !3094, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!138, !74, !138, !135}
!3096 = !{!3097, !3098, !3099}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !540, line: 1049, type: !74)
!3098 = !DILocalVariable(name: "arg", arg: 2, scope: !3093, file: !540, line: 1049, type: !138)
!3099 = !DILocalVariable(name: "argsize", arg: 3, scope: !3093, file: !540, line: 1049, type: !135)
!3100 = !DILocation(line: 0, scope: !3093)
!3101 = !DILocation(line: 1051, column: 10, scope: !3093)
!3102 = !DILocation(line: 1051, column: 3, scope: !3093)
!3103 = distinct !DISubprogram(name: "quote_mem", scope: !540, file: !540, line: 1055, type: !3104, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!138, !138, !135}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "arg", arg: 1, scope: !3103, file: !540, line: 1055, type: !138)
!3108 = !DILocalVariable(name: "argsize", arg: 2, scope: !3103, file: !540, line: 1055, type: !135)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3093, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1057, column: 10, scope: !3103)
!3112 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3111)
!3113 = !DILocation(line: 1057, column: 3, scope: !3103)
!3114 = distinct !DISubprogram(name: "quote_n", scope: !540, file: !540, line: 1061, type: !3115, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!138, !74, !138}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !540, line: 1061, type: !74)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !540, line: 1061, type: !138)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3093, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1063, column: 10, scope: !3114)
!3123 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3122)
!3124 = !DILocation(line: 1063, column: 3, scope: !3114)
!3125 = distinct !DISubprogram(name: "quote", scope: !540, file: !540, line: 1067, type: !3126, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!138, !138}
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3125, file: !540, line: 1067, type: !138)
!3130 = !DILocation(line: 0, scope: !3125)
!3131 = !DILocation(line: 0, scope: !3114, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1069, column: 10, scope: !3125)
!3133 = !DILocation(line: 0, scope: !3093, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3132)
!3135 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3134)
!3136 = !DILocation(line: 1069, column: 3, scope: !3125)
!3137 = distinct !DISubprogram(name: "version_etc_arn", scope: !639, file: !639, line: 61, type: !3138, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3175)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !3140, !138, !138, !138, !3174, !135}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3142, file: !193, line: 51, baseType: !74, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3142, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3142, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3142, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3142, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3142, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3142, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3142, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3142, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3142, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3142, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3142, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3142, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3142, file: !193, line: 70, baseType: !3158, size: 64, offset: 832)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3142, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3142, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3142, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3142, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3142, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3142, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3142, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3142, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3142, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3142, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3142, file: !193, line: 93, baseType: !3158, size: 64, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3142, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3142, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3142, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3142, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181}
!3176 = !DILocalVariable(name: "stream", arg: 1, scope: !3137, file: !639, line: 61, type: !3140)
!3177 = !DILocalVariable(name: "command_name", arg: 2, scope: !3137, file: !639, line: 62, type: !138)
!3178 = !DILocalVariable(name: "package", arg: 3, scope: !3137, file: !639, line: 62, type: !138)
!3179 = !DILocalVariable(name: "version", arg: 4, scope: !3137, file: !639, line: 63, type: !138)
!3180 = !DILocalVariable(name: "authors", arg: 5, scope: !3137, file: !639, line: 64, type: !3174)
!3181 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3137, file: !639, line: 64, type: !135)
!3182 = !DILocation(line: 0, scope: !3137)
!3183 = !DILocation(line: 66, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3137, file: !639, line: 66, column: 7)
!3185 = !DILocation(line: 66, column: 7, scope: !3137)
!3186 = !DILocation(line: 67, column: 5, scope: !3184)
!3187 = !DILocation(line: 69, column: 5, scope: !3184)
!3188 = !DILocation(line: 83, column: 3, scope: !3137)
!3189 = !DILocation(line: 85, column: 3, scope: !3137)
!3190 = !DILocation(line: 88, column: 3, scope: !3137)
!3191 = !DILocation(line: 95, column: 3, scope: !3137)
!3192 = !DILocation(line: 97, column: 3, scope: !3137)
!3193 = !DILocation(line: 105, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3137, file: !639, line: 98, column: 5)
!3195 = !DILocation(line: 106, column: 7, scope: !3194)
!3196 = !DILocation(line: 109, column: 7, scope: !3194)
!3197 = !DILocation(line: 110, column: 7, scope: !3194)
!3198 = !DILocation(line: 113, column: 7, scope: !3194)
!3199 = !DILocation(line: 115, column: 7, scope: !3194)
!3200 = !DILocation(line: 120, column: 7, scope: !3194)
!3201 = !DILocation(line: 122, column: 7, scope: !3194)
!3202 = !DILocation(line: 127, column: 7, scope: !3194)
!3203 = !DILocation(line: 129, column: 7, scope: !3194)
!3204 = !DILocation(line: 134, column: 7, scope: !3194)
!3205 = !DILocation(line: 137, column: 7, scope: !3194)
!3206 = !DILocation(line: 142, column: 7, scope: !3194)
!3207 = !DILocation(line: 145, column: 7, scope: !3194)
!3208 = !DILocation(line: 150, column: 7, scope: !3194)
!3209 = !DILocation(line: 154, column: 7, scope: !3194)
!3210 = !DILocation(line: 159, column: 7, scope: !3194)
!3211 = !DILocation(line: 163, column: 7, scope: !3194)
!3212 = !DILocation(line: 170, column: 7, scope: !3194)
!3213 = !DILocation(line: 174, column: 7, scope: !3194)
!3214 = !DILocation(line: 176, column: 1, scope: !3137)
!3215 = distinct !DISubprogram(name: "version_etc_ar", scope: !639, file: !639, line: 183, type: !3216, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !3140, !138, !138, !138, !3174}
!3218 = !{!3219, !3220, !3221, !3222, !3223, !3224}
!3219 = !DILocalVariable(name: "stream", arg: 1, scope: !3215, file: !639, line: 183, type: !3140)
!3220 = !DILocalVariable(name: "command_name", arg: 2, scope: !3215, file: !639, line: 184, type: !138)
!3221 = !DILocalVariable(name: "package", arg: 3, scope: !3215, file: !639, line: 184, type: !138)
!3222 = !DILocalVariable(name: "version", arg: 4, scope: !3215, file: !639, line: 185, type: !138)
!3223 = !DILocalVariable(name: "authors", arg: 5, scope: !3215, file: !639, line: 185, type: !3174)
!3224 = !DILocalVariable(name: "n_authors", scope: !3215, file: !639, line: 187, type: !135)
!3225 = !DILocation(line: 0, scope: !3215)
!3226 = !DILocation(line: 189, column: 8, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3215, file: !639, line: 189, column: 3)
!3228 = !DILocation(line: 189, scope: !3227)
!3229 = !DILocation(line: 189, column: 23, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !639, line: 189, column: 3)
!3231 = !DILocation(line: 189, column: 3, scope: !3227)
!3232 = !DILocation(line: 189, column: 52, scope: !3230)
!3233 = distinct !{!3233, !3231, !3234, !951}
!3234 = !DILocation(line: 190, column: 5, scope: !3227)
!3235 = !DILocation(line: 191, column: 3, scope: !3215)
!3236 = !DILocation(line: 192, column: 1, scope: !3215)
!3237 = distinct !DISubprogram(name: "version_etc_va", scope: !639, file: !639, line: 199, type: !3238, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3248)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3140, !138, !138, !138, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3242)
!3242 = !{!3243, !3245, !3246, !3247}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3241, file: !3244, line: 192, baseType: !69, size: 32)
!3244 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3241, file: !3244, line: 192, baseType: !69, size: 32, offset: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3241, file: !3244, line: 192, baseType: !133, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3241, file: !3244, line: 192, baseType: !133, size: 64, offset: 128)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3249 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !639, line: 199, type: !3140)
!3250 = !DILocalVariable(name: "command_name", arg: 2, scope: !3237, file: !639, line: 200, type: !138)
!3251 = !DILocalVariable(name: "package", arg: 3, scope: !3237, file: !639, line: 200, type: !138)
!3252 = !DILocalVariable(name: "version", arg: 4, scope: !3237, file: !639, line: 201, type: !138)
!3253 = !DILocalVariable(name: "authors", arg: 5, scope: !3237, file: !639, line: 201, type: !3240)
!3254 = !DILocalVariable(name: "n_authors", scope: !3237, file: !639, line: 203, type: !135)
!3255 = !DILocalVariable(name: "authtab", scope: !3237, file: !639, line: 204, type: !3256)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !52)
!3257 = !DILocation(line: 0, scope: !3237)
!3258 = !DILocation(line: 204, column: 3, scope: !3237)
!3259 = !DILocation(line: 204, column: 15, scope: !3237)
!3260 = !DILocation(line: 208, column: 35, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !639, line: 206, column: 3)
!3262 = distinct !DILexicalBlock(scope: !3237, file: !639, line: 206, column: 3)
!3263 = !DILocation(line: 208, column: 33, scope: !3261)
!3264 = !DILocation(line: 208, column: 67, scope: !3261)
!3265 = !DILocation(line: 206, column: 3, scope: !3262)
!3266 = !DILocation(line: 208, column: 14, scope: !3261)
!3267 = !DILocation(line: 0, scope: !3262)
!3268 = !DILocation(line: 211, column: 3, scope: !3237)
!3269 = !DILocation(line: 213, column: 1, scope: !3237)
!3270 = distinct !DISubprogram(name: "version_etc", scope: !639, file: !639, line: 230, type: !3271, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !3140, !138, !138, !138, null}
!3273 = !{!3274, !3275, !3276, !3277, !3278}
!3274 = !DILocalVariable(name: "stream", arg: 1, scope: !3270, file: !639, line: 230, type: !3140)
!3275 = !DILocalVariable(name: "command_name", arg: 2, scope: !3270, file: !639, line: 231, type: !138)
!3276 = !DILocalVariable(name: "package", arg: 3, scope: !3270, file: !639, line: 231, type: !138)
!3277 = !DILocalVariable(name: "version", arg: 4, scope: !3270, file: !639, line: 232, type: !138)
!3278 = !DILocalVariable(name: "authors", scope: !3270, file: !639, line: 234, type: !3279)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !899, line: 52, baseType: !3280)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1639, line: 14, baseType: !3281)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3244, baseType: !3282)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 192, elements: !47)
!3283 = !DILocation(line: 0, scope: !3270)
!3284 = !DILocation(line: 234, column: 3, scope: !3270)
!3285 = !DILocation(line: 234, column: 11, scope: !3270)
!3286 = !DILocation(line: 235, column: 3, scope: !3270)
!3287 = !DILocation(line: 236, column: 3, scope: !3270)
!3288 = !DILocation(line: 237, column: 3, scope: !3270)
!3289 = !DILocation(line: 238, column: 1, scope: !3270)
!3290 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !639, file: !639, line: 241, type: !479, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !888)
!3291 = !DILocation(line: 243, column: 3, scope: !3290)
!3292 = !DILocation(line: 248, column: 3, scope: !3290)
!3293 = !DILocation(line: 254, column: 3, scope: !3290)
!3294 = !DILocation(line: 259, column: 3, scope: !3290)
!3295 = !DILocation(line: 261, column: 1, scope: !3290)
!3296 = distinct !DISubprogram(name: "xnrealloc", scope: !3297, file: !3297, line: 147, type: !3298, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3300)
!3297 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!133, !133, !135, !135}
!3300 = !{!3301, !3302, !3303}
!3301 = !DILocalVariable(name: "p", arg: 1, scope: !3296, file: !3297, line: 147, type: !133)
!3302 = !DILocalVariable(name: "n", arg: 2, scope: !3296, file: !3297, line: 147, type: !135)
!3303 = !DILocalVariable(name: "s", arg: 3, scope: !3296, file: !3297, line: 147, type: !135)
!3304 = !DILocation(line: 0, scope: !3296)
!3305 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !768, line: 83, type: !133)
!3306 = distinct !DISubprogram(name: "xreallocarray", scope: !768, file: !768, line: 83, type: !3298, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3307)
!3307 = !{!3305, !3308, !3309}
!3308 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !768, line: 83, type: !135)
!3309 = !DILocalVariable(name: "s", arg: 3, scope: !3306, file: !768, line: 83, type: !135)
!3310 = !DILocation(line: 0, scope: !3306, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 149, column: 10, scope: !3296)
!3312 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3311)
!3313 = !DILocalVariable(name: "p", arg: 1, scope: !3314, file: !768, line: 37, type: !133)
!3314 = distinct !DISubprogram(name: "check_nonnull", scope: !768, file: !768, line: 37, type: !3315, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!133, !133}
!3317 = !{!3313}
!3318 = !DILocation(line: 0, scope: !3314, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3311)
!3320 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3319)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !768, line: 39, column: 7)
!3322 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3319)
!3323 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3319)
!3324 = !DILocation(line: 149, column: 3, scope: !3296)
!3325 = !DILocation(line: 0, scope: !3306)
!3326 = !DILocation(line: 85, column: 25, scope: !3306)
!3327 = !DILocation(line: 0, scope: !3314, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 85, column: 10, scope: !3306)
!3329 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3328)
!3330 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3328)
!3331 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3328)
!3332 = !DILocation(line: 85, column: 3, scope: !3306)
!3333 = distinct !DISubprogram(name: "xmalloc", scope: !768, file: !768, line: 47, type: !3334, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!133, !135}
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "s", arg: 1, scope: !3333, file: !768, line: 47, type: !135)
!3338 = !DILocation(line: 0, scope: !3333)
!3339 = !DILocation(line: 49, column: 25, scope: !3333)
!3340 = !DILocation(line: 0, scope: !3314, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 49, column: 10, scope: !3333)
!3342 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3341)
!3343 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3341)
!3344 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3341)
!3345 = !DILocation(line: 49, column: 3, scope: !3333)
!3346 = !DISubprogram(name: "malloc", scope: !1029, file: !1029, line: 540, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3347 = distinct !DISubprogram(name: "ximalloc", scope: !768, file: !768, line: 53, type: !3348, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!133, !787}
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "s", arg: 1, scope: !3347, file: !768, line: 53, type: !787)
!3352 = !DILocation(line: 0, scope: !3347)
!3353 = !DILocalVariable(name: "s", arg: 1, scope: !3354, file: !3355, line: 55, type: !787)
!3354 = distinct !DISubprogram(name: "imalloc", scope: !3355, file: !3355, line: 55, type: !3348, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3356)
!3355 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3356 = !{!3353}
!3357 = !DILocation(line: 0, scope: !3354, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 55, column: 25, scope: !3347)
!3359 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3358)
!3360 = !DILocation(line: 0, scope: !3314, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 55, column: 10, scope: !3347)
!3362 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3361)
!3365 = !DILocation(line: 55, column: 3, scope: !3347)
!3366 = distinct !DISubprogram(name: "xcharalloc", scope: !768, file: !768, line: 59, type: !3367, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!132, !135}
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "n", arg: 1, scope: !3366, file: !768, line: 59, type: !135)
!3371 = !DILocation(line: 0, scope: !3366)
!3372 = !DILocation(line: 0, scope: !3333, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 61, column: 10, scope: !3366)
!3374 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3314, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3373)
!3377 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3376)
!3380 = !DILocation(line: 61, column: 3, scope: !3366)
!3381 = distinct !DISubprogram(name: "xrealloc", scope: !768, file: !768, line: 68, type: !3382, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!133, !133, !135}
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "p", arg: 1, scope: !3381, file: !768, line: 68, type: !133)
!3386 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !768, line: 68, type: !135)
!3387 = !DILocation(line: 0, scope: !3381)
!3388 = !DILocalVariable(name: "ptr", arg: 1, scope: !3389, file: !3390, line: 2057, type: !133)
!3389 = distinct !DISubprogram(name: "rpl_realloc", scope: !3390, file: !3390, line: 2057, type: !3382, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3391)
!3390 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3391 = !{!3388, !3392}
!3392 = !DILocalVariable(name: "size", arg: 2, scope: !3389, file: !3390, line: 2057, type: !135)
!3393 = !DILocation(line: 0, scope: !3389, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 70, column: 25, scope: !3381)
!3395 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3394)
!3396 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3394)
!3397 = !DILocation(line: 0, scope: !3314, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 70, column: 10, scope: !3381)
!3399 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3398)
!3402 = !DILocation(line: 70, column: 3, scope: !3381)
!3403 = !DISubprogram(name: "realloc", scope: !1029, file: !1029, line: 551, type: !3382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3404 = distinct !DISubprogram(name: "xirealloc", scope: !768, file: !768, line: 74, type: !3405, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!133, !133, !787}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "p", arg: 1, scope: !3404, file: !768, line: 74, type: !133)
!3409 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !768, line: 74, type: !787)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocalVariable(name: "p", arg: 1, scope: !3412, file: !3355, line: 66, type: !133)
!3412 = distinct !DISubprogram(name: "irealloc", scope: !3355, file: !3355, line: 66, type: !3405, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3413)
!3413 = !{!3411, !3414}
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !3355, line: 66, type: !787)
!3415 = !DILocation(line: 0, scope: !3412, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 76, column: 25, scope: !3404)
!3417 = !DILocation(line: 0, scope: !3389, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 68, column: 26, scope: !3412, inlinedAt: !3416)
!3419 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3418)
!3420 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3418)
!3421 = !DILocation(line: 0, scope: !3314, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 76, column: 10, scope: !3404)
!3423 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3422)
!3424 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3422)
!3425 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3422)
!3426 = !DILocation(line: 76, column: 3, scope: !3404)
!3427 = distinct !DISubprogram(name: "xireallocarray", scope: !768, file: !768, line: 89, type: !3428, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!133, !133, !787, !787}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "p", arg: 1, scope: !3427, file: !768, line: 89, type: !133)
!3432 = !DILocalVariable(name: "n", arg: 2, scope: !3427, file: !768, line: 89, type: !787)
!3433 = !DILocalVariable(name: "s", arg: 3, scope: !3427, file: !768, line: 89, type: !787)
!3434 = !DILocation(line: 0, scope: !3427)
!3435 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !3355, line: 98, type: !133)
!3436 = distinct !DISubprogram(name: "ireallocarray", scope: !3355, file: !3355, line: 98, type: !3428, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3437)
!3437 = !{!3435, !3438, !3439}
!3438 = !DILocalVariable(name: "n", arg: 2, scope: !3436, file: !3355, line: 98, type: !787)
!3439 = !DILocalVariable(name: "s", arg: 3, scope: !3436, file: !3355, line: 98, type: !787)
!3440 = !DILocation(line: 0, scope: !3436, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 91, column: 25, scope: !3427)
!3442 = !DILocation(line: 101, column: 13, scope: !3436, inlinedAt: !3441)
!3443 = !DILocation(line: 0, scope: !3314, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 91, column: 10, scope: !3427)
!3445 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3444)
!3448 = !DILocation(line: 91, column: 3, scope: !3427)
!3449 = distinct !DISubprogram(name: "xnmalloc", scope: !768, file: !768, line: 98, type: !3450, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!133, !135, !135}
!3452 = !{!3453, !3454}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !768, line: 98, type: !135)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !768, line: 98, type: !135)
!3455 = !DILocation(line: 0, scope: !3449)
!3456 = !DILocation(line: 0, scope: !3306, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 100, column: 10, scope: !3449)
!3458 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3457)
!3459 = !DILocation(line: 0, scope: !3314, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3457)
!3461 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3460)
!3462 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3460)
!3463 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3460)
!3464 = !DILocation(line: 100, column: 3, scope: !3449)
!3465 = distinct !DISubprogram(name: "xinmalloc", scope: !768, file: !768, line: 104, type: !3466, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!133, !787, !787}
!3468 = !{!3469, !3470}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !768, line: 104, type: !787)
!3470 = !DILocalVariable(name: "s", arg: 2, scope: !3465, file: !768, line: 104, type: !787)
!3471 = !DILocation(line: 0, scope: !3465)
!3472 = !DILocation(line: 0, scope: !3427, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 106, column: 10, scope: !3465)
!3474 = !DILocation(line: 0, scope: !3436, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 91, column: 25, scope: !3427, inlinedAt: !3473)
!3476 = !DILocation(line: 101, column: 13, scope: !3436, inlinedAt: !3475)
!3477 = !DILocation(line: 0, scope: !3314, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 91, column: 10, scope: !3427, inlinedAt: !3473)
!3479 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3478)
!3482 = !DILocation(line: 106, column: 3, scope: !3465)
!3483 = distinct !DISubprogram(name: "x2realloc", scope: !768, file: !768, line: 116, type: !3484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!133, !133, !774}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !768, line: 116, type: !133)
!3488 = !DILocalVariable(name: "ps", arg: 2, scope: !3483, file: !768, line: 116, type: !774)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 0, scope: !771, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 118, column: 10, scope: !3483)
!3492 = !DILocation(line: 178, column: 14, scope: !771, inlinedAt: !3491)
!3493 = !DILocation(line: 180, column: 9, scope: !3494, inlinedAt: !3491)
!3494 = distinct !DILexicalBlock(scope: !771, file: !768, line: 180, column: 7)
!3495 = !DILocation(line: 180, column: 7, scope: !771, inlinedAt: !3491)
!3496 = !DILocation(line: 182, column: 13, scope: !3497, inlinedAt: !3491)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !768, line: 182, column: 11)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !768, line: 181, column: 5)
!3499 = !DILocation(line: 182, column: 11, scope: !3498, inlinedAt: !3491)
!3500 = !DILocation(line: 197, column: 11, scope: !3501, inlinedAt: !3491)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !768, line: 197, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !768, line: 195, column: 5)
!3503 = !DILocation(line: 197, column: 11, scope: !3502, inlinedAt: !3491)
!3504 = !DILocation(line: 198, column: 9, scope: !3501, inlinedAt: !3491)
!3505 = !DILocation(line: 0, scope: !3306, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3491)
!3507 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3506)
!3508 = !DILocation(line: 0, scope: !3314, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3506)
!3510 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3509)
!3511 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3509)
!3512 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3509)
!3513 = !DILocation(line: 202, column: 7, scope: !771, inlinedAt: !3491)
!3514 = !DILocation(line: 118, column: 3, scope: !3483)
!3515 = !DILocation(line: 0, scope: !771)
!3516 = !DILocation(line: 178, column: 14, scope: !771)
!3517 = !DILocation(line: 180, column: 9, scope: !3494)
!3518 = !DILocation(line: 180, column: 7, scope: !771)
!3519 = !DILocation(line: 182, column: 13, scope: !3497)
!3520 = !DILocation(line: 182, column: 11, scope: !3498)
!3521 = !DILocation(line: 190, column: 30, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3497, file: !768, line: 183, column: 9)
!3523 = !DILocation(line: 191, column: 16, scope: !3522)
!3524 = !DILocation(line: 191, column: 13, scope: !3522)
!3525 = !DILocation(line: 192, column: 9, scope: !3522)
!3526 = !DILocation(line: 197, column: 11, scope: !3501)
!3527 = !DILocation(line: 197, column: 11, scope: !3502)
!3528 = !DILocation(line: 198, column: 9, scope: !3501)
!3529 = !DILocation(line: 0, scope: !3306, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 201, column: 7, scope: !771)
!3531 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3530)
!3532 = !DILocation(line: 0, scope: !3314, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3530)
!3534 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3533)
!3535 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3533)
!3536 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3533)
!3537 = !DILocation(line: 202, column: 7, scope: !771)
!3538 = !DILocation(line: 203, column: 3, scope: !771)
!3539 = !DILocation(line: 0, scope: !783)
!3540 = !DILocation(line: 230, column: 14, scope: !783)
!3541 = !DILocation(line: 238, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !783, file: !768, line: 238, column: 7)
!3543 = !DILocation(line: 238, column: 7, scope: !783)
!3544 = !DILocation(line: 240, column: 9, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !783, file: !768, line: 240, column: 7)
!3546 = !DILocation(line: 240, column: 18, scope: !3545)
!3547 = !DILocation(line: 253, column: 8, scope: !783)
!3548 = !DILocation(line: 258, column: 27, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !768, line: 257, column: 5)
!3550 = distinct !DILexicalBlock(scope: !783, file: !768, line: 256, column: 7)
!3551 = !DILocation(line: 259, column: 50, scope: !3549)
!3552 = !DILocation(line: 259, column: 32, scope: !3549)
!3553 = !DILocation(line: 260, column: 5, scope: !3549)
!3554 = !DILocation(line: 262, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !783, file: !768, line: 262, column: 7)
!3556 = !DILocation(line: 262, column: 7, scope: !783)
!3557 = !DILocation(line: 263, column: 9, scope: !3555)
!3558 = !DILocation(line: 263, column: 5, scope: !3555)
!3559 = !DILocation(line: 264, column: 9, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !783, file: !768, line: 264, column: 7)
!3561 = !DILocation(line: 264, column: 14, scope: !3560)
!3562 = !DILocation(line: 265, column: 7, scope: !3560)
!3563 = !DILocation(line: 265, column: 11, scope: !3560)
!3564 = !DILocation(line: 266, column: 11, scope: !3560)
!3565 = !DILocation(line: 267, column: 14, scope: !3560)
!3566 = !DILocation(line: 264, column: 7, scope: !783)
!3567 = !DILocation(line: 268, column: 5, scope: !3560)
!3568 = !DILocation(line: 0, scope: !3381, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 269, column: 8, scope: !783)
!3570 = !DILocation(line: 0, scope: !3389, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 70, column: 25, scope: !3381, inlinedAt: !3569)
!3572 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3571)
!3573 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3571)
!3574 = !DILocation(line: 0, scope: !3314, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 70, column: 10, scope: !3381, inlinedAt: !3569)
!3576 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3575)
!3578 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3575)
!3579 = !DILocation(line: 270, column: 7, scope: !783)
!3580 = !DILocation(line: 271, column: 3, scope: !783)
!3581 = distinct !DISubprogram(name: "xzalloc", scope: !768, file: !768, line: 279, type: !3334, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3582)
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "s", arg: 1, scope: !3581, file: !768, line: 279, type: !135)
!3584 = !DILocation(line: 0, scope: !3581)
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3586, file: !768, line: 294, type: !135)
!3586 = distinct !DISubprogram(name: "xcalloc", scope: !768, file: !768, line: 294, type: !3450, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3587)
!3587 = !{!3585, !3588}
!3588 = !DILocalVariable(name: "s", arg: 2, scope: !3586, file: !768, line: 294, type: !135)
!3589 = !DILocation(line: 0, scope: !3586, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 281, column: 10, scope: !3581)
!3591 = !DILocation(line: 296, column: 25, scope: !3586, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !3314, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 296, column: 10, scope: !3586, inlinedAt: !3590)
!3594 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3593)
!3597 = !DILocation(line: 281, column: 3, scope: !3581)
!3598 = !DISubprogram(name: "calloc", scope: !1029, file: !1029, line: 543, type: !3450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3599 = !DILocation(line: 0, scope: !3586)
!3600 = !DILocation(line: 296, column: 25, scope: !3586)
!3601 = !DILocation(line: 0, scope: !3314, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 296, column: 10, scope: !3586)
!3603 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3602)
!3604 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3602)
!3605 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3602)
!3606 = !DILocation(line: 296, column: 3, scope: !3586)
!3607 = distinct !DISubprogram(name: "xizalloc", scope: !768, file: !768, line: 285, type: !3348, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "s", arg: 1, scope: !3607, file: !768, line: 285, type: !787)
!3610 = !DILocation(line: 0, scope: !3607)
!3611 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !768, line: 300, type: !787)
!3612 = distinct !DISubprogram(name: "xicalloc", scope: !768, file: !768, line: 300, type: !3466, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3613)
!3613 = !{!3611, !3614}
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !768, line: 300, type: !787)
!3615 = !DILocation(line: 0, scope: !3612, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 287, column: 10, scope: !3607)
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !3355, line: 77, type: !787)
!3618 = distinct !DISubprogram(name: "icalloc", scope: !3355, file: !3355, line: 77, type: !3466, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3619)
!3619 = !{!3617, !3620}
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3618, file: !3355, line: 77, type: !787)
!3621 = !DILocation(line: 0, scope: !3618, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 302, column: 25, scope: !3612, inlinedAt: !3616)
!3623 = !DILocation(line: 91, column: 10, scope: !3618, inlinedAt: !3622)
!3624 = !DILocation(line: 0, scope: !3314, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 302, column: 10, scope: !3612, inlinedAt: !3616)
!3626 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3625)
!3627 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3625)
!3628 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3625)
!3629 = !DILocation(line: 287, column: 3, scope: !3607)
!3630 = !DILocation(line: 0, scope: !3612)
!3631 = !DILocation(line: 0, scope: !3618, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 302, column: 25, scope: !3612)
!3633 = !DILocation(line: 91, column: 10, scope: !3618, inlinedAt: !3632)
!3634 = !DILocation(line: 0, scope: !3314, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 302, column: 10, scope: !3612)
!3636 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3635)
!3639 = !DILocation(line: 302, column: 3, scope: !3612)
!3640 = distinct !DISubprogram(name: "xmemdup", scope: !768, file: !768, line: 310, type: !3641, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!133, !1053, !135}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "p", arg: 1, scope: !3640, file: !768, line: 310, type: !1053)
!3645 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !768, line: 310, type: !135)
!3646 = !DILocation(line: 0, scope: !3640)
!3647 = !DILocation(line: 0, scope: !3333, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 312, column: 18, scope: !3640)
!3649 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3648)
!3650 = !DILocation(line: 0, scope: !3314, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3648)
!3652 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3651)
!3653 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3651)
!3654 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3651)
!3655 = !DILocalVariable(name: "__dest", arg: 1, scope: !3656, file: !1256, line: 26, type: !3659)
!3656 = distinct !DISubprogram(name: "memcpy", scope: !1256, file: !1256, line: 26, type: !3657, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3660)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!133, !3659, !1052, !135}
!3659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!3660 = !{!3655, !3661, !3662}
!3661 = !DILocalVariable(name: "__src", arg: 2, scope: !3656, file: !1256, line: 26, type: !1052)
!3662 = !DILocalVariable(name: "__len", arg: 3, scope: !3656, file: !1256, line: 26, type: !135)
!3663 = !DILocation(line: 0, scope: !3656, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 312, column: 10, scope: !3640)
!3665 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3664)
!3666 = !DILocation(line: 312, column: 3, scope: !3640)
!3667 = distinct !DISubprogram(name: "ximemdup", scope: !768, file: !768, line: 316, type: !3668, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!133, !1053, !787}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "p", arg: 1, scope: !3667, file: !768, line: 316, type: !1053)
!3672 = !DILocalVariable(name: "s", arg: 2, scope: !3667, file: !768, line: 316, type: !787)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 0, scope: !3347, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 318, column: 18, scope: !3667)
!3676 = !DILocation(line: 0, scope: !3354, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 55, column: 25, scope: !3347, inlinedAt: !3675)
!3678 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3677)
!3679 = !DILocation(line: 0, scope: !3314, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 55, column: 10, scope: !3347, inlinedAt: !3675)
!3681 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3680)
!3682 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3680)
!3683 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3680)
!3684 = !DILocation(line: 0, scope: !3656, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 318, column: 10, scope: !3667)
!3686 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3685)
!3687 = !DILocation(line: 318, column: 3, scope: !3667)
!3688 = distinct !DISubprogram(name: "ximemdup0", scope: !768, file: !768, line: 325, type: !3689, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!132, !1053, !787}
!3691 = !{!3692, !3693, !3694}
!3692 = !DILocalVariable(name: "p", arg: 1, scope: !3688, file: !768, line: 325, type: !1053)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3688, file: !768, line: 325, type: !787)
!3694 = !DILocalVariable(name: "result", scope: !3688, file: !768, line: 327, type: !132)
!3695 = !DILocation(line: 0, scope: !3688)
!3696 = !DILocation(line: 327, column: 30, scope: !3688)
!3697 = !DILocation(line: 0, scope: !3347, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 327, column: 18, scope: !3688)
!3699 = !DILocation(line: 0, scope: !3354, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 55, column: 25, scope: !3347, inlinedAt: !3698)
!3701 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3700)
!3702 = !DILocation(line: 0, scope: !3314, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 55, column: 10, scope: !3347, inlinedAt: !3698)
!3704 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3703)
!3705 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3703)
!3706 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3703)
!3707 = !DILocation(line: 328, column: 3, scope: !3688)
!3708 = !DILocation(line: 328, column: 13, scope: !3688)
!3709 = !DILocation(line: 0, scope: !3656, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 329, column: 10, scope: !3688)
!3711 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3710)
!3712 = !DILocation(line: 329, column: 3, scope: !3688)
!3713 = distinct !DISubprogram(name: "xstrdup", scope: !768, file: !768, line: 335, type: !1031, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3714)
!3714 = !{!3715}
!3715 = !DILocalVariable(name: "string", arg: 1, scope: !3713, file: !768, line: 335, type: !138)
!3716 = !DILocation(line: 0, scope: !3713)
!3717 = !DILocation(line: 337, column: 27, scope: !3713)
!3718 = !DILocation(line: 337, column: 43, scope: !3713)
!3719 = !DILocation(line: 0, scope: !3640, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 337, column: 10, scope: !3713)
!3721 = !DILocation(line: 0, scope: !3333, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 312, column: 18, scope: !3640, inlinedAt: !3720)
!3723 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !3314, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3722)
!3726 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3725)
!3727 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3725)
!3728 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3725)
!3729 = !DILocation(line: 0, scope: !3656, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 312, column: 10, scope: !3640, inlinedAt: !3720)
!3731 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3730)
!3732 = !DILocation(line: 337, column: 3, scope: !3713)
!3733 = distinct !DISubprogram(name: "xalloc_die", scope: !730, file: !730, line: 32, type: !479, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !3734)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "__errstatus", scope: !3736, file: !730, line: 34, type: !3737)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !730, line: 34, column: 3)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3738 = !DILocation(line: 34, column: 3, scope: !3736)
!3739 = !DILocation(line: 0, scope: !3736)
!3740 = !DILocation(line: 40, column: 3, scope: !3733)
!3741 = distinct !DISubprogram(name: "close_stream", scope: !804, file: !804, line: 55, type: !3742, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3778)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!74, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3746)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3746, file: !193, line: 51, baseType: !74, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3746, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3746, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3746, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3746, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3746, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3746, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3746, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3746, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3746, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3746, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3746, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3746, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3746, file: !193, line: 70, baseType: !3762, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3746, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3746, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3746, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3746, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3746, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3746, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3746, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3746, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3746, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3746, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3746, file: !193, line: 93, baseType: !3762, size: 64, offset: 1344)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3746, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3746, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3746, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3746, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3778 = !{!3779, !3780, !3782, !3783}
!3779 = !DILocalVariable(name: "stream", arg: 1, scope: !3741, file: !804, line: 55, type: !3744)
!3780 = !DILocalVariable(name: "some_pending", scope: !3741, file: !804, line: 57, type: !3781)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3782 = !DILocalVariable(name: "prev_fail", scope: !3741, file: !804, line: 58, type: !3781)
!3783 = !DILocalVariable(name: "fclose_fail", scope: !3741, file: !804, line: 59, type: !3781)
!3784 = !DILocation(line: 0, scope: !3741)
!3785 = !DILocation(line: 57, column: 30, scope: !3741)
!3786 = !DILocalVariable(name: "__stream", arg: 1, scope: !3787, file: !1594, line: 135, type: !3744)
!3787 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1594, file: !1594, line: 135, type: !3742, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3788)
!3788 = !{!3786}
!3789 = !DILocation(line: 0, scope: !3787, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 58, column: 27, scope: !3741)
!3791 = !DILocation(line: 137, column: 10, scope: !3787, inlinedAt: !3790)
!3792 = !{!1603, !905, i64 0}
!3793 = !DILocation(line: 58, column: 43, scope: !3741)
!3794 = !DILocation(line: 59, column: 29, scope: !3741)
!3795 = !DILocation(line: 59, column: 45, scope: !3741)
!3796 = !DILocation(line: 69, column: 17, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3741, file: !804, line: 69, column: 7)
!3798 = !DILocation(line: 57, column: 50, scope: !3741)
!3799 = !DILocation(line: 69, column: 33, scope: !3797)
!3800 = !DILocation(line: 69, column: 53, scope: !3797)
!3801 = !DILocation(line: 69, column: 59, scope: !3797)
!3802 = !DILocation(line: 69, column: 7, scope: !3741)
!3803 = !DILocation(line: 71, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !804, line: 70, column: 5)
!3805 = !DILocation(line: 72, column: 9, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3804, file: !804, line: 71, column: 11)
!3807 = !DILocation(line: 72, column: 15, scope: !3806)
!3808 = !DILocation(line: 77, column: 1, scope: !3741)
!3809 = !DISubprogram(name: "__fpending", scope: !3810, file: !3810, line: 75, type: !3811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3810 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!135, !3744}
!3813 = distinct !DISubprogram(name: "rpl_fclose", scope: !806, file: !806, line: 58, type: !3814, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3850)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!74, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3818, file: !193, line: 51, baseType: !74, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3818, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3818, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3818, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3818, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3818, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3818, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3818, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3818, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3818, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3818, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3818, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3818, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3818, file: !193, line: 70, baseType: !3834, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3818, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3818, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3818, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3818, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3818, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3818, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3818, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3818, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3818, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3818, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3818, file: !193, line: 93, baseType: !3834, size: 64, offset: 1344)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3818, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3818, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3818, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3818, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3850 = !{!3851, !3852, !3853, !3854}
!3851 = !DILocalVariable(name: "fp", arg: 1, scope: !3813, file: !806, line: 58, type: !3816)
!3852 = !DILocalVariable(name: "saved_errno", scope: !3813, file: !806, line: 60, type: !74)
!3853 = !DILocalVariable(name: "fd", scope: !3813, file: !806, line: 63, type: !74)
!3854 = !DILocalVariable(name: "result", scope: !3813, file: !806, line: 74, type: !74)
!3855 = !DILocation(line: 0, scope: !3813)
!3856 = !DILocation(line: 63, column: 12, scope: !3813)
!3857 = !DILocation(line: 64, column: 10, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3813, file: !806, line: 64, column: 7)
!3859 = !DILocation(line: 64, column: 7, scope: !3813)
!3860 = !DILocation(line: 65, column: 12, scope: !3858)
!3861 = !DILocation(line: 65, column: 5, scope: !3858)
!3862 = !DILocation(line: 70, column: 9, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3813, file: !806, line: 70, column: 7)
!3864 = !DILocation(line: 70, column: 23, scope: !3863)
!3865 = !DILocation(line: 70, column: 33, scope: !3863)
!3866 = !DILocation(line: 70, column: 26, scope: !3863)
!3867 = !DILocation(line: 70, column: 59, scope: !3863)
!3868 = !DILocation(line: 71, column: 7, scope: !3863)
!3869 = !DILocation(line: 71, column: 10, scope: !3863)
!3870 = !DILocation(line: 70, column: 7, scope: !3813)
!3871 = !DILocation(line: 100, column: 12, scope: !3813)
!3872 = !DILocation(line: 105, column: 7, scope: !3813)
!3873 = !DILocation(line: 72, column: 19, scope: !3863)
!3874 = !DILocation(line: 105, column: 19, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3813, file: !806, line: 105, column: 7)
!3876 = !DILocation(line: 107, column: 13, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3875, file: !806, line: 106, column: 5)
!3878 = !DILocation(line: 109, column: 5, scope: !3877)
!3879 = !DILocation(line: 112, column: 1, scope: !3813)
!3880 = !DISubprogram(name: "fileno", scope: !899, file: !899, line: 809, type: !3814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3881 = !DISubprogram(name: "fclose", scope: !899, file: !899, line: 178, type: !3814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3882 = !DISubprogram(name: "__freading", scope: !3810, file: !3810, line: 51, type: !3814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3883 = !DISubprogram(name: "lseek", scope: !1425, file: !1425, line: 339, type: !3884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!215, !74, !215, !74}
!3886 = distinct !DISubprogram(name: "rpl_fflush", scope: !808, file: !808, line: 130, type: !3887, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3923)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!74, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3891)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3891, file: !193, line: 51, baseType: !74, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3891, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3891, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3891, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3891, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3891, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3891, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3891, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3891, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3891, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3891, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3891, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3891, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3891, file: !193, line: 70, baseType: !3907, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3891, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3891, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3891, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3891, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3891, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3891, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3891, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3891, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3891, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3891, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3891, file: !193, line: 93, baseType: !3907, size: 64, offset: 1344)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3891, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3891, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3891, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3891, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "stream", arg: 1, scope: !3886, file: !808, line: 130, type: !3889)
!3925 = !DILocation(line: 0, scope: !3886)
!3926 = !DILocation(line: 151, column: 14, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3886, file: !808, line: 151, column: 7)
!3928 = !DILocation(line: 151, column: 22, scope: !3927)
!3929 = !DILocation(line: 151, column: 27, scope: !3927)
!3930 = !DILocation(line: 151, column: 7, scope: !3886)
!3931 = !DILocation(line: 152, column: 12, scope: !3927)
!3932 = !DILocation(line: 152, column: 5, scope: !3927)
!3933 = !DILocalVariable(name: "fp", arg: 1, scope: !3934, file: !808, line: 42, type: !3889)
!3934 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !808, file: !808, line: 42, type: !3935, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3889}
!3937 = !{!3933}
!3938 = !DILocation(line: 0, scope: !3934, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 157, column: 3, scope: !3886)
!3940 = !DILocation(line: 44, column: 12, scope: !3941, inlinedAt: !3939)
!3941 = distinct !DILexicalBlock(scope: !3934, file: !808, line: 44, column: 7)
!3942 = !DILocation(line: 44, column: 19, scope: !3941, inlinedAt: !3939)
!3943 = !DILocation(line: 44, column: 7, scope: !3934, inlinedAt: !3939)
!3944 = !DILocation(line: 46, column: 5, scope: !3941, inlinedAt: !3939)
!3945 = !DILocation(line: 159, column: 10, scope: !3886)
!3946 = !DILocation(line: 159, column: 3, scope: !3886)
!3947 = !DILocation(line: 236, column: 1, scope: !3886)
!3948 = !DISubprogram(name: "fflush", scope: !899, file: !899, line: 230, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!3949 = distinct !DISubprogram(name: "rpl_fseeko", scope: !810, file: !810, line: 28, type: !3950, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3987)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!74, !3952, !3986, !74}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3954, file: !193, line: 51, baseType: !74, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3954, file: !193, line: 54, baseType: !132, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3954, file: !193, line: 55, baseType: !132, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3954, file: !193, line: 56, baseType: !132, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3954, file: !193, line: 57, baseType: !132, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3954, file: !193, line: 58, baseType: !132, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3954, file: !193, line: 59, baseType: !132, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3954, file: !193, line: 60, baseType: !132, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3954, file: !193, line: 61, baseType: !132, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3954, file: !193, line: 64, baseType: !132, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3954, file: !193, line: 65, baseType: !132, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3954, file: !193, line: 66, baseType: !132, size: 64, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3954, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3954, file: !193, line: 70, baseType: !3970, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3954, file: !193, line: 72, baseType: !74, size: 32, offset: 896)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3954, file: !193, line: 73, baseType: !74, size: 32, offset: 928)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3954, file: !193, line: 74, baseType: !215, size: 64, offset: 960)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3954, file: !193, line: 77, baseType: !134, size: 16, offset: 1024)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3954, file: !193, line: 78, baseType: !220, size: 8, offset: 1040)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3954, file: !193, line: 79, baseType: !46, size: 8, offset: 1048)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3954, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3954, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3954, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3954, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3954, file: !193, line: 93, baseType: !3970, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3954, file: !193, line: 94, baseType: !133, size: 64, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3954, file: !193, line: 95, baseType: !135, size: 64, offset: 1472)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3954, file: !193, line: 96, baseType: !74, size: 32, offset: 1536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3954, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !899, line: 63, baseType: !215)
!3987 = !{!3988, !3989, !3990, !3991}
!3988 = !DILocalVariable(name: "fp", arg: 1, scope: !3949, file: !810, line: 28, type: !3952)
!3989 = !DILocalVariable(name: "offset", arg: 2, scope: !3949, file: !810, line: 28, type: !3986)
!3990 = !DILocalVariable(name: "whence", arg: 3, scope: !3949, file: !810, line: 28, type: !74)
!3991 = !DILocalVariable(name: "pos", scope: !3992, file: !810, line: 123, type: !3986)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !810, line: 119, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3949, file: !810, line: 55, column: 7)
!3994 = !DILocation(line: 0, scope: !3949)
!3995 = !DILocation(line: 55, column: 12, scope: !3993)
!3996 = !{!1603, !841, i64 16}
!3997 = !DILocation(line: 55, column: 33, scope: !3993)
!3998 = !{!1603, !841, i64 8}
!3999 = !DILocation(line: 55, column: 25, scope: !3993)
!4000 = !DILocation(line: 56, column: 7, scope: !3993)
!4001 = !DILocation(line: 56, column: 15, scope: !3993)
!4002 = !DILocation(line: 56, column: 37, scope: !3993)
!4003 = !{!1603, !841, i64 32}
!4004 = !DILocation(line: 56, column: 29, scope: !3993)
!4005 = !DILocation(line: 57, column: 7, scope: !3993)
!4006 = !DILocation(line: 57, column: 15, scope: !3993)
!4007 = !{!1603, !841, i64 72}
!4008 = !DILocation(line: 57, column: 29, scope: !3993)
!4009 = !DILocation(line: 55, column: 7, scope: !3949)
!4010 = !DILocation(line: 123, column: 26, scope: !3992)
!4011 = !DILocation(line: 123, column: 19, scope: !3992)
!4012 = !DILocation(line: 0, scope: !3992)
!4013 = !DILocation(line: 124, column: 15, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3992, file: !810, line: 124, column: 11)
!4015 = !DILocation(line: 124, column: 11, scope: !3992)
!4016 = !DILocation(line: 135, column: 19, scope: !3992)
!4017 = !DILocation(line: 136, column: 12, scope: !3992)
!4018 = !DILocation(line: 136, column: 20, scope: !3992)
!4019 = !{!1603, !1604, i64 144}
!4020 = !DILocation(line: 167, column: 7, scope: !3992)
!4021 = !DILocation(line: 169, column: 10, scope: !3949)
!4022 = !DILocation(line: 169, column: 3, scope: !3949)
!4023 = !DILocation(line: 170, column: 1, scope: !3949)
!4024 = !DISubprogram(name: "fseeko", scope: !899, file: !899, line: 736, type: !4025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!74, !3952, !215, !74}
!4027 = distinct !DISubprogram(name: "hard_locale", scope: !737, file: !737, line: 28, type: !4028, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!176, !74}
!4030 = !{!4031, !4032}
!4031 = !DILocalVariable(name: "category", arg: 1, scope: !4027, file: !737, line: 28, type: !74)
!4032 = !DILocalVariable(name: "locale", scope: !4027, file: !737, line: 30, type: !4033)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4034)
!4034 = !{!4035}
!4035 = !DISubrange(count: 257)
!4036 = !DILocation(line: 0, scope: !4027)
!4037 = !DILocation(line: 30, column: 3, scope: !4027)
!4038 = !DILocation(line: 30, column: 8, scope: !4027)
!4039 = !DILocation(line: 32, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4027, file: !737, line: 32, column: 7)
!4041 = !DILocation(line: 32, column: 7, scope: !4027)
!4042 = !DILocalVariable(name: "__s1", arg: 1, scope: !4043, file: !917, line: 1359, type: !138)
!4043 = distinct !DISubprogram(name: "streq", scope: !917, file: !917, line: 1359, type: !918, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4044)
!4044 = !{!4042, !4045}
!4045 = !DILocalVariable(name: "__s2", arg: 2, scope: !4043, file: !917, line: 1359, type: !138)
!4046 = !DILocation(line: 0, scope: !4043, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 35, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4027, file: !737, line: 35, column: 7)
!4049 = !DILocation(line: 1361, column: 11, scope: !4043, inlinedAt: !4047)
!4050 = !DILocation(line: 35, column: 29, scope: !4048)
!4051 = !DILocation(line: 0, scope: !4043, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 35, column: 32, scope: !4048)
!4053 = !DILocation(line: 1361, column: 11, scope: !4043, inlinedAt: !4052)
!4054 = !DILocation(line: 1361, column: 10, scope: !4043, inlinedAt: !4052)
!4055 = !DILocation(line: 35, column: 7, scope: !4027)
!4056 = !DILocation(line: 46, column: 3, scope: !4027)
!4057 = !DILocation(line: 47, column: 1, scope: !4027)
!4058 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !740, file: !740, line: 100, type: !4059, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4062)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!135, !1830, !138, !135, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!4062 = !{!4063, !4064, !4065, !4066, !4067}
!4063 = !DILocalVariable(name: "pwc", arg: 1, scope: !4058, file: !740, line: 100, type: !1830)
!4064 = !DILocalVariable(name: "s", arg: 2, scope: !4058, file: !740, line: 100, type: !138)
!4065 = !DILocalVariable(name: "n", arg: 3, scope: !4058, file: !740, line: 100, type: !135)
!4066 = !DILocalVariable(name: "ps", arg: 4, scope: !4058, file: !740, line: 100, type: !4061)
!4067 = !DILocalVariable(name: "ret", scope: !4058, file: !740, line: 130, type: !135)
!4068 = !DILocation(line: 0, scope: !4058)
!4069 = !DILocation(line: 105, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4058, file: !740, line: 105, column: 7)
!4071 = !DILocation(line: 105, column: 7, scope: !4058)
!4072 = !DILocation(line: 117, column: 10, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4058, file: !740, line: 117, column: 7)
!4074 = !DILocation(line: 117, column: 7, scope: !4058)
!4075 = !DILocation(line: 130, column: 16, scope: !4058)
!4076 = !DILocation(line: 135, column: 11, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4058, file: !740, line: 135, column: 7)
!4078 = !DILocation(line: 135, column: 25, scope: !4077)
!4079 = !DILocation(line: 135, column: 30, scope: !4077)
!4080 = !DILocation(line: 135, column: 7, scope: !4058)
!4081 = !DILocalVariable(name: "ps", arg: 1, scope: !4082, file: !1247, line: 1135, type: !4061)
!4082 = distinct !DISubprogram(name: "mbszero", scope: !1247, file: !1247, line: 1135, type: !4083, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4061}
!4085 = !{!4081}
!4086 = !DILocation(line: 0, scope: !4082, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 137, column: 5, scope: !4077)
!4088 = !DILocalVariable(name: "__dest", arg: 1, scope: !4089, file: !1256, line: 57, type: !133)
!4089 = distinct !DISubprogram(name: "memset", scope: !1256, file: !1256, line: 57, type: !1257, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4090)
!4090 = !{!4088, !4091, !4092}
!4091 = !DILocalVariable(name: "__ch", arg: 2, scope: !4089, file: !1256, line: 57, type: !74)
!4092 = !DILocalVariable(name: "__len", arg: 3, scope: !4089, file: !1256, line: 57, type: !135)
!4093 = !DILocation(line: 0, scope: !4089, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1137, column: 3, scope: !4082, inlinedAt: !4087)
!4095 = !DILocation(line: 59, column: 10, scope: !4089, inlinedAt: !4094)
!4096 = !DILocation(line: 137, column: 5, scope: !4077)
!4097 = !DILocation(line: 138, column: 11, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4058, file: !740, line: 138, column: 7)
!4099 = !DILocation(line: 138, column: 7, scope: !4058)
!4100 = !DILocation(line: 139, column: 5, scope: !4098)
!4101 = !DILocation(line: 143, column: 26, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4058, file: !740, line: 143, column: 7)
!4103 = !DILocation(line: 143, column: 41, scope: !4102)
!4104 = !DILocation(line: 143, column: 7, scope: !4058)
!4105 = !DILocation(line: 145, column: 15, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !740, line: 145, column: 11)
!4107 = distinct !DILexicalBlock(scope: !4102, file: !740, line: 144, column: 5)
!4108 = !DILocation(line: 145, column: 11, scope: !4107)
!4109 = !DILocation(line: 146, column: 32, scope: !4106)
!4110 = !DILocation(line: 146, column: 16, scope: !4106)
!4111 = !DILocation(line: 146, column: 14, scope: !4106)
!4112 = !DILocation(line: 146, column: 9, scope: !4106)
!4113 = !DILocation(line: 286, column: 1, scope: !4058)
!4114 = !DISubprogram(name: "mbsinit", scope: !1757, file: !1757, line: 293, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !888)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!74, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!4119 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !816, file: !816, line: 27, type: !3298, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4120)
!4120 = !{!4121, !4122, !4123, !4124}
!4121 = !DILocalVariable(name: "ptr", arg: 1, scope: !4119, file: !816, line: 27, type: !133)
!4122 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4119, file: !816, line: 27, type: !135)
!4123 = !DILocalVariable(name: "size", arg: 3, scope: !4119, file: !816, line: 27, type: !135)
!4124 = !DILocalVariable(name: "nbytes", scope: !4119, file: !816, line: 29, type: !135)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 30, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4119, file: !816, line: 30, column: 7)
!4128 = !DILocalVariable(name: "ptr", arg: 1, scope: !4129, file: !3390, line: 2057, type: !133)
!4129 = distinct !DISubprogram(name: "rpl_realloc", scope: !3390, file: !3390, line: 2057, type: !3382, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4130)
!4130 = !{!4128, !4131}
!4131 = !DILocalVariable(name: "size", arg: 2, scope: !4129, file: !3390, line: 2057, type: !135)
!4132 = !DILocation(line: 0, scope: !4129, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 37, column: 10, scope: !4119)
!4134 = !DILocation(line: 2059, column: 24, scope: !4129, inlinedAt: !4133)
!4135 = !DILocation(line: 2059, column: 10, scope: !4129, inlinedAt: !4133)
!4136 = !DILocation(line: 37, column: 3, scope: !4119)
!4137 = !DILocation(line: 32, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4127, file: !816, line: 31, column: 5)
!4139 = !DILocation(line: 32, column: 13, scope: !4138)
!4140 = !DILocation(line: 33, column: 7, scope: !4138)
!4141 = !DILocation(line: 38, column: 1, scope: !4119)
!4142 = distinct !DISubprogram(name: "setlocale_null_r", scope: !819, file: !819, line: 154, type: !4143, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!74, !74, !132, !135}
!4145 = !{!4146, !4147, !4148}
!4146 = !DILocalVariable(name: "category", arg: 1, scope: !4142, file: !819, line: 154, type: !74)
!4147 = !DILocalVariable(name: "buf", arg: 2, scope: !4142, file: !819, line: 154, type: !132)
!4148 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4142, file: !819, line: 154, type: !135)
!4149 = !DILocation(line: 0, scope: !4142)
!4150 = !DILocation(line: 159, column: 10, scope: !4142)
!4151 = !DILocation(line: 159, column: 3, scope: !4142)
!4152 = distinct !DISubprogram(name: "setlocale_null", scope: !819, file: !819, line: 186, type: !4153, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!138, !74}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "category", arg: 1, scope: !4152, file: !819, line: 186, type: !74)
!4157 = !DILocation(line: 0, scope: !4152)
!4158 = !DILocation(line: 189, column: 10, scope: !4152)
!4159 = !DILocation(line: 189, column: 3, scope: !4152)
!4160 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !821, file: !821, line: 35, type: !4153, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4161)
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "category", arg: 1, scope: !4160, file: !821, line: 35, type: !74)
!4163 = !DILocalVariable(name: "result", scope: !4160, file: !821, line: 37, type: !138)
!4164 = !DILocation(line: 0, scope: !4160)
!4165 = !DILocation(line: 37, column: 24, scope: !4160)
!4166 = !DILocation(line: 62, column: 3, scope: !4160)
!4167 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !821, file: !821, line: 66, type: !4143, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4168)
!4168 = !{!4169, !4170, !4171, !4172, !4173}
!4169 = !DILocalVariable(name: "category", arg: 1, scope: !4167, file: !821, line: 66, type: !74)
!4170 = !DILocalVariable(name: "buf", arg: 2, scope: !4167, file: !821, line: 66, type: !132)
!4171 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4167, file: !821, line: 66, type: !135)
!4172 = !DILocalVariable(name: "result", scope: !4167, file: !821, line: 111, type: !138)
!4173 = !DILocalVariable(name: "length", scope: !4174, file: !821, line: 125, type: !135)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !821, line: 124, column: 5)
!4175 = distinct !DILexicalBlock(scope: !4167, file: !821, line: 113, column: 7)
!4176 = !DILocation(line: 0, scope: !4167)
!4177 = !DILocation(line: 0, scope: !4160, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 111, column: 24, scope: !4167)
!4179 = !DILocation(line: 37, column: 24, scope: !4160, inlinedAt: !4178)
!4180 = !DILocation(line: 113, column: 14, scope: !4175)
!4181 = !DILocation(line: 113, column: 7, scope: !4167)
!4182 = !DILocation(line: 116, column: 19, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !821, line: 116, column: 11)
!4184 = distinct !DILexicalBlock(scope: !4175, file: !821, line: 114, column: 5)
!4185 = !DILocation(line: 116, column: 11, scope: !4184)
!4186 = !DILocation(line: 120, column: 16, scope: !4183)
!4187 = !DILocation(line: 120, column: 9, scope: !4183)
!4188 = !DILocation(line: 125, column: 23, scope: !4174)
!4189 = !DILocation(line: 0, scope: !4174)
!4190 = !DILocation(line: 126, column: 18, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4174, file: !821, line: 126, column: 11)
!4192 = !DILocation(line: 126, column: 11, scope: !4174)
!4193 = !DILocation(line: 128, column: 39, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !821, line: 127, column: 9)
!4195 = !DILocalVariable(name: "__dest", arg: 1, scope: !4196, file: !1256, line: 26, type: !3659)
!4196 = distinct !DISubprogram(name: "memcpy", scope: !1256, file: !1256, line: 26, type: !3657, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4197)
!4197 = !{!4195, !4198, !4199}
!4198 = !DILocalVariable(name: "__src", arg: 2, scope: !4196, file: !1256, line: 26, type: !1052)
!4199 = !DILocalVariable(name: "__len", arg: 3, scope: !4196, file: !1256, line: 26, type: !135)
!4200 = !DILocation(line: 0, scope: !4196, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 128, column: 11, scope: !4194)
!4202 = !DILocation(line: 29, column: 10, scope: !4196, inlinedAt: !4201)
!4203 = !DILocation(line: 129, column: 11, scope: !4194)
!4204 = !DILocation(line: 133, column: 23, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !821, line: 133, column: 15)
!4206 = distinct !DILexicalBlock(scope: !4191, file: !821, line: 132, column: 9)
!4207 = !DILocation(line: 133, column: 15, scope: !4206)
!4208 = !DILocation(line: 138, column: 44, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !821, line: 134, column: 13)
!4210 = !DILocation(line: 0, scope: !4196, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 138, column: 15, scope: !4209)
!4212 = !DILocation(line: 29, column: 10, scope: !4196, inlinedAt: !4211)
!4213 = !DILocation(line: 139, column: 15, scope: !4209)
!4214 = !DILocation(line: 139, column: 32, scope: !4209)
!4215 = !DILocation(line: 140, column: 13, scope: !4209)
!4216 = !DILocation(line: 0, scope: !4175)
!4217 = !DILocation(line: 145, column: 1, scope: !4167)
