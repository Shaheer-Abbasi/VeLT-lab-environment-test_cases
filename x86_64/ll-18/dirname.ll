; ModuleID = 'src/dirname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1, !dbg !57
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !62
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !99
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !109
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !114
@main.dot = internal constant i8 46, align 1, !dbg !116
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !194
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !224
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !229
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !231
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !236
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !273
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !275
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !277
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !282
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !287
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !292
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !297
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !299
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !301
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !303
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !314
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !316
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !321
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !326
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !331
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !336
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !338
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !340
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !352
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !355
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !359
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !372
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !364
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !366
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !368
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !370
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !374
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !380
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !411
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !382
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !401
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !403
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !405
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !407
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !409
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !415
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !420
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !425
@.str.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !431
@.str.1.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !433
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !435
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !466
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !469
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !471
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !473
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !475
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !477
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !479
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !481
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !483
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !485
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.58, ptr @.str.1.59, ptr @.str.2.60, ptr @.str.3.61, ptr @.str.4.62, ptr @.str.5.63, ptr @.str.6.64, ptr @.str.7.65, ptr @.str.8.66, ptr @.str.9.67, ptr null], align 16, !dbg !487
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !512
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !526
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !564
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !571
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !528
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !573
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !516
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !533
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !535
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !537
@.str.13.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !539
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !541
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !579
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !582
@.str.2.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !584
@.str.3.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !586
@.str.4.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !588
@.str.5.79 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !590
@.str.6.80 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !595
@.str.7.81 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !600
@.str.8.82 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !602
@.str.9.83 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !607
@.str.10.84 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !609
@.str.11.85 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !614
@.str.12.86 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !619
@.str.13.87 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !621
@.str.14.88 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !626
@.str.15.89 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !631
@.str.16.90 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !636
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.95 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !641
@.str.18.96 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !643
@.str.19.97 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !645
@.str.20.98 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !647
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !649
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !651
@.str.23.99 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !653
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !658
@exit_failure = dso_local global i32 1, align 4, !dbg !666
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !672
@.str.1.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.2.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !677
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !679
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !682
@.str.1.130 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !697

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !775 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !779, metadata !DIExpression()), !dbg !780
  %2 = icmp eq i32 %0, 0, !dbg !781
  br i1 %2, label %8, label %3, !dbg !783

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !784, !tbaa !786
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !784
  %6 = load ptr, ptr @program_name, align 8, !dbg !784, !tbaa !786
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !784
  br label %35, !dbg !784

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !790
  %10 = load ptr, ptr @program_name, align 8, !dbg !790, !tbaa !786
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !790
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !792
  %13 = load ptr, ptr @stdout, align 8, !dbg !792, !tbaa !786
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !792
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !793
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !793
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !794
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !794
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !795
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !795
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !796
  %19 = load ptr, ptr @program_name, align 8, !dbg !796, !tbaa !786
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %18, ptr noundef %19, ptr noundef %19, ptr noundef %19) #40, !dbg !796
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !797, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata !816, metadata !810, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata ptr poison, metadata !809, metadata !DIExpression()), !dbg !814
  tail call void @emit_bug_reporting_address() #40, !dbg !817
  %21 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !818
  call void @llvm.dbg.value(metadata ptr %21, metadata !812, metadata !DIExpression()), !dbg !814
  %22 = icmp eq ptr %21, null, !dbg !819
  br i1 %22, label %30, label %23, !dbg !821

23:                                               ; preds = %8
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #41, !dbg !822
  %25 = icmp eq i32 %24, 0, !dbg !822
  br i1 %25, label %30, label %26, !dbg !823

26:                                               ; preds = %23
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #40, !dbg !824
  %28 = load ptr, ptr @stdout, align 8, !dbg !824, !tbaa !786
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !824
  br label %30, !dbg !826

30:                                               ; preds = %8, %23, %26
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !809, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !813, metadata !DIExpression()), !dbg !814
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !827
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #40, !dbg !827
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !828
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #40, !dbg !828
  br label %35

35:                                               ; preds = %30, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !829
  unreachable, !dbg !829
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !830 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !834 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !840 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !843 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !196 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !200, metadata !DIExpression()), !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !201, metadata !DIExpression()), !dbg !847
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !848, !tbaa !849
  %3 = icmp eq i32 %2, -1, !dbg !851
  br i1 %3, label %4, label %16, !dbg !852

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #40, !dbg !853
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !202, metadata !DIExpression()), !dbg !854
  %6 = icmp eq ptr %5, null, !dbg !855
  br i1 %6, label %14, label %7, !dbg !856

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !857, !tbaa !858
  %9 = icmp eq i8 %8, 0, !dbg !857
  br i1 %9, label %14, label %10, !dbg !859

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !860, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !866, metadata !DIExpression()), !dbg !867
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #41, !dbg !869
  %12 = icmp eq i32 %11, 0, !dbg !870
  %13 = zext i1 %12 to i32, !dbg !859
  br label %14, !dbg !859

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !871, !tbaa !849
  br label %16, !dbg !872

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !873
  %18 = icmp eq i32 %17, 0, !dbg !873
  br i1 %18, label %22, label %19, !dbg !875

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !876, !tbaa !786
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !876
  br label %124, !dbg !878

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !205, metadata !DIExpression()), !dbg !847
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #41, !dbg !879
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !206, metadata !DIExpression()), !dbg !847
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !881
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !207, metadata !DIExpression()), !dbg !847
  %26 = icmp eq ptr %25, null, !dbg !882
  br i1 %26, label %54, label %27, !dbg !883

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !884
  br i1 %28, label %54, label %29, !dbg !885

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !208, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata i64 0, metadata !212, metadata !DIExpression()), !dbg !886
  %30 = icmp ult ptr %24, %25, !dbg !887
  br i1 %30, label %31, label %54, !dbg !888

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !847
  %33 = load ptr, ptr %32, align 8, !tbaa !786
  br label %34, !dbg !888

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !208, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !212, metadata !DIExpression()), !dbg !886
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !889
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !208, metadata !DIExpression()), !dbg !886
  %38 = load i8, ptr %35, align 1, !dbg !889, !tbaa !858
  %39 = sext i8 %38 to i64, !dbg !889
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !889
  %41 = load i16, ptr %40, align 2, !dbg !889, !tbaa !890
  %42 = freeze i16 %41, !dbg !892
  %43 = lshr i16 %42, 13, !dbg !892
  %44 = and i16 %43, 1, !dbg !892
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !893
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !212, metadata !DIExpression()), !dbg !886
  %47 = icmp ult ptr %37, %25, !dbg !887
  %48 = icmp ult i64 %46, 2, !dbg !894
  %49 = select i1 %47, i1 %48, i1 false, !dbg !894
  br i1 %49, label %34, label %50, !dbg !888, !llvm.loop !895

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !897
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !899
  %53 = zext i1 %51 to i8, !dbg !899
  br label %54, !dbg !899

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !847
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !847
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !205, metadata !DIExpression()), !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !207, metadata !DIExpression()), !dbg !847
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #41, !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !213, metadata !DIExpression()), !dbg !847
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !901
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !214, metadata !DIExpression()), !dbg !847
  br label %59, !dbg !902

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !847
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !847
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !205, metadata !DIExpression()), !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !214, metadata !DIExpression()), !dbg !847
  %62 = load i8, ptr %60, align 1, !dbg !903, !tbaa !858
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !904

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !905
  %65 = load i8, ptr %64, align 1, !dbg !908, !tbaa !858
  %66 = icmp eq i8 %65, 45, !dbg !909
  %67 = select i1 %66, i8 0, i8 %61, !dbg !910
  br label %68, !dbg !910

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !847
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !205, metadata !DIExpression()), !dbg !847
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !911
  %71 = load ptr, ptr %70, align 8, !dbg !911, !tbaa !786
  %72 = sext i8 %62 to i64, !dbg !911
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !911
  %74 = load i16, ptr %73, align 2, !dbg !911, !tbaa !890
  %75 = and i16 %74, 8192, !dbg !911
  %76 = icmp eq i16 %75, 0, !dbg !911
  br i1 %76, label %92, label %77, !dbg !913

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !914
  br i1 %78, label %94, label %79, !dbg !917

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !918
  %81 = load i8, ptr %80, align 1, !dbg !918, !tbaa !858
  %82 = sext i8 %81 to i64, !dbg !918
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !918
  %84 = load i16, ptr %83, align 2, !dbg !918, !tbaa !890
  %85 = and i16 %84, 8192, !dbg !918
  %86 = icmp eq i16 %85, 0, !dbg !918
  br i1 %86, label %87, label %94, !dbg !919

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !920
  %89 = icmp ne i8 %88, 0, !dbg !920
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !922
  br i1 %91, label %92, label %94, !dbg !922

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !923
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !214, metadata !DIExpression()), !dbg !847
  br label %59, !dbg !902, !llvm.loop !924

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !926
  %96 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !786
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !926
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata !816, metadata !866, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !847
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #41, !dbg !947
  %99 = icmp eq i32 %98, 0, !dbg !947
  br i1 %99, label %103, label %100, !dbg !949

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #41, !dbg !950
  %102 = icmp eq i32 %101, 0, !dbg !950
  br i1 %102, label %103, label %106, !dbg !951

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !952
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !952
  br label %109, !dbg !954

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !955
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !955
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !786
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !957
  %112 = load ptr, ptr @stdout, align 8, !dbg !958, !tbaa !786
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %112), !dbg !958
  %114 = ptrtoint ptr %60 to i64, !dbg !959
  %115 = sub i64 %114, %95, !dbg !959
  %116 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !786
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !959
  %118 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !786
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !960
  %120 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !786
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %120), !dbg !961
  %122 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !786
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !962
  br label %124, !dbg !963

124:                                              ; preds = %109, %19
  ret void, !dbg !963
}

; Function Attrs: nounwind
declare !dbg !964 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !968 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !972 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !974 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !977 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !980 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !983 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !986 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !992 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !993 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !118 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !124, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !999
  %3 = load ptr, ptr %1, align 8, !dbg !1000, !tbaa !786
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1001
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1002
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1003
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1004
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1005
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !999
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !1007
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1008

9:                                                ; preds = %2, %9
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !999
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !127, metadata !DIExpression()), !dbg !1007
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1008, !llvm.loop !1009

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #44, !dbg !1011
  unreachable, !dbg !1011

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !786
  %14 = load ptr, ptr @Version, align 8, !dbg !1013, !tbaa !786
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1013
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #40, !dbg !1013
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #40, !dbg !1013
  tail call void @exit(i32 noundef 0) #42, !dbg !1013
  unreachable, !dbg !1013

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 1) #44, !dbg !1014
  unreachable, !dbg !1014

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ], !dbg !1015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !999
  %20 = load i32, ptr @optind, align 4, !dbg !1016, !tbaa !849
  %21 = icmp slt i32 %20, %0, !dbg !1018
  br i1 %21, label %22, label %24, !dbg !1019

22:                                               ; preds = %18
  %23 = trunc i32 %19 to i8
  br label %26, !dbg !1020

24:                                               ; preds = %18
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1021
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #40, !dbg !1021
  tail call void @usage(i32 noundef 1) #44, !dbg !1023
  unreachable, !dbg !1023

26:                                               ; preds = %47, %22
  %27 = phi i32 [ %20, %22 ], [ %49, %47 ]
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1024
  %28 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !786
  %29 = sext i32 %27 to i64, !dbg !1026
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1026
  %31 = load ptr, ptr %30, align 8, !dbg !1026, !tbaa !786
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !129, metadata !DIExpression()), !dbg !1024
  %32 = tail call i64 @dir_len(ptr noundef %31) #41, !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !133, metadata !DIExpression()), !dbg !1024
  %33 = tail call i64 @llvm.umax.i64(i64 %32, i64 1), !dbg !1028
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !133, metadata !DIExpression()), !dbg !1024
  %34 = icmp eq i64 %32, 0, !dbg !1029
  %35 = select i1 %34, ptr @main.dot, ptr %31, !dbg !1028
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !129, metadata !DIExpression()), !dbg !1024
  %36 = tail call i64 @fwrite_unlocked(ptr noundef %35, i64 noundef 1, i64 noundef %33, ptr noundef %28), !dbg !1025
  call void @llvm.dbg.value(metadata i32 %19, metadata !1031, metadata !DIExpression()), !dbg !1037
  %37 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !786
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 5, !dbg !1039
  %39 = load ptr, ptr %38, align 8, !dbg !1039, !tbaa !1040
  %40 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 6, !dbg !1039
  %41 = load ptr, ptr %40, align 8, !dbg !1039, !tbaa !1043
  %42 = icmp ult ptr %39, %41, !dbg !1039
  br i1 %42, label %45, label %43, !dbg !1039, !prof !1044

43:                                               ; preds = %26
  %44 = tail call i32 @__overflow(ptr noundef nonnull %37, i32 noundef %19) #40, !dbg !1039
  br label %47, !dbg !1039

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1039
  store ptr %46, ptr %38, align 8, !dbg !1039, !tbaa !1040
  store i8 %23, ptr %39, align 1, !dbg !1039, !tbaa !858
  br label %47, !dbg !1039

47:                                               ; preds = %43, %45
  %48 = load i32, ptr @optind, align 4, !dbg !1045, !tbaa !849
  %49 = add nsw i32 %48, 1, !dbg !1045
  store i32 %49, ptr @optind, align 4, !dbg !1045, !tbaa !849
  %50 = icmp slt i32 %49, %0, !dbg !1046
  br i1 %50, label %26, label %51, !dbg !1020, !llvm.loop !1047

51:                                               ; preds = %47
  ret i32 0, !dbg !1049
}

; Function Attrs: nounwind
declare !dbg !1050 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1053 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1054 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1057 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

declare !dbg !1063 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !1069
  store ptr %0, ptr @file_name, align 8, !dbg !1070, !tbaa !786
  ret void, !dbg !1071
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1072 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1076, metadata !DIExpression()), !dbg !1077
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1078, !tbaa !1079
  ret void, !dbg !1081
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1082 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1087, !tbaa !786
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1088
  %3 = icmp eq i32 %2, 0, !dbg !1089
  br i1 %3, label %22, label %4, !dbg !1090

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1091, !tbaa !1079, !range !1092, !noundef !816
  %6 = icmp eq i8 %5, 0, !dbg !1091
  br i1 %6, label %11, label %7, !dbg !1093

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1094
  %9 = load i32, ptr %8, align 4, !dbg !1094, !tbaa !849
  %10 = icmp eq i32 %9, 32, !dbg !1095
  br i1 %10, label %22, label %11, !dbg !1096

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1097
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1084, metadata !DIExpression()), !dbg !1098
  %13 = load ptr, ptr @file_name, align 8, !dbg !1099, !tbaa !786
  %14 = icmp eq ptr %13, null, !dbg !1099
  %15 = tail call ptr @__errno_location() #43, !dbg !1101
  %16 = load i32, ptr %15, align 4, !dbg !1101, !tbaa !849
  br i1 %14, label %19, label %17, !dbg !1102

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1103
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #40, !dbg !1103
  br label %20, !dbg !1103

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #40, !dbg !1104
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1105, !tbaa !849
  tail call void @_exit(i32 noundef %21) #42, !dbg !1106
  unreachable, !dbg !1106

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1107, !tbaa !786
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1109
  %25 = icmp eq i32 %24, 0, !dbg !1110
  br i1 %25, label %28, label %26, !dbg !1111

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1112, !tbaa !849
  tail call void @_exit(i32 noundef %27) #42, !dbg !1113
  unreachable, !dbg !1113

28:                                               ; preds = %22
  ret void, !dbg !1114
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1115 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1119 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @dir_len(ptr noundef %0) local_unnamed_addr #13 !dbg !1121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1125, metadata !DIExpression()), !dbg !1128
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1126, metadata !DIExpression()), !dbg !1128
  %2 = load i8, ptr %0, align 1, !dbg !1129, !tbaa !858
  %3 = icmp eq i8 %2, 47, !dbg !1129
  %4 = zext i1 %3 to i64
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1126, metadata !DIExpression()), !dbg !1128
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #41, !dbg !1130
  %6 = ptrtoint ptr %5 to i64, !dbg !1132
  %7 = ptrtoint ptr %0 to i64, !dbg !1132
  %8 = sub i64 %6, %7, !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1127, metadata !DIExpression()), !dbg !1128
  %9 = getelementptr i8, ptr %0, i64 -1, !dbg !1133
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1127, metadata !DIExpression()), !dbg !1128
  %10 = icmp ugt i64 %8, %4, !dbg !1134
  br i1 %10, label %11, label %19, !dbg !1136

11:                                               ; preds = %1, %16
  %12 = phi i64 [ %17, %16 ], [ %8, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1127, metadata !DIExpression()), !dbg !1128
  %13 = getelementptr i8, ptr %9, i64 %12, !dbg !1137
  %14 = load i8, ptr %13, align 1, !dbg !1137, !tbaa !858
  %15 = icmp eq i8 %14, 47, !dbg !1137
  br i1 %15, label %16, label %19, !dbg !1139

16:                                               ; preds = %11
  %17 = add i64 %12, -1, !dbg !1140
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1127, metadata !DIExpression()), !dbg !1128
  %18 = icmp ugt i64 %17, %4, !dbg !1134
  br i1 %18, label %11, label %19, !dbg !1136, !llvm.loop !1141

19:                                               ; preds = %16, %11, %1
  %20 = phi i64 [ %8, %1 ], [ %12, %11 ], [ %4, %16 ], !dbg !1143
  ret i64 %20, !dbg !1144
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mdir_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1145 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %0, metadata !1125, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, metadata !1126, metadata !DIExpression()), !dbg !1152
  %2 = load i8, ptr %0, align 1, !dbg !1154, !tbaa !858
  %3 = icmp eq i8 %2, 47, !dbg !1154
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1126, metadata !DIExpression()), !dbg !1152
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #41, !dbg !1155
  %6 = ptrtoint ptr %5 to i64, !dbg !1156
  %7 = ptrtoint ptr %0 to i64, !dbg !1156
  %8 = sub i64 %6, %7, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %8, metadata !1127, metadata !DIExpression()), !dbg !1152
  %9 = getelementptr i8, ptr %0, i64 -1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %8, metadata !1127, metadata !DIExpression()), !dbg !1152
  %10 = icmp ugt i64 %8, %4, !dbg !1158
  br i1 %10, label %11, label %19, !dbg !1159

11:                                               ; preds = %1, %16
  %12 = phi i64 [ %17, %16 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1127, metadata !DIExpression()), !dbg !1152
  %13 = getelementptr i8, ptr %9, i64 %12, !dbg !1160
  %14 = load i8, ptr %13, align 1, !dbg !1160, !tbaa !858
  %15 = icmp eq i8 %14, 47, !dbg !1160
  br i1 %15, label %16, label %19, !dbg !1161

16:                                               ; preds = %11
  %17 = add i64 %12, -1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %17, metadata !1127, metadata !DIExpression()), !dbg !1152
  %18 = icmp ugt i64 %17, %4, !dbg !1158
  br i1 %18, label %11, label %19, !dbg !1159, !llvm.loop !1163

19:                                               ; preds = %11, %16, %1
  %20 = phi i64 [ %8, %1 ], [ %4, %16 ], [ %12, %11 ], !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1148, metadata !DIExpression()), !dbg !1151
  %21 = icmp eq i64 %20, 0, !dbg !1166
  tail call void @llvm.dbg.value(metadata i1 %21, metadata !1149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1151
  %22 = zext i1 %21 to i64, !dbg !1167
  %23 = add i64 %20, 1, !dbg !1168
  %24 = add i64 %23, %22, !dbg !1169
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #45, !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1150, metadata !DIExpression()), !dbg !1151
  %26 = icmp eq ptr %25, null, !dbg !1171
  br i1 %26, label %32, label %27, !dbg !1173

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %25, metadata !1174, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr %0, metadata !1181, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %20, metadata !1182, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %25, ptr noundef nonnull align 1 %0, i64 noundef %20, i1 noundef false) #40, !dbg !1185
  br i1 %21, label %28, label %29, !dbg !1186

28:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1148, metadata !DIExpression()), !dbg !1151
  store i8 46, ptr %25, align 1, !dbg !1187, !tbaa !858
  br label %29, !dbg !1189

29:                                               ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ], !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1148, metadata !DIExpression()), !dbg !1151
  %31 = getelementptr inbounds i8, ptr %25, i64 %30, !dbg !1190
  store i8 0, ptr %31, align 1, !dbg !1191, !tbaa !858
  br label %32, !dbg !1192

32:                                               ; preds = %19, %29
  ret ptr %25, !dbg !1193
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1194 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1197 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1201, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1202, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1203, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1204, metadata !DIExpression()), !dbg !1205
  tail call fastcc void @flush_stdout(), !dbg !1206
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1207, !tbaa !786
  %6 = icmp eq ptr %5, null, !dbg !1207
  br i1 %6, label %8, label %7, !dbg !1209

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1210
  br label %12, !dbg !1210

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1211, !tbaa !786
  %10 = tail call ptr @getprogname() #41, !dbg !1211
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #40, !dbg !1211
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1213
  ret void, !dbg !1214
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1215 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1217, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 1, metadata !1219, metadata !DIExpression()), !dbg !1222
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1225
  %2 = icmp slt i32 %1, 0, !dbg !1226
  br i1 %2, label %6, label %3, !dbg !1227

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !786
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1228
  br label %6, !dbg !1228

6:                                                ; preds = %3, %0
  ret void, !dbg !1229
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1230 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1236
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1237
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1233, metadata !DIExpression()), !dbg !1237
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1234, metadata !DIExpression()), !dbg !1237
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1235, metadata !DIExpression()), !dbg !1237
  %6 = load ptr, ptr @stderr, align 8, !dbg !1238, !tbaa !786
  call void @llvm.dbg.value(metadata ptr %6, metadata !1239, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %2, metadata !1279, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %3, metadata !1280, metadata !DIExpression()), !dbg !1281
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1283
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1284, !tbaa !849
  %9 = add i32 %8, 1, !dbg !1284
  store i32 %9, ptr @error_message_count, align 4, !dbg !1284, !tbaa !849
  %10 = icmp eq i32 %1, 0, !dbg !1285
  br i1 %10, label %20, label %11, !dbg !1287

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1288, metadata !DIExpression(), metadata !1236, metadata ptr %5, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata i32 %1, metadata !1291, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1298
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %12, metadata !1292, metadata !DIExpression()), !dbg !1296
  %13 = icmp eq ptr %12, null, !dbg !1300
  br i1 %13, label %14, label %16, !dbg !1302

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #40, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %15, metadata !1292, metadata !DIExpression()), !dbg !1296
  br label %16, !dbg !1304

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1296
  call void @llvm.dbg.value(metadata ptr %17, metadata !1292, metadata !DIExpression()), !dbg !1296
  %18 = load ptr, ptr @stderr, align 8, !dbg !1305, !tbaa !786
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #40, !dbg !1305
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1306
  br label %20, !dbg !1307

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1308, !tbaa !786
  call void @llvm.dbg.value(metadata i32 10, metadata !1309, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata ptr %21, metadata !1314, metadata !DIExpression()), !dbg !1315
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1317
  %23 = load ptr, ptr %22, align 8, !dbg !1317, !tbaa !1040
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1317
  %25 = load ptr, ptr %24, align 8, !dbg !1317, !tbaa !1043
  %26 = icmp ult ptr %23, %25, !dbg !1317
  br i1 %26, label %29, label %27, !dbg !1317, !prof !1044

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1317
  br label %31, !dbg !1317

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1317
  store ptr %30, ptr %22, align 8, !dbg !1317, !tbaa !1040
  store i8 10, ptr %23, align 1, !dbg !1317, !tbaa !858
  br label %31, !dbg !1317

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1318, !tbaa !786
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1318
  %34 = icmp eq i32 %0, 0, !dbg !1319
  br i1 %34, label %36, label %35, !dbg !1321

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1322
  unreachable, !dbg !1322

36:                                               ; preds = %31
  ret void, !dbg !1323
}

declare !dbg !1324 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind
declare !dbg !1327 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1330 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1333 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1337 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1344, metadata !DIExpression(), metadata !1350, metadata ptr %4, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1342, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1343, metadata !DIExpression()), !dbg !1351
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1352
  call void @llvm.va_start(ptr nonnull %4), !dbg !1353
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !1354
  call void @llvm.va_end(ptr nonnull %4), !dbg !1355
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1356
  ret void, !dbg !1356
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !384 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !395, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !396, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !398, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !400, metadata !DIExpression()), !dbg !1357
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1358, !tbaa !849
  %8 = icmp eq i32 %7, 0, !dbg !1358
  br i1 %8, label %23, label %9, !dbg !1360

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1361, !tbaa !849
  %11 = icmp eq i32 %10, %3, !dbg !1364
  br i1 %11, label %12, label %22, !dbg !1365

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1366, !tbaa !786
  %14 = icmp eq ptr %13, %2, !dbg !1367
  br i1 %14, label %36, label %15, !dbg !1368

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1369
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1370
  br i1 %18, label %19, label %22, !dbg !1370

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1371
  %21 = icmp eq i32 %20, 0, !dbg !1372
  br i1 %21, label %36, label %22, !dbg !1373

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1374, !tbaa !786
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1375, !tbaa !849
  br label %23, !dbg !1376

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1377
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1378, !tbaa !786
  %25 = icmp eq ptr %24, null, !dbg !1378
  br i1 %25, label %27, label %26, !dbg !1380

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1381
  br label %31, !dbg !1381

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1382, !tbaa !786
  %29 = tail call ptr @getprogname() #41, !dbg !1382
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #40, !dbg !1382
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1384, !tbaa !786
  %33 = icmp eq ptr %2, null, !dbg !1384
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1384
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1384
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1385
  br label %36, !dbg !1386

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1386
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1387 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1396, metadata !DIExpression(), metadata !1397, metadata ptr %6, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1391, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1392, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1393, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1394, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1399
  call void @llvm.va_start(ptr nonnull %6), !dbg !1400
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !1401
  call void @llvm.va_end(ptr nonnull %6), !dbg !1402
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1403
  ret void, !dbg !1403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1404 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1407, !tbaa !786
  ret ptr %1, !dbg !1408
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1409 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !1414
  %3 = icmp eq ptr %2, null, !dbg !1416
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1416
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !1414
  %6 = ptrtoint ptr %5 to i64, !dbg !1417
  %7 = ptrtoint ptr %0 to i64, !dbg !1417
  %8 = sub i64 %6, %7, !dbg !1417
  %9 = icmp sgt i64 %8, 6, !dbg !1419
  br i1 %9, label %10, label %19, !dbg !1420

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %11, metadata !1422, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr @.str.54, metadata !1427, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i64 7, metadata !1428, metadata !DIExpression()), !dbg !1429
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.54, i64 7), !dbg !1431
  %13 = icmp eq i32 %12, 0, !dbg !1432
  br i1 %13, label %14, label %19, !dbg !1433

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1411, metadata !DIExpression()), !dbg !1414
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.55, i64 noundef 3) #41, !dbg !1434
  %16 = icmp eq i32 %15, 0, !dbg !1437
  %17 = select i1 %16, i64 3, i64 0, !dbg !1438
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1438
  br label %19, !dbg !1438

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1414
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1413, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1411, metadata !DIExpression()), !dbg !1414
  store ptr %20, ptr @program_name, align 8, !dbg !1439, !tbaa !786
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1440, !tbaa !786
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1441, !tbaa !786
  ret void, !dbg !1442
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1443 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !437 {
  %3 = alloca i32, align 4, !DIAssignID !1444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !447, metadata !DIExpression(), metadata !1444, metadata ptr %3, metadata !DIExpression()), !dbg !1445
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1446
  call void @llvm.dbg.assign(metadata i1 undef, metadata !452, metadata !DIExpression(), metadata !1446, metadata ptr %4, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !444, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !445, metadata !DIExpression()), !dbg !1445
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !446, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq ptr %5, %0, !dbg !1448
  br i1 %6, label %7, label %14, !dbg !1450

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1451
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %4, metadata !1453, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 8, metadata !1468, metadata !DIExpression()), !dbg !1469
  store i64 0, ptr %4, align 8, !dbg !1471
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !1472
  %9 = icmp eq i64 %8, 2, !dbg !1474
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1475
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1476
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1445
  ret ptr %15, !dbg !1476
}

; Function Attrs: nounwind
declare !dbg !1477 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1491
  %2 = tail call ptr @__errno_location() #43, !dbg !1492
  %3 = load i32, ptr %2, align 4, !dbg !1492, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1489, metadata !DIExpression()), !dbg !1491
  %4 = icmp eq ptr %0, null, !dbg !1493
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1493
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !1494
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1490, metadata !DIExpression()), !dbg !1491
  store i32 %3, ptr %2, align 4, !dbg !1495, !tbaa !849
  ret ptr %6, !dbg !1496
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1503, metadata !DIExpression()), !dbg !1504
  %2 = icmp eq ptr %0, null, !dbg !1505
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1505
  %4 = load i32, ptr %3, align 8, !dbg !1506, !tbaa !1507
  ret i32 %4, !dbg !1509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1510 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1514, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1515, metadata !DIExpression()), !dbg !1516
  %3 = icmp eq ptr %0, null, !dbg !1517
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1517
  store i32 %1, ptr %4, align 8, !dbg !1518, !tbaa !1507
  ret void, !dbg !1519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1520 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1526, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1532
  %4 = icmp eq ptr %0, null, !dbg !1533
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1533
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1534
  %7 = lshr i8 %1, 5, !dbg !1535
  %8 = zext nneg i8 %7 to i64, !dbg !1535
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1528, metadata !DIExpression()), !dbg !1532
  %10 = and i8 %1, 31, !dbg !1537
  %11 = zext nneg i8 %10 to i32, !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1530, metadata !DIExpression()), !dbg !1532
  %12 = load i32, ptr %9, align 4, !dbg !1538, !tbaa !849
  %13 = lshr i32 %12, %11, !dbg !1539
  %14 = and i32 %13, 1, !dbg !1540
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1531, metadata !DIExpression()), !dbg !1532
  %15 = xor i32 %13, %2, !dbg !1541
  %16 = and i32 %15, 1, !dbg !1541
  %17 = shl nuw i32 %16, %11, !dbg !1542
  %18 = xor i32 %17, %12, !dbg !1543
  store i32 %18, ptr %9, align 4, !dbg !1543, !tbaa !849
  ret i32 %14, !dbg !1544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1545 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1552
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1552
  %3 = icmp eq ptr %0, null, !dbg !1553
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !1552
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1556
  %6 = load i32, ptr %5, align 4, !dbg !1556, !tbaa !1557
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %1, ptr %5, align 4, !dbg !1558, !tbaa !1557
  ret i32 %6, !dbg !1559
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1560 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1564, metadata !DIExpression()), !dbg !1567
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !1567
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  %4 = icmp eq ptr %0, null, !dbg !1568
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1570
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !1567
  store i32 10, ptr %5, align 8, !dbg !1571, !tbaa !1507
  %6 = icmp ne ptr %1, null, !dbg !1572
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1574
  br i1 %8, label %10, label %9, !dbg !1574

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !1575
  unreachable, !dbg !1575

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1576
  store ptr %1, ptr %11, align 8, !dbg !1577, !tbaa !1578
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1579
  store ptr %2, ptr %12, align 8, !dbg !1580, !tbaa !1581
  ret void, !dbg !1582
}

; Function Attrs: noreturn nounwind
declare !dbg !1583 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1584 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1588, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1589, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1591, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1596
  %6 = icmp eq ptr %4, null, !dbg !1597
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1597
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1593, metadata !DIExpression()), !dbg !1596
  %8 = tail call ptr @__errno_location() #43, !dbg !1598
  %9 = load i32, ptr %8, align 4, !dbg !1598, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1594, metadata !DIExpression()), !dbg !1596
  %10 = load i32, ptr %7, align 8, !dbg !1599, !tbaa !1507
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1600
  %12 = load i32, ptr %11, align 4, !dbg !1600, !tbaa !1557
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1601
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1602
  %15 = load ptr, ptr %14, align 8, !dbg !1602, !tbaa !1578
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1603
  %17 = load ptr, ptr %16, align 8, !dbg !1603, !tbaa !1581
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1604
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1595, metadata !DIExpression()), !dbg !1596
  store i32 %9, ptr %8, align 4, !dbg !1605, !tbaa !849
  ret i64 %18, !dbg !1606
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1607 {
  %10 = alloca i32, align 4, !DIAssignID !1675
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1676
  %12 = alloca i32, align 4, !DIAssignID !1677
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1678
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1653, metadata !DIExpression(), metadata !1679, metadata ptr %14, metadata !DIExpression()), !dbg !1680
  %15 = alloca i32, align 4, !DIAssignID !1681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1656, metadata !DIExpression(), metadata !1681, metadata ptr %15, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1613, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1615, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1616, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1617, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1618, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1619, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1620, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1621, metadata !DIExpression()), !dbg !1683
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !1684
  %17 = icmp eq i64 %16, 1, !dbg !1685
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1625, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1683
  %18 = trunc i32 %5 to i8, !dbg !1686
  %19 = lshr i8 %18, 1, !dbg !1686
  %20 = and i8 %19, 1, !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1683
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1687

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1688
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1689
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1690
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1691
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1683
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1692
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1693
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1630, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1627, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1626, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1625, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1616, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1621, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1620, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1617, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.label(metadata !1631), !dbg !1694
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1683
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
  ], !dbg !1695

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1683
  br label %114, !dbg !1696

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1683
  %43 = and i8 %37, 1, !dbg !1697
  %44 = icmp eq i8 %43, 0, !dbg !1697
  br i1 %44, label %45, label %114, !dbg !1696

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1699
  br i1 %46, label %114, label %47, !dbg !1702

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1699, !tbaa !858
  br label %114, !dbg !1699

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !1677, metadata ptr %12, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !551, metadata !DIExpression(), metadata !1678, metadata ptr %13, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr @.str.11.68, metadata !547, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %29, metadata !548, metadata !DIExpression()), !dbg !1703
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.11.68, i32 noundef 5) #40, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %49, metadata !549, metadata !DIExpression()), !dbg !1703
  %50 = icmp eq ptr %49, @.str.11.68, !dbg !1708
  br i1 %50, label %51, label %60, !dbg !1710

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %13, metadata !1713, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %13, metadata !1721, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i64 0, ptr %13, align 8, !dbg !1728
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !1729
  %53 = icmp eq i64 %52, 3, !dbg !1731
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1732
  %57 = icmp eq i32 %29, 9, !dbg !1732
  %58 = select i1 %57, ptr @.str.10.70, ptr @.str.12.71, !dbg !1732
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !1733
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1620, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !1675, metadata ptr %10, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !551, metadata !DIExpression(), metadata !1676, metadata ptr %11, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr @.str.12.71, metadata !547, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %29, metadata !548, metadata !DIExpression()), !dbg !1734
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.12.71, i32 noundef 5) #40, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %62, metadata !549, metadata !DIExpression()), !dbg !1734
  %63 = icmp eq ptr %62, @.str.12.71, !dbg !1737
  br i1 %63, label %64, label %73, !dbg !1738

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !1739
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %11, metadata !1713, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %11, metadata !1721, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1743
  store i64 0, ptr %11, align 8, !dbg !1745
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !1746
  %66 = icmp eq i64 %65, 3, !dbg !1747
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1748
  %70 = icmp eq i32 %29, 9, !dbg !1748
  %71 = select i1 %70, ptr @.str.10.70, ptr @.str.12.71, !dbg !1748
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1748
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !1749
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1621, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1620, metadata !DIExpression()), !dbg !1683
  %76 = and i8 %37, 1, !dbg !1750
  %77 = icmp eq i8 %76, 0, !dbg !1750
  br i1 %77, label %78, label %93, !dbg !1751

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1633, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1683
  %79 = load i8, ptr %74, align 1, !dbg !1753, !tbaa !858
  %80 = icmp eq i8 %79, 0, !dbg !1755
  br i1 %80, label %93, label %81, !dbg !1755

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1633, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1623, metadata !DIExpression()), !dbg !1683
  %85 = icmp ult i64 %84, %40, !dbg !1756
  br i1 %85, label %86, label %88, !dbg !1759

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1756
  store i8 %82, ptr %87, align 1, !dbg !1756, !tbaa !858
  br label %88, !dbg !1756

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1623, metadata !DIExpression()), !dbg !1683
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1633, metadata !DIExpression()), !dbg !1752
  %91 = load i8, ptr %90, align 1, !dbg !1753, !tbaa !858
  %92 = icmp eq i8 %91, 0, !dbg !1755
  br i1 %92, label %93, label %81, !dbg !1755, !llvm.loop !1761

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1625, metadata !DIExpression()), !dbg !1683
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1626, metadata !DIExpression()), !dbg !1683
  br label %114, !dbg !1765

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1683
  br label %98, !dbg !1766

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1627, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1683
  br label %98, !dbg !1767

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1691
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1627, metadata !DIExpression()), !dbg !1683
  %101 = and i8 %100, 1, !dbg !1768
  %102 = icmp eq i8 %101, 0, !dbg !1768
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1770
  br label %104, !dbg !1770

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1683
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1627, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1617, metadata !DIExpression()), !dbg !1683
  %107 = and i8 %106, 1, !dbg !1771
  %108 = icmp eq i8 %107, 0, !dbg !1771
  br i1 %108, label %109, label %114, !dbg !1773

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1774
  br i1 %110, label %114, label %111, !dbg !1777

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1774, !tbaa !858
  br label %114, !dbg !1774

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1683
  br label %114, !dbg !1778

113:                                              ; preds = %28
  call void @abort() #42, !dbg !1779
  unreachable, !dbg !1779

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1763
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.70, %45 ], [ @.str.10.70, %47 ], [ @.str.10.70, %42 ], [ %34, %28 ], [ @.str.12.71, %109 ], [ @.str.12.71, %111 ], [ @.str.12.71, %104 ], [ @.str.10.70, %41 ], !dbg !1683
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1683
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1683
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1628, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1627, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1626, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1625, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1621, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1620, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1617, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1780
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
  br label %138, !dbg !1781

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1763
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1688
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1692
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1693
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1782
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1783
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1630, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1616, metadata !DIExpression()), !dbg !1683
  %147 = icmp eq i64 %139, -1, !dbg !1784
  br i1 %147, label %148, label %152, !dbg !1785

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1786
  %150 = load i8, ptr %149, align 1, !dbg !1786, !tbaa !858
  %151 = icmp eq i8 %150, 0, !dbg !1787
  br i1 %151, label %612, label %154, !dbg !1788

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1789
  br i1 %153, label %612, label %154, !dbg !1788

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1790
  br i1 %128, label %155, label %170, !dbg !1791

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1793
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1794
  br i1 %157, label %158, label %160, !dbg !1794

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1616, metadata !DIExpression()), !dbg !1683
  br label %160, !dbg !1796

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1616, metadata !DIExpression()), !dbg !1683
  %162 = icmp ugt i64 %156, %161, !dbg !1797
  br i1 %162, label %170, label %163, !dbg !1798

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %164, metadata !1800, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %119, metadata !1803, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %120, metadata !1804, metadata !DIExpression()), !dbg !1805
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1807
  %166 = icmp ne i32 %165, 0, !dbg !1808
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1809
  %168 = xor i1 %166, true, !dbg !1809
  %169 = zext i1 %168 to i8, !dbg !1809
  br i1 %167, label %170, label %666, !dbg !1809

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1790
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1616, metadata !DIExpression()), !dbg !1683
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1810
  %175 = load i8, ptr %174, align 1, !dbg !1810, !tbaa !858
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1645, metadata !DIExpression()), !dbg !1790
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
  ], !dbg !1811

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1812

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1813

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1790
  %179 = and i8 %144, 1, !dbg !1817
  %180 = icmp eq i8 %179, 0, !dbg !1817
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1817
  br i1 %181, label %182, label %198, !dbg !1817

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1819
  br i1 %183, label %184, label %186, !dbg !1823

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1819
  store i8 39, ptr %185, align 1, !dbg !1819, !tbaa !858
  br label %186, !dbg !1819

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1623, metadata !DIExpression()), !dbg !1683
  %188 = icmp ult i64 %187, %146, !dbg !1824
  br i1 %188, label %189, label %191, !dbg !1827

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1824
  store i8 36, ptr %190, align 1, !dbg !1824, !tbaa !858
  br label %191, !dbg !1824

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1623, metadata !DIExpression()), !dbg !1683
  %193 = icmp ult i64 %192, %146, !dbg !1828
  br i1 %193, label %194, label %196, !dbg !1831

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1828
  store i8 39, ptr %195, align 1, !dbg !1828, !tbaa !858
  br label %196, !dbg !1828

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %198, !dbg !1832

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1683
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1623, metadata !DIExpression()), !dbg !1683
  %201 = icmp ult i64 %199, %146, !dbg !1833
  br i1 %201, label %202, label %204, !dbg !1836

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1833
  store i8 92, ptr %203, align 1, !dbg !1833, !tbaa !858
  br label %204, !dbg !1833

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1836
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1623, metadata !DIExpression()), !dbg !1683
  br i1 %125, label %206, label %476, !dbg !1837

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1839
  %208 = icmp ult i64 %207, %171, !dbg !1840
  br i1 %208, label %209, label %465, !dbg !1841

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1842
  %211 = load i8, ptr %210, align 1, !dbg !1842, !tbaa !858
  %212 = add i8 %211, -48, !dbg !1843
  %213 = icmp ult i8 %212, 10, !dbg !1843
  br i1 %213, label %214, label %465, !dbg !1843

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1844
  br i1 %215, label %216, label %218, !dbg !1848

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1844
  store i8 48, ptr %217, align 1, !dbg !1844, !tbaa !858
  br label %218, !dbg !1844

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1623, metadata !DIExpression()), !dbg !1683
  %220 = icmp ult i64 %219, %146, !dbg !1849
  br i1 %220, label %221, label %223, !dbg !1852

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1849
  store i8 48, ptr %222, align 1, !dbg !1849, !tbaa !858
  br label %223, !dbg !1849

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1623, metadata !DIExpression()), !dbg !1683
  br label %465, !dbg !1853

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1854

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1855

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1856

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1858

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1860
  %231 = icmp ult i64 %230, %171, !dbg !1861
  br i1 %231, label %232, label %465, !dbg !1862

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1863
  %234 = load i8, ptr %233, align 1, !dbg !1863, !tbaa !858
  %235 = icmp eq i8 %234, 63, !dbg !1864
  br i1 %235, label %236, label %465, !dbg !1865

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1866
  %238 = load i8, ptr %237, align 1, !dbg !1866, !tbaa !858
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
  ], !dbg !1867

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1868

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1638, metadata !DIExpression()), !dbg !1780
  %241 = icmp ult i64 %140, %146, !dbg !1870
  br i1 %241, label %242, label %244, !dbg !1873

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1870
  store i8 63, ptr %243, align 1, !dbg !1870, !tbaa !858
  br label %244, !dbg !1870

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1623, metadata !DIExpression()), !dbg !1683
  %246 = icmp ult i64 %245, %146, !dbg !1874
  br i1 %246, label %247, label %249, !dbg !1877

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1874
  store i8 34, ptr %248, align 1, !dbg !1874, !tbaa !858
  br label %249, !dbg !1874

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1623, metadata !DIExpression()), !dbg !1683
  %251 = icmp ult i64 %250, %146, !dbg !1878
  br i1 %251, label %252, label %254, !dbg !1881

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1878
  store i8 34, ptr %253, align 1, !dbg !1878, !tbaa !858
  br label %254, !dbg !1878

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1881
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1623, metadata !DIExpression()), !dbg !1683
  %256 = icmp ult i64 %255, %146, !dbg !1882
  br i1 %256, label %257, label %259, !dbg !1885

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1882
  store i8 63, ptr %258, align 1, !dbg !1882, !tbaa !858
  br label %259, !dbg !1882

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1623, metadata !DIExpression()), !dbg !1683
  br label %465, !dbg !1886

261:                                              ; preds = %170
  br label %272, !dbg !1887

262:                                              ; preds = %170
  br label %272, !dbg !1888

263:                                              ; preds = %170
  br label %270, !dbg !1889

264:                                              ; preds = %170
  br label %270, !dbg !1890

265:                                              ; preds = %170
  br label %272, !dbg !1891

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1892

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1893

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1896

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1898

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1899
  call void @llvm.dbg.label(metadata !1646), !dbg !1900
  br i1 %133, label %272, label %655, !dbg !1901

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1899
  call void @llvm.dbg.label(metadata !1649), !dbg !1903
  br i1 %124, label %520, label %476, !dbg !1904

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1905

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1906, !tbaa !858
  %277 = icmp eq i8 %276, 0, !dbg !1908
  br i1 %277, label %278, label %465, !dbg !1909

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1910
  br i1 %279, label %280, label %465, !dbg !1912

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1790
  br label %281, !dbg !1913

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1644, metadata !DIExpression()), !dbg !1790
  br i1 %133, label %465, label %655, !dbg !1914

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1790
  br i1 %132, label %284, label %465, !dbg !1916

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1917

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1920
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1922
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1922
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1624, metadata !DIExpression()), !dbg !1683
  %291 = icmp ult i64 %140, %290, !dbg !1923
  br i1 %291, label %292, label %294, !dbg !1926

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1923
  store i8 39, ptr %293, align 1, !dbg !1923, !tbaa !858
  br label %294, !dbg !1923

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1926
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1623, metadata !DIExpression()), !dbg !1683
  %296 = icmp ult i64 %295, %290, !dbg !1927
  br i1 %296, label %297, label %299, !dbg !1930

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1927
  store i8 92, ptr %298, align 1, !dbg !1927, !tbaa !858
  br label %299, !dbg !1927

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1623, metadata !DIExpression()), !dbg !1683
  %301 = icmp ult i64 %300, %290, !dbg !1931
  br i1 %301, label %302, label %304, !dbg !1934

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1931
  store i8 39, ptr %303, align 1, !dbg !1931, !tbaa !858
  br label %304, !dbg !1931

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %465, !dbg !1935

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1936

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1650, metadata !DIExpression()), !dbg !1937
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !1938
  %309 = load ptr, ptr %308, align 8, !dbg !1938, !tbaa !786
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1938
  %312 = load i16, ptr %311, align 2, !dbg !1938, !tbaa !890
  %313 = and i16 %312, 16384, !dbg !1940
  %314 = icmp ne i16 %313, 0, !dbg !1940
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1652, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1937
  br label %355, !dbg !1941

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %14, metadata !1713, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata ptr %14, metadata !1721, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1945
  store i64 0, ptr %14, align 8, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1652, metadata !DIExpression()), !dbg !1937
  %316 = icmp eq i64 %171, -1, !dbg !1948
  br i1 %316, label %317, label %319, !dbg !1950

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1616, metadata !DIExpression()), !dbg !1683
  br label %319, !dbg !1952

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1616, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !1953
  %321 = sub i64 %320, %145, !dbg !1954
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1660, metadata !DIExpression()), !dbg !1682
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1956

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1937
  %324 = icmp ult i64 %145, %320, !dbg !1957
  br i1 %324, label %326, label %351, !dbg !1959

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1652, metadata !DIExpression()), !dbg !1937
  br label %351, !dbg !1960

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1650, metadata !DIExpression()), !dbg !1937
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1962
  %330 = load i8, ptr %329, align 1, !dbg !1962, !tbaa !858
  %331 = icmp eq i8 %330, 0, !dbg !1959
  br i1 %331, label %351, label %332, !dbg !1963

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1650, metadata !DIExpression()), !dbg !1937
  %334 = add i64 %333, %145, !dbg !1965
  %335 = icmp eq i64 %333, %321, !dbg !1957
  br i1 %335, label %351, label %326, !dbg !1959, !llvm.loop !1966

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1661, metadata !DIExpression()), !dbg !1967
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1968
  %339 = and i1 %338, %132, !dbg !1968
  br i1 %339, label %340, label %347, !dbg !1968

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1661, metadata !DIExpression()), !dbg !1967
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1969
  %343 = load i8, ptr %342, align 1, !dbg !1969, !tbaa !858
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1971

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1972
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1661, metadata !DIExpression()), !dbg !1967
  %346 = icmp eq i64 %345, %322, !dbg !1973
  br i1 %346, label %347, label %340, !dbg !1974, !llvm.loop !1975

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1977, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %348, metadata !1979, metadata !DIExpression()), !dbg !1987
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !1989
  %350 = icmp ne i32 %349, 0, !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1650, metadata !DIExpression()), !dbg !1937
  br label %351, !dbg !1991

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1650, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !1993
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !1993
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1790
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1994
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1650, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1616, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1790
  %359 = icmp ult i64 %357, 2, !dbg !1995
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1996
  br i1 %361, label %461, label %362, !dbg !1996

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1997
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1669, metadata !DIExpression()), !dbg !1998
  br label %364, !dbg !1999

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1683
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1782
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1780
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1790
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2000
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1623, metadata !DIExpression()), !dbg !1683
  br i1 %360, label %417, label %371, !dbg !2001

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2006

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1790
  %373 = and i8 %366, 1, !dbg !2009
  %374 = icmp eq i8 %373, 0, !dbg !2009
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2009
  br i1 %375, label %376, label %392, !dbg !2009

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2011
  br i1 %377, label %378, label %380, !dbg !2015

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2011
  store i8 39, ptr %379, align 1, !dbg !2011, !tbaa !858
  br label %380, !dbg !2011

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1623, metadata !DIExpression()), !dbg !1683
  %382 = icmp ult i64 %381, %146, !dbg !2016
  br i1 %382, label %383, label %385, !dbg !2019

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2016
  store i8 36, ptr %384, align 1, !dbg !2016, !tbaa !858
  br label %385, !dbg !2016

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1623, metadata !DIExpression()), !dbg !1683
  %387 = icmp ult i64 %386, %146, !dbg !2020
  br i1 %387, label %388, label %390, !dbg !2023

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2020
  store i8 39, ptr %389, align 1, !dbg !2020, !tbaa !858
  br label %390, !dbg !2020

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %392, !dbg !2024

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1683
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1623, metadata !DIExpression()), !dbg !1683
  %395 = icmp ult i64 %393, %146, !dbg !2025
  br i1 %395, label %396, label %398, !dbg !2028

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2025
  store i8 92, ptr %397, align 1, !dbg !2025, !tbaa !858
  br label %398, !dbg !2025

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1623, metadata !DIExpression()), !dbg !1683
  %400 = icmp ult i64 %399, %146, !dbg !2029
  br i1 %400, label %401, label %405, !dbg !2032

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2029
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2029
  store i8 %403, ptr %404, align 1, !dbg !2029, !tbaa !858
  br label %405, !dbg !2029

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1623, metadata !DIExpression()), !dbg !1683
  %407 = icmp ult i64 %406, %146, !dbg !2033
  br i1 %407, label %408, label %413, !dbg !2036

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2033
  %411 = or disjoint i8 %410, 48, !dbg !2033
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2033
  store i8 %411, ptr %412, align 1, !dbg !2033, !tbaa !858
  br label %413, !dbg !2033

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1623, metadata !DIExpression()), !dbg !1683
  %415 = and i8 %370, 7, !dbg !2037
  %416 = or disjoint i8 %415, 48, !dbg !2038
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1645, metadata !DIExpression()), !dbg !1790
  br label %426, !dbg !2039

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2040
  %419 = icmp eq i8 %418, 0, !dbg !2040
  br i1 %419, label %426, label %420, !dbg !2042

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2043
  br i1 %421, label %422, label %424, !dbg !2047

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2043
  store i8 92, ptr %423, align 1, !dbg !2043, !tbaa !858
  br label %424, !dbg !2043

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1790
  br label %426, !dbg !2048

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1683
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1782
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1790
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1790
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1623, metadata !DIExpression()), !dbg !1683
  %432 = add i64 %367, 1, !dbg !2049
  %433 = icmp ugt i64 %363, %432, !dbg !2051
  br i1 %433, label %434, label %463, !dbg !2052

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2053
  %436 = icmp ne i8 %435, 0, !dbg !2053
  %437 = and i8 %430, 1, !dbg !2053
  %438 = icmp eq i8 %437, 0, !dbg !2053
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2053
  br i1 %439, label %440, label %451, !dbg !2053

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2056
  br i1 %441, label %442, label %444, !dbg !2060

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2056
  store i8 39, ptr %443, align 1, !dbg !2056, !tbaa !858
  br label %444, !dbg !2056

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1623, metadata !DIExpression()), !dbg !1683
  %446 = icmp ult i64 %445, %146, !dbg !2061
  br i1 %446, label %447, label %449, !dbg !2064

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2061
  store i8 39, ptr %448, align 1, !dbg !2061, !tbaa !858
  br label %449, !dbg !2061

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %451, !dbg !2065

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2066
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1623, metadata !DIExpression()), !dbg !1683
  %454 = icmp ult i64 %452, %146, !dbg !2067
  br i1 %454, label %455, label %457, !dbg !2070

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2067
  store i8 %431, ptr %456, align 1, !dbg !2067, !tbaa !858
  br label %457, !dbg !2067

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1638, metadata !DIExpression()), !dbg !1780
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2071
  %460 = load i8, ptr %459, align 1, !dbg !2071, !tbaa !858
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1645, metadata !DIExpression()), !dbg !1790
  br label %364, !dbg !2072, !llvm.loop !2073

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1616, metadata !DIExpression()), !dbg !1683
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1616, metadata !DIExpression()), !dbg !1683
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2076
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1683
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1688
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1683
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1683
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1780
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1790
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1790
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1790
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1640, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1616, metadata !DIExpression()), !dbg !1683
  br i1 %126, label %487, label %476, !dbg !2077

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
  br i1 %137, label %488, label %509, !dbg !2079

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2080

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
  %499 = lshr i8 %490, 5, !dbg !2081
  %500 = zext nneg i8 %499 to i64, !dbg !2081
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2082
  %502 = load i32, ptr %501, align 4, !dbg !2082, !tbaa !849
  %503 = and i8 %490, 31, !dbg !2083
  %504 = zext nneg i8 %503 to i32, !dbg !2083
  %505 = shl nuw i32 1, %504, !dbg !2084
  %506 = and i32 %502, %505, !dbg !2084
  %507 = icmp eq i32 %506, 0, !dbg !2084
  %508 = and i1 %172, %507, !dbg !2085
  br i1 %508, label %558, label %520, !dbg !2085

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
  br i1 %172, label %558, label %520, !dbg !2086

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2076
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1683
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1688
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1692
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1782
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2087
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1790
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1790
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1616, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.label(metadata !1672), !dbg !2088
  br i1 %131, label %530, label %659, !dbg !2089

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1790
  %531 = and i8 %525, 1, !dbg !2091
  %532 = icmp eq i8 %531, 0, !dbg !2091
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2091
  br i1 %533, label %534, label %550, !dbg !2091

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2093
  br i1 %535, label %536, label %538, !dbg !2097

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2093
  store i8 39, ptr %537, align 1, !dbg !2093, !tbaa !858
  br label %538, !dbg !2093

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1623, metadata !DIExpression()), !dbg !1683
  %540 = icmp ult i64 %539, %529, !dbg !2098
  br i1 %540, label %541, label %543, !dbg !2101

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2098
  store i8 36, ptr %542, align 1, !dbg !2098, !tbaa !858
  br label %543, !dbg !2098

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1623, metadata !DIExpression()), !dbg !1683
  %545 = icmp ult i64 %544, %529, !dbg !2102
  br i1 %545, label %546, label %548, !dbg !2105

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2102
  store i8 39, ptr %547, align 1, !dbg !2102, !tbaa !858
  br label %548, !dbg !2102

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %550, !dbg !2106

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1790
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1623, metadata !DIExpression()), !dbg !1683
  %553 = icmp ult i64 %551, %529, !dbg !2107
  br i1 %553, label %554, label %556, !dbg !2110

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2107
  store i8 92, ptr %555, align 1, !dbg !2107, !tbaa !858
  br label %556, !dbg !2107

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1616, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.label(metadata !1673), !dbg !2111
  br label %585, !dbg !2112

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2076
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1683
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1688
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1692
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1782
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2087
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1790
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1790
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2115
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1645, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1644, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1643, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1616, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.label(metadata !1673), !dbg !2111
  %569 = and i8 %563, 1, !dbg !2112
  %570 = icmp ne i8 %569, 0, !dbg !2112
  %571 = and i8 %565, 1, !dbg !2112
  %572 = icmp eq i8 %571, 0, !dbg !2112
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2112
  br i1 %573, label %574, label %585, !dbg !2112

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2116
  br i1 %575, label %576, label %578, !dbg !2120

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2116
  store i8 39, ptr %577, align 1, !dbg !2116, !tbaa !858
  br label %578, !dbg !2116

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1623, metadata !DIExpression()), !dbg !1683
  %580 = icmp ult i64 %579, %568, !dbg !2121
  br i1 %580, label %581, label %583, !dbg !2124

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2121
  store i8 39, ptr %582, align 1, !dbg !2121, !tbaa !858
  br label %583, !dbg !2121

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1683
  br label %585, !dbg !2125

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1790
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1623, metadata !DIExpression()), !dbg !1683
  %595 = icmp ult i64 %593, %586, !dbg !2126
  br i1 %595, label %596, label %598, !dbg !2129

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2126
  store i8 %587, ptr %597, align 1, !dbg !2126, !tbaa !858
  br label %598, !dbg !2126

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1623, metadata !DIExpression()), !dbg !1683
  %600 = icmp eq i8 %588, 0, !dbg !2130
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1630, metadata !DIExpression()), !dbg !1683
  br label %602, !dbg !2133

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2076
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1683
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1688
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1692
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1693
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1782
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2087
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1638, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1632, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1630, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1616, metadata !DIExpression()), !dbg !1683
  %611 = add i64 %609, 1, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1638, metadata !DIExpression()), !dbg !1780
  br label %138, !dbg !2135, !llvm.loop !2136

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1614, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1630, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1629, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1624, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1623, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1616, metadata !DIExpression()), !dbg !1683
  %613 = icmp eq i64 %140, 0, !dbg !2138
  %614 = and i1 %132, %613, !dbg !2140
  %615 = xor i1 %614, true, !dbg !2140
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2140
  br i1 %616, label %617, label %655, !dbg !2140

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2141
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2141
  br i1 %621, label %622, label %631, !dbg !2141

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2143
  %624 = icmp eq i8 %623, 0, !dbg !2143
  br i1 %624, label %627, label %625, !dbg !2146

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2147
  br label %672, !dbg !2148

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2149
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2151
  br i1 %630, label %28, label %631, !dbg !2151

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2152
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2154
  br i1 %634, label %635, label %650, !dbg !2154

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1625, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1623, metadata !DIExpression()), !dbg !1683
  %636 = load i8, ptr %119, align 1, !dbg !2155, !tbaa !858
  %637 = icmp eq i8 %636, 0, !dbg !2158
  br i1 %637, label %650, label %638, !dbg !2158

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1625, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1623, metadata !DIExpression()), !dbg !1683
  %642 = icmp ult i64 %641, %146, !dbg !2159
  br i1 %642, label %643, label %645, !dbg !2162

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2159
  store i8 %639, ptr %644, align 1, !dbg !2159, !tbaa !858
  br label %645, !dbg !2159

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1623, metadata !DIExpression()), !dbg !1683
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2163
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1625, metadata !DIExpression()), !dbg !1683
  %648 = load i8, ptr %647, align 1, !dbg !2155, !tbaa !858
  %649 = icmp eq i8 %648, 0, !dbg !2158
  br i1 %649, label %650, label %638, !dbg !2158, !llvm.loop !2164

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1623, metadata !DIExpression()), !dbg !1683
  %652 = icmp ult i64 %651, %146, !dbg !2166
  br i1 %652, label %653, label %672, !dbg !2168

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2169
  store i8 0, ptr %654, align 1, !dbg !2170, !tbaa !858
  br label %672, !dbg !2169

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1674), !dbg !2171
  %657 = icmp eq i8 %123, 0, !dbg !2172
  %658 = select i1 %657, i32 2, i32 4, !dbg !2172
  br label %666, !dbg !2172

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1674), !dbg !2171
  %662 = icmp eq i32 %115, 2, !dbg !2174
  %663 = icmp eq i8 %123, 0, !dbg !2172
  %664 = select i1 %663, i32 2, i32 4, !dbg !2172
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2172
  br label %666, !dbg !2172

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1617, metadata !DIExpression()), !dbg !1683
  %670 = and i32 %5, -3, !dbg !2175
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2176
  br label %672, !dbg !2177

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2178
}

; Function Attrs: nounwind
declare !dbg !2179 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2182 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2185 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2187 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2192, metadata !DIExpression()), !dbg !2194
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr null, metadata !2201, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr %2, metadata !2202, metadata !DIExpression()), !dbg !2208
  %4 = icmp eq ptr %2, null, !dbg !2210
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %5, metadata !2203, metadata !DIExpression()), !dbg !2208
  %6 = tail call ptr @__errno_location() #43, !dbg !2211
  %7 = load i32, ptr %6, align 4, !dbg !2211, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %7, metadata !2204, metadata !DIExpression()), !dbg !2208
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2212
  %9 = load i32, ptr %8, align 4, !dbg !2212, !tbaa !1557
  %10 = or i32 %9, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %10, metadata !2205, metadata !DIExpression()), !dbg !2208
  %11 = load i32, ptr %5, align 8, !dbg !2214, !tbaa !1507
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2215
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2216
  %14 = load ptr, ptr %13, align 8, !dbg !2216, !tbaa !1578
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2217
  %16 = load ptr, ptr %15, align 8, !dbg !2217, !tbaa !1581
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2218
  %18 = add i64 %17, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %18, metadata !2206, metadata !DIExpression()), !dbg !2208
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2220
  call void @llvm.dbg.value(metadata ptr %19, metadata !2207, metadata !DIExpression()), !dbg !2208
  %20 = load i32, ptr %5, align 8, !dbg !2221, !tbaa !1507
  %21 = load ptr, ptr %13, align 8, !dbg !2222, !tbaa !1578
  %22 = load ptr, ptr %15, align 8, !dbg !2223, !tbaa !1581
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2224
  store i32 %7, ptr %6, align 4, !dbg !2225, !tbaa !849
  ret ptr %19, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2196 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2201, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2202, metadata !DIExpression()), !dbg !2227
  %5 = icmp eq ptr %3, null, !dbg !2228
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2228
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2203, metadata !DIExpression()), !dbg !2227
  %7 = tail call ptr @__errno_location() #43, !dbg !2229
  %8 = load i32, ptr %7, align 4, !dbg !2229, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2204, metadata !DIExpression()), !dbg !2227
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2230
  %10 = load i32, ptr %9, align 4, !dbg !2230, !tbaa !1557
  %11 = icmp eq ptr %2, null, !dbg !2231
  %12 = zext i1 %11 to i32, !dbg !2231
  %13 = or i32 %10, %12, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2205, metadata !DIExpression()), !dbg !2227
  %14 = load i32, ptr %6, align 8, !dbg !2233, !tbaa !1507
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2234
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2235
  %17 = load ptr, ptr %16, align 8, !dbg !2235, !tbaa !1578
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2236
  %19 = load ptr, ptr %18, align 8, !dbg !2236, !tbaa !1581
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2237
  %21 = add i64 %20, 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2206, metadata !DIExpression()), !dbg !2227
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2239
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2207, metadata !DIExpression()), !dbg !2227
  %23 = load i32, ptr %6, align 8, !dbg !2240, !tbaa !1507
  %24 = load ptr, ptr %16, align 8, !dbg !2241, !tbaa !1578
  %25 = load ptr, ptr %18, align 8, !dbg !2242, !tbaa !1581
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2243
  store i32 %8, ptr %7, align 4, !dbg !2244, !tbaa !849
  br i1 %11, label %28, label %27, !dbg !2245

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2246, !tbaa !2248
  br label %28, !dbg !2249

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2250
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2251 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2256, !tbaa !786
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2253, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2254, metadata !DIExpression()), !dbg !2258
  %2 = load i32, ptr @nslots, align 4, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2254, metadata !DIExpression()), !dbg !2258
  %3 = icmp sgt i32 %2, 1, !dbg !2259
  br i1 %3, label %4, label %6, !dbg !2261

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2259
  br label %10, !dbg !2261

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2262
  %8 = load ptr, ptr %7, align 8, !dbg !2262, !tbaa !2264
  %9 = icmp eq ptr %8, @slot0, !dbg !2266
  br i1 %9, label %17, label %16, !dbg !2267

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2254, metadata !DIExpression()), !dbg !2258
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2268
  %13 = load ptr, ptr %12, align 8, !dbg !2268, !tbaa !2264
  tail call void @free(ptr noundef %13) #40, !dbg !2269
  %14 = add nuw nsw i64 %11, 1, !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2254, metadata !DIExpression()), !dbg !2258
  %15 = icmp eq i64 %14, %5, !dbg !2259
  br i1 %15, label %6, label %10, !dbg !2261, !llvm.loop !2271

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2273
  store i64 256, ptr @slotvec0, align 8, !dbg !2275, !tbaa !2276
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2277, !tbaa !2264
  br label %17, !dbg !2278

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2279
  br i1 %18, label %20, label %19, !dbg !2281

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2282
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2284, !tbaa !786
  br label %20, !dbg !2285

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2286, !tbaa !849
  ret void, !dbg !2287
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2288 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2291 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()), !dbg !2295
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2294, metadata !DIExpression()), !dbg !2295
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2296
  ret ptr %3, !dbg !2297
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2298 {
  %5 = alloca i64, align 8, !DIAssignID !2318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2312, metadata !DIExpression(), metadata !2318, metadata ptr %5, metadata !DIExpression()), !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2304, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2305, metadata !DIExpression()), !dbg !2320
  %6 = tail call ptr @__errno_location() #43, !dbg !2321
  %7 = load i32, ptr %6, align 4, !dbg !2321, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2306, metadata !DIExpression()), !dbg !2320
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2322, !tbaa !786
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2307, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2308, metadata !DIExpression()), !dbg !2320
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2323
  br i1 %9, label %10, label %11, !dbg !2323

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2325
  unreachable, !dbg !2325

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2326, !tbaa !849
  %13 = icmp sgt i32 %12, %0, !dbg !2327
  br i1 %13, label %32, label %14, !dbg !2328

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2329
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2309, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2330
  %16 = sext i32 %12 to i64, !dbg !2331
  store i64 %16, ptr %5, align 8, !dbg !2332, !tbaa !2248, !DIAssignID !2333
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2312, metadata !DIExpression(), metadata !2333, metadata ptr %5, metadata !DIExpression()), !dbg !2319
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2334
  %18 = add nuw nsw i32 %0, 1, !dbg !2335
  %19 = sub i32 %18, %12, !dbg !2336
  %20 = sext i32 %19 to i64, !dbg !2337
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2338
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2307, metadata !DIExpression()), !dbg !2320
  store ptr %21, ptr @slotvec, align 8, !dbg !2339, !tbaa !786
  br i1 %15, label %22, label %23, !dbg !2340

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2341, !tbaa.struct !2343
  br label %23, !dbg !2344

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2345, !tbaa !849
  %25 = sext i32 %24 to i64, !dbg !2346
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2346
  %27 = load i64, ptr %5, align 8, !dbg !2347, !tbaa !2248
  %28 = sub nsw i64 %27, %25, !dbg !2348
  %29 = shl i64 %28, 4, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %26, metadata !1721, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %29, metadata !1725, metadata !DIExpression()), !dbg !2350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2352
  %30 = load i64, ptr %5, align 8, !dbg !2353, !tbaa !2248
  %31 = trunc i64 %30 to i32, !dbg !2353
  store i32 %31, ptr @nslots, align 4, !dbg !2354, !tbaa !849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2355
  br label %32, !dbg !2356

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2320
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2307, metadata !DIExpression()), !dbg !2320
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2357
  %36 = load i64, ptr %35, align 8, !dbg !2358, !tbaa !2276
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2313, metadata !DIExpression()), !dbg !2359
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2360
  %38 = load ptr, ptr %37, align 8, !dbg !2360, !tbaa !2264
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2315, metadata !DIExpression()), !dbg !2359
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2361
  %40 = load i32, ptr %39, align 4, !dbg !2361, !tbaa !1557
  %41 = or i32 %40, 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2316, metadata !DIExpression()), !dbg !2359
  %42 = load i32, ptr %3, align 8, !dbg !2363, !tbaa !1507
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2364
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2365
  %45 = load ptr, ptr %44, align 8, !dbg !2365, !tbaa !1578
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2366
  %47 = load ptr, ptr %46, align 8, !dbg !2366, !tbaa !1581
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2317, metadata !DIExpression()), !dbg !2359
  %49 = icmp ugt i64 %36, %48, !dbg !2368
  br i1 %49, label %60, label %50, !dbg !2370

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2313, metadata !DIExpression()), !dbg !2359
  store i64 %51, ptr %35, align 8, !dbg !2373, !tbaa !2276
  %52 = icmp eq ptr %38, @slot0, !dbg !2374
  br i1 %52, label %54, label %53, !dbg !2376

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2377
  br label %54, !dbg !2377

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2378
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2315, metadata !DIExpression()), !dbg !2359
  store ptr %55, ptr %37, align 8, !dbg !2379, !tbaa !2264
  %56 = load i32, ptr %3, align 8, !dbg !2380, !tbaa !1507
  %57 = load ptr, ptr %44, align 8, !dbg !2381, !tbaa !1578
  %58 = load ptr, ptr %46, align 8, !dbg !2382, !tbaa !1581
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2383
  br label %60, !dbg !2384

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2359
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2315, metadata !DIExpression()), !dbg !2359
  store i32 %7, ptr %6, align 4, !dbg !2385, !tbaa !849
  ret ptr %61, !dbg !2386
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2387 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2394
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2392, metadata !DIExpression()), !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2393, metadata !DIExpression()), !dbg !2394
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2395
  ret ptr %4, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2397 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %0, metadata !2294, metadata !DIExpression()), !dbg !2401
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2403
  ret ptr %2, !dbg !2404
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2409, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata ptr %0, metadata !2392, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %1, metadata !2393, metadata !DIExpression()), !dbg !2412
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2414
  ret ptr %3, !dbg !2415
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2416 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2423, metadata !DIExpression(), metadata !2424, metadata ptr %4, metadata !DIExpression()), !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2421, metadata !DIExpression()), !dbg !2425
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2439, !alias.scope !2427, !DIAssignID !2440
  call void @llvm.dbg.assign(metadata i8 0, metadata !2423, metadata !DIExpression(), metadata !2440, metadata ptr %4, metadata !DIExpression()), !dbg !2425
  %5 = icmp eq i32 %1, 10, !dbg !2441
  br i1 %5, label %6, label %7, !dbg !2443

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2444, !noalias !2427
  unreachable, !dbg !2444

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2445, !tbaa !1507, !alias.scope !2427, !DIAssignID !2446
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2423, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2446, metadata ptr %4, metadata !DIExpression()), !dbg !2425
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2447
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2448
  ret ptr %8, !dbg !2449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2450 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2458, metadata !DIExpression(), metadata !2459, metadata ptr %5, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2455, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2456, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2436, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2468, !alias.scope !2462, !DIAssignID !2469
  call void @llvm.dbg.assign(metadata i8 0, metadata !2458, metadata !DIExpression(), metadata !2469, metadata ptr %5, metadata !DIExpression()), !dbg !2460
  %6 = icmp eq i32 %1, 10, !dbg !2470
  br i1 %6, label %7, label %8, !dbg !2471

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2472, !noalias !2462
  unreachable, !dbg !2472

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2473, !tbaa !1507, !alias.scope !2462, !DIAssignID !2474
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2458, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2474, metadata ptr %5, metadata !DIExpression()), !dbg !2460
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2475
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2476
  ret ptr %9, !dbg !2477
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2478 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2484
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2423, metadata !DIExpression(), metadata !2484, metadata ptr %3, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %0, metadata !2421, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %1, metadata !2422, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2436, metadata !DIExpression()), !dbg !2495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2495, !alias.scope !2489, !DIAssignID !2496
  call void @llvm.dbg.assign(metadata i8 0, metadata !2423, metadata !DIExpression(), metadata !2496, metadata ptr %3, metadata !DIExpression()), !dbg !2486
  %4 = icmp eq i32 %0, 10, !dbg !2497
  br i1 %4, label %5, label %6, !dbg !2498

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !2499, !noalias !2489
  unreachable, !dbg !2499

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2500, !tbaa !1507, !alias.scope !2489, !DIAssignID !2501
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2423, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2501, metadata ptr %3, metadata !DIExpression()), !dbg !2486
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2502
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2503
  ret ptr %7, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2505 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2512
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2510, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2458, metadata !DIExpression(), metadata !2512, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata ptr %1, metadata !2456, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %2, metadata !2457, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2436, metadata !DIExpression()), !dbg !2523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2523, !alias.scope !2517, !DIAssignID !2524
  call void @llvm.dbg.assign(metadata i8 0, metadata !2458, metadata !DIExpression(), metadata !2524, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  %5 = icmp eq i32 %0, 10, !dbg !2525
  br i1 %5, label %6, label %7, !dbg !2526

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2527, !noalias !2517
  unreachable, !dbg !2527

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2528, !tbaa !1507, !alias.scope !2517, !DIAssignID !2529
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2458, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2529, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2530
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2531
  ret ptr %8, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2533 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2541, metadata ptr %4, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2544, !tbaa.struct !2545, !DIAssignID !2546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2546, metadata ptr %4, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1525, metadata !DIExpression()), !dbg !2547
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2547
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2549
  %6 = lshr i8 %2, 5, !dbg !2550
  %7 = zext nneg i8 %6 to i64, !dbg !2550
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2551
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1528, metadata !DIExpression()), !dbg !2547
  %9 = and i8 %2, 31, !dbg !2552
  %10 = zext nneg i8 %9 to i32, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1530, metadata !DIExpression()), !dbg !2547
  %11 = load i32, ptr %8, align 4, !dbg !2553, !tbaa !849
  %12 = lshr i32 %11, %10, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1531, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2547
  %13 = and i32 %12, 1, !dbg !2555
  %14 = xor i32 %13, 1, !dbg !2555
  %15 = shl nuw i32 %14, %10, !dbg !2556
  %16 = xor i32 %15, %11, !dbg !2557
  store i32 %16, ptr %8, align 4, !dbg !2557, !tbaa !849
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2559
  ret ptr %17, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2561 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2567
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2568
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2567, metadata ptr %3, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 -1, metadata !2538, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2572, !tbaa.struct !2545, !DIAssignID !2573
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2573, metadata ptr %3, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %3, metadata !1524, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !2574
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2576
  %5 = lshr i8 %1, 5, !dbg !2577
  %6 = zext nneg i8 %5 to i64, !dbg !2577
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %7, metadata !1528, metadata !DIExpression()), !dbg !2574
  %8 = and i8 %1, 31, !dbg !2579
  %9 = zext nneg i8 %8 to i32, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %9, metadata !1530, metadata !DIExpression()), !dbg !2574
  %10 = load i32, ptr %7, align 4, !dbg !2580, !tbaa !849
  %11 = lshr i32 %10, %9, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %11, metadata !1531, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2574
  %12 = and i32 %11, 1, !dbg !2582
  %13 = xor i32 %12, 1, !dbg !2582
  %14 = shl nuw i32 %13, %9, !dbg !2583
  %15 = xor i32 %14, %10, !dbg !2584
  store i32 %15, ptr %7, align 4, !dbg !2584, !tbaa !849
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2586
  ret ptr %16, !dbg !2587
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2588 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2591
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 58, metadata !2566, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2591, metadata ptr %2, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 -1, metadata !2538, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !2597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2598, !tbaa.struct !2545, !DIAssignID !2599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2599, metadata ptr %2, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %2, metadata !1524, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2600
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %3, metadata !1528, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2600
  %4 = load i32, ptr %3, align 4, !dbg !2603, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %4, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2600
  %5 = or i32 %4, 67108864, !dbg !2604
  store i32 %5, ptr %3, align 4, !dbg !2604, !tbaa !849
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2605
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !2606
  ret ptr %6, !dbg !2607
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2608 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2612
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2610, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2612, metadata ptr %3, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2617, !tbaa.struct !2545, !DIAssignID !2618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2618, metadata ptr %3, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %3, metadata !1524, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2619
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2621
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2619
  %5 = load i32, ptr %4, align 4, !dbg !2622, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %5, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2619
  %6 = or i32 %5, 67108864, !dbg !2623
  store i32 %6, ptr %4, align 4, !dbg !2623, !tbaa !849
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2625
  ret ptr %7, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2627 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2632, metadata !DIExpression(), metadata !2633, metadata ptr %4, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2436, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2630, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2638
  %5 = icmp eq i32 %1, 10, !dbg !2639
  br i1 %5, label %6, label %7, !dbg !2640

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2641, !noalias !2642
  unreachable, !dbg !2641

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2638
  store i32 %1, ptr %4, align 8, !dbg !2645, !tbaa.struct !2545, !DIAssignID !2646
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2645
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2645
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2632, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2646, metadata ptr %4, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2632, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2647, metadata ptr %8, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2648
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1528, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2648
  %10 = load i32, ptr %9, align 4, !dbg !2651, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2648
  %11 = or i32 %10, 67108864, !dbg !2652
  store i32 %11, ptr %9, align 4, !dbg !2652, !tbaa !849, !DIAssignID !2653
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2632, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2653, metadata ptr %9, metadata !DIExpression()), !dbg !2634
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2654
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2655
  ret ptr %12, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2657 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2665
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2665, metadata ptr %5, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %2, metadata !2674, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %3, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 -1, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2680, !tbaa.struct !2545, !DIAssignID !2681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2681, metadata ptr %5, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2682, metadata ptr undef, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2683
  store i32 10, ptr %5, align 8, !dbg !2685, !tbaa !1507, !DIAssignID !2686
  call void @llvm.dbg.assign(metadata i32 10, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2686, metadata ptr %5, metadata !DIExpression()), !dbg !2677
  %6 = icmp ne ptr %1, null, !dbg !2687
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2688
  br i1 %8, label %10, label %9, !dbg !2688

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2689
  unreachable, !dbg !2689

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2690
  store ptr %1, ptr %11, align 8, !dbg !2691, !tbaa !1578, !DIAssignID !2692
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2692, metadata ptr %11, metadata !DIExpression()), !dbg !2677
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2693
  store ptr %2, ptr %12, align 8, !dbg !2694, !tbaa !1581, !DIAssignID !2695
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2695, metadata ptr %12, metadata !DIExpression()), !dbg !2677
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2696
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2697
  ret ptr %13, !dbg !2698
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2668 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2699, metadata ptr %6, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2674, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2675, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2676, metadata !DIExpression()), !dbg !2700
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !2701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2702, !tbaa.struct !2545, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2703, metadata ptr %6, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2704, metadata ptr undef, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %6, metadata !1564, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %6, metadata !1564, metadata !DIExpression()), !dbg !2705
  store i32 10, ptr %6, align 8, !dbg !2707, !tbaa !1507, !DIAssignID !2708
  call void @llvm.dbg.assign(metadata i32 10, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2708, metadata ptr %6, metadata !DIExpression()), !dbg !2700
  %7 = icmp ne ptr %1, null, !dbg !2709
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2710
  br i1 %9, label %11, label %10, !dbg !2710

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !2711
  unreachable, !dbg !2711

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2712
  store ptr %1, ptr %12, align 8, !dbg !2713, !tbaa !1578, !DIAssignID !2714
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2714, metadata ptr %12, metadata !DIExpression()), !dbg !2700
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2715
  store ptr %2, ptr %13, align 8, !dbg !2716, !tbaa !1581, !DIAssignID !2717
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2717, metadata ptr %13, metadata !DIExpression()), !dbg !2700
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2718
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !2719
  ret ptr %14, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2721 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2728
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2661, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %0, metadata !2662, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2663, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2728, metadata ptr %4, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %0, metadata !2673, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %1, metadata !2674, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %2, metadata !2675, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 -1, metadata !2676, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2735, !tbaa.struct !2545, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2736, metadata ptr %4, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2737, metadata ptr undef, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !2738
  store i32 10, ptr %4, align 8, !dbg !2740, !tbaa !1507, !DIAssignID !2741
  call void @llvm.dbg.assign(metadata i32 10, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2741, metadata ptr %4, metadata !DIExpression()), !dbg !2732
  %5 = icmp ne ptr %0, null, !dbg !2742
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2743
  br i1 %7, label %9, label %8, !dbg !2743

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2744
  unreachable, !dbg !2744

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2745
  store ptr %0, ptr %10, align 8, !dbg !2746, !tbaa !1578, !DIAssignID !2747
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2747, metadata ptr %10, metadata !DIExpression()), !dbg !2732
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2748
  store ptr %1, ptr %11, align 8, !dbg !2749, !tbaa !1581, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2750, metadata ptr %11, metadata !DIExpression()), !dbg !2732
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2752
  ret ptr %12, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2754 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2762
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2760, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2762, metadata ptr %5, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %0, metadata !2673, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %1, metadata !2674, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2675, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %3, metadata !2676, metadata !DIExpression()), !dbg !2764
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2767, !tbaa.struct !2545, !DIAssignID !2768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(), metadata !2768, metadata ptr %5, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2769, metadata ptr undef, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2770
  store i32 10, ptr %5, align 8, !dbg !2772, !tbaa !1507, !DIAssignID !2773
  call void @llvm.dbg.assign(metadata i32 10, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2773, metadata ptr %5, metadata !DIExpression()), !dbg !2764
  %6 = icmp ne ptr %0, null, !dbg !2774
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2775
  br i1 %8, label %10, label %9, !dbg !2775

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2776
  unreachable, !dbg !2776

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2777
  store ptr %0, ptr %11, align 8, !dbg !2778, !tbaa !1578, !DIAssignID !2779
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2779, metadata ptr %11, metadata !DIExpression()), !dbg !2764
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2780
  store ptr %1, ptr %12, align 8, !dbg !2781, !tbaa !1581, !DIAssignID !2782
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2667, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2782, metadata ptr %12, metadata !DIExpression()), !dbg !2764
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2783
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2784
  ret ptr %13, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2786 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2792, metadata !DIExpression()), !dbg !2793
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2794
  ret ptr %4, !dbg !2795
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2800, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()), !dbg !2803
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2805
  ret ptr %3, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2807 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2813
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 -1, metadata !2792, metadata !DIExpression()), !dbg !2814
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2816
  ret ptr %3, !dbg !2817
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2818 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 0, metadata !2811, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %0, metadata !2812, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 -1, metadata !2792, metadata !DIExpression()), !dbg !2826
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2828
  ret ptr %2, !dbg !2829
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2869, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2870, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2871, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2872, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2873, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2874, metadata !DIExpression()), !dbg !2875
  %7 = icmp eq ptr %1, null, !dbg !2876
  br i1 %7, label %10, label %8, !dbg !2878

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !2879
  br label %12, !dbg !2879

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.75, ptr noundef %2, ptr noundef %3) #40, !dbg !2880
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.3.77, i32 noundef 5) #40, !dbg !2881
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !2881
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2882
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.5.79, i32 noundef 5) #40, !dbg !2883
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.80) #40, !dbg !2883
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2884
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
  ], !dbg !2885

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.7.81, i32 noundef 5) #40, !dbg !2886
  %21 = load ptr, ptr %4, align 8, !dbg !2886, !tbaa !786
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !2886
  br label %147, !dbg !2888

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.8.82, i32 noundef 5) #40, !dbg !2889
  %25 = load ptr, ptr %4, align 8, !dbg !2889, !tbaa !786
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2889
  %27 = load ptr, ptr %26, align 8, !dbg !2889, !tbaa !786
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !2889
  br label %147, !dbg !2890

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.9.83, i32 noundef 5) #40, !dbg !2891
  %31 = load ptr, ptr %4, align 8, !dbg !2891, !tbaa !786
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2891
  %33 = load ptr, ptr %32, align 8, !dbg !2891, !tbaa !786
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2891
  %35 = load ptr, ptr %34, align 8, !dbg !2891, !tbaa !786
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !2891
  br label %147, !dbg !2892

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.10.84, i32 noundef 5) #40, !dbg !2893
  %39 = load ptr, ptr %4, align 8, !dbg !2893, !tbaa !786
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2893
  %41 = load ptr, ptr %40, align 8, !dbg !2893, !tbaa !786
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2893
  %43 = load ptr, ptr %42, align 8, !dbg !2893, !tbaa !786
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2893
  %45 = load ptr, ptr %44, align 8, !dbg !2893, !tbaa !786
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !2893
  br label %147, !dbg !2894

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.11.85, i32 noundef 5) #40, !dbg !2895
  %49 = load ptr, ptr %4, align 8, !dbg !2895, !tbaa !786
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2895
  %51 = load ptr, ptr %50, align 8, !dbg !2895, !tbaa !786
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2895
  %53 = load ptr, ptr %52, align 8, !dbg !2895, !tbaa !786
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2895
  %55 = load ptr, ptr %54, align 8, !dbg !2895, !tbaa !786
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2895
  %57 = load ptr, ptr %56, align 8, !dbg !2895, !tbaa !786
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !2895
  br label %147, !dbg !2896

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.12.86, i32 noundef 5) #40, !dbg !2897
  %61 = load ptr, ptr %4, align 8, !dbg !2897, !tbaa !786
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2897
  %63 = load ptr, ptr %62, align 8, !dbg !2897, !tbaa !786
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2897
  %65 = load ptr, ptr %64, align 8, !dbg !2897, !tbaa !786
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2897
  %67 = load ptr, ptr %66, align 8, !dbg !2897, !tbaa !786
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2897
  %69 = load ptr, ptr %68, align 8, !dbg !2897, !tbaa !786
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2897
  %71 = load ptr, ptr %70, align 8, !dbg !2897, !tbaa !786
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !2897
  br label %147, !dbg !2898

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.13.87, i32 noundef 5) #40, !dbg !2899
  %75 = load ptr, ptr %4, align 8, !dbg !2899, !tbaa !786
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2899
  %77 = load ptr, ptr %76, align 8, !dbg !2899, !tbaa !786
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2899
  %79 = load ptr, ptr %78, align 8, !dbg !2899, !tbaa !786
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2899
  %81 = load ptr, ptr %80, align 8, !dbg !2899, !tbaa !786
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2899
  %83 = load ptr, ptr %82, align 8, !dbg !2899, !tbaa !786
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2899
  %85 = load ptr, ptr %84, align 8, !dbg !2899, !tbaa !786
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2899
  %87 = load ptr, ptr %86, align 8, !dbg !2899, !tbaa !786
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !2899
  br label %147, !dbg !2900

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.14.88, i32 noundef 5) #40, !dbg !2901
  %91 = load ptr, ptr %4, align 8, !dbg !2901, !tbaa !786
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2901
  %93 = load ptr, ptr %92, align 8, !dbg !2901, !tbaa !786
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2901
  %95 = load ptr, ptr %94, align 8, !dbg !2901, !tbaa !786
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2901
  %97 = load ptr, ptr %96, align 8, !dbg !2901, !tbaa !786
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2901
  %99 = load ptr, ptr %98, align 8, !dbg !2901, !tbaa !786
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2901
  %101 = load ptr, ptr %100, align 8, !dbg !2901, !tbaa !786
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2901
  %103 = load ptr, ptr %102, align 8, !dbg !2901, !tbaa !786
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2901
  %105 = load ptr, ptr %104, align 8, !dbg !2901, !tbaa !786
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !2901
  br label %147, !dbg !2902

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.15.89, i32 noundef 5) #40, !dbg !2903
  %109 = load ptr, ptr %4, align 8, !dbg !2903, !tbaa !786
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2903
  %111 = load ptr, ptr %110, align 8, !dbg !2903, !tbaa !786
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2903
  %113 = load ptr, ptr %112, align 8, !dbg !2903, !tbaa !786
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2903
  %115 = load ptr, ptr %114, align 8, !dbg !2903, !tbaa !786
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2903
  %117 = load ptr, ptr %116, align 8, !dbg !2903, !tbaa !786
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2903
  %119 = load ptr, ptr %118, align 8, !dbg !2903, !tbaa !786
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2903
  %121 = load ptr, ptr %120, align 8, !dbg !2903, !tbaa !786
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2903
  %123 = load ptr, ptr %122, align 8, !dbg !2903, !tbaa !786
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2903
  %125 = load ptr, ptr %124, align 8, !dbg !2903, !tbaa !786
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !2903
  br label %147, !dbg !2904

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.16.90, i32 noundef 5) #40, !dbg !2905
  %129 = load ptr, ptr %4, align 8, !dbg !2905, !tbaa !786
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2905
  %131 = load ptr, ptr %130, align 8, !dbg !2905, !tbaa !786
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2905
  %133 = load ptr, ptr %132, align 8, !dbg !2905, !tbaa !786
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2905
  %135 = load ptr, ptr %134, align 8, !dbg !2905, !tbaa !786
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2905
  %137 = load ptr, ptr %136, align 8, !dbg !2905, !tbaa !786
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2905
  %139 = load ptr, ptr %138, align 8, !dbg !2905, !tbaa !786
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2905
  %141 = load ptr, ptr %140, align 8, !dbg !2905, !tbaa !786
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2905
  %143 = load ptr, ptr %142, align 8, !dbg !2905, !tbaa !786
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2905
  %145 = load ptr, ptr %144, align 8, !dbg !2905, !tbaa !786
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !2905
  br label %147, !dbg !2906

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2908 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2914, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2915, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2916, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2917, metadata !DIExpression()), !dbg !2918
  br label %6, !dbg !2919

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2917, metadata !DIExpression()), !dbg !2918
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2922
  %9 = load ptr, ptr %8, align 8, !dbg !2922, !tbaa !786
  %10 = icmp eq ptr %9, null, !dbg !2924
  %11 = add i64 %7, 1, !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2917, metadata !DIExpression()), !dbg !2918
  br i1 %10, label %12, label %6, !dbg !2924, !llvm.loop !2926

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2930 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2949
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2947, metadata !DIExpression(), metadata !2949, metadata ptr %6, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2942, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2943, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2944, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2945, metadata !DIExpression()), !dbg !2950
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2950
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2950
  %10 = icmp ult i32 %9, 41, !dbg !2952
  br i1 %10, label %11, label %16, !dbg !2952

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2952
  %13 = zext nneg i32 %9 to i64, !dbg !2952
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2952
  %15 = add nuw nsw i32 %9, 8, !dbg !2952
  store i32 %15, ptr %4, align 8, !dbg !2952
  br label %19, !dbg !2952

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2952
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2952
  store ptr %18, ptr %7, align 8, !dbg !2952
  br label %19, !dbg !2952

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2952
  %22 = load ptr, ptr %21, align 8, !dbg !2952
  store ptr %22, ptr %6, align 16, !dbg !2955, !tbaa !786
  %23 = icmp eq ptr %22, null, !dbg !2956
  br i1 %23, label %128, label %24, !dbg !2957

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2946, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2946, metadata !DIExpression()), !dbg !2950
  %25 = icmp ult i32 %20, 41, !dbg !2952
  br i1 %25, label %29, label %26, !dbg !2952

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2952
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2952
  store ptr %28, ptr %7, align 8, !dbg !2952
  br label %34, !dbg !2952

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2952
  %31 = zext nneg i32 %20 to i64, !dbg !2952
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2952
  %33 = add nuw nsw i32 %20, 8, !dbg !2952
  store i32 %33, ptr %4, align 8, !dbg !2952
  br label %34, !dbg !2952

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2952
  %37 = load ptr, ptr %36, align 8, !dbg !2952
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2958
  store ptr %37, ptr %38, align 8, !dbg !2955, !tbaa !786
  %39 = icmp eq ptr %37, null, !dbg !2956
  br i1 %39, label %128, label %40, !dbg !2957

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2946, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2946, metadata !DIExpression()), !dbg !2950
  %41 = icmp ult i32 %35, 41, !dbg !2952
  br i1 %41, label %45, label %42, !dbg !2952

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2952
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2952
  store ptr %44, ptr %7, align 8, !dbg !2952
  br label %50, !dbg !2952

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2952
  %47 = zext nneg i32 %35 to i64, !dbg !2952
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2952
  %49 = add nuw nsw i32 %35, 8, !dbg !2952
  store i32 %49, ptr %4, align 8, !dbg !2952
  br label %50, !dbg !2952

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2952
  %53 = load ptr, ptr %52, align 8, !dbg !2952
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2958
  store ptr %53, ptr %54, align 16, !dbg !2955, !tbaa !786
  %55 = icmp eq ptr %53, null, !dbg !2956
  br i1 %55, label %128, label %56, !dbg !2957

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2946, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2946, metadata !DIExpression()), !dbg !2950
  %57 = icmp ult i32 %51, 41, !dbg !2952
  br i1 %57, label %61, label %58, !dbg !2952

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2952
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2952
  store ptr %60, ptr %7, align 8, !dbg !2952
  br label %66, !dbg !2952

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2952
  %63 = zext nneg i32 %51 to i64, !dbg !2952
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2952
  %65 = add nuw nsw i32 %51, 8, !dbg !2952
  store i32 %65, ptr %4, align 8, !dbg !2952
  br label %66, !dbg !2952

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2952
  %69 = load ptr, ptr %68, align 8, !dbg !2952
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2958
  store ptr %69, ptr %70, align 8, !dbg !2955, !tbaa !786
  %71 = icmp eq ptr %69, null, !dbg !2956
  br i1 %71, label %128, label %72, !dbg !2957

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2946, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2946, metadata !DIExpression()), !dbg !2950
  %73 = icmp ult i32 %67, 41, !dbg !2952
  br i1 %73, label %77, label %74, !dbg !2952

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2952
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2952
  store ptr %76, ptr %7, align 8, !dbg !2952
  br label %82, !dbg !2952

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2952
  %79 = zext nneg i32 %67 to i64, !dbg !2952
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2952
  %81 = add nuw nsw i32 %67, 8, !dbg !2952
  store i32 %81, ptr %4, align 8, !dbg !2952
  br label %82, !dbg !2952

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2952
  %85 = load ptr, ptr %84, align 8, !dbg !2952
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2958
  store ptr %85, ptr %86, align 16, !dbg !2955, !tbaa !786
  %87 = icmp eq ptr %85, null, !dbg !2956
  br i1 %87, label %128, label %88, !dbg !2957

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2946, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2946, metadata !DIExpression()), !dbg !2950
  %89 = icmp ult i32 %83, 41, !dbg !2952
  br i1 %89, label %93, label %90, !dbg !2952

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2952
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2952
  store ptr %92, ptr %7, align 8, !dbg !2952
  br label %98, !dbg !2952

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2952
  %95 = zext nneg i32 %83 to i64, !dbg !2952
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2952
  %97 = add nuw nsw i32 %83, 8, !dbg !2952
  store i32 %97, ptr %4, align 8, !dbg !2952
  br label %98, !dbg !2952

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2952
  %100 = load ptr, ptr %99, align 8, !dbg !2952
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2958
  store ptr %100, ptr %101, align 8, !dbg !2955, !tbaa !786
  %102 = icmp eq ptr %100, null, !dbg !2956
  br i1 %102, label %128, label %103, !dbg !2957

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2946, metadata !DIExpression()), !dbg !2950
  %104 = load ptr, ptr %7, align 8, !dbg !2952
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2952
  store ptr %105, ptr %7, align 8, !dbg !2952
  %106 = load ptr, ptr %104, align 8, !dbg !2952
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2958
  store ptr %106, ptr %107, align 16, !dbg !2955, !tbaa !786
  %108 = icmp eq ptr %106, null, !dbg !2956
  br i1 %108, label %128, label %109, !dbg !2957

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2946, metadata !DIExpression()), !dbg !2950
  %110 = load ptr, ptr %7, align 8, !dbg !2952
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2952
  store ptr %111, ptr %7, align 8, !dbg !2952
  %112 = load ptr, ptr %110, align 8, !dbg !2952
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2958
  store ptr %112, ptr %113, align 8, !dbg !2955, !tbaa !786
  %114 = icmp eq ptr %112, null, !dbg !2956
  br i1 %114, label %128, label %115, !dbg !2957

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2946, metadata !DIExpression()), !dbg !2950
  %116 = load ptr, ptr %7, align 8, !dbg !2952
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2952
  store ptr %117, ptr %7, align 8, !dbg !2952
  %118 = load ptr, ptr %116, align 8, !dbg !2952
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2958
  store ptr %118, ptr %119, align 16, !dbg !2955, !tbaa !786
  %120 = icmp eq ptr %118, null, !dbg !2956
  br i1 %120, label %128, label %121, !dbg !2957

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2946, metadata !DIExpression()), !dbg !2950
  %122 = load ptr, ptr %7, align 8, !dbg !2952
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2952
  store ptr %123, ptr %7, align 8, !dbg !2952
  %124 = load ptr, ptr %122, align 8, !dbg !2952
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2958
  store ptr %124, ptr %125, align 8, !dbg !2955, !tbaa !786
  %126 = icmp eq ptr %124, null, !dbg !2956
  %127 = select i1 %126, i64 9, i64 10, !dbg !2957
  br label %128, !dbg !2957

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2959
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2960
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !2961
  ret void, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2962 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2975
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2970, metadata !DIExpression(), metadata !2975, metadata ptr %5, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2967, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2968, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !2977
  call void @llvm.va_start(ptr nonnull %5), !dbg !2978
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2979
  call void @llvm.va_end(ptr nonnull %5), !dbg !2980
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !2981
  ret void, !dbg !2981
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2982 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2983, !tbaa !786
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %1), !dbg !2983
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.17.95, i32 noundef 5) #40, !dbg !2984
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.96) #40, !dbg !2984
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.19.97, i32 noundef 5) #40, !dbg !2985
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.98, ptr noundef nonnull @.str.21) #40, !dbg !2985
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !2986
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.99) #40, !dbg !2986
  ret void, !dbg !2987
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3002
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3010
  %5 = icmp eq ptr %4, null, !dbg !3012
  br i1 %5, label %6, label %7, !dbg !3014

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3015
  unreachable, !dbg !3015

7:                                                ; preds = %3
  ret ptr %4, !dbg !3016
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3000, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3017
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3018
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3019
  %5 = icmp eq ptr %4, null, !dbg !3021
  br i1 %5, label %6, label %7, !dbg !3022

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3023
  unreachable, !dbg !3023

7:                                                ; preds = %3
  ret ptr %4, !dbg !3024
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3025 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3027, metadata !DIExpression()), !dbg !3028
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3029
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3030
  %3 = icmp eq ptr %2, null, !dbg !3032
  br i1 %3, label %4, label %5, !dbg !3033

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3034
  unreachable, !dbg !3034

5:                                                ; preds = %1
  ret ptr %2, !dbg !3035
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()), !dbg !3046
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3049
  %3 = icmp eq ptr %2, null, !dbg !3051
  br i1 %3, label %4, label %5, !dbg !3052

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3053
  unreachable, !dbg !3053

5:                                                ; preds = %1
  ret ptr %2, !dbg !3054
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3055 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %0, metadata !3027, metadata !DIExpression()), !dbg !3061
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3064
  %3 = icmp eq ptr %2, null, !dbg !3066
  br i1 %3, label %4, label %5, !dbg !3067

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3068
  unreachable, !dbg !3068

5:                                                ; preds = %1
  ret ptr %2, !dbg !3069
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3070 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3082
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3084
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3086
  %5 = icmp eq ptr %4, null, !dbg !3088
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3090
  unreachable, !dbg !3090

7:                                                ; preds = %2
  ret ptr %4, !dbg !3091
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3092 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3093 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3106
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3108
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3110
  %5 = icmp eq ptr %4, null, !dbg !3112
  br i1 %5, label %6, label %7, !dbg !3113

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3114
  unreachable, !dbg !3114

7:                                                ; preds = %2
  ret ptr %4, !dbg !3115
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3116 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !3124, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %2, metadata !3128, metadata !DIExpression()), !dbg !3129
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3132
  %5 = icmp eq ptr %4, null, !dbg !3134
  br i1 %5, label %6, label %7, !dbg !3135

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3136
  unreachable, !dbg !3136

7:                                                ; preds = %3
  ret ptr %4, !dbg !3137
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3138 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr null, metadata !2997, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %0, metadata !3000, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3145
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3148
  %4 = icmp eq ptr %3, null, !dbg !3150
  br i1 %4, label %5, label %6, !dbg !3151

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3152
  unreachable, !dbg !3152

6:                                                ; preds = %2
  ret ptr %3, !dbg !3153
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3158, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr null, metadata !3120, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %0, metadata !3121, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr null, metadata !3124, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %0, metadata !3127, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3163
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3166
  %4 = icmp eq ptr %3, null, !dbg !3168
  br i1 %4, label %5, label %6, !dbg !3169

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3170
  unreachable, !dbg !3170

6:                                                ; preds = %2
  ret ptr %3, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3172 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 1, metadata !722, metadata !DIExpression()), !dbg !3179
  %3 = load i64, ptr %1, align 8, !dbg !3181, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !723, metadata !DIExpression()), !dbg !3179
  %4 = icmp eq ptr %0, null, !dbg !3182
  br i1 %4, label %5, label %8, !dbg !3184

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3185
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3188
  br label %15, !dbg !3188

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3189
  %10 = add nuw i64 %9, 1, !dbg !3189
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3189
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3189
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %13, metadata !723, metadata !DIExpression()), !dbg !3179
  br i1 %12, label %14, label %15, !dbg !3192

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3193
  unreachable, !dbg !3193

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3179
  call void @llvm.dbg.value(metadata i64 %16, metadata !723, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %16, metadata !3000, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 1, metadata !3001, metadata !DIExpression()), !dbg !3194
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3196
  call void @llvm.dbg.value(metadata ptr %17, metadata !3005, metadata !DIExpression()), !dbg !3197
  %18 = icmp eq ptr %17, null, !dbg !3199
  br i1 %18, label %19, label %20, !dbg !3200

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3201
  unreachable, !dbg !3201

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !720, metadata !DIExpression()), !dbg !3179
  store i64 %16, ptr %1, align 8, !dbg !3202, !tbaa !2248
  ret ptr %17, !dbg !3203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !722, metadata !DIExpression()), !dbg !3204
  %4 = load i64, ptr %1, align 8, !dbg !3205, !tbaa !2248
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !723, metadata !DIExpression()), !dbg !3204
  %5 = icmp eq ptr %0, null, !dbg !3206
  br i1 %5, label %6, label %13, !dbg !3207

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3208
  br i1 %7, label %8, label %20, !dbg !3209

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !723, metadata !DIExpression()), !dbg !3204
  %10 = icmp ugt i64 %2, 128, !dbg !3212
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !723, metadata !DIExpression()), !dbg !3204
  br label %20, !dbg !3214

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3215
  %15 = add nuw i64 %14, 1, !dbg !3215
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3215
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3215
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !723, metadata !DIExpression()), !dbg !3204
  br i1 %17, label %19, label %20, !dbg !3216

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3217
  unreachable, !dbg !3217

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !723, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %21, metadata !3000, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3218
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3220
  call void @llvm.dbg.value(metadata ptr %22, metadata !3005, metadata !DIExpression()), !dbg !3221
  %23 = icmp eq ptr %22, null, !dbg !3223
  br i1 %23, label %24, label %25, !dbg !3224

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3225
  unreachable, !dbg !3225

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !720, metadata !DIExpression()), !dbg !3204
  store i64 %21, ptr %1, align 8, !dbg !3226, !tbaa !2248
  ret ptr %22, !dbg !3227
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !734, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !735, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !736, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !737, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !738, metadata !DIExpression()), !dbg !3228
  %6 = load i64, ptr %1, align 8, !dbg !3229, !tbaa !2248
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !739, metadata !DIExpression()), !dbg !3228
  %7 = ashr i64 %6, 1, !dbg !3230
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3230
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3230
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !740, metadata !DIExpression()), !dbg !3228
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !740, metadata !DIExpression()), !dbg !3228
  %12 = icmp sgt i64 %3, -1, !dbg !3233
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3235
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !740, metadata !DIExpression()), !dbg !3228
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3236
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3236
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !741, metadata !DIExpression()), !dbg !3228
  %18 = icmp slt i64 %17, 128, !dbg !3236
  %19 = select i1 %18, i64 128, i64 0, !dbg !3236
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !742, metadata !DIExpression()), !dbg !3228
  %21 = icmp eq i64 %20, 0, !dbg !3237
  br i1 %21, label %26, label %22, !dbg !3239

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !740, metadata !DIExpression()), !dbg !3228
  %24 = srem i64 %20, %4, !dbg !3242
  %25 = sub nsw i64 %20, %24, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !741, metadata !DIExpression()), !dbg !3228
  br label %26, !dbg !3244

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3228
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !741, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !740, metadata !DIExpression()), !dbg !3228
  %29 = icmp eq ptr %0, null, !dbg !3245
  br i1 %29, label %30, label %31, !dbg !3247

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3248, !tbaa !2248
  br label %31, !dbg !3249

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3250
  %33 = icmp slt i64 %32, %2, !dbg !3252
  br i1 %33, label %34, label %46, !dbg !3253

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3254
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3254
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !740, metadata !DIExpression()), !dbg !3228
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3255
  br i1 %40, label %45, label %41, !dbg !3255

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3256
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3256
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !741, metadata !DIExpression()), !dbg !3228
  br i1 %43, label %45, label %46, !dbg !3257

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !3258
  unreachable, !dbg !3258

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3228
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !741, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !740, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %48, metadata !3075, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %48, metadata !3081, metadata !DIExpression()), !dbg !3261
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3263
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !3264
  call void @llvm.dbg.value(metadata ptr %50, metadata !3005, metadata !DIExpression()), !dbg !3265
  %51 = icmp eq ptr %50, null, !dbg !3267
  br i1 %51, label %52, label %53, !dbg !3268

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !3269
  unreachable, !dbg !3269

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !734, metadata !DIExpression()), !dbg !3228
  store i64 %47, ptr %1, align 8, !dbg !3270, !tbaa !2248
  ret ptr %50, !dbg !3271
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %0, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 1, metadata !3279, metadata !DIExpression()), !dbg !3280
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3282
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3283
  %3 = icmp eq ptr %2, null, !dbg !3285
  br i1 %3, label %4, label %5, !dbg !3286

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3287
  unreachable, !dbg !3287

5:                                                ; preds = %1
  ret ptr %2, !dbg !3288
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3289 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3277 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3276, metadata !DIExpression()), !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3290
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3292
  %4 = icmp eq ptr %3, null, !dbg !3294
  br i1 %4, label %5, label %6, !dbg !3295

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3296
  unreachable, !dbg !3296

6:                                                ; preds = %2
  ret ptr %3, !dbg !3297
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 1, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 1, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 1, metadata !3311, metadata !DIExpression()), !dbg !3312
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3315
  %3 = icmp eq ptr %2, null, !dbg !3317
  br i1 %3, label %4, label %5, !dbg !3318

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3319
  unreachable, !dbg !3319

5:                                                ; preds = %1
  ret ptr %2, !dbg !3320
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3303 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3311, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3311, metadata !DIExpression()), !dbg !3322
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3325
  %4 = icmp eq ptr %3, null, !dbg !3327
  br i1 %4, label %5, label %6, !dbg !3328

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3329
  unreachable, !dbg !3329

6:                                                ; preds = %2
  ret ptr %3, !dbg !3330
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3331 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3335, metadata !DIExpression()), !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()), !dbg !3338
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3341
  %4 = icmp eq ptr %3, null, !dbg !3343
  br i1 %4, label %5, label %6, !dbg !3344

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3345
  unreachable, !dbg !3345

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3346, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3353
  ret ptr %3, !dbg !3354
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3359, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3364
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3367
  %4 = icmp eq ptr %3, null, !dbg !3369
  br i1 %4, label %5, label %6, !dbg !3370

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3371
  unreachable, !dbg !3371

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3346, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3374
  ret ptr %3, !dbg !3375
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3376 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3383
  %3 = add nsw i64 %1, 1, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %3, metadata !3040, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %3, metadata !3042, metadata !DIExpression()), !dbg !3387
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3389
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3390
  %5 = icmp eq ptr %4, null, !dbg !3392
  br i1 %5, label %6, label %7, !dbg !3393

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3394
  unreachable, !dbg !3394

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3382, metadata !DIExpression()), !dbg !3383
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3395
  store i8 0, ptr %8, align 1, !dbg !3396, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %4, metadata !3346, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3397
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3399
  ret ptr %4, !dbg !3400
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3404
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3405
  %3 = add i64 %2, 1, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %0, metadata !3335, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %3, metadata !3336, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %3, metadata !3027, metadata !DIExpression()), !dbg !3409
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3412
  %5 = icmp eq ptr %4, null, !dbg !3414
  br i1 %5, label %6, label %7, !dbg !3415

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3416
  unreachable, !dbg !3416

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3346, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %3, metadata !3350, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !3419
  ret ptr %4, !dbg !3420
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3421 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3426, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3427
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.110, ptr noundef nonnull @.str.2.111, i32 noundef 5) #40, !dbg !3426
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef %2) #40, !dbg !3426
  %3 = icmp eq i32 %1, 0, !dbg !3426
  tail call void @llvm.assume(i1 %3), !dbg !3426
  tail call void @abort() #42, !dbg !3428
  unreachable, !dbg !3428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !3429 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3436
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3436
  br label %2, !dbg !3437

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3432, metadata !DIExpression()), !dbg !3436
  %4 = load i8, ptr %3, align 1, !dbg !3438, !tbaa !858
  %5 = icmp eq i8 %4, 47, !dbg !3438
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3439
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3432, metadata !DIExpression()), !dbg !3436
  br i1 %5, label %2, label %7, !dbg !3437, !llvm.loop !3440

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3441
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3443
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3436
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3434, metadata !DIExpression()), !dbg !3445
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !3433, metadata !DIExpression()), !dbg !3436
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3432, metadata !DIExpression()), !dbg !3436
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3446

12:                                               ; preds = %7
  ret ptr %9, !dbg !3447

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3448
  %15 = icmp eq i8 %14, 0, !dbg !3448
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3452
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3452
  br label %18, !dbg !3452

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3436
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3436
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3433, metadata !DIExpression()), !dbg !3436
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3432, metadata !DIExpression()), !dbg !3436
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3453
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3434, metadata !DIExpression()), !dbg !3445
  %22 = load i8, ptr %21, align 1, !dbg !3441, !tbaa !858
  br label %7, !dbg !3454, !llvm.loop !3455
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #37 !dbg !3457 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3462
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3460, metadata !DIExpression()), !dbg !3462
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3465
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3460, metadata !DIExpression()), !dbg !3462
  %4 = icmp ugt i64 %2, 1, !dbg !3466
  br i1 %4, label %5, label %13, !dbg !3468

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3460, metadata !DIExpression()), !dbg !3462
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3469
  %8 = load i8, ptr %7, align 1, !dbg !3469, !tbaa !858
  %9 = icmp eq i8 %8, 47, !dbg !3469
  br i1 %9, label %10, label %13, !dbg !3470

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3460, metadata !DIExpression()), !dbg !3462
  %12 = icmp ugt i64 %11, 1, !dbg !3466
  br i1 %12, label %5, label %13, !dbg !3468, !llvm.loop !3472

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3461, metadata !DIExpression()), !dbg !3462
  ret i64 %14, !dbg !3475
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3519
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3515, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3519
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3524
  %3 = load i32, ptr %0, align 8, !dbg !3526, !tbaa !3527
  %4 = and i32 %3, 32, !dbg !3528
  %5 = icmp eq i32 %4, 0, !dbg !3528
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3519
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !3529
  %7 = icmp eq i32 %6, 0, !dbg !3530
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3518, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3519
  br i1 %5, label %8, label %18, !dbg !3531

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3533
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3515, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3519
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3534
  %11 = xor i1 %7, true, !dbg !3534
  %12 = sext i1 %11 to i32, !dbg !3534
  br i1 %10, label %21, label %13, !dbg !3534

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !3535
  %15 = load i32, ptr %14, align 4, !dbg !3535, !tbaa !849
  %16 = icmp ne i32 %15, 9, !dbg !3536
  %17 = sext i1 %16 to i32, !dbg !3537
  br label %21, !dbg !3537

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3538

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !3540
  store i32 0, ptr %20, align 4, !dbg !3542, !tbaa !849
  br label %21, !dbg !3540

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3519
  ret i32 %22, !dbg !3543
}

; Function Attrs: nounwind
declare !dbg !3544 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3548 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3586, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3590
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3591
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3588, metadata !DIExpression()), !dbg !3590
  %3 = icmp slt i32 %2, 0, !dbg !3592
  br i1 %3, label %4, label %6, !dbg !3594

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3595
  br label %24, !dbg !3596

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !3597
  %8 = icmp eq i32 %7, 0, !dbg !3597
  br i1 %8, label %13, label %9, !dbg !3599

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3600
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !3601
  %12 = icmp eq i64 %11, -1, !dbg !3602
  br i1 %12, label %16, label %13, !dbg !3603

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !3604
  %15 = icmp eq i32 %14, 0, !dbg !3604
  br i1 %15, label %16, label %18, !dbg !3605

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3590
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3606
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3589, metadata !DIExpression()), !dbg !3590
  br label %24, !dbg !3607

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !3608
  %20 = load i32, ptr %19, align 4, !dbg !3608, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3587, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3590
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3606
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3589, metadata !DIExpression()), !dbg !3590
  %22 = icmp eq i32 %20, 0, !dbg !3609
  br i1 %22, label %24, label %23, !dbg !3607

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3611, !tbaa !849
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3589, metadata !DIExpression()), !dbg !3590
  br label %24, !dbg !3613

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3590
  ret i32 %25, !dbg !3614
}

; Function Attrs: nofree nounwind
declare !dbg !3615 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3616 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3617 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3618 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3621 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3660
  %2 = icmp eq ptr %0, null, !dbg !3661
  br i1 %2, label %6, label %3, !dbg !3663

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !3664
  %5 = icmp eq i32 %4, 0, !dbg !3664
  br i1 %5, label %6, label %8, !dbg !3665

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3666
  br label %16, !dbg !3667

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3668, metadata !DIExpression()), !dbg !3673
  %9 = load i32, ptr %0, align 8, !dbg !3675, !tbaa !3527
  %10 = and i32 %9, 256, !dbg !3677
  %11 = icmp eq i32 %10, 0, !dbg !3677
  br i1 %11, label %14, label %12, !dbg !3678

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !3679
  br label %14, !dbg !3679

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3680
  br label %16, !dbg !3681

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3660
  ret i32 %17, !dbg !3682
}

; Function Attrs: nofree nounwind
declare !dbg !3683 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3684 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3723, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3724, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3725, metadata !DIExpression()), !dbg !3729
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3730
  %5 = load ptr, ptr %4, align 8, !dbg !3730, !tbaa !3731
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3732
  %7 = load ptr, ptr %6, align 8, !dbg !3732, !tbaa !3733
  %8 = icmp eq ptr %5, %7, !dbg !3734
  br i1 %8, label %9, label %27, !dbg !3735

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3736
  %11 = load ptr, ptr %10, align 8, !dbg !3736, !tbaa !1040
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3737
  %13 = load ptr, ptr %12, align 8, !dbg !3737, !tbaa !3738
  %14 = icmp eq ptr %11, %13, !dbg !3739
  br i1 %14, label %15, label %27, !dbg !3740

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3741
  %17 = load ptr, ptr %16, align 8, !dbg !3741, !tbaa !3742
  %18 = icmp eq ptr %17, null, !dbg !3743
  br i1 %18, label %19, label %27, !dbg !3744

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3745
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3726, metadata !DIExpression()), !dbg !3747
  %22 = icmp eq i64 %21, -1, !dbg !3748
  br i1 %22, label %29, label %23, !dbg !3750

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3751, !tbaa !3527
  %25 = and i32 %24, -17, !dbg !3751
  store i32 %25, ptr %0, align 8, !dbg !3751, !tbaa !3527
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3752
  store i64 %21, ptr %26, align 8, !dbg !3753, !tbaa !3754
  br label %29, !dbg !3755

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3756
  br label %29, !dbg !3757

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3729
  ret i32 %30, !dbg !3758
}

; Function Attrs: nofree nounwind
declare !dbg !3759 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3762 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3768, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3769, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3770, metadata !DIExpression()), !dbg !3772
  %5 = icmp eq ptr %1, null, !dbg !3773
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3775
  %7 = select i1 %5, ptr @.str.125, ptr %1, !dbg !3775
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3769, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3768, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3767, metadata !DIExpression()), !dbg !3772
  %9 = icmp eq ptr %3, null, !dbg !3776
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3778
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3770, metadata !DIExpression()), !dbg !3772
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3771, metadata !DIExpression()), !dbg !3772
  %12 = icmp ult i64 %11, -3, !dbg !3780
  br i1 %12, label %13, label %17, !dbg !3782

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !3783
  %15 = icmp eq i32 %14, 0, !dbg !3783
  br i1 %15, label %16, label %29, !dbg !3784

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3785, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %10, metadata !3792, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 0, metadata !3795, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 8, metadata !3796, metadata !DIExpression()), !dbg !3797
  store i64 0, ptr %10, align 1, !dbg !3799
  br label %29, !dbg !3800

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3801
  br i1 %18, label %19, label %20, !dbg !3803

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !3804
  unreachable, !dbg !3804

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3805

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !3807
  br i1 %23, label %29, label %24, !dbg !3808

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3809
  br i1 %25, label %29, label %26, !dbg !3812

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3813, !tbaa !858
  %28 = zext i8 %27 to i32, !dbg !3814
  store i32 %28, ptr %6, align 4, !dbg !3815, !tbaa !849
  br label %29, !dbg !3816

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3772
  ret i64 %30, !dbg !3817
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3818 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !3824 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3827, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3828, metadata !DIExpression()), !dbg !3830
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3831
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3829, metadata !DIExpression()), !dbg !3830
  br i1 %5, label %6, label %8, !dbg !3833

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !3834
  store i32 12, ptr %7, align 4, !dbg !3836, !tbaa !849
  br label %12, !dbg !3837

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3829, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %0, metadata !3838, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %9, metadata !3841, metadata !DIExpression()), !dbg !3842
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3844
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !3845
  br label %12, !dbg !3846

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3830
  ret ptr %13, !dbg !3847
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3848 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3857
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3853, metadata !DIExpression(), metadata !3857, metadata ptr %2, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !3859
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !3860
  %4 = icmp eq i32 %3, 0, !dbg !3860
  br i1 %4, label %5, label %12, !dbg !3862

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3863, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata !816, metadata !3866, metadata !DIExpression()), !dbg !3867
  %6 = load i16, ptr %2, align 16, !dbg !3870
  %7 = icmp eq i16 %6, 67, !dbg !3870
  br i1 %7, label %11, label %8, !dbg !3871

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3863, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr @.str.1.130, metadata !3866, metadata !DIExpression()), !dbg !3872
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.130, i64 6), !dbg !3874
  %10 = icmp eq i32 %9, 0, !dbg !3875
  br i1 %10, label %11, label %12, !dbg !3876

11:                                               ; preds = %8, %5
  br label %12, !dbg !3877

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3858
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !3878
  ret i1 %13, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3879 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3886
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3884, metadata !DIExpression()), !dbg !3886
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3885, metadata !DIExpression()), !dbg !3886
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !3887
  ret i32 %4, !dbg !3888
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3889 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !3895
  ret ptr %2, !dbg !3896
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3897 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3899, metadata !DIExpression()), !dbg !3901
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !3902
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3900, metadata !DIExpression()), !dbg !3901
  ret ptr %2, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3904 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3906, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3907, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %0, metadata !3899, metadata !DIExpression()), !dbg !3914
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !3916
  call void @llvm.dbg.value(metadata ptr %4, metadata !3900, metadata !DIExpression()), !dbg !3914
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3909, metadata !DIExpression()), !dbg !3913
  %5 = icmp eq ptr %4, null, !dbg !3917
  br i1 %5, label %6, label %9, !dbg !3918

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3919
  br i1 %7, label %19, label %8, !dbg !3922

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3923, !tbaa !858
  br label %19, !dbg !3924

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3910, metadata !DIExpression()), !dbg !3926
  %11 = icmp ult i64 %10, %2, !dbg !3927
  br i1 %11, label %12, label %14, !dbg !3929

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3930
  call void @llvm.dbg.value(metadata ptr %1, metadata !3932, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %4, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %13, metadata !3936, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !3939
  br label %19, !dbg !3940

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3941
  br i1 %15, label %19, label %16, !dbg !3944

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %1, metadata !3932, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %4, metadata !3935, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %17, metadata !3936, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !3949
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3950
  store i8 0, ptr %18, align 1, !dbg !3951, !tbaa !858
  br label %19, !dbg !3952

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3953
  ret i32 %20, !dbg !3954
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !357, !361, !700, !376, !668, !702, !427, !441, !489, !704, !660, !711, !744, !746, !749, !751, !753, !755, !684, !757, !759, !763, !765}
!llvm.ident = !{!767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767, !767}
!llvm.module.flags = !{!768, !769, !770, !771, !772, !773, !774}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/dirname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a60dd6e6d60eda028b732002e611b3c7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 152)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 66)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 50)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 62)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1040, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 130)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "longopts", scope: !64, file: !2, line: 34, type: !342, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/dirname.o -MD -MP -MF src/.deps/dirname.Tpo -c src/dirname.c -o src/.dirname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !88, globals: !98, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !72}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 337, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "_ISupper", value: 256)
!77 = !DIEnumerator(name: "_ISlower", value: 512)
!78 = !DIEnumerator(name: "_ISalpha", value: 1024)
!79 = !DIEnumerator(name: "_ISdigit", value: 2048)
!80 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!81 = !DIEnumerator(name: "_ISspace", value: 8192)
!82 = !DIEnumerator(name: "_ISprint", value: 16384)
!83 = !DIEnumerator(name: "_ISgraph", value: 32768)
!84 = !DIEnumerator(name: "_ISblank", value: 1)
!85 = !DIEnumerator(name: "_IScntrl", value: 2)
!86 = !DIEnumerator(name: "_ISpunct", value: 4)
!87 = !DIEnumerator(name: "_ISalnum", value: 8)
!88 = !{!89, !90, !91, !94, !68, !96, !97}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 18, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !99, !104, !109, !114, !116, !194, !224, !229, !231, !236, !241, !243, !245, !247, !252, !254, !256, !258, !263, !265, !267, !269, !271, !273, !275, !277, !282, !287, !292, !297, !299, !301, !303, !305, !307, !312, !314, !316, !321, !326, !331, !336, !338, !340, !62}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 14)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 16)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 13)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !106, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "dot", scope: !118, file: !2, line: 124, type: !95, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 78, type: !119, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !122)
!119 = !DISubroutineType(types: !120)
!120 = !{!68, !68, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!122 = !{!123, !124, !125, !127, !129, !133, !139, !141, !193}
!123 = !DILocalVariable(name: "argc", arg: 1, scope: !118, file: !2, line: 78, type: !68)
!124 = !DILocalVariable(name: "argv", arg: 2, scope: !118, file: !2, line: 78, type: !121)
!125 = !DILocalVariable(name: "use_nuls", scope: !118, file: !2, line: 80, type: !126)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DILocalVariable(name: "c", scope: !128, file: !2, line: 92, type: !68)
!128 = distinct !DILexicalBlock(scope: !118, file: !2, line: 91, column: 5)
!129 = !DILocalVariable(name: "result", scope: !130, file: !2, line: 119, type: !94)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 118, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 117, column: 3)
!132 = distinct !DILexicalBlock(scope: !118, file: !2, line: 117, column: 3)
!133 = !DILocalVariable(name: "len", scope: !130, file: !2, line: 120, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !135, line: 130, baseType: !136)
!135 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !137, line: 18, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!138 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!139 = !DILocalVariable(name: "__ptr", scope: !140, file: !2, line: 129, type: !94)
!140 = distinct !DILexicalBlock(scope: !130, file: !2, line: 129, column: 7)
!141 = !DILocalVariable(name: "__stream", scope: !140, file: !2, line: 129, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !163, !165, !166, !167, !170, !171, !173, !174, !177, !179, !182, !185, !186, !187, !188, !189}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !146, line: 51, baseType: !68, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !145, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !145, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !145, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !145, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !145, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !145, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !145, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !145, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !145, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !145, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !145, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !145, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !146, line: 36, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !145, file: !146, line: 70, baseType: !164, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !145, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !145, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !145, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !169, line: 152, baseType: !138)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !145, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !145, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!172 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !145, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !145, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !146, line: 43, baseType: null)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !145, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !169, line: 153, baseType: !138)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !145, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !146, line: 37, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !145, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !146, line: 38, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !145, file: !146, line: 93, baseType: !164, size: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !145, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !145, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !145, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !145, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 20)
!193 = !DILocalVariable(name: "__cnt", scope: !140, file: !2, line: 129, type: !91)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !196, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!196 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !197, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !199)
!197 = !DISubroutineType(cc: DW_CC_nocall, types: !198)
!198 = !{null, !94, !94}
!199 = !{!200, !201, !202, !205, !206, !207, !208, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223}
!200 = !DILocalVariable(name: "program", arg: 1, scope: !196, file: !67, line: 573, type: !94)
!201 = !DILocalVariable(name: "option", arg: 2, scope: !196, file: !67, line: 573, type: !94)
!202 = !DILocalVariable(name: "term", scope: !203, file: !67, line: 585, type: !94)
!203 = distinct !DILexicalBlock(scope: !204, file: !67, line: 582, column: 5)
!204 = distinct !DILexicalBlock(scope: !196, file: !67, line: 581, column: 7)
!205 = !DILocalVariable(name: "double_space", scope: !196, file: !67, line: 594, type: !126)
!206 = !DILocalVariable(name: "first_word", scope: !196, file: !67, line: 595, type: !94)
!207 = !DILocalVariable(name: "option_text", scope: !196, file: !67, line: 596, type: !94)
!208 = !DILocalVariable(name: "s", scope: !209, file: !67, line: 608, type: !94)
!209 = distinct !DILexicalBlock(scope: !210, file: !67, line: 605, column: 5)
!210 = distinct !DILexicalBlock(scope: !211, file: !67, line: 604, column: 12)
!211 = distinct !DILexicalBlock(scope: !196, file: !67, line: 597, column: 7)
!212 = !DILocalVariable(name: "spaces", scope: !209, file: !67, line: 609, type: !91)
!213 = !DILocalVariable(name: "anchor_len", scope: !196, file: !67, line: 620, type: !91)
!214 = !DILocalVariable(name: "desc_text", scope: !196, file: !67, line: 625, type: !94)
!215 = !DILocalVariable(name: "__ptr", scope: !216, file: !67, line: 644, type: !94)
!216 = distinct !DILexicalBlock(scope: !196, file: !67, line: 644, column: 3)
!217 = !DILocalVariable(name: "__stream", scope: !216, file: !67, line: 644, type: !142)
!218 = !DILocalVariable(name: "__cnt", scope: !216, file: !67, line: 644, type: !91)
!219 = !DILocalVariable(name: "url_program", scope: !196, file: !67, line: 648, type: !94)
!220 = !DILocalVariable(name: "__ptr", scope: !221, file: !67, line: 686, type: !94)
!221 = distinct !DILexicalBlock(scope: !196, file: !67, line: 686, column: 3)
!222 = !DILocalVariable(name: "__stream", scope: !221, file: !67, line: 686, type: !142)
!223 = !DILocalVariable(name: "__cnt", scope: !221, file: !67, line: 686, type: !91)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 5)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !226, isLocal: true, isDefinition: true)
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
!242 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !59, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !226, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !233, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !226, isLocal: true, isDefinition: true)
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
!264 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !260, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 17)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 40)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 15)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 61)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !249, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !226, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !226, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !106, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 22)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !289, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !233, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 71)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 27)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 51)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 12)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !226, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !226, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1024, elements: !234)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !345, line: 50, size: 256, elements: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!346 = !{!347, !348, !349, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !345, line: 52, baseType: !94, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !344, file: !345, line: 55, baseType: !68, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !344, file: !345, line: 56, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !345, line: 57, baseType: !68, size: 32, offset: 192)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !354, line: 3, type: !289, isLocal: true, isDefinition: true)
!354 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "Version", scope: !357, file: !354, line: 3, type: !94, isLocal: false, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C11, file: !354, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !358, splitDebugInlining: false, nameTableKind: None)
!358 = !{!352, !355}
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "file_name", scope: !361, file: !362, line: 45, type: !94, isLocal: true, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !363, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!363 = !{!364, !366, !368, !370, !359, !372}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !362, line: 121, type: !260, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !362, line: 121, type: !333, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !362, line: 123, type: !260, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !362, line: 126, type: !249, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !361, file: !362, line: 55, type: !126, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !376, file: !377, line: 66, type: !422, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C11, file: !377, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !378, globals: !379, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!378 = !{!90, !97}
!379 = !{!380, !382, !401, !403, !405, !407, !374, !409, !411, !413, !415, !420}
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !377, line: 272, type: !226, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "old_file_name", scope: !384, file: !377, line: 304, type: !94, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "verror_at_line", scope: !377, file: !377, line: 298, type: !385, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !394)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !68, !68, !94, !74, !94, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !389)
!389 = !{!390, !391, !392, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !388, file: !377, baseType: !74, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !388, file: !377, baseType: !74, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !388, file: !377, baseType: !90, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !388, file: !377, baseType: !90, size: 64, offset: 128)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DILocalVariable(name: "status", arg: 1, scope: !384, file: !377, line: 298, type: !68)
!396 = !DILocalVariable(name: "errnum", arg: 2, scope: !384, file: !377, line: 298, type: !68)
!397 = !DILocalVariable(name: "file_name", arg: 3, scope: !384, file: !377, line: 298, type: !94)
!398 = !DILocalVariable(name: "line_number", arg: 4, scope: !384, file: !377, line: 298, type: !74)
!399 = !DILocalVariable(name: "message", arg: 5, scope: !384, file: !377, line: 298, type: !94)
!400 = !DILocalVariable(name: "args", arg: 6, scope: !384, file: !377, line: 298, type: !387)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_line_number", scope: !384, file: !377, line: 305, type: !74, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !377, line: 338, type: !233, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !377, line: 346, type: !19, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !377, line: 346, type: !59, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "error_message_count", scope: !376, file: !377, line: 69, type: !74, isLocal: false, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !376, file: !377, line: 295, type: !68, isLocal: false, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !377, line: 208, type: !260, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !377, line: 208, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 21)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !377, line: 214, type: !226, isLocal: true, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "program_name", scope: !427, file: !428, line: 31, type: !94, isLocal: false, isDefinition: true)
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !429, globals: !430, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!429 = !{!90, !89}
!430 = !{!425, !431, !433}
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !428, line: 46, type: !19, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !428, line: 49, type: !233, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "utf07FF", scope: !437, file: !438, line: 46, type: !465, isLocal: true, isDefinition: true)
!437 = distinct !DISubprogram(name: "proper_name_lite", scope: !438, file: !438, line: 38, type: !439, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !443)
!438 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!439 = !DISubroutineType(types: !440)
!440 = !{!94, !94, !94}
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !442, splitDebugInlining: false, nameTableKind: None)
!442 = !{!435}
!443 = !{!444, !445, !446, !447, !452}
!444 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !437, file: !438, line: 38, type: !94)
!445 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !437, file: !438, line: 38, type: !94)
!446 = !DILocalVariable(name: "translation", scope: !437, file: !438, line: 40, type: !94)
!447 = !DILocalVariable(name: "w", scope: !437, file: !438, line: 47, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !449, line: 37, baseType: !450)
!449 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !74)
!452 = !DILocalVariable(name: "mbs", scope: !437, file: !438, line: 48, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !455)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !457)
!456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !457, file: !456, line: 15, baseType: !68, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !457, file: !456, line: 20, baseType: !461, size: 32, offset: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !456, line: 16, size: 32, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !461, file: !456, line: 18, baseType: !74, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !461, file: !456, line: 19, baseType: !233, size: 32)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 16, elements: !60)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !468, line: 78, type: !19, isLocal: true, isDefinition: true)
!468 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !468, line: 79, type: !238, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !468, line: 80, type: !111, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !468, line: 81, type: !111, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !468, line: 82, type: !190, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !468, line: 83, type: !59, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !468, line: 84, type: !19, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !468, line: 85, type: !260, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !468, line: 86, type: !260, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !468, line: 87, type: !19, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !489, file: !468, line: 76, type: !575, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !468, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !490, retainedTypes: !510, globals: !511, splitDebugInlining: false, nameTableKind: None)
!490 = !{!491, !505, !72}
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !492, line: 42, baseType: !74, size: 32, elements: !493)
!492 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!494 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!495 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!496 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!497 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!498 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!499 = !DIEnumerator(name: "c_quoting_style", value: 5)
!500 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!501 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!502 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!503 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!504 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !492, line: 254, baseType: !74, size: 32, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!508 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!509 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!510 = !{!90, !68, !96, !91}
!511 = !{!466, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !512, !516, !526, !528, !533, !535, !537, !539, !541, !564, !571, !573}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !489, file: !468, line: 92, type: !514, isLocal: false, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 320, elements: !50)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !489, file: !468, line: 1040, type: !518, isLocal: false, isDefinition: true)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !468, line: 56, size: 448, elements: !519)
!519 = !{!520, !521, !522, !524, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !518, file: !468, line: 59, baseType: !491, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !468, line: 62, baseType: !68, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !518, file: !468, line: 66, baseType: !523, size: 256, offset: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !20)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !518, file: !468, line: 69, baseType: !94, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !518, file: !468, line: 72, baseType: !94, size: 64, offset: 384)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !489, file: !468, line: 107, type: !518, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "slot0", scope: !489, file: !468, line: 831, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 256)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !468, line: 321, type: !59, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !468, line: 357, type: !59, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !468, line: 358, type: !59, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !468, line: 199, type: !260, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quote", scope: !543, file: !468, line: 228, type: !562, isLocal: true, isDefinition: true)
!543 = distinct !DISubprogram(name: "gettext_quote", scope: !468, file: !468, line: 197, type: !544, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!94, !94, !491}
!546 = !{!547, !548, !549, !550, !551}
!547 = !DILocalVariable(name: "msgid", arg: 1, scope: !543, file: !468, line: 197, type: !94)
!548 = !DILocalVariable(name: "s", arg: 2, scope: !543, file: !468, line: 197, type: !491)
!549 = !DILocalVariable(name: "translation", scope: !543, file: !468, line: 199, type: !94)
!550 = !DILocalVariable(name: "w", scope: !543, file: !468, line: 229, type: !448)
!551 = !DILocalVariable(name: "mbs", scope: !543, file: !468, line: 230, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !554, file: !456, line: 15, baseType: !68, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !554, file: !456, line: 20, baseType: !558, size: 32, offset: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !456, line: 16, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !558, file: !456, line: 18, baseType: !74, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !558, file: !456, line: 19, baseType: !233, size: 32)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !563)
!563 = !{!61, !235}
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "slotvec", scope: !489, file: !468, line: 834, type: !566, isLocal: true, isDefinition: true)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !468, line: 823, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !468, line: 825, baseType: !91, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !567, file: !468, line: 826, baseType: !89, size: 64, offset: 64)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "nslots", scope: !489, file: !468, line: 832, type: !68, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "slotvec0", scope: !489, file: !468, line: 833, type: !567, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 704, elements: !577)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!577 = !{!578}
!578 = !DISubrange(count: 11)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !581, line: 67, type: !333, isLocal: true, isDefinition: true)
!581 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !581, line: 69, type: !260, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !260, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !233, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !581, line: 85, type: !59, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 171)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 34)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !581, line: 105, type: !106, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !581, line: 109, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 23)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !581, line: 113, type: !9, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !581, line: 120, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 32)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !581, line: 127, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 36)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !581, line: 134, type: !284, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !581, line: 142, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 44)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !581, line: 150, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 48)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !581, line: 159, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 52)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !581, line: 170, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 60)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !190, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !309, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !190, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !101, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !284, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !3, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 29)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !660, file: !661, line: 26, type: !663, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!662 = !{!658}
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 376, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 47)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "exit_failure", scope: !668, file: !669, line: 24, type: !671, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!670 = !{!666}
!671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !249, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !260, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !279, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 108, type: !44, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "internal_state", scope: !684, file: !681, line: 97, type: !687, isLocal: true, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !{!90, !91, !97}
!686 = !{!679, !682}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !689, file: !456, line: 15, baseType: !68, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !689, file: !456, line: 20, baseType: !693, size: 32, offset: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !456, line: 16, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !693, file: !456, line: 18, baseType: !74, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !693, file: !456, line: 19, baseType: !233, size: 32)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !238, isLocal: true, isDefinition: true)
!699 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dirname-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-dirname-lgpl.Tpo -c lib/dirname-lgpl.c -o lib/.libcoreutils_a-dirname-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !581, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !705, retainedTypes: !709, globals: !710, splitDebugInlining: false, nameTableKind: None)
!705 = !{!706}
!706 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 40, baseType: !74, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!709 = !{!90}
!710 = !{!579, !582, !584, !586, !588, !590, !595, !600, !602, !607, !609, !614, !619, !621, !626, !631, !636, !641, !643, !645, !647, !649, !651, !653}
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!713 = !{!714, !726}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !715, file: !712, line: 188, baseType: !74, size: 32, elements: !724)
!715 = distinct !DISubprogram(name: "x2nrealloc", scope: !712, file: !712, line: 176, type: !716, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !719)
!716 = !DISubroutineType(types: !717)
!717 = !{!90, !90, !718, !91}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(name: "p", arg: 1, scope: !715, file: !712, line: 176, type: !90)
!721 = !DILocalVariable(name: "pn", arg: 2, scope: !715, file: !712, line: 176, type: !718)
!722 = !DILocalVariable(name: "s", arg: 3, scope: !715, file: !712, line: 176, type: !91)
!723 = !DILocalVariable(name: "n", scope: !715, file: !712, line: 178, type: !91)
!724 = !{!725}
!725 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !727, file: !712, line: 228, baseType: !74, size: 32, elements: !724)
!727 = distinct !DISubprogram(name: "xpalloc", scope: !712, file: !712, line: 223, type: !728, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !733)
!728 = !DISubroutineType(types: !729)
!729 = !{!90, !90, !730, !731, !136, !731}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !732, line: 130, baseType: !136)
!732 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742}
!734 = !DILocalVariable(name: "pa", arg: 1, scope: !727, file: !712, line: 223, type: !90)
!735 = !DILocalVariable(name: "pn", arg: 2, scope: !727, file: !712, line: 223, type: !730)
!736 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !727, file: !712, line: 223, type: !731)
!737 = !DILocalVariable(name: "n_max", arg: 4, scope: !727, file: !712, line: 223, type: !136)
!738 = !DILocalVariable(name: "s", arg: 5, scope: !727, file: !712, line: 223, type: !731)
!739 = !DILocalVariable(name: "n0", scope: !727, file: !712, line: 230, type: !731)
!740 = !DILocalVariable(name: "n", scope: !727, file: !712, line: 237, type: !731)
!741 = !DILocalVariable(name: "nbytes", scope: !727, file: !712, line: 248, type: !731)
!742 = !DILocalVariable(name: "adjusted_nbytes", scope: !727, file: !712, line: 252, type: !731)
!743 = !{!89, !90}
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !745, splitDebugInlining: false, nameTableKind: None)
!745 = !{!672, !675, !677}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!748 = !{!89}
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !760, splitDebugInlining: false, nameTableKind: None)
!760 = !{!761, !697}
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !59, isLocal: true, isDefinition: true)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!767 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!768 = !{i32 7, !"Dwarf Version", i32 5}
!769 = !{i32 2, !"Debug Info Version", i32 3}
!770 = !{i32 1, !"wchar_size", i32 4}
!771 = !{i32 8, !"PIC Level", i32 2}
!772 = !{i32 7, !"PIE Level", i32 2}
!773 = !{i32 7, !"uwtable", i32 2}
!774 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!775 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !776, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !68}
!778 = !{!779}
!779 = !DILocalVariable(name: "status", arg: 1, scope: !775, file: !2, line: 43, type: !68)
!780 = !DILocation(line: 0, scope: !775)
!781 = !DILocation(line: 45, column: 14, scope: !782)
!782 = distinct !DILexicalBlock(scope: !775, file: !2, line: 45, column: 7)
!783 = !DILocation(line: 45, column: 7, scope: !775)
!784 = !DILocation(line: 46, column: 5, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !2, line: 46, column: 5)
!786 = !{!787, !787, i64 0}
!787 = !{!"any pointer", !788, i64 0}
!788 = !{!"omnipotent char", !789, i64 0}
!789 = !{!"Simple C/C++ TBAA"}
!790 = !DILocation(line: 49, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !782, file: !2, line: 48, column: 5)
!792 = !DILocation(line: 53, column: 7, scope: !791)
!793 = !DILocation(line: 58, column: 7, scope: !791)
!794 = !DILocation(line: 62, column: 7, scope: !791)
!795 = !DILocation(line: 63, column: 7, scope: !791)
!796 = !DILocation(line: 64, column: 7, scope: !791)
!797 = !DILocalVariable(name: "program", arg: 1, scope: !798, file: !67, line: 836, type: !94)
!798 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !799, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !94}
!801 = !{!797, !802, !809, !810, !812, !813}
!802 = !DILocalVariable(name: "infomap", scope: !798, file: !67, line: 838, type: !803)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 896, elements: !261)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !798, file: !67, line: 838, size: 128, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !805, file: !67, line: 838, baseType: !94, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !805, file: !67, line: 838, baseType: !94, size: 64, offset: 64)
!809 = !DILocalVariable(name: "node", scope: !798, file: !67, line: 848, type: !94)
!810 = !DILocalVariable(name: "map_prog", scope: !798, file: !67, line: 849, type: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!812 = !DILocalVariable(name: "lc_messages", scope: !798, file: !67, line: 861, type: !94)
!813 = !DILocalVariable(name: "url_program", scope: !798, file: !67, line: 874, type: !94)
!814 = !DILocation(line: 0, scope: !798, inlinedAt: !815)
!815 = distinct !DILocation(line: 72, column: 7, scope: !791)
!816 = !{}
!817 = !DILocation(line: 857, column: 3, scope: !798, inlinedAt: !815)
!818 = !DILocation(line: 861, column: 29, scope: !798, inlinedAt: !815)
!819 = !DILocation(line: 862, column: 7, scope: !820, inlinedAt: !815)
!820 = distinct !DILexicalBlock(scope: !798, file: !67, line: 862, column: 7)
!821 = !DILocation(line: 862, column: 19, scope: !820, inlinedAt: !815)
!822 = !DILocation(line: 862, column: 22, scope: !820, inlinedAt: !815)
!823 = !DILocation(line: 862, column: 7, scope: !798, inlinedAt: !815)
!824 = !DILocation(line: 868, column: 7, scope: !825, inlinedAt: !815)
!825 = distinct !DILexicalBlock(scope: !820, file: !67, line: 863, column: 5)
!826 = !DILocation(line: 870, column: 5, scope: !825, inlinedAt: !815)
!827 = !DILocation(line: 875, column: 3, scope: !798, inlinedAt: !815)
!828 = !DILocation(line: 877, column: 3, scope: !798, inlinedAt: !815)
!829 = !DILocation(line: 74, column: 3, scope: !775)
!830 = !DISubprogram(name: "dcgettext", scope: !831, file: !831, line: 51, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!832 = !DISubroutineType(types: !833)
!833 = !{!89, !94, !94, !68}
!834 = !DISubprogram(name: "__fprintf_chk", scope: !835, file: !835, line: 93, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!836 = !DISubroutineType(types: !837)
!837 = !{!68, !838, !68, !839, null}
!838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!839 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!840 = !DISubprogram(name: "__printf_chk", scope: !835, file: !835, line: 95, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DISubroutineType(types: !842)
!842 = !{!68, !68, !839, null}
!843 = !DISubprogram(name: "fputs_unlocked", scope: !844, file: !844, line: 691, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!845 = !DISubroutineType(types: !846)
!846 = !{!68, !839, !838}
!847 = !DILocation(line: 0, scope: !196)
!848 = !DILocation(line: 581, column: 7, scope: !204)
!849 = !{!850, !850, i64 0}
!850 = !{!"int", !788, i64 0}
!851 = !DILocation(line: 581, column: 19, scope: !204)
!852 = !DILocation(line: 581, column: 7, scope: !196)
!853 = !DILocation(line: 585, column: 26, scope: !203)
!854 = !DILocation(line: 0, scope: !203)
!855 = !DILocation(line: 586, column: 23, scope: !203)
!856 = !DILocation(line: 586, column: 28, scope: !203)
!857 = !DILocation(line: 586, column: 32, scope: !203)
!858 = !{!788, !788, i64 0}
!859 = !DILocation(line: 586, column: 38, scope: !203)
!860 = !DILocalVariable(name: "__s1", arg: 1, scope: !861, file: !862, line: 1359, type: !94)
!861 = distinct !DISubprogram(name: "streq", scope: !862, file: !862, line: 1359, type: !863, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !865)
!862 = !DIFile(filename: "./lib/string.h", directory: "/src")
!863 = !DISubroutineType(types: !864)
!864 = !{!126, !94, !94}
!865 = !{!860, !866}
!866 = !DILocalVariable(name: "__s2", arg: 2, scope: !861, file: !862, line: 1359, type: !94)
!867 = !DILocation(line: 0, scope: !861, inlinedAt: !868)
!868 = distinct !DILocation(line: 586, column: 41, scope: !203)
!869 = !DILocation(line: 1361, column: 11, scope: !861, inlinedAt: !868)
!870 = !DILocation(line: 1361, column: 10, scope: !861, inlinedAt: !868)
!871 = !DILocation(line: 586, column: 19, scope: !203)
!872 = !DILocation(line: 587, column: 5, scope: !203)
!873 = !DILocation(line: 588, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !196, file: !67, line: 588, column: 7)
!875 = !DILocation(line: 588, column: 7, scope: !196)
!876 = !DILocation(line: 590, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !67, line: 589, column: 5)
!878 = !DILocation(line: 591, column: 7, scope: !877)
!879 = !DILocation(line: 595, column: 37, scope: !196)
!880 = !DILocation(line: 595, column: 35, scope: !196)
!881 = !DILocation(line: 596, column: 29, scope: !196)
!882 = !DILocation(line: 597, column: 8, scope: !211)
!883 = !DILocation(line: 597, column: 7, scope: !196)
!884 = !DILocation(line: 604, column: 24, scope: !210)
!885 = !DILocation(line: 604, column: 12, scope: !211)
!886 = !DILocation(line: 0, scope: !209)
!887 = !DILocation(line: 610, column: 16, scope: !209)
!888 = !DILocation(line: 610, column: 7, scope: !209)
!889 = !DILocation(line: 611, column: 21, scope: !209)
!890 = !{!891, !891, i64 0}
!891 = !{!"short", !788, i64 0}
!892 = !DILocation(line: 611, column: 19, scope: !209)
!893 = !DILocation(line: 611, column: 16, scope: !209)
!894 = !DILocation(line: 610, column: 30, scope: !209)
!895 = distinct !{!895, !888, !889, !896}
!896 = !{!"llvm.loop.mustprogress"}
!897 = !DILocation(line: 612, column: 18, scope: !898)
!898 = distinct !DILexicalBlock(scope: !209, file: !67, line: 612, column: 11)
!899 = !DILocation(line: 612, column: 11, scope: !209)
!900 = !DILocation(line: 620, column: 23, scope: !196)
!901 = !DILocation(line: 625, column: 39, scope: !196)
!902 = !DILocation(line: 626, column: 3, scope: !196)
!903 = !DILocation(line: 626, column: 10, scope: !196)
!904 = !DILocation(line: 626, column: 21, scope: !196)
!905 = !DILocation(line: 628, column: 44, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !67, line: 628, column: 11)
!907 = distinct !DILexicalBlock(scope: !196, file: !67, line: 627, column: 5)
!908 = !DILocation(line: 628, column: 32, scope: !906)
!909 = !DILocation(line: 628, column: 49, scope: !906)
!910 = !DILocation(line: 628, column: 11, scope: !907)
!911 = !DILocation(line: 630, column: 11, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !67, line: 630, column: 11)
!913 = !DILocation(line: 630, column: 11, scope: !907)
!914 = !DILocation(line: 632, column: 26, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !67, line: 632, column: 15)
!916 = distinct !DILexicalBlock(scope: !912, file: !67, line: 631, column: 9)
!917 = !DILocation(line: 632, column: 34, scope: !915)
!918 = !DILocation(line: 632, column: 37, scope: !915)
!919 = !DILocation(line: 632, column: 15, scope: !916)
!920 = !DILocation(line: 636, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !67, line: 636, column: 15)
!922 = !DILocation(line: 636, column: 29, scope: !921)
!923 = !DILocation(line: 640, column: 16, scope: !907)
!924 = distinct !{!924, !902, !925, !896}
!925 = !DILocation(line: 641, column: 5, scope: !196)
!926 = !DILocation(line: 644, column: 3, scope: !196)
!927 = !DILocation(line: 0, scope: !861, inlinedAt: !928)
!928 = distinct !DILocation(line: 648, column: 31, scope: !196)
!929 = !DILocation(line: 0, scope: !861, inlinedAt: !930)
!930 = distinct !DILocation(line: 649, column: 31, scope: !196)
!931 = !DILocation(line: 0, scope: !861, inlinedAt: !932)
!932 = distinct !DILocation(line: 650, column: 31, scope: !196)
!933 = !DILocation(line: 0, scope: !861, inlinedAt: !934)
!934 = distinct !DILocation(line: 651, column: 31, scope: !196)
!935 = !DILocation(line: 0, scope: !861, inlinedAt: !936)
!936 = distinct !DILocation(line: 652, column: 31, scope: !196)
!937 = !DILocation(line: 0, scope: !861, inlinedAt: !938)
!938 = distinct !DILocation(line: 653, column: 31, scope: !196)
!939 = !DILocation(line: 0, scope: !861, inlinedAt: !940)
!940 = distinct !DILocation(line: 654, column: 31, scope: !196)
!941 = !DILocation(line: 0, scope: !861, inlinedAt: !942)
!942 = distinct !DILocation(line: 655, column: 31, scope: !196)
!943 = !DILocation(line: 0, scope: !861, inlinedAt: !944)
!944 = distinct !DILocation(line: 656, column: 31, scope: !196)
!945 = !DILocation(line: 0, scope: !861, inlinedAt: !946)
!946 = distinct !DILocation(line: 657, column: 31, scope: !196)
!947 = !DILocation(line: 663, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !196, file: !67, line: 663, column: 7)
!949 = !DILocation(line: 664, column: 7, scope: !948)
!950 = !DILocation(line: 664, column: 10, scope: !948)
!951 = !DILocation(line: 663, column: 7, scope: !196)
!952 = !DILocation(line: 669, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !67, line: 665, column: 5)
!954 = !DILocation(line: 671, column: 5, scope: !953)
!955 = !DILocation(line: 676, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !67, line: 673, column: 5)
!957 = !DILocation(line: 679, column: 3, scope: !196)
!958 = !DILocation(line: 683, column: 3, scope: !196)
!959 = !DILocation(line: 686, column: 3, scope: !196)
!960 = !DILocation(line: 688, column: 3, scope: !196)
!961 = !DILocation(line: 691, column: 3, scope: !196)
!962 = !DILocation(line: 695, column: 3, scope: !196)
!963 = !DILocation(line: 696, column: 1, scope: !196)
!964 = !DISubprogram(name: "setlocale", scope: !965, file: !965, line: 122, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!966 = !DISubroutineType(types: !967)
!967 = !{!89, !68, !94}
!968 = !DISubprogram(name: "strncmp", scope: !969, file: !969, line: 159, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!970 = !DISubroutineType(types: !971)
!971 = !{!68, !94, !94, !91}
!972 = !DISubprogram(name: "exit", scope: !973, file: !973, line: 624, type: !776, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!973 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!974 = !DISubprogram(name: "getenv", scope: !973, file: !973, line: 641, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{!89, !94}
!977 = !DISubprogram(name: "strcmp", scope: !969, file: !969, line: 156, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!68, !94, !94}
!980 = !DISubprogram(name: "strspn", scope: !969, file: !969, line: 297, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!93, !94, !94}
!983 = !DISubprogram(name: "strchr", scope: !969, file: !969, line: 246, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!89, !94, !68}
!986 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!992 = !DISubprogram(name: "strcspn", scope: !969, file: !969, line: 293, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubprogram(name: "fwrite_unlocked", scope: !844, file: !844, line: 704, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!91, !996, !91, !91, !838}
!996 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!999 = !DILocation(line: 0, scope: !118)
!1000 = !DILocation(line: 83, column: 21, scope: !118)
!1001 = !DILocation(line: 83, column: 3, scope: !118)
!1002 = !DILocation(line: 84, column: 3, scope: !118)
!1003 = !DILocation(line: 85, column: 3, scope: !118)
!1004 = !DILocation(line: 86, column: 3, scope: !118)
!1005 = !DILocation(line: 88, column: 3, scope: !118)
!1006 = !DILocation(line: 92, column: 15, scope: !128)
!1007 = !DILocation(line: 0, scope: !128)
!1008 = !DILocation(line: 94, column: 11, scope: !128)
!1009 = distinct !{!1009, !1010}
!1010 = !{!"llvm.loop.peeled.count", i32 1}
!1011 = !DILocation(line: 103, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !128, file: !2, line: 98, column: 9)
!1013 = !DILocation(line: 104, column: 9, scope: !1012)
!1014 = !DILocation(line: 107, column: 11, scope: !1012)
!1015 = !DILocation(line: 80, column: 8, scope: !118)
!1016 = !DILocation(line: 111, column: 14, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !118, file: !2, line: 111, column: 7)
!1018 = !DILocation(line: 111, column: 12, scope: !1017)
!1019 = !DILocation(line: 111, column: 7, scope: !118)
!1020 = !DILocation(line: 117, column: 3, scope: !132)
!1021 = !DILocation(line: 113, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 112, column: 5)
!1023 = !DILocation(line: 114, column: 7, scope: !1022)
!1024 = !DILocation(line: 0, scope: !130)
!1025 = !DILocation(line: 129, column: 7, scope: !130)
!1026 = !DILocation(line: 119, column: 28, scope: !130)
!1027 = !DILocation(line: 120, column: 19, scope: !130)
!1028 = !DILocation(line: 122, column: 11, scope: !130)
!1029 = !DILocation(line: 122, column: 13, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !130, file: !2, line: 122, column: 11)
!1031 = !DILocalVariable(name: "__c", arg: 1, scope: !1032, file: !1033, line: 108, type: !68)
!1032 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1033, file: !1033, line: 108, type: !1034, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1036)
!1033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!68, !68}
!1036 = !{!1031}
!1037 = !DILocation(line: 0, scope: !1032, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 130, column: 7, scope: !130)
!1039 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1038)
!1040 = !{!1041, !787, i64 40}
!1041 = !{!"_IO_FILE", !850, i64 0, !787, i64 8, !787, i64 16, !787, i64 24, !787, i64 32, !787, i64 40, !787, i64 48, !787, i64 56, !787, i64 64, !787, i64 72, !787, i64 80, !787, i64 88, !787, i64 96, !787, i64 104, !850, i64 112, !850, i64 116, !1042, i64 120, !891, i64 128, !788, i64 130, !788, i64 131, !787, i64 136, !1042, i64 144, !787, i64 152, !787, i64 160, !787, i64 168, !787, i64 176, !1042, i64 184, !850, i64 192, !788, i64 196}
!1042 = !{!"long", !788, i64 0}
!1043 = !{!1041, !787, i64 48}
!1044 = !{!"branch_weights", i32 2000, i32 1}
!1045 = !DILocation(line: 117, column: 31, scope: !131)
!1046 = !DILocation(line: 117, column: 17, scope: !131)
!1047 = distinct !{!1047, !1020, !1048, !896}
!1048 = !DILocation(line: 131, column: 5, scope: !132)
!1049 = !DILocation(line: 134, column: 1, scope: !118)
!1050 = !DISubprogram(name: "bindtextdomain", scope: !831, file: !831, line: 86, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!89, !94, !94}
!1053 = !DISubprogram(name: "textdomain", scope: !831, file: !831, line: 82, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubprogram(name: "atexit", scope: !973, file: !973, line: 602, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!68, !422}
!1057 = !DISubprogram(name: "getopt_long", scope: !345, file: !345, line: 66, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!68, !68, !1060, !94, !1062, !350}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!1063 = !DISubprogram(name: "__overflow", scope: !844, file: !844, line: 886, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!68, !142, !68}
!1066 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !362, file: !362, line: 50, type: !799, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1067)
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "file", arg: 1, scope: !1066, file: !362, line: 50, type: !94)
!1069 = !DILocation(line: 0, scope: !1066)
!1070 = !DILocation(line: 52, column: 13, scope: !1066)
!1071 = !DILocation(line: 53, column: 1, scope: !1066)
!1072 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !362, file: !362, line: 87, type: !1073, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !126}
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "ignore", arg: 1, scope: !1072, file: !362, line: 87, type: !126)
!1077 = !DILocation(line: 0, scope: !1072)
!1078 = !DILocation(line: 89, column: 16, scope: !1072)
!1079 = !{!1080, !1080, i64 0}
!1080 = !{!"_Bool", !788, i64 0}
!1081 = !DILocation(line: 90, column: 1, scope: !1072)
!1082 = distinct !DISubprogram(name: "close_stdout", scope: !362, file: !362, line: 116, type: !423, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1083)
!1083 = !{!1084}
!1084 = !DILocalVariable(name: "write_error", scope: !1085, file: !362, line: 121, type: !94)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !362, line: 120, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !362, line: 118, column: 7)
!1087 = !DILocation(line: 118, column: 21, scope: !1086)
!1088 = !DILocation(line: 118, column: 7, scope: !1086)
!1089 = !DILocation(line: 118, column: 29, scope: !1086)
!1090 = !DILocation(line: 119, column: 7, scope: !1086)
!1091 = !DILocation(line: 119, column: 12, scope: !1086)
!1092 = !{i8 0, i8 2}
!1093 = !DILocation(line: 119, column: 25, scope: !1086)
!1094 = !DILocation(line: 119, column: 28, scope: !1086)
!1095 = !DILocation(line: 119, column: 34, scope: !1086)
!1096 = !DILocation(line: 118, column: 7, scope: !1082)
!1097 = !DILocation(line: 121, column: 33, scope: !1085)
!1098 = !DILocation(line: 0, scope: !1085)
!1099 = !DILocation(line: 122, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1085, file: !362, line: 122, column: 11)
!1101 = !DILocation(line: 0, scope: !1100)
!1102 = !DILocation(line: 122, column: 11, scope: !1085)
!1103 = !DILocation(line: 123, column: 9, scope: !1100)
!1104 = !DILocation(line: 126, column: 9, scope: !1100)
!1105 = !DILocation(line: 128, column: 14, scope: !1085)
!1106 = !DILocation(line: 128, column: 7, scope: !1085)
!1107 = !DILocation(line: 133, column: 42, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1082, file: !362, line: 133, column: 7)
!1109 = !DILocation(line: 133, column: 28, scope: !1108)
!1110 = !DILocation(line: 133, column: 50, scope: !1108)
!1111 = !DILocation(line: 133, column: 7, scope: !1082)
!1112 = !DILocation(line: 134, column: 12, scope: !1108)
!1113 = !DILocation(line: 134, column: 5, scope: !1108)
!1114 = !DILocation(line: 135, column: 1, scope: !1082)
!1115 = !DISubprogram(name: "__errno_location", scope: !1116, file: !1116, line: 37, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!350}
!1119 = !DISubprogram(name: "_exit", scope: !1120, file: !1120, line: 624, type: !776, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1120 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1121 = distinct !DISubprogram(name: "dir_len", scope: !701, file: !701, line: 32, type: !1122, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!91, !94}
!1124 = !{!1125, !1126, !1127}
!1125 = !DILocalVariable(name: "file", arg: 1, scope: !1121, file: !701, line: 32, type: !94)
!1126 = !DILocalVariable(name: "prefix_length", scope: !1121, file: !701, line: 34, type: !91)
!1127 = !DILocalVariable(name: "length", scope: !1121, file: !701, line: 47, type: !91)
!1128 = !DILocation(line: 0, scope: !1121)
!1129 = !DILocation(line: 40, column: 24, scope: !1121)
!1130 = !DILocation(line: 48, column: 17, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1121, file: !701, line: 48, column: 3)
!1132 = !DILocation(line: 48, column: 39, scope: !1131)
!1133 = !DILocation(line: 48, column: 8, scope: !1131)
!1134 = !DILocation(line: 49, column: 22, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !701, line: 48, column: 3)
!1136 = !DILocation(line: 48, column: 3, scope: !1131)
!1137 = !DILocation(line: 51, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !701, line: 51, column: 9)
!1139 = !DILocation(line: 51, column: 9, scope: !1135)
!1140 = !DILocation(line: 50, column: 14, scope: !1135)
!1141 = distinct !{!1141, !1136, !1142, !896}
!1142 = !DILocation(line: 52, column: 7, scope: !1131)
!1143 = !DILocation(line: 0, scope: !1131)
!1144 = !DILocation(line: 53, column: 3, scope: !1121)
!1145 = distinct !DISubprogram(name: "mdir_name", scope: !701, file: !701, line: 72, type: !975, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DILocalVariable(name: "file", arg: 1, scope: !1145, file: !701, line: 72, type: !94)
!1148 = !DILocalVariable(name: "length", scope: !1145, file: !701, line: 74, type: !91)
!1149 = !DILocalVariable(name: "append_dot", scope: !1145, file: !701, line: 75, type: !126)
!1150 = !DILocalVariable(name: "dir", scope: !1145, file: !701, line: 79, type: !89)
!1151 = !DILocation(line: 0, scope: !1145)
!1152 = !DILocation(line: 0, scope: !1121, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 74, column: 19, scope: !1145)
!1154 = !DILocation(line: 40, column: 24, scope: !1121, inlinedAt: !1153)
!1155 = !DILocation(line: 48, column: 17, scope: !1131, inlinedAt: !1153)
!1156 = !DILocation(line: 48, column: 39, scope: !1131, inlinedAt: !1153)
!1157 = !DILocation(line: 48, column: 8, scope: !1131, inlinedAt: !1153)
!1158 = !DILocation(line: 49, column: 22, scope: !1135, inlinedAt: !1153)
!1159 = !DILocation(line: 48, column: 3, scope: !1131, inlinedAt: !1153)
!1160 = !DILocation(line: 51, column: 11, scope: !1138, inlinedAt: !1153)
!1161 = !DILocation(line: 51, column: 9, scope: !1135, inlinedAt: !1153)
!1162 = !DILocation(line: 50, column: 14, scope: !1135, inlinedAt: !1153)
!1163 = distinct !{!1163, !1159, !1164, !896}
!1164 = !DILocation(line: 52, column: 7, scope: !1131, inlinedAt: !1153)
!1165 = !DILocation(line: 0, scope: !1131, inlinedAt: !1153)
!1166 = !DILocation(line: 75, column: 29, scope: !1145)
!1167 = !DILocation(line: 79, column: 32, scope: !1145)
!1168 = !DILocation(line: 79, column: 30, scope: !1145)
!1169 = !DILocation(line: 79, column: 43, scope: !1145)
!1170 = !DILocation(line: 79, column: 15, scope: !1145)
!1171 = !DILocation(line: 80, column: 8, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !701, line: 80, column: 7)
!1173 = !DILocation(line: 80, column: 7, scope: !1145)
!1174 = !DILocalVariable(name: "__dest", arg: 1, scope: !1175, file: !1176, line: 26, type: !1179)
!1175 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1180)
!1176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!90, !1179, !996, !91}
!1179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!1180 = !{!1174, !1181, !1182}
!1181 = !DILocalVariable(name: "__src", arg: 2, scope: !1175, file: !1176, line: 26, type: !996)
!1182 = !DILocalVariable(name: "__len", arg: 3, scope: !1175, file: !1176, line: 26, type: !91)
!1183 = !DILocation(line: 0, scope: !1175, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 82, column: 3, scope: !1145)
!1185 = !DILocation(line: 29, column: 10, scope: !1175, inlinedAt: !1184)
!1186 = !DILocation(line: 83, column: 7, scope: !1145)
!1187 = !DILocation(line: 84, column: 19, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1145, file: !701, line: 83, column: 7)
!1189 = !DILocation(line: 84, column: 5, scope: !1188)
!1190 = !DILocation(line: 85, column: 3, scope: !1145)
!1191 = !DILocation(line: 85, column: 15, scope: !1145)
!1192 = !DILocation(line: 86, column: 3, scope: !1145)
!1193 = !DILocation(line: 87, column: 1, scope: !1145)
!1194 = !DISubprogram(name: "malloc", scope: !973, file: !973, line: 540, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!90, !91}
!1197 = distinct !DISubprogram(name: "verror", scope: !377, file: !377, line: 251, type: !1198, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !68, !68, !94, !387}
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DILocalVariable(name: "status", arg: 1, scope: !1197, file: !377, line: 251, type: !68)
!1202 = !DILocalVariable(name: "errnum", arg: 2, scope: !1197, file: !377, line: 251, type: !68)
!1203 = !DILocalVariable(name: "message", arg: 3, scope: !1197, file: !377, line: 251, type: !94)
!1204 = !DILocalVariable(name: "args", arg: 4, scope: !1197, file: !377, line: 251, type: !387)
!1205 = !DILocation(line: 0, scope: !1197)
!1206 = !DILocation(line: 261, column: 3, scope: !1197)
!1207 = !DILocation(line: 265, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1197, file: !377, line: 265, column: 7)
!1209 = !DILocation(line: 265, column: 7, scope: !1197)
!1210 = !DILocation(line: 266, column: 5, scope: !1208)
!1211 = !DILocation(line: 272, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !377, line: 268, column: 5)
!1213 = !DILocation(line: 276, column: 3, scope: !1197)
!1214 = !DILocation(line: 282, column: 1, scope: !1197)
!1215 = distinct !DISubprogram(name: "flush_stdout", scope: !377, file: !377, line: 163, type: !423, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "stdout_fd", scope: !1215, file: !377, line: 166, type: !68)
!1218 = !DILocation(line: 0, scope: !1215)
!1219 = !DILocalVariable(name: "fd", arg: 1, scope: !1220, file: !377, line: 145, type: !68)
!1220 = distinct !DISubprogram(name: "is_open", scope: !377, file: !377, line: 145, type: !1034, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1221)
!1221 = !{!1219}
!1222 = !DILocation(line: 0, scope: !1220, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 182, column: 25, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !377, line: 182, column: 7)
!1225 = !DILocation(line: 157, column: 15, scope: !1220, inlinedAt: !1223)
!1226 = !DILocation(line: 157, column: 12, scope: !1220, inlinedAt: !1223)
!1227 = !DILocation(line: 182, column: 7, scope: !1215)
!1228 = !DILocation(line: 184, column: 5, scope: !1224)
!1229 = !DILocation(line: 185, column: 1, scope: !1215)
!1230 = distinct !DISubprogram(name: "error_tail", scope: !377, file: !377, line: 219, type: !1198, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "status", arg: 1, scope: !1230, file: !377, line: 219, type: !68)
!1233 = !DILocalVariable(name: "errnum", arg: 2, scope: !1230, file: !377, line: 219, type: !68)
!1234 = !DILocalVariable(name: "message", arg: 3, scope: !1230, file: !377, line: 219, type: !94)
!1235 = !DILocalVariable(name: "args", arg: 4, scope: !1230, file: !377, line: 219, type: !387)
!1236 = distinct !DIAssignID()
!1237 = !DILocation(line: 0, scope: !1230)
!1238 = !DILocation(line: 229, column: 13, scope: !1230)
!1239 = !DILocalVariable(name: "__stream", arg: 1, scope: !1240, file: !835, line: 132, type: !1243)
!1240 = distinct !DISubprogram(name: "vfprintf", scope: !835, file: !835, line: 132, type: !1241, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1278)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!68, !1243, !839, !387}
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1246, file: !146, line: 51, baseType: !68, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1246, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1246, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1246, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1246, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1246, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1246, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1246, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1246, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1246, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1246, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1246, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1246, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1246, file: !146, line: 70, baseType: !1262, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1246, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1246, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1246, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1246, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1246, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1246, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1246, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1246, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1246, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1246, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1246, file: !146, line: 93, baseType: !1262, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1246, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1246, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1246, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1246, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!1278 = !{!1239, !1279, !1280}
!1279 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1240, file: !835, line: 133, type: !839)
!1280 = !DILocalVariable(name: "__ap", arg: 3, scope: !1240, file: !835, line: 133, type: !387)
!1281 = !DILocation(line: 0, scope: !1240, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 229, column: 3, scope: !1230)
!1283 = !DILocation(line: 135, column: 10, scope: !1240, inlinedAt: !1282)
!1284 = !DILocation(line: 232, column: 3, scope: !1230)
!1285 = !DILocation(line: 233, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1230, file: !377, line: 233, column: 7)
!1287 = !DILocation(line: 233, column: 7, scope: !1230)
!1288 = !DILocalVariable(name: "errbuf", scope: !1289, file: !377, line: 193, type: !1293)
!1289 = distinct !DISubprogram(name: "print_errno_message", scope: !377, file: !377, line: 188, type: !776, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1290)
!1290 = !{!1291, !1292, !1288}
!1291 = !DILocalVariable(name: "errnum", arg: 1, scope: !1289, file: !377, line: 188, type: !68)
!1292 = !DILocalVariable(name: "s", scope: !1289, file: !377, line: 190, type: !94)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 1024)
!1296 = !DILocation(line: 0, scope: !1289, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 234, column: 5, scope: !1286)
!1298 = !DILocation(line: 193, column: 3, scope: !1289, inlinedAt: !1297)
!1299 = !DILocation(line: 195, column: 7, scope: !1289, inlinedAt: !1297)
!1300 = !DILocation(line: 207, column: 9, scope: !1301, inlinedAt: !1297)
!1301 = distinct !DILexicalBlock(scope: !1289, file: !377, line: 207, column: 7)
!1302 = !DILocation(line: 207, column: 7, scope: !1289, inlinedAt: !1297)
!1303 = !DILocation(line: 208, column: 9, scope: !1301, inlinedAt: !1297)
!1304 = !DILocation(line: 208, column: 5, scope: !1301, inlinedAt: !1297)
!1305 = !DILocation(line: 214, column: 3, scope: !1289, inlinedAt: !1297)
!1306 = !DILocation(line: 216, column: 1, scope: !1289, inlinedAt: !1297)
!1307 = !DILocation(line: 234, column: 5, scope: !1286)
!1308 = !DILocation(line: 238, column: 3, scope: !1230)
!1309 = !DILocalVariable(name: "__c", arg: 1, scope: !1310, file: !1033, line: 101, type: !68)
!1310 = distinct !DISubprogram(name: "putc_unlocked", scope: !1033, file: !1033, line: 101, type: !1311, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!68, !68, !1244}
!1313 = !{!1309, !1314}
!1314 = !DILocalVariable(name: "__stream", arg: 2, scope: !1310, file: !1033, line: 101, type: !1244)
!1315 = !DILocation(line: 0, scope: !1310, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 238, column: 3, scope: !1230)
!1317 = !DILocation(line: 103, column: 10, scope: !1310, inlinedAt: !1316)
!1318 = !DILocation(line: 240, column: 3, scope: !1230)
!1319 = !DILocation(line: 241, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1230, file: !377, line: 241, column: 7)
!1321 = !DILocation(line: 241, column: 7, scope: !1230)
!1322 = !DILocation(line: 242, column: 5, scope: !1320)
!1323 = !DILocation(line: 243, column: 1, scope: !1230)
!1324 = !DISubprogram(name: "__vfprintf_chk", scope: !835, file: !835, line: 96, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!68, !1243, !68, !839, !387}
!1327 = !DISubprogram(name: "strerror_r", scope: !969, file: !969, line: 444, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!89, !68, !89, !91}
!1330 = !DISubprogram(name: "fflush_unlocked", scope: !844, file: !844, line: 239, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!68, !1244}
!1333 = !DISubprogram(name: "fcntl", scope: !1334, file: !1334, line: 149, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!68, !68, !68, null}
!1337 = distinct !DISubprogram(name: "error", scope: !377, file: !377, line: 285, type: !1338, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !68, !68, !94, null}
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DILocalVariable(name: "status", arg: 1, scope: !1337, file: !377, line: 285, type: !68)
!1342 = !DILocalVariable(name: "errnum", arg: 2, scope: !1337, file: !377, line: 285, type: !68)
!1343 = !DILocalVariable(name: "message", arg: 3, scope: !1337, file: !377, line: 285, type: !94)
!1344 = !DILocalVariable(name: "ap", scope: !1337, file: !377, line: 287, type: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !844, line: 52, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1347, line: 12, baseType: !1348)
!1347 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !377, baseType: !1349)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 192, elements: !45)
!1350 = distinct !DIAssignID()
!1351 = !DILocation(line: 0, scope: !1337)
!1352 = !DILocation(line: 287, column: 3, scope: !1337)
!1353 = !DILocation(line: 288, column: 3, scope: !1337)
!1354 = !DILocation(line: 289, column: 3, scope: !1337)
!1355 = !DILocation(line: 290, column: 3, scope: !1337)
!1356 = !DILocation(line: 291, column: 1, scope: !1337)
!1357 = !DILocation(line: 0, scope: !384)
!1358 = !DILocation(line: 302, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !384, file: !377, line: 302, column: 7)
!1360 = !DILocation(line: 302, column: 7, scope: !384)
!1361 = !DILocation(line: 307, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !377, line: 307, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !377, line: 303, column: 5)
!1364 = !DILocation(line: 307, column: 27, scope: !1362)
!1365 = !DILocation(line: 308, column: 11, scope: !1362)
!1366 = !DILocation(line: 308, column: 28, scope: !1362)
!1367 = !DILocation(line: 308, column: 25, scope: !1362)
!1368 = !DILocation(line: 309, column: 15, scope: !1362)
!1369 = !DILocation(line: 309, column: 33, scope: !1362)
!1370 = !DILocation(line: 310, column: 19, scope: !1362)
!1371 = !DILocation(line: 311, column: 22, scope: !1362)
!1372 = !DILocation(line: 311, column: 56, scope: !1362)
!1373 = !DILocation(line: 307, column: 11, scope: !1363)
!1374 = !DILocation(line: 316, column: 21, scope: !1363)
!1375 = !DILocation(line: 317, column: 23, scope: !1363)
!1376 = !DILocation(line: 318, column: 5, scope: !1363)
!1377 = !DILocation(line: 327, column: 3, scope: !384)
!1378 = !DILocation(line: 331, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !384, file: !377, line: 331, column: 7)
!1380 = !DILocation(line: 331, column: 7, scope: !384)
!1381 = !DILocation(line: 332, column: 5, scope: !1379)
!1382 = !DILocation(line: 338, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !377, line: 334, column: 5)
!1384 = !DILocation(line: 346, column: 3, scope: !384)
!1385 = !DILocation(line: 350, column: 3, scope: !384)
!1386 = !DILocation(line: 356, column: 1, scope: !384)
!1387 = distinct !DISubprogram(name: "error_at_line", scope: !377, file: !377, line: 359, type: !1388, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !68, !68, !94, !74, !94, null}
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396}
!1391 = !DILocalVariable(name: "status", arg: 1, scope: !1387, file: !377, line: 359, type: !68)
!1392 = !DILocalVariable(name: "errnum", arg: 2, scope: !1387, file: !377, line: 359, type: !68)
!1393 = !DILocalVariable(name: "file_name", arg: 3, scope: !1387, file: !377, line: 359, type: !94)
!1394 = !DILocalVariable(name: "line_number", arg: 4, scope: !1387, file: !377, line: 360, type: !74)
!1395 = !DILocalVariable(name: "message", arg: 5, scope: !1387, file: !377, line: 360, type: !94)
!1396 = !DILocalVariable(name: "ap", scope: !1387, file: !377, line: 362, type: !1345)
!1397 = distinct !DIAssignID()
!1398 = !DILocation(line: 0, scope: !1387)
!1399 = !DILocation(line: 362, column: 3, scope: !1387)
!1400 = !DILocation(line: 363, column: 3, scope: !1387)
!1401 = !DILocation(line: 364, column: 3, scope: !1387)
!1402 = !DILocation(line: 366, column: 3, scope: !1387)
!1403 = !DILocation(line: 367, column: 1, scope: !1387)
!1404 = distinct !DISubprogram(name: "getprogname", scope: !703, file: !703, line: 54, type: !1405, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!94}
!1407 = !DILocation(line: 58, column: 10, scope: !1404)
!1408 = !DILocation(line: 58, column: 3, scope: !1404)
!1409 = distinct !DISubprogram(name: "set_program_name", scope: !428, file: !428, line: 37, type: !799, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "argv0", arg: 1, scope: !1409, file: !428, line: 37, type: !94)
!1412 = !DILocalVariable(name: "slash", scope: !1409, file: !428, line: 44, type: !94)
!1413 = !DILocalVariable(name: "base", scope: !1409, file: !428, line: 45, type: !94)
!1414 = !DILocation(line: 0, scope: !1409)
!1415 = !DILocation(line: 44, column: 23, scope: !1409)
!1416 = !DILocation(line: 45, column: 22, scope: !1409)
!1417 = !DILocation(line: 46, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !428, line: 46, column: 7)
!1419 = !DILocation(line: 46, column: 9, scope: !1418)
!1420 = !DILocation(line: 46, column: 25, scope: !1418)
!1421 = !DILocation(line: 46, column: 40, scope: !1418)
!1422 = !DILocalVariable(name: "__s1", arg: 1, scope: !1423, file: !862, line: 974, type: !997)
!1423 = distinct !DISubprogram(name: "memeq", scope: !862, file: !862, line: 974, type: !1424, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!126, !997, !997, !91}
!1426 = !{!1422, !1427, !1428}
!1427 = !DILocalVariable(name: "__s2", arg: 2, scope: !1423, file: !862, line: 974, type: !997)
!1428 = !DILocalVariable(name: "__n", arg: 3, scope: !1423, file: !862, line: 974, type: !91)
!1429 = !DILocation(line: 0, scope: !1423, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 46, column: 28, scope: !1418)
!1431 = !DILocation(line: 976, column: 11, scope: !1423, inlinedAt: !1430)
!1432 = !DILocation(line: 976, column: 10, scope: !1423, inlinedAt: !1430)
!1433 = !DILocation(line: 46, column: 7, scope: !1409)
!1434 = !DILocation(line: 49, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !428, line: 49, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1418, file: !428, line: 47, column: 5)
!1437 = !DILocation(line: 49, column: 36, scope: !1435)
!1438 = !DILocation(line: 49, column: 11, scope: !1436)
!1439 = !DILocation(line: 65, column: 16, scope: !1409)
!1440 = !DILocation(line: 71, column: 27, scope: !1409)
!1441 = !DILocation(line: 74, column: 33, scope: !1409)
!1442 = !DILocation(line: 76, column: 1, scope: !1409)
!1443 = !DISubprogram(name: "strrchr", scope: !969, file: !969, line: 273, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = distinct !DIAssignID()
!1445 = !DILocation(line: 0, scope: !437)
!1446 = distinct !DIAssignID()
!1447 = !DILocation(line: 40, column: 29, scope: !437)
!1448 = !DILocation(line: 41, column: 19, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !437, file: !438, line: 41, column: 7)
!1450 = !DILocation(line: 41, column: 7, scope: !437)
!1451 = !DILocation(line: 47, column: 3, scope: !437)
!1452 = !DILocation(line: 48, column: 3, scope: !437)
!1453 = !DILocalVariable(name: "ps", arg: 1, scope: !1454, file: !1455, line: 1135, type: !1458)
!1454 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1456, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1459)
!1455 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1459 = !{!1453}
!1460 = !DILocation(line: 0, scope: !1454, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 48, column: 18, scope: !437)
!1462 = !DILocalVariable(name: "__dest", arg: 1, scope: !1463, file: !1176, line: 57, type: !90)
!1463 = distinct !DISubprogram(name: "memset", scope: !1176, file: !1176, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!90, !90, !68, !91}
!1466 = !{!1462, !1467, !1468}
!1467 = !DILocalVariable(name: "__ch", arg: 2, scope: !1463, file: !1176, line: 57, type: !68)
!1468 = !DILocalVariable(name: "__len", arg: 3, scope: !1463, file: !1176, line: 57, type: !91)
!1469 = !DILocation(line: 0, scope: !1463, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 1137, column: 3, scope: !1454, inlinedAt: !1461)
!1471 = !DILocation(line: 59, column: 10, scope: !1463, inlinedAt: !1470)
!1472 = !DILocation(line: 49, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !437, file: !438, line: 49, column: 7)
!1474 = !DILocation(line: 49, column: 39, scope: !1473)
!1475 = !DILocation(line: 49, column: 44, scope: !1473)
!1476 = !DILocation(line: 54, column: 1, scope: !437)
!1477 = !DISubprogram(name: "mbrtoc32", scope: !449, file: !449, line: 57, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!91, !1480, !839, !91, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1458)
!1483 = distinct !DISubprogram(name: "clone_quoting_options", scope: !468, file: !468, line: 113, type: !1484, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1487)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1486, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1487 = !{!1488, !1489, !1490}
!1488 = !DILocalVariable(name: "o", arg: 1, scope: !1483, file: !468, line: 113, type: !1486)
!1489 = !DILocalVariable(name: "saved_errno", scope: !1483, file: !468, line: 115, type: !68)
!1490 = !DILocalVariable(name: "p", scope: !1483, file: !468, line: 116, type: !1486)
!1491 = !DILocation(line: 0, scope: !1483)
!1492 = !DILocation(line: 115, column: 21, scope: !1483)
!1493 = !DILocation(line: 116, column: 40, scope: !1483)
!1494 = !DILocation(line: 116, column: 31, scope: !1483)
!1495 = !DILocation(line: 118, column: 9, scope: !1483)
!1496 = !DILocation(line: 119, column: 3, scope: !1483)
!1497 = distinct !DISubprogram(name: "get_quoting_style", scope: !468, file: !468, line: 124, type: !1498, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1502)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!491, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!1502 = !{!1503}
!1503 = !DILocalVariable(name: "o", arg: 1, scope: !1497, file: !468, line: 124, type: !1500)
!1504 = !DILocation(line: 0, scope: !1497)
!1505 = !DILocation(line: 126, column: 11, scope: !1497)
!1506 = !DILocation(line: 126, column: 46, scope: !1497)
!1507 = !{!1508, !850, i64 0}
!1508 = !{!"quoting_options", !850, i64 0, !850, i64 4, !788, i64 8, !787, i64 40, !787, i64 48}
!1509 = !DILocation(line: 126, column: 3, scope: !1497)
!1510 = distinct !DISubprogram(name: "set_quoting_style", scope: !468, file: !468, line: 132, type: !1511, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1486, !491}
!1513 = !{!1514, !1515}
!1514 = !DILocalVariable(name: "o", arg: 1, scope: !1510, file: !468, line: 132, type: !1486)
!1515 = !DILocalVariable(name: "s", arg: 2, scope: !1510, file: !468, line: 132, type: !491)
!1516 = !DILocation(line: 0, scope: !1510)
!1517 = !DILocation(line: 134, column: 4, scope: !1510)
!1518 = !DILocation(line: 134, column: 45, scope: !1510)
!1519 = !DILocation(line: 135, column: 1, scope: !1510)
!1520 = distinct !DISubprogram(name: "set_char_quoting", scope: !468, file: !468, line: 143, type: !1521, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!68, !1486, !4, !68}
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1530, !1531}
!1524 = !DILocalVariable(name: "o", arg: 1, scope: !1520, file: !468, line: 143, type: !1486)
!1525 = !DILocalVariable(name: "c", arg: 2, scope: !1520, file: !468, line: 143, type: !4)
!1526 = !DILocalVariable(name: "i", arg: 3, scope: !1520, file: !468, line: 143, type: !68)
!1527 = !DILocalVariable(name: "uc", scope: !1520, file: !468, line: 145, type: !97)
!1528 = !DILocalVariable(name: "p", scope: !1520, file: !468, line: 146, type: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1530 = !DILocalVariable(name: "shift", scope: !1520, file: !468, line: 148, type: !68)
!1531 = !DILocalVariable(name: "r", scope: !1520, file: !468, line: 149, type: !74)
!1532 = !DILocation(line: 0, scope: !1520)
!1533 = !DILocation(line: 147, column: 6, scope: !1520)
!1534 = !DILocation(line: 147, column: 41, scope: !1520)
!1535 = !DILocation(line: 147, column: 62, scope: !1520)
!1536 = !DILocation(line: 147, column: 57, scope: !1520)
!1537 = !DILocation(line: 148, column: 15, scope: !1520)
!1538 = !DILocation(line: 149, column: 21, scope: !1520)
!1539 = !DILocation(line: 149, column: 24, scope: !1520)
!1540 = !DILocation(line: 149, column: 34, scope: !1520)
!1541 = !DILocation(line: 150, column: 19, scope: !1520)
!1542 = !DILocation(line: 150, column: 24, scope: !1520)
!1543 = !DILocation(line: 150, column: 6, scope: !1520)
!1544 = !DILocation(line: 151, column: 3, scope: !1520)
!1545 = distinct !DISubprogram(name: "set_quoting_flags", scope: !468, file: !468, line: 159, type: !1546, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!68, !1486, !68}
!1548 = !{!1549, !1550, !1551}
!1549 = !DILocalVariable(name: "o", arg: 1, scope: !1545, file: !468, line: 159, type: !1486)
!1550 = !DILocalVariable(name: "i", arg: 2, scope: !1545, file: !468, line: 159, type: !68)
!1551 = !DILocalVariable(name: "r", scope: !1545, file: !468, line: 163, type: !68)
!1552 = !DILocation(line: 0, scope: !1545)
!1553 = !DILocation(line: 161, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !468, line: 161, column: 7)
!1555 = !DILocation(line: 161, column: 7, scope: !1545)
!1556 = !DILocation(line: 163, column: 14, scope: !1545)
!1557 = !{!1508, !850, i64 4}
!1558 = !DILocation(line: 164, column: 12, scope: !1545)
!1559 = !DILocation(line: 165, column: 3, scope: !1545)
!1560 = distinct !DISubprogram(name: "set_custom_quoting", scope: !468, file: !468, line: 169, type: !1561, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1486, !94, !94}
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1560, file: !468, line: 169, type: !1486)
!1565 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1560, file: !468, line: 170, type: !94)
!1566 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1560, file: !468, line: 170, type: !94)
!1567 = !DILocation(line: 0, scope: !1560)
!1568 = !DILocation(line: 172, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !468, line: 172, column: 7)
!1570 = !DILocation(line: 172, column: 7, scope: !1560)
!1571 = !DILocation(line: 174, column: 12, scope: !1560)
!1572 = !DILocation(line: 175, column: 8, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !468, line: 175, column: 7)
!1574 = !DILocation(line: 175, column: 19, scope: !1573)
!1575 = !DILocation(line: 176, column: 5, scope: !1573)
!1576 = !DILocation(line: 177, column: 6, scope: !1560)
!1577 = !DILocation(line: 177, column: 17, scope: !1560)
!1578 = !{!1508, !787, i64 40}
!1579 = !DILocation(line: 178, column: 6, scope: !1560)
!1580 = !DILocation(line: 178, column: 18, scope: !1560)
!1581 = !{!1508, !787, i64 48}
!1582 = !DILocation(line: 179, column: 1, scope: !1560)
!1583 = !DISubprogram(name: "abort", scope: !973, file: !973, line: 598, type: !423, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1584 = distinct !DISubprogram(name: "quotearg_buffer", scope: !468, file: !468, line: 774, type: !1585, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!91, !89, !91, !94, !91, !1500}
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1588 = !DILocalVariable(name: "buffer", arg: 1, scope: !1584, file: !468, line: 774, type: !89)
!1589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1584, file: !468, line: 774, type: !91)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1584, file: !468, line: 775, type: !94)
!1591 = !DILocalVariable(name: "argsize", arg: 4, scope: !1584, file: !468, line: 775, type: !91)
!1592 = !DILocalVariable(name: "o", arg: 5, scope: !1584, file: !468, line: 776, type: !1500)
!1593 = !DILocalVariable(name: "p", scope: !1584, file: !468, line: 778, type: !1500)
!1594 = !DILocalVariable(name: "saved_errno", scope: !1584, file: !468, line: 779, type: !68)
!1595 = !DILocalVariable(name: "r", scope: !1584, file: !468, line: 780, type: !91)
!1596 = !DILocation(line: 0, scope: !1584)
!1597 = !DILocation(line: 778, column: 37, scope: !1584)
!1598 = !DILocation(line: 779, column: 21, scope: !1584)
!1599 = !DILocation(line: 781, column: 43, scope: !1584)
!1600 = !DILocation(line: 781, column: 53, scope: !1584)
!1601 = !DILocation(line: 781, column: 63, scope: !1584)
!1602 = !DILocation(line: 782, column: 43, scope: !1584)
!1603 = !DILocation(line: 782, column: 58, scope: !1584)
!1604 = !DILocation(line: 780, column: 14, scope: !1584)
!1605 = !DILocation(line: 783, column: 9, scope: !1584)
!1606 = !DILocation(line: 784, column: 3, scope: !1584)
!1607 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !468, file: !468, line: 251, type: !1608, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1612)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!91, !89, !91, !94, !91, !491, !68, !1610, !94, !94}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1638, !1640, !1643, !1644, !1645, !1646, !1649, !1650, !1652, !1653, !1656, !1660, !1661, !1669, !1672, !1673, !1674}
!1613 = !DILocalVariable(name: "buffer", arg: 1, scope: !1607, file: !468, line: 251, type: !89)
!1614 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1607, file: !468, line: 251, type: !91)
!1615 = !DILocalVariable(name: "arg", arg: 3, scope: !1607, file: !468, line: 252, type: !94)
!1616 = !DILocalVariable(name: "argsize", arg: 4, scope: !1607, file: !468, line: 252, type: !91)
!1617 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1607, file: !468, line: 253, type: !491)
!1618 = !DILocalVariable(name: "flags", arg: 6, scope: !1607, file: !468, line: 253, type: !68)
!1619 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1607, file: !468, line: 254, type: !1610)
!1620 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1607, file: !468, line: 255, type: !94)
!1621 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1607, file: !468, line: 256, type: !94)
!1622 = !DILocalVariable(name: "unibyte_locale", scope: !1607, file: !468, line: 258, type: !126)
!1623 = !DILocalVariable(name: "len", scope: !1607, file: !468, line: 260, type: !91)
!1624 = !DILocalVariable(name: "orig_buffersize", scope: !1607, file: !468, line: 261, type: !91)
!1625 = !DILocalVariable(name: "quote_string", scope: !1607, file: !468, line: 262, type: !94)
!1626 = !DILocalVariable(name: "quote_string_len", scope: !1607, file: !468, line: 263, type: !91)
!1627 = !DILocalVariable(name: "backslash_escapes", scope: !1607, file: !468, line: 264, type: !126)
!1628 = !DILocalVariable(name: "elide_outer_quotes", scope: !1607, file: !468, line: 265, type: !126)
!1629 = !DILocalVariable(name: "encountered_single_quote", scope: !1607, file: !468, line: 266, type: !126)
!1630 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1607, file: !468, line: 267, type: !126)
!1631 = !DILabel(scope: !1607, name: "process_input", file: !468, line: 308)
!1632 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1607, file: !468, line: 309, type: !126)
!1633 = !DILocalVariable(name: "lq", scope: !1634, file: !468, line: 361, type: !94)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !468, line: 361, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !468, line: 360, column: 13)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !468, line: 333, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 312, column: 5)
!1638 = !DILocalVariable(name: "i", scope: !1639, file: !468, line: 395, type: !91)
!1639 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 395, column: 3)
!1640 = !DILocalVariable(name: "is_right_quote", scope: !1641, file: !468, line: 397, type: !126)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !468, line: 396, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !468, line: 395, column: 3)
!1643 = !DILocalVariable(name: "escaping", scope: !1641, file: !468, line: 398, type: !126)
!1644 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1641, file: !468, line: 399, type: !126)
!1645 = !DILocalVariable(name: "c", scope: !1641, file: !468, line: 417, type: !97)
!1646 = !DILabel(scope: !1647, name: "c_and_shell_escape", file: !468, line: 502)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 478, column: 9)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 419, column: 9)
!1649 = !DILabel(scope: !1647, name: "c_escape", file: !468, line: 507)
!1650 = !DILocalVariable(name: "m", scope: !1651, file: !468, line: 598, type: !91)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 596, column: 11)
!1652 = !DILocalVariable(name: "printable", scope: !1651, file: !468, line: 600, type: !126)
!1653 = !DILocalVariable(name: "mbs", scope: !1654, file: !468, line: 609, type: !552)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !468, line: 608, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !468, line: 602, column: 17)
!1656 = !DILocalVariable(name: "w", scope: !1657, file: !468, line: 618, type: !448)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !468, line: 617, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !468, line: 616, column: 17)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !468, line: 616, column: 17)
!1660 = !DILocalVariable(name: "bytes", scope: !1657, file: !468, line: 619, type: !91)
!1661 = !DILocalVariable(name: "j", scope: !1662, file: !468, line: 648, type: !91)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !468, line: 648, column: 29)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !468, line: 647, column: 27)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !468, line: 645, column: 29)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !468, line: 636, column: 23)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !468, line: 628, column: 30)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !468, line: 623, column: 30)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !468, line: 621, column: 25)
!1669 = !DILocalVariable(name: "ilim", scope: !1670, file: !468, line: 674, type: !91)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !468, line: 671, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1651, file: !468, line: 670, column: 17)
!1672 = !DILabel(scope: !1641, name: "store_escape", file: !468, line: 709)
!1673 = !DILabel(scope: !1641, name: "store_c", file: !468, line: 712)
!1674 = !DILabel(scope: !1607, name: "force_outer_quoting_style", file: !468, line: 753)
!1675 = distinct !DIAssignID()
!1676 = distinct !DIAssignID()
!1677 = distinct !DIAssignID()
!1678 = distinct !DIAssignID()
!1679 = distinct !DIAssignID()
!1680 = !DILocation(line: 0, scope: !1654)
!1681 = distinct !DIAssignID()
!1682 = !DILocation(line: 0, scope: !1657)
!1683 = !DILocation(line: 0, scope: !1607)
!1684 = !DILocation(line: 258, column: 25, scope: !1607)
!1685 = !DILocation(line: 258, column: 36, scope: !1607)
!1686 = !DILocation(line: 265, column: 8, scope: !1607)
!1687 = !DILocation(line: 267, column: 3, scope: !1607)
!1688 = !DILocation(line: 261, column: 10, scope: !1607)
!1689 = !DILocation(line: 262, column: 15, scope: !1607)
!1690 = !DILocation(line: 263, column: 10, scope: !1607)
!1691 = !DILocation(line: 264, column: 8, scope: !1607)
!1692 = !DILocation(line: 266, column: 8, scope: !1607)
!1693 = !DILocation(line: 267, column: 8, scope: !1607)
!1694 = !DILocation(line: 308, column: 2, scope: !1607)
!1695 = !DILocation(line: 311, column: 3, scope: !1607)
!1696 = !DILocation(line: 318, column: 11, scope: !1637)
!1697 = !DILocation(line: 318, column: 12, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1637, file: !468, line: 318, column: 11)
!1699 = !DILocation(line: 319, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !468, line: 319, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !468, line: 319, column: 9)
!1702 = !DILocation(line: 319, column: 9, scope: !1701)
!1703 = !DILocation(line: 0, scope: !543, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 357, column: 26, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !468, line: 335, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1636, file: !468, line: 334, column: 13)
!1707 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !1704)
!1708 = !DILocation(line: 201, column: 19, scope: !1709, inlinedAt: !1704)
!1709 = distinct !DILexicalBlock(scope: !543, file: !468, line: 201, column: 7)
!1710 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !1704)
!1711 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !1704)
!1712 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !1704)
!1713 = !DILocalVariable(name: "ps", arg: 1, scope: !1714, file: !1455, line: 1135, type: !1717)
!1714 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1715, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1718)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1718 = !{!1713}
!1719 = !DILocation(line: 0, scope: !1714, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !1704)
!1721 = !DILocalVariable(name: "__dest", arg: 1, scope: !1722, file: !1176, line: 57, type: !90)
!1722 = distinct !DISubprogram(name: "memset", scope: !1176, file: !1176, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1723)
!1723 = !{!1721, !1724, !1725}
!1724 = !DILocalVariable(name: "__ch", arg: 2, scope: !1722, file: !1176, line: 57, type: !68)
!1725 = !DILocalVariable(name: "__len", arg: 3, scope: !1722, file: !1176, line: 57, type: !91)
!1726 = !DILocation(line: 0, scope: !1722, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1720)
!1728 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1727)
!1729 = !DILocation(line: 231, column: 7, scope: !1730, inlinedAt: !1704)
!1730 = distinct !DILexicalBlock(scope: !543, file: !468, line: 231, column: 7)
!1731 = !DILocation(line: 231, column: 40, scope: !1730, inlinedAt: !1704)
!1732 = !DILocation(line: 231, column: 45, scope: !1730, inlinedAt: !1704)
!1733 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !1704)
!1734 = !DILocation(line: 0, scope: !543, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 358, column: 27, scope: !1705)
!1736 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !1735)
!1737 = !DILocation(line: 201, column: 19, scope: !1709, inlinedAt: !1735)
!1738 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !1735)
!1739 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !1735)
!1740 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !1735)
!1741 = !DILocation(line: 0, scope: !1714, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !1735)
!1743 = !DILocation(line: 0, scope: !1722, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1742)
!1745 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1744)
!1746 = !DILocation(line: 231, column: 7, scope: !1730, inlinedAt: !1735)
!1747 = !DILocation(line: 231, column: 40, scope: !1730, inlinedAt: !1735)
!1748 = !DILocation(line: 231, column: 45, scope: !1730, inlinedAt: !1735)
!1749 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !1735)
!1750 = !DILocation(line: 360, column: 14, scope: !1635)
!1751 = !DILocation(line: 360, column: 13, scope: !1636)
!1752 = !DILocation(line: 0, scope: !1634)
!1753 = !DILocation(line: 361, column: 45, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 361, column: 11)
!1755 = !DILocation(line: 361, column: 11, scope: !1634)
!1756 = !DILocation(line: 362, column: 13, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !468, line: 362, column: 13)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !468, line: 362, column: 13)
!1759 = !DILocation(line: 362, column: 13, scope: !1758)
!1760 = !DILocation(line: 361, column: 52, scope: !1754)
!1761 = distinct !{!1761, !1755, !1762, !896}
!1762 = !DILocation(line: 362, column: 13, scope: !1634)
!1763 = !DILocation(line: 260, column: 10, scope: !1607)
!1764 = !DILocation(line: 365, column: 28, scope: !1636)
!1765 = !DILocation(line: 367, column: 7, scope: !1637)
!1766 = !DILocation(line: 370, column: 7, scope: !1637)
!1767 = !DILocation(line: 373, column: 7, scope: !1637)
!1768 = !DILocation(line: 376, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1637, file: !468, line: 376, column: 11)
!1770 = !DILocation(line: 376, column: 11, scope: !1637)
!1771 = !DILocation(line: 381, column: 12, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1637, file: !468, line: 381, column: 11)
!1773 = !DILocation(line: 381, column: 11, scope: !1637)
!1774 = !DILocation(line: 382, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !468, line: 382, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !468, line: 382, column: 9)
!1777 = !DILocation(line: 382, column: 9, scope: !1776)
!1778 = !DILocation(line: 389, column: 7, scope: !1637)
!1779 = !DILocation(line: 392, column: 7, scope: !1637)
!1780 = !DILocation(line: 0, scope: !1639)
!1781 = !DILocation(line: 395, column: 8, scope: !1639)
!1782 = !DILocation(line: 309, column: 8, scope: !1607)
!1783 = !DILocation(line: 395, scope: !1639)
!1784 = !DILocation(line: 395, column: 34, scope: !1642)
!1785 = !DILocation(line: 395, column: 26, scope: !1642)
!1786 = !DILocation(line: 395, column: 48, scope: !1642)
!1787 = !DILocation(line: 395, column: 55, scope: !1642)
!1788 = !DILocation(line: 395, column: 3, scope: !1639)
!1789 = !DILocation(line: 395, column: 67, scope: !1642)
!1790 = !DILocation(line: 0, scope: !1641)
!1791 = !DILocation(line: 402, column: 11, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 401, column: 11)
!1793 = !DILocation(line: 404, column: 17, scope: !1792)
!1794 = !DILocation(line: 405, column: 39, scope: !1792)
!1795 = !DILocation(line: 409, column: 32, scope: !1792)
!1796 = !DILocation(line: 405, column: 19, scope: !1792)
!1797 = !DILocation(line: 405, column: 15, scope: !1792)
!1798 = !DILocation(line: 410, column: 11, scope: !1792)
!1799 = !DILocation(line: 410, column: 25, scope: !1792)
!1800 = !DILocalVariable(name: "__s1", arg: 1, scope: !1801, file: !862, line: 974, type: !997)
!1801 = distinct !DISubprogram(name: "memeq", scope: !862, file: !862, line: 974, type: !1424, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1802)
!1802 = !{!1800, !1803, !1804}
!1803 = !DILocalVariable(name: "__s2", arg: 2, scope: !1801, file: !862, line: 974, type: !997)
!1804 = !DILocalVariable(name: "__n", arg: 3, scope: !1801, file: !862, line: 974, type: !91)
!1805 = !DILocation(line: 0, scope: !1801, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 410, column: 14, scope: !1792)
!1807 = !DILocation(line: 976, column: 11, scope: !1801, inlinedAt: !1806)
!1808 = !DILocation(line: 976, column: 10, scope: !1801, inlinedAt: !1806)
!1809 = !DILocation(line: 401, column: 11, scope: !1641)
!1810 = !DILocation(line: 417, column: 25, scope: !1641)
!1811 = !DILocation(line: 418, column: 7, scope: !1641)
!1812 = !DILocation(line: 421, column: 15, scope: !1648)
!1813 = !DILocation(line: 423, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !468, line: 423, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !468, line: 422, column: 13)
!1816 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 421, column: 15)
!1817 = !DILocation(line: 423, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !468, line: 423, column: 15)
!1819 = !DILocation(line: 423, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !468, line: 423, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !468, line: 423, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !468, line: 423, column: 15)
!1823 = !DILocation(line: 423, column: 15, scope: !1821)
!1824 = !DILocation(line: 423, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !468, line: 423, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !468, line: 423, column: 15)
!1827 = !DILocation(line: 423, column: 15, scope: !1826)
!1828 = !DILocation(line: 423, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !468, line: 423, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1822, file: !468, line: 423, column: 15)
!1831 = !DILocation(line: 423, column: 15, scope: !1830)
!1832 = !DILocation(line: 423, column: 15, scope: !1822)
!1833 = !DILocation(line: 423, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !468, line: 423, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1814, file: !468, line: 423, column: 15)
!1836 = !DILocation(line: 423, column: 15, scope: !1835)
!1837 = !DILocation(line: 431, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1815, file: !468, line: 430, column: 19)
!1839 = !DILocation(line: 431, column: 24, scope: !1838)
!1840 = !DILocation(line: 431, column: 28, scope: !1838)
!1841 = !DILocation(line: 431, column: 38, scope: !1838)
!1842 = !DILocation(line: 431, column: 48, scope: !1838)
!1843 = !DILocation(line: 431, column: 59, scope: !1838)
!1844 = !DILocation(line: 433, column: 19, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !468, line: 433, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !468, line: 433, column: 19)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !468, line: 432, column: 17)
!1848 = !DILocation(line: 433, column: 19, scope: !1846)
!1849 = !DILocation(line: 434, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !468, line: 434, column: 19)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !468, line: 434, column: 19)
!1852 = !DILocation(line: 434, column: 19, scope: !1851)
!1853 = !DILocation(line: 435, column: 17, scope: !1847)
!1854 = !DILocation(line: 442, column: 20, scope: !1816)
!1855 = !DILocation(line: 447, column: 11, scope: !1648)
!1856 = !DILocation(line: 450, column: 19, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 448, column: 13)
!1858 = !DILocation(line: 456, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1857, file: !468, line: 455, column: 19)
!1860 = !DILocation(line: 456, column: 24, scope: !1859)
!1861 = !DILocation(line: 456, column: 28, scope: !1859)
!1862 = !DILocation(line: 456, column: 38, scope: !1859)
!1863 = !DILocation(line: 456, column: 41, scope: !1859)
!1864 = !DILocation(line: 456, column: 52, scope: !1859)
!1865 = !DILocation(line: 455, column: 19, scope: !1857)
!1866 = !DILocation(line: 457, column: 25, scope: !1859)
!1867 = !DILocation(line: 457, column: 17, scope: !1859)
!1868 = !DILocation(line: 464, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1859, file: !468, line: 458, column: 19)
!1870 = !DILocation(line: 468, column: 21, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !468, line: 468, column: 21)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !468, line: 468, column: 21)
!1873 = !DILocation(line: 468, column: 21, scope: !1872)
!1874 = !DILocation(line: 469, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !468, line: 469, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !468, line: 469, column: 21)
!1877 = !DILocation(line: 469, column: 21, scope: !1876)
!1878 = !DILocation(line: 470, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !468, line: 470, column: 21)
!1880 = distinct !DILexicalBlock(scope: !1869, file: !468, line: 470, column: 21)
!1881 = !DILocation(line: 470, column: 21, scope: !1880)
!1882 = !DILocation(line: 471, column: 21, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !468, line: 471, column: 21)
!1884 = distinct !DILexicalBlock(scope: !1869, file: !468, line: 471, column: 21)
!1885 = !DILocation(line: 471, column: 21, scope: !1884)
!1886 = !DILocation(line: 472, column: 21, scope: !1869)
!1887 = !DILocation(line: 482, column: 33, scope: !1647)
!1888 = !DILocation(line: 483, column: 33, scope: !1647)
!1889 = !DILocation(line: 485, column: 33, scope: !1647)
!1890 = !DILocation(line: 486, column: 33, scope: !1647)
!1891 = !DILocation(line: 487, column: 33, scope: !1647)
!1892 = !DILocation(line: 490, column: 17, scope: !1647)
!1893 = !DILocation(line: 492, column: 21, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !468, line: 491, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1647, file: !468, line: 490, column: 17)
!1896 = !DILocation(line: 499, column: 35, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1647, file: !468, line: 499, column: 17)
!1898 = !DILocation(line: 499, column: 57, scope: !1897)
!1899 = !DILocation(line: 0, scope: !1647)
!1900 = !DILocation(line: 502, column: 11, scope: !1647)
!1901 = !DILocation(line: 504, column: 17, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1647, file: !468, line: 503, column: 17)
!1903 = !DILocation(line: 507, column: 11, scope: !1647)
!1904 = !DILocation(line: 508, column: 17, scope: !1647)
!1905 = !DILocation(line: 517, column: 15, scope: !1648)
!1906 = !DILocation(line: 517, column: 40, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 517, column: 15)
!1908 = !DILocation(line: 517, column: 47, scope: !1907)
!1909 = !DILocation(line: 517, column: 18, scope: !1907)
!1910 = !DILocation(line: 521, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 521, column: 15)
!1912 = !DILocation(line: 521, column: 15, scope: !1648)
!1913 = !DILocation(line: 525, column: 11, scope: !1648)
!1914 = !DILocation(line: 537, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 536, column: 15)
!1916 = !DILocation(line: 544, column: 15, scope: !1648)
!1917 = !DILocation(line: 546, column: 19, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !468, line: 545, column: 13)
!1919 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 544, column: 15)
!1920 = !DILocation(line: 549, column: 19, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !468, line: 549, column: 19)
!1922 = !DILocation(line: 549, column: 30, scope: !1921)
!1923 = !DILocation(line: 558, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !468, line: 558, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !468, line: 558, column: 15)
!1926 = !DILocation(line: 558, column: 15, scope: !1925)
!1927 = !DILocation(line: 559, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !468, line: 559, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1918, file: !468, line: 559, column: 15)
!1930 = !DILocation(line: 559, column: 15, scope: !1929)
!1931 = !DILocation(line: 560, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !468, line: 560, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1918, file: !468, line: 560, column: 15)
!1934 = !DILocation(line: 560, column: 15, scope: !1933)
!1935 = !DILocation(line: 562, column: 13, scope: !1918)
!1936 = !DILocation(line: 602, column: 17, scope: !1651)
!1937 = !DILocation(line: 0, scope: !1651)
!1938 = !DILocation(line: 605, column: 29, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1655, file: !468, line: 603, column: 15)
!1940 = !DILocation(line: 605, column: 27, scope: !1939)
!1941 = !DILocation(line: 606, column: 15, scope: !1939)
!1942 = !DILocation(line: 609, column: 17, scope: !1654)
!1943 = !DILocation(line: 0, scope: !1714, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 609, column: 32, scope: !1654)
!1945 = !DILocation(line: 0, scope: !1722, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1944)
!1947 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1946)
!1948 = !DILocation(line: 613, column: 29, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1654, file: !468, line: 613, column: 21)
!1950 = !DILocation(line: 613, column: 21, scope: !1654)
!1951 = !DILocation(line: 614, column: 29, scope: !1949)
!1952 = !DILocation(line: 614, column: 19, scope: !1949)
!1953 = !DILocation(line: 618, column: 21, scope: !1657)
!1954 = !DILocation(line: 620, column: 54, scope: !1657)
!1955 = !DILocation(line: 619, column: 36, scope: !1657)
!1956 = !DILocation(line: 621, column: 25, scope: !1657)
!1957 = !DILocation(line: 631, column: 38, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1666, file: !468, line: 629, column: 23)
!1959 = !DILocation(line: 631, column: 48, scope: !1958)
!1960 = !DILocation(line: 626, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1667, file: !468, line: 624, column: 23)
!1962 = !DILocation(line: 631, column: 51, scope: !1958)
!1963 = !DILocation(line: 631, column: 25, scope: !1958)
!1964 = !DILocation(line: 632, column: 28, scope: !1958)
!1965 = !DILocation(line: 631, column: 34, scope: !1958)
!1966 = distinct !{!1966, !1963, !1964, !896}
!1967 = !DILocation(line: 0, scope: !1662)
!1968 = !DILocation(line: 646, column: 29, scope: !1664)
!1969 = !DILocation(line: 649, column: 39, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1662, file: !468, line: 648, column: 29)
!1971 = !DILocation(line: 649, column: 31, scope: !1970)
!1972 = !DILocation(line: 648, column: 60, scope: !1970)
!1973 = !DILocation(line: 648, column: 50, scope: !1970)
!1974 = !DILocation(line: 648, column: 29, scope: !1662)
!1975 = distinct !{!1975, !1974, !1976, !896}
!1976 = !DILocation(line: 654, column: 33, scope: !1662)
!1977 = !DILocation(line: 657, column: 43, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1665, file: !468, line: 657, column: 29)
!1979 = !DILocalVariable(name: "wc", arg: 1, scope: !1980, file: !1981, line: 865, type: !1984)
!1980 = distinct !DISubprogram(name: "c32isprint", scope: !1981, file: !1981, line: 865, type: !1982, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1986)
!1981 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!68, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1985, line: 20, baseType: !74)
!1985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1986 = !{!1979}
!1987 = !DILocation(line: 0, scope: !1980, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 657, column: 31, scope: !1978)
!1989 = !DILocation(line: 871, column: 10, scope: !1980, inlinedAt: !1988)
!1990 = !DILocation(line: 657, column: 31, scope: !1978)
!1991 = !DILocation(line: 664, column: 23, scope: !1657)
!1992 = !DILocation(line: 665, column: 19, scope: !1658)
!1993 = !DILocation(line: 666, column: 15, scope: !1655)
!1994 = !DILocation(line: 0, scope: !1655)
!1995 = !DILocation(line: 670, column: 19, scope: !1671)
!1996 = !DILocation(line: 670, column: 23, scope: !1671)
!1997 = !DILocation(line: 674, column: 33, scope: !1670)
!1998 = !DILocation(line: 0, scope: !1670)
!1999 = !DILocation(line: 676, column: 17, scope: !1670)
!2000 = !DILocation(line: 398, column: 12, scope: !1641)
!2001 = !DILocation(line: 678, column: 43, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !468, line: 678, column: 25)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !468, line: 677, column: 19)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !468, line: 676, column: 17)
!2005 = distinct !DILexicalBlock(scope: !1670, file: !468, line: 676, column: 17)
!2006 = !DILocation(line: 680, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !468, line: 680, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2002, file: !468, line: 679, column: 23)
!2009 = !DILocation(line: 680, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !468, line: 680, column: 25)
!2011 = !DILocation(line: 680, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !468, line: 680, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !468, line: 680, column: 25)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !468, line: 680, column: 25)
!2015 = !DILocation(line: 680, column: 25, scope: !2013)
!2016 = !DILocation(line: 680, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !468, line: 680, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !468, line: 680, column: 25)
!2019 = !DILocation(line: 680, column: 25, scope: !2018)
!2020 = !DILocation(line: 680, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !468, line: 680, column: 25)
!2022 = distinct !DILexicalBlock(scope: !2014, file: !468, line: 680, column: 25)
!2023 = !DILocation(line: 680, column: 25, scope: !2022)
!2024 = !DILocation(line: 680, column: 25, scope: !2014)
!2025 = !DILocation(line: 680, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !468, line: 680, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2007, file: !468, line: 680, column: 25)
!2028 = !DILocation(line: 680, column: 25, scope: !2027)
!2029 = !DILocation(line: 681, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !468, line: 681, column: 25)
!2031 = distinct !DILexicalBlock(scope: !2008, file: !468, line: 681, column: 25)
!2032 = !DILocation(line: 681, column: 25, scope: !2031)
!2033 = !DILocation(line: 682, column: 25, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !468, line: 682, column: 25)
!2035 = distinct !DILexicalBlock(scope: !2008, file: !468, line: 682, column: 25)
!2036 = !DILocation(line: 682, column: 25, scope: !2035)
!2037 = !DILocation(line: 683, column: 38, scope: !2008)
!2038 = !DILocation(line: 683, column: 33, scope: !2008)
!2039 = !DILocation(line: 684, column: 23, scope: !2008)
!2040 = !DILocation(line: 685, column: 30, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2002, file: !468, line: 685, column: 30)
!2042 = !DILocation(line: 685, column: 30, scope: !2002)
!2043 = !DILocation(line: 687, column: 25, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !468, line: 687, column: 25)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !468, line: 687, column: 25)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !468, line: 686, column: 23)
!2047 = !DILocation(line: 687, column: 25, scope: !2045)
!2048 = !DILocation(line: 689, column: 23, scope: !2046)
!2049 = !DILocation(line: 690, column: 35, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2003, file: !468, line: 690, column: 25)
!2051 = !DILocation(line: 690, column: 30, scope: !2050)
!2052 = !DILocation(line: 690, column: 25, scope: !2003)
!2053 = !DILocation(line: 692, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !468, line: 692, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2003, file: !468, line: 692, column: 21)
!2056 = !DILocation(line: 692, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !468, line: 692, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !468, line: 692, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !468, line: 692, column: 21)
!2060 = !DILocation(line: 692, column: 21, scope: !2058)
!2061 = !DILocation(line: 692, column: 21, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !468, line: 692, column: 21)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !468, line: 692, column: 21)
!2064 = !DILocation(line: 692, column: 21, scope: !2063)
!2065 = !DILocation(line: 692, column: 21, scope: !2059)
!2066 = !DILocation(line: 0, scope: !2003)
!2067 = !DILocation(line: 693, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !468, line: 693, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2003, file: !468, line: 693, column: 21)
!2070 = !DILocation(line: 693, column: 21, scope: !2069)
!2071 = !DILocation(line: 694, column: 25, scope: !2003)
!2072 = !DILocation(line: 676, column: 17, scope: !2004)
!2073 = distinct !{!2073, !2074, !2075}
!2074 = !DILocation(line: 676, column: 17, scope: !2005)
!2075 = !DILocation(line: 695, column: 19, scope: !2005)
!2076 = !DILocation(line: 409, column: 30, scope: !1792)
!2077 = !DILocation(line: 702, column: 34, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 702, column: 11)
!2079 = !DILocation(line: 704, column: 14, scope: !2078)
!2080 = !DILocation(line: 705, column: 14, scope: !2078)
!2081 = !DILocation(line: 705, column: 35, scope: !2078)
!2082 = !DILocation(line: 705, column: 17, scope: !2078)
!2083 = !DILocation(line: 705, column: 47, scope: !2078)
!2084 = !DILocation(line: 705, column: 65, scope: !2078)
!2085 = !DILocation(line: 706, column: 11, scope: !2078)
!2086 = !DILocation(line: 702, column: 11, scope: !1641)
!2087 = !DILocation(line: 395, column: 15, scope: !1639)
!2088 = !DILocation(line: 709, column: 5, scope: !1641)
!2089 = !DILocation(line: 710, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 710, column: 7)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !468, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !468, line: 710, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !468, line: 710, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !468, line: 710, column: 7)
!2097 = !DILocation(line: 710, column: 7, scope: !2095)
!2098 = !DILocation(line: 710, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !468, line: 710, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !468, line: 710, column: 7)
!2101 = !DILocation(line: 710, column: 7, scope: !2100)
!2102 = !DILocation(line: 710, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !468, line: 710, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2096, file: !468, line: 710, column: 7)
!2105 = !DILocation(line: 710, column: 7, scope: !2104)
!2106 = !DILocation(line: 710, column: 7, scope: !2096)
!2107 = !DILocation(line: 710, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !468, line: 710, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2090, file: !468, line: 710, column: 7)
!2110 = !DILocation(line: 710, column: 7, scope: !2109)
!2111 = !DILocation(line: 712, column: 5, scope: !1641)
!2112 = !DILocation(line: 713, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !468, line: 713, column: 7)
!2114 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 713, column: 7)
!2115 = !DILocation(line: 417, column: 21, scope: !1641)
!2116 = !DILocation(line: 713, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !468, line: 713, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !468, line: 713, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2113, file: !468, line: 713, column: 7)
!2120 = !DILocation(line: 713, column: 7, scope: !2118)
!2121 = !DILocation(line: 713, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !468, line: 713, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !468, line: 713, column: 7)
!2124 = !DILocation(line: 713, column: 7, scope: !2123)
!2125 = !DILocation(line: 713, column: 7, scope: !2119)
!2126 = !DILocation(line: 714, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !468, line: 714, column: 7)
!2128 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 714, column: 7)
!2129 = !DILocation(line: 714, column: 7, scope: !2128)
!2130 = !DILocation(line: 716, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 716, column: 11)
!2132 = !DILocation(line: 716, column: 11, scope: !1641)
!2133 = !DILocation(line: 718, column: 5, scope: !1642)
!2134 = !DILocation(line: 395, column: 82, scope: !1642)
!2135 = !DILocation(line: 395, column: 3, scope: !1642)
!2136 = distinct !{!2136, !1788, !2137, !896}
!2137 = !DILocation(line: 718, column: 5, scope: !1639)
!2138 = !DILocation(line: 720, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 720, column: 7)
!2140 = !DILocation(line: 720, column: 16, scope: !2139)
!2141 = !DILocation(line: 728, column: 51, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 728, column: 7)
!2143 = !DILocation(line: 731, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !468, line: 731, column: 11)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !468, line: 730, column: 5)
!2146 = !DILocation(line: 731, column: 11, scope: !2145)
!2147 = !DILocation(line: 732, column: 16, scope: !2144)
!2148 = !DILocation(line: 732, column: 9, scope: !2144)
!2149 = !DILocation(line: 736, column: 18, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !468, line: 736, column: 16)
!2151 = !DILocation(line: 736, column: 29, scope: !2150)
!2152 = !DILocation(line: 745, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 745, column: 7)
!2154 = !DILocation(line: 745, column: 20, scope: !2153)
!2155 = !DILocation(line: 746, column: 12, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !468, line: 746, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !468, line: 746, column: 5)
!2158 = !DILocation(line: 746, column: 5, scope: !2157)
!2159 = !DILocation(line: 747, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !468, line: 747, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !468, line: 747, column: 7)
!2162 = !DILocation(line: 747, column: 7, scope: !2161)
!2163 = !DILocation(line: 746, column: 39, scope: !2156)
!2164 = distinct !{!2164, !2158, !2165, !896}
!2165 = !DILocation(line: 747, column: 7, scope: !2157)
!2166 = !DILocation(line: 749, column: 11, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 749, column: 7)
!2168 = !DILocation(line: 749, column: 7, scope: !1607)
!2169 = !DILocation(line: 750, column: 5, scope: !2167)
!2170 = !DILocation(line: 750, column: 17, scope: !2167)
!2171 = !DILocation(line: 753, column: 2, scope: !1607)
!2172 = !DILocation(line: 756, column: 51, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1607, file: !468, line: 756, column: 7)
!2174 = !DILocation(line: 756, column: 21, scope: !2173)
!2175 = !DILocation(line: 760, column: 42, scope: !1607)
!2176 = !DILocation(line: 758, column: 10, scope: !1607)
!2177 = !DILocation(line: 758, column: 3, scope: !1607)
!2178 = !DILocation(line: 762, column: 1, scope: !1607)
!2179 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !973, file: !973, line: 98, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!91}
!2182 = !DISubprogram(name: "strlen", scope: !969, file: !969, line: 407, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!93, !94}
!2185 = !DISubprogram(name: "iswprint", scope: !2186, file: !2186, line: 120, type: !1982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2187 = distinct !DISubprogram(name: "quotearg_alloc", scope: !468, file: !468, line: 788, type: !2188, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!89, !94, !91, !1500}
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !468, line: 788, type: !94)
!2192 = !DILocalVariable(name: "argsize", arg: 2, scope: !2187, file: !468, line: 788, type: !91)
!2193 = !DILocalVariable(name: "o", arg: 3, scope: !2187, file: !468, line: 789, type: !1500)
!2194 = !DILocation(line: 0, scope: !2187)
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2196, file: !468, line: 801, type: !94)
!2196 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !468, file: !468, line: 801, type: !2197, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!89, !94, !91, !718, !1500}
!2199 = !{!2195, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2200 = !DILocalVariable(name: "argsize", arg: 2, scope: !2196, file: !468, line: 801, type: !91)
!2201 = !DILocalVariable(name: "size", arg: 3, scope: !2196, file: !468, line: 801, type: !718)
!2202 = !DILocalVariable(name: "o", arg: 4, scope: !2196, file: !468, line: 802, type: !1500)
!2203 = !DILocalVariable(name: "p", scope: !2196, file: !468, line: 804, type: !1500)
!2204 = !DILocalVariable(name: "saved_errno", scope: !2196, file: !468, line: 805, type: !68)
!2205 = !DILocalVariable(name: "flags", scope: !2196, file: !468, line: 807, type: !68)
!2206 = !DILocalVariable(name: "bufsize", scope: !2196, file: !468, line: 808, type: !91)
!2207 = !DILocalVariable(name: "buf", scope: !2196, file: !468, line: 812, type: !89)
!2208 = !DILocation(line: 0, scope: !2196, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 791, column: 10, scope: !2187)
!2210 = !DILocation(line: 804, column: 37, scope: !2196, inlinedAt: !2209)
!2211 = !DILocation(line: 805, column: 21, scope: !2196, inlinedAt: !2209)
!2212 = !DILocation(line: 807, column: 18, scope: !2196, inlinedAt: !2209)
!2213 = !DILocation(line: 807, column: 24, scope: !2196, inlinedAt: !2209)
!2214 = !DILocation(line: 808, column: 72, scope: !2196, inlinedAt: !2209)
!2215 = !DILocation(line: 809, column: 56, scope: !2196, inlinedAt: !2209)
!2216 = !DILocation(line: 810, column: 49, scope: !2196, inlinedAt: !2209)
!2217 = !DILocation(line: 811, column: 49, scope: !2196, inlinedAt: !2209)
!2218 = !DILocation(line: 808, column: 20, scope: !2196, inlinedAt: !2209)
!2219 = !DILocation(line: 811, column: 62, scope: !2196, inlinedAt: !2209)
!2220 = !DILocation(line: 812, column: 15, scope: !2196, inlinedAt: !2209)
!2221 = !DILocation(line: 813, column: 60, scope: !2196, inlinedAt: !2209)
!2222 = !DILocation(line: 815, column: 32, scope: !2196, inlinedAt: !2209)
!2223 = !DILocation(line: 815, column: 47, scope: !2196, inlinedAt: !2209)
!2224 = !DILocation(line: 813, column: 3, scope: !2196, inlinedAt: !2209)
!2225 = !DILocation(line: 816, column: 9, scope: !2196, inlinedAt: !2209)
!2226 = !DILocation(line: 791, column: 3, scope: !2187)
!2227 = !DILocation(line: 0, scope: !2196)
!2228 = !DILocation(line: 804, column: 37, scope: !2196)
!2229 = !DILocation(line: 805, column: 21, scope: !2196)
!2230 = !DILocation(line: 807, column: 18, scope: !2196)
!2231 = !DILocation(line: 807, column: 27, scope: !2196)
!2232 = !DILocation(line: 807, column: 24, scope: !2196)
!2233 = !DILocation(line: 808, column: 72, scope: !2196)
!2234 = !DILocation(line: 809, column: 56, scope: !2196)
!2235 = !DILocation(line: 810, column: 49, scope: !2196)
!2236 = !DILocation(line: 811, column: 49, scope: !2196)
!2237 = !DILocation(line: 808, column: 20, scope: !2196)
!2238 = !DILocation(line: 811, column: 62, scope: !2196)
!2239 = !DILocation(line: 812, column: 15, scope: !2196)
!2240 = !DILocation(line: 813, column: 60, scope: !2196)
!2241 = !DILocation(line: 815, column: 32, scope: !2196)
!2242 = !DILocation(line: 815, column: 47, scope: !2196)
!2243 = !DILocation(line: 813, column: 3, scope: !2196)
!2244 = !DILocation(line: 816, column: 9, scope: !2196)
!2245 = !DILocation(line: 817, column: 7, scope: !2196)
!2246 = !DILocation(line: 818, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2196, file: !468, line: 817, column: 7)
!2248 = !{!1042, !1042, i64 0}
!2249 = !DILocation(line: 818, column: 5, scope: !2247)
!2250 = !DILocation(line: 819, column: 3, scope: !2196)
!2251 = distinct !DISubprogram(name: "quotearg_free", scope: !468, file: !468, line: 837, type: !423, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2252)
!2252 = !{!2253, !2254}
!2253 = !DILocalVariable(name: "sv", scope: !2251, file: !468, line: 839, type: !566)
!2254 = !DILocalVariable(name: "i", scope: !2255, file: !468, line: 840, type: !68)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !468, line: 840, column: 3)
!2256 = !DILocation(line: 839, column: 24, scope: !2251)
!2257 = !DILocation(line: 0, scope: !2251)
!2258 = !DILocation(line: 0, scope: !2255)
!2259 = !DILocation(line: 840, column: 21, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !468, line: 840, column: 3)
!2261 = !DILocation(line: 840, column: 3, scope: !2255)
!2262 = !DILocation(line: 842, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2251, file: !468, line: 842, column: 7)
!2264 = !{!2265, !787, i64 8}
!2265 = !{!"slotvec", !1042, i64 0, !787, i64 8}
!2266 = !DILocation(line: 842, column: 17, scope: !2263)
!2267 = !DILocation(line: 842, column: 7, scope: !2251)
!2268 = !DILocation(line: 841, column: 17, scope: !2260)
!2269 = !DILocation(line: 841, column: 5, scope: !2260)
!2270 = !DILocation(line: 840, column: 32, scope: !2260)
!2271 = distinct !{!2271, !2261, !2272, !896}
!2272 = !DILocation(line: 841, column: 20, scope: !2255)
!2273 = !DILocation(line: 844, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2263, file: !468, line: 843, column: 5)
!2275 = !DILocation(line: 845, column: 21, scope: !2274)
!2276 = !{!2265, !1042, i64 0}
!2277 = !DILocation(line: 846, column: 20, scope: !2274)
!2278 = !DILocation(line: 847, column: 5, scope: !2274)
!2279 = !DILocation(line: 848, column: 10, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2251, file: !468, line: 848, column: 7)
!2281 = !DILocation(line: 848, column: 7, scope: !2251)
!2282 = !DILocation(line: 850, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !468, line: 849, column: 5)
!2284 = !DILocation(line: 851, column: 15, scope: !2283)
!2285 = !DILocation(line: 852, column: 5, scope: !2283)
!2286 = !DILocation(line: 853, column: 10, scope: !2251)
!2287 = !DILocation(line: 854, column: 1, scope: !2251)
!2288 = !DISubprogram(name: "free", scope: !1455, file: !1455, line: 786, type: !2289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !90}
!2291 = distinct !DISubprogram(name: "quotearg_n", scope: !468, file: !468, line: 919, type: !966, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2292)
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !468, line: 919, type: !68)
!2294 = !DILocalVariable(name: "arg", arg: 2, scope: !2291, file: !468, line: 919, type: !94)
!2295 = !DILocation(line: 0, scope: !2291)
!2296 = !DILocation(line: 921, column: 10, scope: !2291)
!2297 = !DILocation(line: 921, column: 3, scope: !2291)
!2298 = distinct !DISubprogram(name: "quotearg_n_options", scope: !468, file: !468, line: 866, type: !2299, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!89, !68, !94, !91, !1500}
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2312, !2313, !2315, !2316, !2317}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2298, file: !468, line: 866, type: !68)
!2303 = !DILocalVariable(name: "arg", arg: 2, scope: !2298, file: !468, line: 866, type: !94)
!2304 = !DILocalVariable(name: "argsize", arg: 3, scope: !2298, file: !468, line: 866, type: !91)
!2305 = !DILocalVariable(name: "options", arg: 4, scope: !2298, file: !468, line: 867, type: !1500)
!2306 = !DILocalVariable(name: "saved_errno", scope: !2298, file: !468, line: 869, type: !68)
!2307 = !DILocalVariable(name: "sv", scope: !2298, file: !468, line: 871, type: !566)
!2308 = !DILocalVariable(name: "nslots_max", scope: !2298, file: !468, line: 873, type: !68)
!2309 = !DILocalVariable(name: "preallocated", scope: !2310, file: !468, line: 879, type: !126)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !468, line: 878, column: 5)
!2311 = distinct !DILexicalBlock(scope: !2298, file: !468, line: 877, column: 7)
!2312 = !DILocalVariable(name: "new_nslots", scope: !2310, file: !468, line: 880, type: !731)
!2313 = !DILocalVariable(name: "size", scope: !2314, file: !468, line: 891, type: !91)
!2314 = distinct !DILexicalBlock(scope: !2298, file: !468, line: 890, column: 3)
!2315 = !DILocalVariable(name: "val", scope: !2314, file: !468, line: 892, type: !89)
!2316 = !DILocalVariable(name: "flags", scope: !2314, file: !468, line: 894, type: !68)
!2317 = !DILocalVariable(name: "qsize", scope: !2314, file: !468, line: 895, type: !91)
!2318 = distinct !DIAssignID()
!2319 = !DILocation(line: 0, scope: !2310)
!2320 = !DILocation(line: 0, scope: !2298)
!2321 = !DILocation(line: 869, column: 21, scope: !2298)
!2322 = !DILocation(line: 871, column: 24, scope: !2298)
!2323 = !DILocation(line: 874, column: 17, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2298, file: !468, line: 874, column: 7)
!2325 = !DILocation(line: 875, column: 5, scope: !2324)
!2326 = !DILocation(line: 877, column: 7, scope: !2311)
!2327 = !DILocation(line: 877, column: 14, scope: !2311)
!2328 = !DILocation(line: 877, column: 7, scope: !2298)
!2329 = !DILocation(line: 879, column: 31, scope: !2310)
!2330 = !DILocation(line: 880, column: 7, scope: !2310)
!2331 = !DILocation(line: 880, column: 26, scope: !2310)
!2332 = !DILocation(line: 880, column: 13, scope: !2310)
!2333 = distinct !DIAssignID()
!2334 = !DILocation(line: 882, column: 31, scope: !2310)
!2335 = !DILocation(line: 883, column: 33, scope: !2310)
!2336 = !DILocation(line: 883, column: 42, scope: !2310)
!2337 = !DILocation(line: 883, column: 31, scope: !2310)
!2338 = !DILocation(line: 882, column: 22, scope: !2310)
!2339 = !DILocation(line: 882, column: 15, scope: !2310)
!2340 = !DILocation(line: 884, column: 11, scope: !2310)
!2341 = !DILocation(line: 885, column: 15, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2310, file: !468, line: 884, column: 11)
!2343 = !{i64 0, i64 8, !2248, i64 8, i64 8, !786}
!2344 = !DILocation(line: 885, column: 9, scope: !2342)
!2345 = !DILocation(line: 886, column: 20, scope: !2310)
!2346 = !DILocation(line: 886, column: 18, scope: !2310)
!2347 = !DILocation(line: 886, column: 32, scope: !2310)
!2348 = !DILocation(line: 886, column: 43, scope: !2310)
!2349 = !DILocation(line: 886, column: 53, scope: !2310)
!2350 = !DILocation(line: 0, scope: !1722, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 886, column: 7, scope: !2310)
!2352 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !2351)
!2353 = !DILocation(line: 887, column: 16, scope: !2310)
!2354 = !DILocation(line: 887, column: 14, scope: !2310)
!2355 = !DILocation(line: 888, column: 5, scope: !2311)
!2356 = !DILocation(line: 888, column: 5, scope: !2310)
!2357 = !DILocation(line: 891, column: 19, scope: !2314)
!2358 = !DILocation(line: 891, column: 25, scope: !2314)
!2359 = !DILocation(line: 0, scope: !2314)
!2360 = !DILocation(line: 892, column: 23, scope: !2314)
!2361 = !DILocation(line: 894, column: 26, scope: !2314)
!2362 = !DILocation(line: 894, column: 32, scope: !2314)
!2363 = !DILocation(line: 896, column: 55, scope: !2314)
!2364 = !DILocation(line: 897, column: 55, scope: !2314)
!2365 = !DILocation(line: 898, column: 55, scope: !2314)
!2366 = !DILocation(line: 899, column: 55, scope: !2314)
!2367 = !DILocation(line: 895, column: 20, scope: !2314)
!2368 = !DILocation(line: 901, column: 14, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2314, file: !468, line: 901, column: 9)
!2370 = !DILocation(line: 901, column: 9, scope: !2314)
!2371 = !DILocation(line: 903, column: 35, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !468, line: 902, column: 7)
!2373 = !DILocation(line: 903, column: 20, scope: !2372)
!2374 = !DILocation(line: 904, column: 17, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !468, line: 904, column: 13)
!2376 = !DILocation(line: 904, column: 13, scope: !2372)
!2377 = !DILocation(line: 905, column: 11, scope: !2375)
!2378 = !DILocation(line: 906, column: 27, scope: !2372)
!2379 = !DILocation(line: 906, column: 19, scope: !2372)
!2380 = !DILocation(line: 907, column: 69, scope: !2372)
!2381 = !DILocation(line: 909, column: 44, scope: !2372)
!2382 = !DILocation(line: 910, column: 44, scope: !2372)
!2383 = !DILocation(line: 907, column: 9, scope: !2372)
!2384 = !DILocation(line: 911, column: 7, scope: !2372)
!2385 = !DILocation(line: 913, column: 11, scope: !2314)
!2386 = !DILocation(line: 914, column: 5, scope: !2314)
!2387 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !468, file: !468, line: 925, type: !2388, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!89, !68, !94, !91}
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "n", arg: 1, scope: !2387, file: !468, line: 925, type: !68)
!2392 = !DILocalVariable(name: "arg", arg: 2, scope: !2387, file: !468, line: 925, type: !94)
!2393 = !DILocalVariable(name: "argsize", arg: 3, scope: !2387, file: !468, line: 925, type: !91)
!2394 = !DILocation(line: 0, scope: !2387)
!2395 = !DILocation(line: 927, column: 10, scope: !2387)
!2396 = !DILocation(line: 927, column: 3, scope: !2387)
!2397 = distinct !DISubprogram(name: "quotearg", scope: !468, file: !468, line: 931, type: !975, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2398)
!2398 = !{!2399}
!2399 = !DILocalVariable(name: "arg", arg: 1, scope: !2397, file: !468, line: 931, type: !94)
!2400 = !DILocation(line: 0, scope: !2397)
!2401 = !DILocation(line: 0, scope: !2291, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 933, column: 10, scope: !2397)
!2403 = !DILocation(line: 921, column: 10, scope: !2291, inlinedAt: !2402)
!2404 = !DILocation(line: 933, column: 3, scope: !2397)
!2405 = distinct !DISubprogram(name: "quotearg_mem", scope: !468, file: !468, line: 937, type: !2406, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!89, !94, !91}
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "arg", arg: 1, scope: !2405, file: !468, line: 937, type: !94)
!2410 = !DILocalVariable(name: "argsize", arg: 2, scope: !2405, file: !468, line: 937, type: !91)
!2411 = !DILocation(line: 0, scope: !2405)
!2412 = !DILocation(line: 0, scope: !2387, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 939, column: 10, scope: !2405)
!2414 = !DILocation(line: 927, column: 10, scope: !2387, inlinedAt: !2413)
!2415 = !DILocation(line: 939, column: 3, scope: !2405)
!2416 = distinct !DISubprogram(name: "quotearg_n_style", scope: !468, file: !468, line: 943, type: !2417, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!89, !68, !491, !94}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DILocalVariable(name: "n", arg: 1, scope: !2416, file: !468, line: 943, type: !68)
!2421 = !DILocalVariable(name: "s", arg: 2, scope: !2416, file: !468, line: 943, type: !491)
!2422 = !DILocalVariable(name: "arg", arg: 3, scope: !2416, file: !468, line: 943, type: !94)
!2423 = !DILocalVariable(name: "o", scope: !2416, file: !468, line: 945, type: !1501)
!2424 = distinct !DIAssignID()
!2425 = !DILocation(line: 0, scope: !2416)
!2426 = !DILocation(line: 945, column: 3, scope: !2416)
!2427 = !{!2428}
!2428 = distinct !{!2428, !2429, !"quoting_options_from_style: argument 0"}
!2429 = distinct !{!2429, !"quoting_options_from_style"}
!2430 = !DILocation(line: 945, column: 36, scope: !2416)
!2431 = !DILocalVariable(name: "style", arg: 1, scope: !2432, file: !468, line: 183, type: !491)
!2432 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !468, file: !468, line: 183, type: !2433, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!518, !491}
!2435 = !{!2431, !2436}
!2436 = !DILocalVariable(name: "o", scope: !2432, file: !468, line: 185, type: !518)
!2437 = !DILocation(line: 0, scope: !2432, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 945, column: 36, scope: !2416)
!2439 = !DILocation(line: 185, column: 26, scope: !2432, inlinedAt: !2438)
!2440 = distinct !DIAssignID()
!2441 = !DILocation(line: 186, column: 13, scope: !2442, inlinedAt: !2438)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !468, line: 186, column: 7)
!2443 = !DILocation(line: 186, column: 7, scope: !2432, inlinedAt: !2438)
!2444 = !DILocation(line: 187, column: 5, scope: !2442, inlinedAt: !2438)
!2445 = !DILocation(line: 188, column: 11, scope: !2432, inlinedAt: !2438)
!2446 = distinct !DIAssignID()
!2447 = !DILocation(line: 946, column: 10, scope: !2416)
!2448 = !DILocation(line: 947, column: 1, scope: !2416)
!2449 = !DILocation(line: 946, column: 3, scope: !2416)
!2450 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !468, file: !468, line: 950, type: !2451, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!89, !68, !491, !94, !91}
!2453 = !{!2454, !2455, !2456, !2457, !2458}
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !468, line: 950, type: !68)
!2455 = !DILocalVariable(name: "s", arg: 2, scope: !2450, file: !468, line: 950, type: !491)
!2456 = !DILocalVariable(name: "arg", arg: 3, scope: !2450, file: !468, line: 951, type: !94)
!2457 = !DILocalVariable(name: "argsize", arg: 4, scope: !2450, file: !468, line: 951, type: !91)
!2458 = !DILocalVariable(name: "o", scope: !2450, file: !468, line: 953, type: !1501)
!2459 = distinct !DIAssignID()
!2460 = !DILocation(line: 0, scope: !2450)
!2461 = !DILocation(line: 953, column: 3, scope: !2450)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 953, column: 36, scope: !2450)
!2466 = !DILocation(line: 0, scope: !2432, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 953, column: 36, scope: !2450)
!2468 = !DILocation(line: 185, column: 26, scope: !2432, inlinedAt: !2467)
!2469 = distinct !DIAssignID()
!2470 = !DILocation(line: 186, column: 13, scope: !2442, inlinedAt: !2467)
!2471 = !DILocation(line: 186, column: 7, scope: !2432, inlinedAt: !2467)
!2472 = !DILocation(line: 187, column: 5, scope: !2442, inlinedAt: !2467)
!2473 = !DILocation(line: 188, column: 11, scope: !2432, inlinedAt: !2467)
!2474 = distinct !DIAssignID()
!2475 = !DILocation(line: 954, column: 10, scope: !2450)
!2476 = !DILocation(line: 955, column: 1, scope: !2450)
!2477 = !DILocation(line: 954, column: 3, scope: !2450)
!2478 = distinct !DISubprogram(name: "quotearg_style", scope: !468, file: !468, line: 958, type: !2479, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!89, !491, !94}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "s", arg: 1, scope: !2478, file: !468, line: 958, type: !491)
!2483 = !DILocalVariable(name: "arg", arg: 2, scope: !2478, file: !468, line: 958, type: !94)
!2484 = distinct !DIAssignID()
!2485 = !DILocation(line: 0, scope: !2478)
!2486 = !DILocation(line: 0, scope: !2416, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 960, column: 10, scope: !2478)
!2488 = !DILocation(line: 945, column: 3, scope: !2416, inlinedAt: !2487)
!2489 = !{!2490}
!2490 = distinct !{!2490, !2491, !"quoting_options_from_style: argument 0"}
!2491 = distinct !{!2491, !"quoting_options_from_style"}
!2492 = !DILocation(line: 945, column: 36, scope: !2416, inlinedAt: !2487)
!2493 = !DILocation(line: 0, scope: !2432, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 945, column: 36, scope: !2416, inlinedAt: !2487)
!2495 = !DILocation(line: 185, column: 26, scope: !2432, inlinedAt: !2494)
!2496 = distinct !DIAssignID()
!2497 = !DILocation(line: 186, column: 13, scope: !2442, inlinedAt: !2494)
!2498 = !DILocation(line: 186, column: 7, scope: !2432, inlinedAt: !2494)
!2499 = !DILocation(line: 187, column: 5, scope: !2442, inlinedAt: !2494)
!2500 = !DILocation(line: 188, column: 11, scope: !2432, inlinedAt: !2494)
!2501 = distinct !DIAssignID()
!2502 = !DILocation(line: 946, column: 10, scope: !2416, inlinedAt: !2487)
!2503 = !DILocation(line: 947, column: 1, scope: !2416, inlinedAt: !2487)
!2504 = !DILocation(line: 960, column: 3, scope: !2478)
!2505 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !468, file: !468, line: 964, type: !2506, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!89, !491, !94, !91}
!2508 = !{!2509, !2510, !2511}
!2509 = !DILocalVariable(name: "s", arg: 1, scope: !2505, file: !468, line: 964, type: !491)
!2510 = !DILocalVariable(name: "arg", arg: 2, scope: !2505, file: !468, line: 964, type: !94)
!2511 = !DILocalVariable(name: "argsize", arg: 3, scope: !2505, file: !468, line: 964, type: !91)
!2512 = distinct !DIAssignID()
!2513 = !DILocation(line: 0, scope: !2505)
!2514 = !DILocation(line: 0, scope: !2450, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 966, column: 10, scope: !2505)
!2516 = !DILocation(line: 953, column: 3, scope: !2450, inlinedAt: !2515)
!2517 = !{!2518}
!2518 = distinct !{!2518, !2519, !"quoting_options_from_style: argument 0"}
!2519 = distinct !{!2519, !"quoting_options_from_style"}
!2520 = !DILocation(line: 953, column: 36, scope: !2450, inlinedAt: !2515)
!2521 = !DILocation(line: 0, scope: !2432, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 953, column: 36, scope: !2450, inlinedAt: !2515)
!2523 = !DILocation(line: 185, column: 26, scope: !2432, inlinedAt: !2522)
!2524 = distinct !DIAssignID()
!2525 = !DILocation(line: 186, column: 13, scope: !2442, inlinedAt: !2522)
!2526 = !DILocation(line: 186, column: 7, scope: !2432, inlinedAt: !2522)
!2527 = !DILocation(line: 187, column: 5, scope: !2442, inlinedAt: !2522)
!2528 = !DILocation(line: 188, column: 11, scope: !2432, inlinedAt: !2522)
!2529 = distinct !DIAssignID()
!2530 = !DILocation(line: 954, column: 10, scope: !2450, inlinedAt: !2515)
!2531 = !DILocation(line: 955, column: 1, scope: !2450, inlinedAt: !2515)
!2532 = !DILocation(line: 966, column: 3, scope: !2505)
!2533 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !468, file: !468, line: 970, type: !2534, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!89, !94, !91, !4}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2533, file: !468, line: 970, type: !94)
!2538 = !DILocalVariable(name: "argsize", arg: 2, scope: !2533, file: !468, line: 970, type: !91)
!2539 = !DILocalVariable(name: "ch", arg: 3, scope: !2533, file: !468, line: 970, type: !4)
!2540 = !DILocalVariable(name: "options", scope: !2533, file: !468, line: 972, type: !518)
!2541 = distinct !DIAssignID()
!2542 = !DILocation(line: 0, scope: !2533)
!2543 = !DILocation(line: 972, column: 3, scope: !2533)
!2544 = !DILocation(line: 973, column: 13, scope: !2533)
!2545 = !{i64 0, i64 4, !849, i64 4, i64 4, !849, i64 8, i64 32, !858, i64 40, i64 8, !786, i64 48, i64 8, !786}
!2546 = distinct !DIAssignID()
!2547 = !DILocation(line: 0, scope: !1520, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 974, column: 3, scope: !2533)
!2549 = !DILocation(line: 147, column: 41, scope: !1520, inlinedAt: !2548)
!2550 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2548)
!2551 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2548)
!2552 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2548)
!2553 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2548)
!2554 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2548)
!2555 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2548)
!2556 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2548)
!2557 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2548)
!2558 = !DILocation(line: 975, column: 10, scope: !2533)
!2559 = !DILocation(line: 976, column: 1, scope: !2533)
!2560 = !DILocation(line: 975, column: 3, scope: !2533)
!2561 = distinct !DISubprogram(name: "quotearg_char", scope: !468, file: !468, line: 979, type: !2562, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!89, !94, !4}
!2564 = !{!2565, !2566}
!2565 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !468, line: 979, type: !94)
!2566 = !DILocalVariable(name: "ch", arg: 2, scope: !2561, file: !468, line: 979, type: !4)
!2567 = distinct !DIAssignID()
!2568 = !DILocation(line: 0, scope: !2561)
!2569 = !DILocation(line: 0, scope: !2533, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 981, column: 10, scope: !2561)
!2571 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2570)
!2572 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2570)
!2573 = distinct !DIAssignID()
!2574 = !DILocation(line: 0, scope: !1520, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2570)
!2576 = !DILocation(line: 147, column: 41, scope: !1520, inlinedAt: !2575)
!2577 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2575)
!2578 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2575)
!2579 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2575)
!2580 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2575)
!2581 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2575)
!2582 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2575)
!2583 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2575)
!2584 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2575)
!2585 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2570)
!2586 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2570)
!2587 = !DILocation(line: 981, column: 3, scope: !2561)
!2588 = distinct !DISubprogram(name: "quotearg_colon", scope: !468, file: !468, line: 985, type: !975, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2589)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2588, file: !468, line: 985, type: !94)
!2591 = distinct !DIAssignID()
!2592 = !DILocation(line: 0, scope: !2588)
!2593 = !DILocation(line: 0, scope: !2561, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 987, column: 10, scope: !2588)
!2595 = !DILocation(line: 0, scope: !2533, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 981, column: 10, scope: !2561, inlinedAt: !2594)
!2597 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2596)
!2598 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2596)
!2599 = distinct !DIAssignID()
!2600 = !DILocation(line: 0, scope: !1520, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2596)
!2602 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2601)
!2603 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2601)
!2604 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2601)
!2605 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2596)
!2606 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2596)
!2607 = !DILocation(line: 987, column: 3, scope: !2588)
!2608 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !468, file: !468, line: 991, type: !2406, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2609)
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "arg", arg: 1, scope: !2608, file: !468, line: 991, type: !94)
!2611 = !DILocalVariable(name: "argsize", arg: 2, scope: !2608, file: !468, line: 991, type: !91)
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 0, scope: !2533, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 993, column: 10, scope: !2608)
!2616 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2615)
!2617 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2615)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 0, scope: !1520, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2615)
!2621 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2620)
!2622 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2620)
!2623 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2620)
!2624 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2615)
!2625 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2615)
!2626 = !DILocation(line: 993, column: 3, scope: !2608)
!2627 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !468, file: !468, line: 997, type: !2417, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2628)
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !468, line: 997, type: !68)
!2630 = !DILocalVariable(name: "s", arg: 2, scope: !2627, file: !468, line: 997, type: !491)
!2631 = !DILocalVariable(name: "arg", arg: 3, scope: !2627, file: !468, line: 997, type: !94)
!2632 = !DILocalVariable(name: "options", scope: !2627, file: !468, line: 999, type: !518)
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 0, scope: !2627)
!2635 = !DILocation(line: 185, column: 26, scope: !2432, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1000, column: 13, scope: !2627)
!2637 = !DILocation(line: 999, column: 3, scope: !2627)
!2638 = !DILocation(line: 0, scope: !2432, inlinedAt: !2636)
!2639 = !DILocation(line: 186, column: 13, scope: !2442, inlinedAt: !2636)
!2640 = !DILocation(line: 186, column: 7, scope: !2432, inlinedAt: !2636)
!2641 = !DILocation(line: 187, column: 5, scope: !2442, inlinedAt: !2636)
!2642 = !{!2643}
!2643 = distinct !{!2643, !2644, !"quoting_options_from_style: argument 0"}
!2644 = distinct !{!2644, !"quoting_options_from_style"}
!2645 = !DILocation(line: 1000, column: 13, scope: !2627)
!2646 = distinct !DIAssignID()
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 0, scope: !1520, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1001, column: 3, scope: !2627)
!2650 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2649)
!2651 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2649)
!2652 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2649)
!2653 = distinct !DIAssignID()
!2654 = !DILocation(line: 1002, column: 10, scope: !2627)
!2655 = !DILocation(line: 1003, column: 1, scope: !2627)
!2656 = !DILocation(line: 1002, column: 3, scope: !2627)
!2657 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !468, file: !468, line: 1006, type: !2658, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!89, !68, !94, !94, !94}
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !468, line: 1006, type: !68)
!2662 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2657, file: !468, line: 1006, type: !94)
!2663 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2657, file: !468, line: 1007, type: !94)
!2664 = !DILocalVariable(name: "arg", arg: 4, scope: !2657, file: !468, line: 1007, type: !94)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !2657)
!2667 = !DILocalVariable(name: "o", scope: !2668, file: !468, line: 1018, type: !518)
!2668 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !468, file: !468, line: 1014, type: !2669, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!89, !68, !94, !94, !94, !91}
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2667}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !468, line: 1014, type: !68)
!2673 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2668, file: !468, line: 1014, type: !94)
!2674 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2668, file: !468, line: 1015, type: !94)
!2675 = !DILocalVariable(name: "arg", arg: 4, scope: !2668, file: !468, line: 1016, type: !94)
!2676 = !DILocalVariable(name: "argsize", arg: 5, scope: !2668, file: !468, line: 1016, type: !91)
!2677 = !DILocation(line: 0, scope: !2668, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 1009, column: 10, scope: !2657)
!2679 = !DILocation(line: 1018, column: 3, scope: !2668, inlinedAt: !2678)
!2680 = !DILocation(line: 1018, column: 30, scope: !2668, inlinedAt: !2678)
!2681 = distinct !DIAssignID()
!2682 = distinct !DIAssignID()
!2683 = !DILocation(line: 0, scope: !1560, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1019, column: 3, scope: !2668, inlinedAt: !2678)
!2685 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2684)
!2686 = distinct !DIAssignID()
!2687 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2684)
!2688 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2684)
!2689 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2684)
!2690 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2684)
!2691 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2684)
!2692 = distinct !DIAssignID()
!2693 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2684)
!2694 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2684)
!2695 = distinct !DIAssignID()
!2696 = !DILocation(line: 1020, column: 10, scope: !2668, inlinedAt: !2678)
!2697 = !DILocation(line: 1021, column: 1, scope: !2668, inlinedAt: !2678)
!2698 = !DILocation(line: 1009, column: 3, scope: !2657)
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !2668)
!2701 = !DILocation(line: 1018, column: 3, scope: !2668)
!2702 = !DILocation(line: 1018, column: 30, scope: !2668)
!2703 = distinct !DIAssignID()
!2704 = distinct !DIAssignID()
!2705 = !DILocation(line: 0, scope: !1560, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 1019, column: 3, scope: !2668)
!2707 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2706)
!2708 = distinct !DIAssignID()
!2709 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2706)
!2710 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2706)
!2711 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2706)
!2712 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2706)
!2713 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2706)
!2714 = distinct !DIAssignID()
!2715 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2706)
!2716 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2706)
!2717 = distinct !DIAssignID()
!2718 = !DILocation(line: 1020, column: 10, scope: !2668)
!2719 = !DILocation(line: 1021, column: 1, scope: !2668)
!2720 = !DILocation(line: 1020, column: 3, scope: !2668)
!2721 = distinct !DISubprogram(name: "quotearg_custom", scope: !468, file: !468, line: 1024, type: !2722, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!89, !94, !94, !94}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2721, file: !468, line: 1024, type: !94)
!2726 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2721, file: !468, line: 1024, type: !94)
!2727 = !DILocalVariable(name: "arg", arg: 3, scope: !2721, file: !468, line: 1025, type: !94)
!2728 = distinct !DIAssignID()
!2729 = !DILocation(line: 0, scope: !2721)
!2730 = !DILocation(line: 0, scope: !2657, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1027, column: 10, scope: !2721)
!2732 = !DILocation(line: 0, scope: !2668, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1009, column: 10, scope: !2657, inlinedAt: !2731)
!2734 = !DILocation(line: 1018, column: 3, scope: !2668, inlinedAt: !2733)
!2735 = !DILocation(line: 1018, column: 30, scope: !2668, inlinedAt: !2733)
!2736 = distinct !DIAssignID()
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 0, scope: !1560, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1019, column: 3, scope: !2668, inlinedAt: !2733)
!2740 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2739)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2739)
!2743 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2739)
!2744 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2739)
!2745 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2739)
!2746 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2739)
!2747 = distinct !DIAssignID()
!2748 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2739)
!2749 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2739)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 1020, column: 10, scope: !2668, inlinedAt: !2733)
!2752 = !DILocation(line: 1021, column: 1, scope: !2668, inlinedAt: !2733)
!2753 = !DILocation(line: 1027, column: 3, scope: !2721)
!2754 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !468, file: !468, line: 1031, type: !2755, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!89, !94, !94, !94, !91}
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2754, file: !468, line: 1031, type: !94)
!2759 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2754, file: !468, line: 1031, type: !94)
!2760 = !DILocalVariable(name: "arg", arg: 3, scope: !2754, file: !468, line: 1032, type: !94)
!2761 = !DILocalVariable(name: "argsize", arg: 4, scope: !2754, file: !468, line: 1032, type: !91)
!2762 = distinct !DIAssignID()
!2763 = !DILocation(line: 0, scope: !2754)
!2764 = !DILocation(line: 0, scope: !2668, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 1034, column: 10, scope: !2754)
!2766 = !DILocation(line: 1018, column: 3, scope: !2668, inlinedAt: !2765)
!2767 = !DILocation(line: 1018, column: 30, scope: !2668, inlinedAt: !2765)
!2768 = distinct !DIAssignID()
!2769 = distinct !DIAssignID()
!2770 = !DILocation(line: 0, scope: !1560, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1019, column: 3, scope: !2668, inlinedAt: !2765)
!2772 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2771)
!2773 = distinct !DIAssignID()
!2774 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2771)
!2775 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2771)
!2776 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2771)
!2777 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2771)
!2778 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2771)
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2771)
!2781 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2771)
!2782 = distinct !DIAssignID()
!2783 = !DILocation(line: 1020, column: 10, scope: !2668, inlinedAt: !2765)
!2784 = !DILocation(line: 1021, column: 1, scope: !2668, inlinedAt: !2765)
!2785 = !DILocation(line: 1034, column: 3, scope: !2754)
!2786 = distinct !DISubprogram(name: "quote_n_mem", scope: !468, file: !468, line: 1049, type: !2787, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!94, !68, !94, !91}
!2789 = !{!2790, !2791, !2792}
!2790 = !DILocalVariable(name: "n", arg: 1, scope: !2786, file: !468, line: 1049, type: !68)
!2791 = !DILocalVariable(name: "arg", arg: 2, scope: !2786, file: !468, line: 1049, type: !94)
!2792 = !DILocalVariable(name: "argsize", arg: 3, scope: !2786, file: !468, line: 1049, type: !91)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 1051, column: 10, scope: !2786)
!2795 = !DILocation(line: 1051, column: 3, scope: !2786)
!2796 = distinct !DISubprogram(name: "quote_mem", scope: !468, file: !468, line: 1055, type: !2797, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!94, !94, !91}
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "arg", arg: 1, scope: !2796, file: !468, line: 1055, type: !94)
!2801 = !DILocalVariable(name: "argsize", arg: 2, scope: !2796, file: !468, line: 1055, type: !91)
!2802 = !DILocation(line: 0, scope: !2796)
!2803 = !DILocation(line: 0, scope: !2786, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1057, column: 10, scope: !2796)
!2805 = !DILocation(line: 1051, column: 10, scope: !2786, inlinedAt: !2804)
!2806 = !DILocation(line: 1057, column: 3, scope: !2796)
!2807 = distinct !DISubprogram(name: "quote_n", scope: !468, file: !468, line: 1061, type: !2808, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!94, !68, !94}
!2810 = !{!2811, !2812}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2807, file: !468, line: 1061, type: !68)
!2812 = !DILocalVariable(name: "arg", arg: 2, scope: !2807, file: !468, line: 1061, type: !94)
!2813 = !DILocation(line: 0, scope: !2807)
!2814 = !DILocation(line: 0, scope: !2786, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1063, column: 10, scope: !2807)
!2816 = !DILocation(line: 1051, column: 10, scope: !2786, inlinedAt: !2815)
!2817 = !DILocation(line: 1063, column: 3, scope: !2807)
!2818 = distinct !DISubprogram(name: "quote", scope: !468, file: !468, line: 1067, type: !2819, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!94, !94}
!2821 = !{!2822}
!2822 = !DILocalVariable(name: "arg", arg: 1, scope: !2818, file: !468, line: 1067, type: !94)
!2823 = !DILocation(line: 0, scope: !2818)
!2824 = !DILocation(line: 0, scope: !2807, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1069, column: 10, scope: !2818)
!2826 = !DILocation(line: 0, scope: !2786, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1063, column: 10, scope: !2807, inlinedAt: !2825)
!2828 = !DILocation(line: 1051, column: 10, scope: !2786, inlinedAt: !2827)
!2829 = !DILocation(line: 1069, column: 3, scope: !2818)
!2830 = distinct !DISubprogram(name: "version_etc_arn", scope: !581, file: !581, line: 61, type: !2831, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2868)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2833, !94, !94, !94, !2867, !91}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2835, file: !146, line: 51, baseType: !68, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2835, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2835, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2835, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2835, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2835, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2835, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2835, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2835, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2835, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2835, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2835, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2835, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2835, file: !146, line: 70, baseType: !2851, size: 64, offset: 832)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2835, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2835, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2835, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2835, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2835, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2835, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2835, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2835, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2835, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2835, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2835, file: !146, line: 93, baseType: !2851, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2835, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2835, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2835, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2835, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874}
!2869 = !DILocalVariable(name: "stream", arg: 1, scope: !2830, file: !581, line: 61, type: !2833)
!2870 = !DILocalVariable(name: "command_name", arg: 2, scope: !2830, file: !581, line: 62, type: !94)
!2871 = !DILocalVariable(name: "package", arg: 3, scope: !2830, file: !581, line: 62, type: !94)
!2872 = !DILocalVariable(name: "version", arg: 4, scope: !2830, file: !581, line: 63, type: !94)
!2873 = !DILocalVariable(name: "authors", arg: 5, scope: !2830, file: !581, line: 64, type: !2867)
!2874 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2830, file: !581, line: 64, type: !91)
!2875 = !DILocation(line: 0, scope: !2830)
!2876 = !DILocation(line: 66, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2830, file: !581, line: 66, column: 7)
!2878 = !DILocation(line: 66, column: 7, scope: !2830)
!2879 = !DILocation(line: 67, column: 5, scope: !2877)
!2880 = !DILocation(line: 69, column: 5, scope: !2877)
!2881 = !DILocation(line: 83, column: 3, scope: !2830)
!2882 = !DILocation(line: 85, column: 3, scope: !2830)
!2883 = !DILocation(line: 88, column: 3, scope: !2830)
!2884 = !DILocation(line: 95, column: 3, scope: !2830)
!2885 = !DILocation(line: 97, column: 3, scope: !2830)
!2886 = !DILocation(line: 105, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2830, file: !581, line: 98, column: 5)
!2888 = !DILocation(line: 106, column: 7, scope: !2887)
!2889 = !DILocation(line: 109, column: 7, scope: !2887)
!2890 = !DILocation(line: 110, column: 7, scope: !2887)
!2891 = !DILocation(line: 113, column: 7, scope: !2887)
!2892 = !DILocation(line: 115, column: 7, scope: !2887)
!2893 = !DILocation(line: 120, column: 7, scope: !2887)
!2894 = !DILocation(line: 122, column: 7, scope: !2887)
!2895 = !DILocation(line: 127, column: 7, scope: !2887)
!2896 = !DILocation(line: 129, column: 7, scope: !2887)
!2897 = !DILocation(line: 134, column: 7, scope: !2887)
!2898 = !DILocation(line: 137, column: 7, scope: !2887)
!2899 = !DILocation(line: 142, column: 7, scope: !2887)
!2900 = !DILocation(line: 145, column: 7, scope: !2887)
!2901 = !DILocation(line: 150, column: 7, scope: !2887)
!2902 = !DILocation(line: 154, column: 7, scope: !2887)
!2903 = !DILocation(line: 159, column: 7, scope: !2887)
!2904 = !DILocation(line: 163, column: 7, scope: !2887)
!2905 = !DILocation(line: 170, column: 7, scope: !2887)
!2906 = !DILocation(line: 174, column: 7, scope: !2887)
!2907 = !DILocation(line: 176, column: 1, scope: !2830)
!2908 = distinct !DISubprogram(name: "version_etc_ar", scope: !581, file: !581, line: 183, type: !2909, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2833, !94, !94, !94, !2867}
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917}
!2912 = !DILocalVariable(name: "stream", arg: 1, scope: !2908, file: !581, line: 183, type: !2833)
!2913 = !DILocalVariable(name: "command_name", arg: 2, scope: !2908, file: !581, line: 184, type: !94)
!2914 = !DILocalVariable(name: "package", arg: 3, scope: !2908, file: !581, line: 184, type: !94)
!2915 = !DILocalVariable(name: "version", arg: 4, scope: !2908, file: !581, line: 185, type: !94)
!2916 = !DILocalVariable(name: "authors", arg: 5, scope: !2908, file: !581, line: 185, type: !2867)
!2917 = !DILocalVariable(name: "n_authors", scope: !2908, file: !581, line: 187, type: !91)
!2918 = !DILocation(line: 0, scope: !2908)
!2919 = !DILocation(line: 189, column: 8, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2908, file: !581, line: 189, column: 3)
!2921 = !DILocation(line: 189, scope: !2920)
!2922 = !DILocation(line: 189, column: 23, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !581, line: 189, column: 3)
!2924 = !DILocation(line: 189, column: 3, scope: !2920)
!2925 = !DILocation(line: 189, column: 52, scope: !2923)
!2926 = distinct !{!2926, !2924, !2927, !896}
!2927 = !DILocation(line: 190, column: 5, scope: !2920)
!2928 = !DILocation(line: 191, column: 3, scope: !2908)
!2929 = !DILocation(line: 192, column: 1, scope: !2908)
!2930 = distinct !DISubprogram(name: "version_etc_va", scope: !581, file: !581, line: 199, type: !2931, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2940)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !2833, !94, !94, !94, !2933}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2934, file: !581, line: 192, baseType: !74, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2934, file: !581, line: 192, baseType: !74, size: 32, offset: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2934, file: !581, line: 192, baseType: !90, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2934, file: !581, line: 192, baseType: !90, size: 64, offset: 128)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2941 = !DILocalVariable(name: "stream", arg: 1, scope: !2930, file: !581, line: 199, type: !2833)
!2942 = !DILocalVariable(name: "command_name", arg: 2, scope: !2930, file: !581, line: 200, type: !94)
!2943 = !DILocalVariable(name: "package", arg: 3, scope: !2930, file: !581, line: 200, type: !94)
!2944 = !DILocalVariable(name: "version", arg: 4, scope: !2930, file: !581, line: 201, type: !94)
!2945 = !DILocalVariable(name: "authors", arg: 5, scope: !2930, file: !581, line: 201, type: !2933)
!2946 = !DILocalVariable(name: "n_authors", scope: !2930, file: !581, line: 203, type: !91)
!2947 = !DILocalVariable(name: "authtab", scope: !2930, file: !581, line: 204, type: !2948)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !50)
!2949 = distinct !DIAssignID()
!2950 = !DILocation(line: 0, scope: !2930)
!2951 = !DILocation(line: 204, column: 3, scope: !2930)
!2952 = !DILocation(line: 208, column: 35, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !581, line: 206, column: 3)
!2954 = distinct !DILexicalBlock(scope: !2930, file: !581, line: 206, column: 3)
!2955 = !DILocation(line: 208, column: 33, scope: !2953)
!2956 = !DILocation(line: 208, column: 67, scope: !2953)
!2957 = !DILocation(line: 206, column: 3, scope: !2954)
!2958 = !DILocation(line: 208, column: 14, scope: !2953)
!2959 = !DILocation(line: 0, scope: !2954)
!2960 = !DILocation(line: 211, column: 3, scope: !2930)
!2961 = !DILocation(line: 213, column: 1, scope: !2930)
!2962 = distinct !DISubprogram(name: "version_etc", scope: !581, file: !581, line: 230, type: !2963, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2833, !94, !94, !94, null}
!2965 = !{!2966, !2967, !2968, !2969, !2970}
!2966 = !DILocalVariable(name: "stream", arg: 1, scope: !2962, file: !581, line: 230, type: !2833)
!2967 = !DILocalVariable(name: "command_name", arg: 2, scope: !2962, file: !581, line: 231, type: !94)
!2968 = !DILocalVariable(name: "package", arg: 3, scope: !2962, file: !581, line: 231, type: !94)
!2969 = !DILocalVariable(name: "version", arg: 4, scope: !2962, file: !581, line: 232, type: !94)
!2970 = !DILocalVariable(name: "authors", scope: !2962, file: !581, line: 234, type: !2971)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !844, line: 52, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1347, line: 12, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !581, baseType: !2974)
!2974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2934, size: 192, elements: !45)
!2975 = distinct !DIAssignID()
!2976 = !DILocation(line: 0, scope: !2962)
!2977 = !DILocation(line: 234, column: 3, scope: !2962)
!2978 = !DILocation(line: 235, column: 3, scope: !2962)
!2979 = !DILocation(line: 236, column: 3, scope: !2962)
!2980 = !DILocation(line: 237, column: 3, scope: !2962)
!2981 = !DILocation(line: 238, column: 1, scope: !2962)
!2982 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !581, file: !581, line: 241, type: !423, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704)
!2983 = !DILocation(line: 243, column: 3, scope: !2982)
!2984 = !DILocation(line: 248, column: 3, scope: !2982)
!2985 = !DILocation(line: 254, column: 3, scope: !2982)
!2986 = !DILocation(line: 259, column: 3, scope: !2982)
!2987 = !DILocation(line: 261, column: 1, scope: !2982)
!2988 = distinct !DISubprogram(name: "xnrealloc", scope: !2989, file: !2989, line: 147, type: !2990, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2992)
!2989 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!90, !90, !91, !91}
!2992 = !{!2993, !2994, !2995}
!2993 = !DILocalVariable(name: "p", arg: 1, scope: !2988, file: !2989, line: 147, type: !90)
!2994 = !DILocalVariable(name: "n", arg: 2, scope: !2988, file: !2989, line: 147, type: !91)
!2995 = !DILocalVariable(name: "s", arg: 3, scope: !2988, file: !2989, line: 147, type: !91)
!2996 = !DILocation(line: 0, scope: !2988)
!2997 = !DILocalVariable(name: "p", arg: 1, scope: !2998, file: !712, line: 83, type: !90)
!2998 = distinct !DISubprogram(name: "xreallocarray", scope: !712, file: !712, line: 83, type: !2990, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2999)
!2999 = !{!2997, !3000, !3001}
!3000 = !DILocalVariable(name: "n", arg: 2, scope: !2998, file: !712, line: 83, type: !91)
!3001 = !DILocalVariable(name: "s", arg: 3, scope: !2998, file: !712, line: 83, type: !91)
!3002 = !DILocation(line: 0, scope: !2998, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 149, column: 10, scope: !2988)
!3004 = !DILocation(line: 85, column: 25, scope: !2998, inlinedAt: !3003)
!3005 = !DILocalVariable(name: "p", arg: 1, scope: !3006, file: !712, line: 37, type: !90)
!3006 = distinct !DISubprogram(name: "check_nonnull", scope: !712, file: !712, line: 37, type: !3007, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!90, !90}
!3009 = !{!3005}
!3010 = !DILocation(line: 0, scope: !3006, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 85, column: 10, scope: !2998, inlinedAt: !3003)
!3012 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3011)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !712, line: 39, column: 7)
!3014 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3011)
!3015 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3011)
!3016 = !DILocation(line: 149, column: 3, scope: !2988)
!3017 = !DILocation(line: 0, scope: !2998)
!3018 = !DILocation(line: 85, column: 25, scope: !2998)
!3019 = !DILocation(line: 0, scope: !3006, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 85, column: 10, scope: !2998)
!3021 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3020)
!3022 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3020)
!3023 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3020)
!3024 = !DILocation(line: 85, column: 3, scope: !2998)
!3025 = distinct !DISubprogram(name: "xmalloc", scope: !712, file: !712, line: 47, type: !1195, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3026)
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "s", arg: 1, scope: !3025, file: !712, line: 47, type: !91)
!3028 = !DILocation(line: 0, scope: !3025)
!3029 = !DILocation(line: 49, column: 25, scope: !3025)
!3030 = !DILocation(line: 0, scope: !3006, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 49, column: 10, scope: !3025)
!3032 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3031)
!3033 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3031)
!3034 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3031)
!3035 = !DILocation(line: 49, column: 3, scope: !3025)
!3036 = distinct !DISubprogram(name: "ximalloc", scope: !712, file: !712, line: 53, type: !3037, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!90, !731}
!3039 = !{!3040}
!3040 = !DILocalVariable(name: "s", arg: 1, scope: !3036, file: !712, line: 53, type: !731)
!3041 = !DILocation(line: 0, scope: !3036)
!3042 = !DILocalVariable(name: "s", arg: 1, scope: !3043, file: !3044, line: 55, type: !731)
!3043 = distinct !DISubprogram(name: "imalloc", scope: !3044, file: !3044, line: 55, type: !3037, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3045)
!3044 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3045 = !{!3042}
!3046 = !DILocation(line: 0, scope: !3043, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 55, column: 25, scope: !3036)
!3048 = !DILocation(line: 57, column: 26, scope: !3043, inlinedAt: !3047)
!3049 = !DILocation(line: 0, scope: !3006, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 55, column: 10, scope: !3036)
!3051 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3050)
!3052 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3050)
!3053 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3050)
!3054 = !DILocation(line: 55, column: 3, scope: !3036)
!3055 = distinct !DISubprogram(name: "xcharalloc", scope: !712, file: !712, line: 59, type: !3056, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!89, !91}
!3058 = !{!3059}
!3059 = !DILocalVariable(name: "n", arg: 1, scope: !3055, file: !712, line: 59, type: !91)
!3060 = !DILocation(line: 0, scope: !3055)
!3061 = !DILocation(line: 0, scope: !3025, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 61, column: 10, scope: !3055)
!3063 = !DILocation(line: 49, column: 25, scope: !3025, inlinedAt: !3062)
!3064 = !DILocation(line: 0, scope: !3006, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 49, column: 10, scope: !3025, inlinedAt: !3062)
!3066 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3065)
!3067 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3065)
!3068 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3065)
!3069 = !DILocation(line: 61, column: 3, scope: !3055)
!3070 = distinct !DISubprogram(name: "xrealloc", scope: !712, file: !712, line: 68, type: !3071, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!90, !90, !91}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !712, line: 68, type: !90)
!3075 = !DILocalVariable(name: "s", arg: 2, scope: !3070, file: !712, line: 68, type: !91)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocalVariable(name: "ptr", arg: 1, scope: !3078, file: !3079, line: 2057, type: !90)
!3078 = distinct !DISubprogram(name: "rpl_realloc", scope: !3079, file: !3079, line: 2057, type: !3071, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3080)
!3079 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3080 = !{!3077, !3081}
!3081 = !DILocalVariable(name: "size", arg: 2, scope: !3078, file: !3079, line: 2057, type: !91)
!3082 = !DILocation(line: 0, scope: !3078, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 70, column: 25, scope: !3070)
!3084 = !DILocation(line: 2059, column: 24, scope: !3078, inlinedAt: !3083)
!3085 = !DILocation(line: 2059, column: 10, scope: !3078, inlinedAt: !3083)
!3086 = !DILocation(line: 0, scope: !3006, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 70, column: 10, scope: !3070)
!3088 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3087)
!3089 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3087)
!3090 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3087)
!3091 = !DILocation(line: 70, column: 3, scope: !3070)
!3092 = !DISubprogram(name: "realloc", scope: !973, file: !973, line: 551, type: !3071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3093 = distinct !DISubprogram(name: "xirealloc", scope: !712, file: !712, line: 74, type: !3094, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!90, !90, !731}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "p", arg: 1, scope: !3093, file: !712, line: 74, type: !90)
!3098 = !DILocalVariable(name: "s", arg: 2, scope: !3093, file: !712, line: 74, type: !731)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocalVariable(name: "p", arg: 1, scope: !3101, file: !3044, line: 66, type: !90)
!3101 = distinct !DISubprogram(name: "irealloc", scope: !3044, file: !3044, line: 66, type: !3094, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3102)
!3102 = !{!3100, !3103}
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !3044, line: 66, type: !731)
!3104 = !DILocation(line: 0, scope: !3101, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 76, column: 25, scope: !3093)
!3106 = !DILocation(line: 0, scope: !3078, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 68, column: 26, scope: !3101, inlinedAt: !3105)
!3108 = !DILocation(line: 2059, column: 24, scope: !3078, inlinedAt: !3107)
!3109 = !DILocation(line: 2059, column: 10, scope: !3078, inlinedAt: !3107)
!3110 = !DILocation(line: 0, scope: !3006, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 76, column: 10, scope: !3093)
!3112 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3111)
!3113 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3111)
!3114 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3111)
!3115 = !DILocation(line: 76, column: 3, scope: !3093)
!3116 = distinct !DISubprogram(name: "xireallocarray", scope: !712, file: !712, line: 89, type: !3117, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!90, !90, !731, !731}
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "p", arg: 1, scope: !3116, file: !712, line: 89, type: !90)
!3121 = !DILocalVariable(name: "n", arg: 2, scope: !3116, file: !712, line: 89, type: !731)
!3122 = !DILocalVariable(name: "s", arg: 3, scope: !3116, file: !712, line: 89, type: !731)
!3123 = !DILocation(line: 0, scope: !3116)
!3124 = !DILocalVariable(name: "p", arg: 1, scope: !3125, file: !3044, line: 98, type: !90)
!3125 = distinct !DISubprogram(name: "ireallocarray", scope: !3044, file: !3044, line: 98, type: !3117, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3126)
!3126 = !{!3124, !3127, !3128}
!3127 = !DILocalVariable(name: "n", arg: 2, scope: !3125, file: !3044, line: 98, type: !731)
!3128 = !DILocalVariable(name: "s", arg: 3, scope: !3125, file: !3044, line: 98, type: !731)
!3129 = !DILocation(line: 0, scope: !3125, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 91, column: 25, scope: !3116)
!3131 = !DILocation(line: 101, column: 13, scope: !3125, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !3006, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 91, column: 10, scope: !3116)
!3134 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3133)
!3137 = !DILocation(line: 91, column: 3, scope: !3116)
!3138 = distinct !DISubprogram(name: "xnmalloc", scope: !712, file: !712, line: 98, type: !3139, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!90, !91, !91}
!3141 = !{!3142, !3143}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !712, line: 98, type: !91)
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3138, file: !712, line: 98, type: !91)
!3144 = !DILocation(line: 0, scope: !3138)
!3145 = !DILocation(line: 0, scope: !2998, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 100, column: 10, scope: !3138)
!3147 = !DILocation(line: 85, column: 25, scope: !2998, inlinedAt: !3146)
!3148 = !DILocation(line: 0, scope: !3006, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 85, column: 10, scope: !2998, inlinedAt: !3146)
!3150 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3149)
!3151 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3149)
!3152 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3149)
!3153 = !DILocation(line: 100, column: 3, scope: !3138)
!3154 = distinct !DISubprogram(name: "xinmalloc", scope: !712, file: !712, line: 104, type: !3155, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!90, !731, !731}
!3157 = !{!3158, !3159}
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3154, file: !712, line: 104, type: !731)
!3159 = !DILocalVariable(name: "s", arg: 2, scope: !3154, file: !712, line: 104, type: !731)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 0, scope: !3116, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 106, column: 10, scope: !3154)
!3163 = !DILocation(line: 0, scope: !3125, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 91, column: 25, scope: !3116, inlinedAt: !3162)
!3165 = !DILocation(line: 101, column: 13, scope: !3125, inlinedAt: !3164)
!3166 = !DILocation(line: 0, scope: !3006, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 91, column: 10, scope: !3116, inlinedAt: !3162)
!3168 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3167)
!3169 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3167)
!3170 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3167)
!3171 = !DILocation(line: 106, column: 3, scope: !3154)
!3172 = distinct !DISubprogram(name: "x2realloc", scope: !712, file: !712, line: 116, type: !3173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!90, !90, !718}
!3175 = !{!3176, !3177}
!3176 = !DILocalVariable(name: "p", arg: 1, scope: !3172, file: !712, line: 116, type: !90)
!3177 = !DILocalVariable(name: "ps", arg: 2, scope: !3172, file: !712, line: 116, type: !718)
!3178 = !DILocation(line: 0, scope: !3172)
!3179 = !DILocation(line: 0, scope: !715, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 118, column: 10, scope: !3172)
!3181 = !DILocation(line: 178, column: 14, scope: !715, inlinedAt: !3180)
!3182 = !DILocation(line: 180, column: 9, scope: !3183, inlinedAt: !3180)
!3183 = distinct !DILexicalBlock(scope: !715, file: !712, line: 180, column: 7)
!3184 = !DILocation(line: 180, column: 7, scope: !715, inlinedAt: !3180)
!3185 = !DILocation(line: 182, column: 13, scope: !3186, inlinedAt: !3180)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !712, line: 182, column: 11)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !712, line: 181, column: 5)
!3188 = !DILocation(line: 182, column: 11, scope: !3187, inlinedAt: !3180)
!3189 = !DILocation(line: 197, column: 11, scope: !3190, inlinedAt: !3180)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !712, line: 197, column: 11)
!3191 = distinct !DILexicalBlock(scope: !3183, file: !712, line: 195, column: 5)
!3192 = !DILocation(line: 197, column: 11, scope: !3191, inlinedAt: !3180)
!3193 = !DILocation(line: 198, column: 9, scope: !3190, inlinedAt: !3180)
!3194 = !DILocation(line: 0, scope: !2998, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 201, column: 7, scope: !715, inlinedAt: !3180)
!3196 = !DILocation(line: 85, column: 25, scope: !2998, inlinedAt: !3195)
!3197 = !DILocation(line: 0, scope: !3006, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 85, column: 10, scope: !2998, inlinedAt: !3195)
!3199 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3198)
!3202 = !DILocation(line: 202, column: 7, scope: !715, inlinedAt: !3180)
!3203 = !DILocation(line: 118, column: 3, scope: !3172)
!3204 = !DILocation(line: 0, scope: !715)
!3205 = !DILocation(line: 178, column: 14, scope: !715)
!3206 = !DILocation(line: 180, column: 9, scope: !3183)
!3207 = !DILocation(line: 180, column: 7, scope: !715)
!3208 = !DILocation(line: 182, column: 13, scope: !3186)
!3209 = !DILocation(line: 182, column: 11, scope: !3187)
!3210 = !DILocation(line: 190, column: 30, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3186, file: !712, line: 183, column: 9)
!3212 = !DILocation(line: 191, column: 16, scope: !3211)
!3213 = !DILocation(line: 191, column: 13, scope: !3211)
!3214 = !DILocation(line: 192, column: 9, scope: !3211)
!3215 = !DILocation(line: 197, column: 11, scope: !3190)
!3216 = !DILocation(line: 197, column: 11, scope: !3191)
!3217 = !DILocation(line: 198, column: 9, scope: !3190)
!3218 = !DILocation(line: 0, scope: !2998, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 201, column: 7, scope: !715)
!3220 = !DILocation(line: 85, column: 25, scope: !2998, inlinedAt: !3219)
!3221 = !DILocation(line: 0, scope: !3006, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 85, column: 10, scope: !2998, inlinedAt: !3219)
!3223 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3222)
!3224 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3222)
!3225 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3222)
!3226 = !DILocation(line: 202, column: 7, scope: !715)
!3227 = !DILocation(line: 203, column: 3, scope: !715)
!3228 = !DILocation(line: 0, scope: !727)
!3229 = !DILocation(line: 230, column: 14, scope: !727)
!3230 = !DILocation(line: 238, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !727, file: !712, line: 238, column: 7)
!3232 = !DILocation(line: 238, column: 7, scope: !727)
!3233 = !DILocation(line: 240, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !727, file: !712, line: 240, column: 7)
!3235 = !DILocation(line: 240, column: 18, scope: !3234)
!3236 = !DILocation(line: 253, column: 8, scope: !727)
!3237 = !DILocation(line: 256, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !727, file: !712, line: 256, column: 7)
!3239 = !DILocation(line: 256, column: 7, scope: !727)
!3240 = !DILocation(line: 258, column: 27, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !712, line: 257, column: 5)
!3242 = !DILocation(line: 259, column: 50, scope: !3241)
!3243 = !DILocation(line: 259, column: 32, scope: !3241)
!3244 = !DILocation(line: 260, column: 5, scope: !3241)
!3245 = !DILocation(line: 262, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !727, file: !712, line: 262, column: 7)
!3247 = !DILocation(line: 262, column: 7, scope: !727)
!3248 = !DILocation(line: 263, column: 9, scope: !3246)
!3249 = !DILocation(line: 263, column: 5, scope: !3246)
!3250 = !DILocation(line: 264, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !727, file: !712, line: 264, column: 7)
!3252 = !DILocation(line: 264, column: 14, scope: !3251)
!3253 = !DILocation(line: 265, column: 7, scope: !3251)
!3254 = !DILocation(line: 265, column: 11, scope: !3251)
!3255 = !DILocation(line: 266, column: 11, scope: !3251)
!3256 = !DILocation(line: 267, column: 14, scope: !3251)
!3257 = !DILocation(line: 264, column: 7, scope: !727)
!3258 = !DILocation(line: 268, column: 5, scope: !3251)
!3259 = !DILocation(line: 0, scope: !3070, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 269, column: 8, scope: !727)
!3261 = !DILocation(line: 0, scope: !3078, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 70, column: 25, scope: !3070, inlinedAt: !3260)
!3263 = !DILocation(line: 2059, column: 24, scope: !3078, inlinedAt: !3262)
!3264 = !DILocation(line: 2059, column: 10, scope: !3078, inlinedAt: !3262)
!3265 = !DILocation(line: 0, scope: !3006, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 70, column: 10, scope: !3070, inlinedAt: !3260)
!3267 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3266)
!3268 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3266)
!3269 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3266)
!3270 = !DILocation(line: 270, column: 7, scope: !727)
!3271 = !DILocation(line: 271, column: 3, scope: !727)
!3272 = distinct !DISubprogram(name: "xzalloc", scope: !712, file: !712, line: 279, type: !1195, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3273)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "s", arg: 1, scope: !3272, file: !712, line: 279, type: !91)
!3275 = !DILocation(line: 0, scope: !3272)
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3277, file: !712, line: 294, type: !91)
!3277 = distinct !DISubprogram(name: "xcalloc", scope: !712, file: !712, line: 294, type: !3139, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3278)
!3278 = !{!3276, !3279}
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3277, file: !712, line: 294, type: !91)
!3280 = !DILocation(line: 0, scope: !3277, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 281, column: 10, scope: !3272)
!3282 = !DILocation(line: 296, column: 25, scope: !3277, inlinedAt: !3281)
!3283 = !DILocation(line: 0, scope: !3006, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 296, column: 10, scope: !3277, inlinedAt: !3281)
!3285 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3284)
!3286 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3284)
!3287 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3284)
!3288 = !DILocation(line: 281, column: 3, scope: !3272)
!3289 = !DISubprogram(name: "calloc", scope: !973, file: !973, line: 543, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3290 = !DILocation(line: 0, scope: !3277)
!3291 = !DILocation(line: 296, column: 25, scope: !3277)
!3292 = !DILocation(line: 0, scope: !3006, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 296, column: 10, scope: !3277)
!3294 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3293)
!3295 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3293)
!3296 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3293)
!3297 = !DILocation(line: 296, column: 3, scope: !3277)
!3298 = distinct !DISubprogram(name: "xizalloc", scope: !712, file: !712, line: 285, type: !3037, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3298, file: !712, line: 285, type: !731)
!3301 = !DILocation(line: 0, scope: !3298)
!3302 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !712, line: 300, type: !731)
!3303 = distinct !DISubprogram(name: "xicalloc", scope: !712, file: !712, line: 300, type: !3155, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3304)
!3304 = !{!3302, !3305}
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !712, line: 300, type: !731)
!3306 = !DILocation(line: 0, scope: !3303, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 287, column: 10, scope: !3298)
!3308 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !3044, line: 77, type: !731)
!3309 = distinct !DISubprogram(name: "icalloc", scope: !3044, file: !3044, line: 77, type: !3155, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3310)
!3310 = !{!3308, !3311}
!3311 = !DILocalVariable(name: "s", arg: 2, scope: !3309, file: !3044, line: 77, type: !731)
!3312 = !DILocation(line: 0, scope: !3309, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 302, column: 25, scope: !3303, inlinedAt: !3307)
!3314 = !DILocation(line: 91, column: 10, scope: !3309, inlinedAt: !3313)
!3315 = !DILocation(line: 0, scope: !3006, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 302, column: 10, scope: !3303, inlinedAt: !3307)
!3317 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3316)
!3318 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3316)
!3319 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3316)
!3320 = !DILocation(line: 287, column: 3, scope: !3298)
!3321 = !DILocation(line: 0, scope: !3303)
!3322 = !DILocation(line: 0, scope: !3309, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 302, column: 25, scope: !3303)
!3324 = !DILocation(line: 91, column: 10, scope: !3309, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !3006, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 302, column: 10, scope: !3303)
!3327 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3326)
!3328 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3326)
!3329 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3326)
!3330 = !DILocation(line: 302, column: 3, scope: !3303)
!3331 = distinct !DISubprogram(name: "xmemdup", scope: !712, file: !712, line: 310, type: !3332, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!90, !997, !91}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !712, line: 310, type: !997)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !712, line: 310, type: !91)
!3337 = !DILocation(line: 0, scope: !3331)
!3338 = !DILocation(line: 0, scope: !3025, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 312, column: 18, scope: !3331)
!3340 = !DILocation(line: 49, column: 25, scope: !3025, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !3006, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 49, column: 10, scope: !3025, inlinedAt: !3339)
!3343 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3342)
!3346 = !DILocalVariable(name: "__dest", arg: 1, scope: !3347, file: !1176, line: 26, type: !1179)
!3347 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3348)
!3348 = !{!3346, !3349, !3350}
!3349 = !DILocalVariable(name: "__src", arg: 2, scope: !3347, file: !1176, line: 26, type: !996)
!3350 = !DILocalVariable(name: "__len", arg: 3, scope: !3347, file: !1176, line: 26, type: !91)
!3351 = !DILocation(line: 0, scope: !3347, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 312, column: 10, scope: !3331)
!3353 = !DILocation(line: 29, column: 10, scope: !3347, inlinedAt: !3352)
!3354 = !DILocation(line: 312, column: 3, scope: !3331)
!3355 = distinct !DISubprogram(name: "ximemdup", scope: !712, file: !712, line: 316, type: !3356, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!90, !997, !731}
!3358 = !{!3359, !3360}
!3359 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !712, line: 316, type: !997)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !712, line: 316, type: !731)
!3361 = !DILocation(line: 0, scope: !3355)
!3362 = !DILocation(line: 0, scope: !3036, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 318, column: 18, scope: !3355)
!3364 = !DILocation(line: 0, scope: !3043, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 55, column: 25, scope: !3036, inlinedAt: !3363)
!3366 = !DILocation(line: 57, column: 26, scope: !3043, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !3006, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 55, column: 10, scope: !3036, inlinedAt: !3363)
!3369 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3368)
!3370 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3368)
!3371 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !3347, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 318, column: 10, scope: !3355)
!3374 = !DILocation(line: 29, column: 10, scope: !3347, inlinedAt: !3373)
!3375 = !DILocation(line: 318, column: 3, scope: !3355)
!3376 = distinct !DISubprogram(name: "ximemdup0", scope: !712, file: !712, line: 325, type: !3377, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!89, !997, !731}
!3379 = !{!3380, !3381, !3382}
!3380 = !DILocalVariable(name: "p", arg: 1, scope: !3376, file: !712, line: 325, type: !997)
!3381 = !DILocalVariable(name: "s", arg: 2, scope: !3376, file: !712, line: 325, type: !731)
!3382 = !DILocalVariable(name: "result", scope: !3376, file: !712, line: 327, type: !89)
!3383 = !DILocation(line: 0, scope: !3376)
!3384 = !DILocation(line: 327, column: 30, scope: !3376)
!3385 = !DILocation(line: 0, scope: !3036, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 327, column: 18, scope: !3376)
!3387 = !DILocation(line: 0, scope: !3043, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 55, column: 25, scope: !3036, inlinedAt: !3386)
!3389 = !DILocation(line: 57, column: 26, scope: !3043, inlinedAt: !3388)
!3390 = !DILocation(line: 0, scope: !3006, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 55, column: 10, scope: !3036, inlinedAt: !3386)
!3392 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3391)
!3393 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3391)
!3394 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3391)
!3395 = !DILocation(line: 328, column: 3, scope: !3376)
!3396 = !DILocation(line: 328, column: 13, scope: !3376)
!3397 = !DILocation(line: 0, scope: !3347, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 329, column: 10, scope: !3376)
!3399 = !DILocation(line: 29, column: 10, scope: !3347, inlinedAt: !3398)
!3400 = !DILocation(line: 329, column: 3, scope: !3376)
!3401 = distinct !DISubprogram(name: "xstrdup", scope: !712, file: !712, line: 335, type: !975, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3402)
!3402 = !{!3403}
!3403 = !DILocalVariable(name: "string", arg: 1, scope: !3401, file: !712, line: 335, type: !94)
!3404 = !DILocation(line: 0, scope: !3401)
!3405 = !DILocation(line: 337, column: 27, scope: !3401)
!3406 = !DILocation(line: 337, column: 43, scope: !3401)
!3407 = !DILocation(line: 0, scope: !3331, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 337, column: 10, scope: !3401)
!3409 = !DILocation(line: 0, scope: !3025, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 312, column: 18, scope: !3331, inlinedAt: !3408)
!3411 = !DILocation(line: 49, column: 25, scope: !3025, inlinedAt: !3410)
!3412 = !DILocation(line: 0, scope: !3006, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 49, column: 10, scope: !3025, inlinedAt: !3410)
!3414 = !DILocation(line: 39, column: 8, scope: !3013, inlinedAt: !3413)
!3415 = !DILocation(line: 39, column: 7, scope: !3006, inlinedAt: !3413)
!3416 = !DILocation(line: 40, column: 5, scope: !3013, inlinedAt: !3413)
!3417 = !DILocation(line: 0, scope: !3347, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 312, column: 10, scope: !3331, inlinedAt: !3408)
!3419 = !DILocation(line: 29, column: 10, scope: !3347, inlinedAt: !3418)
!3420 = !DILocation(line: 337, column: 3, scope: !3401)
!3421 = distinct !DISubprogram(name: "xalloc_die", scope: !674, file: !674, line: 32, type: !423, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3422)
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "__errstatus", scope: !3424, file: !674, line: 34, type: !3425)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !674, line: 34, column: 3)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3426 = !DILocation(line: 34, column: 3, scope: !3424)
!3427 = !DILocation(line: 0, scope: !3424)
!3428 = !DILocation(line: 40, column: 3, scope: !3421)
!3429 = distinct !DISubprogram(name: "last_component", scope: !747, file: !747, line: 29, type: !975, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3430)
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DILocalVariable(name: "name", arg: 1, scope: !3429, file: !747, line: 29, type: !94)
!3432 = !DILocalVariable(name: "base", scope: !3429, file: !747, line: 31, type: !94)
!3433 = !DILocalVariable(name: "last_was_slash", scope: !3429, file: !747, line: 35, type: !126)
!3434 = !DILocalVariable(name: "p", scope: !3435, file: !747, line: 36, type: !94)
!3435 = distinct !DILexicalBlock(scope: !3429, file: !747, line: 36, column: 3)
!3436 = !DILocation(line: 0, scope: !3429)
!3437 = !DILocation(line: 32, column: 3, scope: !3429)
!3438 = !DILocation(line: 32, column: 10, scope: !3429)
!3439 = !DILocation(line: 33, column: 9, scope: !3429)
!3440 = distinct !{!3440, !3437, !3439, !896}
!3441 = !DILocation(line: 36, column: 30, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3435, file: !747, line: 36, column: 3)
!3443 = !DILocation(line: 31, column: 15, scope: !3429)
!3444 = !DILocation(line: 36, scope: !3435)
!3445 = !DILocation(line: 0, scope: !3435)
!3446 = !DILocation(line: 36, column: 3, scope: !3435)
!3447 = !DILocation(line: 47, column: 3, scope: !3429)
!3448 = !DILocation(line: 40, column: 16, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !747, line: 40, column: 16)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !747, line: 38, column: 11)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !747, line: 37, column: 5)
!3452 = !DILocation(line: 40, column: 16, scope: !3450)
!3453 = !DILocation(line: 36, column: 35, scope: !3442)
!3454 = !DILocation(line: 36, column: 3, scope: !3442)
!3455 = distinct !{!3455, !3446, !3456, !896}
!3456 = !DILocation(line: 45, column: 5, scope: !3435)
!3457 = distinct !DISubprogram(name: "base_len", scope: !747, file: !747, line: 51, type: !1122, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DILocalVariable(name: "name", arg: 1, scope: !3457, file: !747, line: 51, type: !94)
!3460 = !DILocalVariable(name: "len", scope: !3457, file: !747, line: 53, type: !91)
!3461 = !DILocalVariable(name: "prefix_len", scope: !3457, file: !747, line: 61, type: !91)
!3462 = !DILocation(line: 0, scope: !3457)
!3463 = !DILocation(line: 54, column: 14, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !747, line: 54, column: 3)
!3465 = !DILocation(line: 54, column: 8, scope: !3464)
!3466 = !DILocation(line: 54, column: 32, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3464, file: !747, line: 54, column: 3)
!3468 = !DILocation(line: 54, column: 38, scope: !3467)
!3469 = !DILocation(line: 54, column: 41, scope: !3467)
!3470 = !DILocation(line: 54, column: 3, scope: !3464)
!3471 = !DILocation(line: 54, column: 70, scope: !3467)
!3472 = distinct !{!3472, !3470, !3473, !896}
!3473 = !DILocation(line: 55, column: 5, scope: !3464)
!3474 = !DILocation(line: 54, scope: !3464)
!3475 = !DILocation(line: 66, column: 3, scope: !3457)
!3476 = distinct !DISubprogram(name: "close_stream", scope: !750, file: !750, line: 55, type: !3477, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3513)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!68, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3481, file: !146, line: 51, baseType: !68, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3481, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3481, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3481, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3481, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3481, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3481, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3481, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3481, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3481, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3481, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3481, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3481, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3481, file: !146, line: 70, baseType: !3497, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3481, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3481, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3481, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3481, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3481, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3481, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3481, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3481, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3481, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3481, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3481, file: !146, line: 93, baseType: !3497, size: 64, offset: 1344)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3481, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3481, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3481, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3481, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3513 = !{!3514, !3515, !3517, !3518}
!3514 = !DILocalVariable(name: "stream", arg: 1, scope: !3476, file: !750, line: 55, type: !3479)
!3515 = !DILocalVariable(name: "some_pending", scope: !3476, file: !750, line: 57, type: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3517 = !DILocalVariable(name: "prev_fail", scope: !3476, file: !750, line: 58, type: !3516)
!3518 = !DILocalVariable(name: "fclose_fail", scope: !3476, file: !750, line: 59, type: !3516)
!3519 = !DILocation(line: 0, scope: !3476)
!3520 = !DILocation(line: 57, column: 30, scope: !3476)
!3521 = !DILocalVariable(name: "__stream", arg: 1, scope: !3522, file: !1033, line: 135, type: !3479)
!3522 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1033, file: !1033, line: 135, type: !3477, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3523)
!3523 = !{!3521}
!3524 = !DILocation(line: 0, scope: !3522, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 58, column: 27, scope: !3476)
!3526 = !DILocation(line: 137, column: 10, scope: !3522, inlinedAt: !3525)
!3527 = !{!1041, !850, i64 0}
!3528 = !DILocation(line: 58, column: 43, scope: !3476)
!3529 = !DILocation(line: 59, column: 29, scope: !3476)
!3530 = !DILocation(line: 59, column: 45, scope: !3476)
!3531 = !DILocation(line: 69, column: 17, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3476, file: !750, line: 69, column: 7)
!3533 = !DILocation(line: 57, column: 50, scope: !3476)
!3534 = !DILocation(line: 69, column: 33, scope: !3532)
!3535 = !DILocation(line: 69, column: 53, scope: !3532)
!3536 = !DILocation(line: 69, column: 59, scope: !3532)
!3537 = !DILocation(line: 69, column: 7, scope: !3476)
!3538 = !DILocation(line: 71, column: 11, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3532, file: !750, line: 70, column: 5)
!3540 = !DILocation(line: 72, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3539, file: !750, line: 71, column: 11)
!3542 = !DILocation(line: 72, column: 15, scope: !3541)
!3543 = !DILocation(line: 77, column: 1, scope: !3476)
!3544 = !DISubprogram(name: "__fpending", scope: !3545, file: !3545, line: 75, type: !3546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3545 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!91, !3479}
!3548 = distinct !DISubprogram(name: "rpl_fclose", scope: !752, file: !752, line: 58, type: !3549, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3585)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!68, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3553)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3553, file: !146, line: 51, baseType: !68, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3553, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3553, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3553, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3553, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3553, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3553, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3553, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3553, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3553, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3553, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3553, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3553, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3553, file: !146, line: 70, baseType: !3569, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3553, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3553, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3553, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3553, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3553, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3553, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3553, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3553, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3553, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3553, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3553, file: !146, line: 93, baseType: !3569, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3553, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3553, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3553, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3553, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DILocalVariable(name: "fp", arg: 1, scope: !3548, file: !752, line: 58, type: !3551)
!3587 = !DILocalVariable(name: "saved_errno", scope: !3548, file: !752, line: 60, type: !68)
!3588 = !DILocalVariable(name: "fd", scope: !3548, file: !752, line: 63, type: !68)
!3589 = !DILocalVariable(name: "result", scope: !3548, file: !752, line: 74, type: !68)
!3590 = !DILocation(line: 0, scope: !3548)
!3591 = !DILocation(line: 63, column: 12, scope: !3548)
!3592 = !DILocation(line: 64, column: 10, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3548, file: !752, line: 64, column: 7)
!3594 = !DILocation(line: 64, column: 7, scope: !3548)
!3595 = !DILocation(line: 65, column: 12, scope: !3593)
!3596 = !DILocation(line: 65, column: 5, scope: !3593)
!3597 = !DILocation(line: 70, column: 9, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3548, file: !752, line: 70, column: 7)
!3599 = !DILocation(line: 70, column: 23, scope: !3598)
!3600 = !DILocation(line: 70, column: 33, scope: !3598)
!3601 = !DILocation(line: 70, column: 26, scope: !3598)
!3602 = !DILocation(line: 70, column: 59, scope: !3598)
!3603 = !DILocation(line: 71, column: 7, scope: !3598)
!3604 = !DILocation(line: 71, column: 10, scope: !3598)
!3605 = !DILocation(line: 70, column: 7, scope: !3548)
!3606 = !DILocation(line: 100, column: 12, scope: !3548)
!3607 = !DILocation(line: 105, column: 7, scope: !3548)
!3608 = !DILocation(line: 72, column: 19, scope: !3598)
!3609 = !DILocation(line: 105, column: 19, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3548, file: !752, line: 105, column: 7)
!3611 = !DILocation(line: 107, column: 13, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3610, file: !752, line: 106, column: 5)
!3613 = !DILocation(line: 109, column: 5, scope: !3612)
!3614 = !DILocation(line: 112, column: 1, scope: !3548)
!3615 = !DISubprogram(name: "fileno", scope: !844, file: !844, line: 809, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3616 = !DISubprogram(name: "fclose", scope: !844, file: !844, line: 178, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3617 = !DISubprogram(name: "__freading", scope: !3545, file: !3545, line: 51, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3618 = !DISubprogram(name: "lseek", scope: !1120, file: !1120, line: 339, type: !3619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!168, !68, !168, !68}
!3621 = distinct !DISubprogram(name: "rpl_fflush", scope: !754, file: !754, line: 130, type: !3622, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3658)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!68, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3626, file: !146, line: 51, baseType: !68, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3626, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3626, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3626, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3626, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3626, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3626, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3626, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3626, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3626, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3626, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3626, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3626, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3626, file: !146, line: 70, baseType: !3642, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3626, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3626, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3626, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3626, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3626, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3626, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3626, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3626, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3626, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3626, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3626, file: !146, line: 93, baseType: !3642, size: 64, offset: 1344)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3626, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3626, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3626, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3626, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "stream", arg: 1, scope: !3621, file: !754, line: 130, type: !3624)
!3660 = !DILocation(line: 0, scope: !3621)
!3661 = !DILocation(line: 151, column: 14, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3621, file: !754, line: 151, column: 7)
!3663 = !DILocation(line: 151, column: 22, scope: !3662)
!3664 = !DILocation(line: 151, column: 27, scope: !3662)
!3665 = !DILocation(line: 151, column: 7, scope: !3621)
!3666 = !DILocation(line: 152, column: 12, scope: !3662)
!3667 = !DILocation(line: 152, column: 5, scope: !3662)
!3668 = !DILocalVariable(name: "fp", arg: 1, scope: !3669, file: !754, line: 42, type: !3624)
!3669 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !754, file: !754, line: 42, type: !3670, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3624}
!3672 = !{!3668}
!3673 = !DILocation(line: 0, scope: !3669, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 157, column: 3, scope: !3621)
!3675 = !DILocation(line: 44, column: 12, scope: !3676, inlinedAt: !3674)
!3676 = distinct !DILexicalBlock(scope: !3669, file: !754, line: 44, column: 7)
!3677 = !DILocation(line: 44, column: 19, scope: !3676, inlinedAt: !3674)
!3678 = !DILocation(line: 44, column: 7, scope: !3669, inlinedAt: !3674)
!3679 = !DILocation(line: 46, column: 5, scope: !3676, inlinedAt: !3674)
!3680 = !DILocation(line: 159, column: 10, scope: !3621)
!3681 = !DILocation(line: 159, column: 3, scope: !3621)
!3682 = !DILocation(line: 236, column: 1, scope: !3621)
!3683 = !DISubprogram(name: "fflush", scope: !844, file: !844, line: 230, type: !3622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3684 = distinct !DISubprogram(name: "rpl_fseeko", scope: !756, file: !756, line: 28, type: !3685, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3722)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!68, !3687, !3721, !68}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3689, file: !146, line: 51, baseType: !68, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3689, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3689, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3689, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3689, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3689, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3689, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3689, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3689, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3689, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3689, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3689, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3689, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3689, file: !146, line: 70, baseType: !3705, size: 64, offset: 832)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3689, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3689, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3689, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3689, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3689, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3689, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3689, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3689, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3689, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3689, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3689, file: !146, line: 93, baseType: !3705, size: 64, offset: 1344)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3689, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3689, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3689, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3689, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !844, line: 63, baseType: !168)
!3722 = !{!3723, !3724, !3725, !3726}
!3723 = !DILocalVariable(name: "fp", arg: 1, scope: !3684, file: !756, line: 28, type: !3687)
!3724 = !DILocalVariable(name: "offset", arg: 2, scope: !3684, file: !756, line: 28, type: !3721)
!3725 = !DILocalVariable(name: "whence", arg: 3, scope: !3684, file: !756, line: 28, type: !68)
!3726 = !DILocalVariable(name: "pos", scope: !3727, file: !756, line: 123, type: !3721)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !756, line: 119, column: 5)
!3728 = distinct !DILexicalBlock(scope: !3684, file: !756, line: 55, column: 7)
!3729 = !DILocation(line: 0, scope: !3684)
!3730 = !DILocation(line: 55, column: 12, scope: !3728)
!3731 = !{!1041, !787, i64 16}
!3732 = !DILocation(line: 55, column: 33, scope: !3728)
!3733 = !{!1041, !787, i64 8}
!3734 = !DILocation(line: 55, column: 25, scope: !3728)
!3735 = !DILocation(line: 56, column: 7, scope: !3728)
!3736 = !DILocation(line: 56, column: 15, scope: !3728)
!3737 = !DILocation(line: 56, column: 37, scope: !3728)
!3738 = !{!1041, !787, i64 32}
!3739 = !DILocation(line: 56, column: 29, scope: !3728)
!3740 = !DILocation(line: 57, column: 7, scope: !3728)
!3741 = !DILocation(line: 57, column: 15, scope: !3728)
!3742 = !{!1041, !787, i64 72}
!3743 = !DILocation(line: 57, column: 29, scope: !3728)
!3744 = !DILocation(line: 55, column: 7, scope: !3684)
!3745 = !DILocation(line: 123, column: 26, scope: !3727)
!3746 = !DILocation(line: 123, column: 19, scope: !3727)
!3747 = !DILocation(line: 0, scope: !3727)
!3748 = !DILocation(line: 124, column: 15, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3727, file: !756, line: 124, column: 11)
!3750 = !DILocation(line: 124, column: 11, scope: !3727)
!3751 = !DILocation(line: 135, column: 19, scope: !3727)
!3752 = !DILocation(line: 136, column: 12, scope: !3727)
!3753 = !DILocation(line: 136, column: 20, scope: !3727)
!3754 = !{!1041, !1042, i64 144}
!3755 = !DILocation(line: 167, column: 7, scope: !3727)
!3756 = !DILocation(line: 169, column: 10, scope: !3684)
!3757 = !DILocation(line: 169, column: 3, scope: !3684)
!3758 = !DILocation(line: 170, column: 1, scope: !3684)
!3759 = !DISubprogram(name: "fseeko", scope: !844, file: !844, line: 736, type: !3760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!68, !3687, !168, !68}
!3762 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !681, file: !681, line: 100, type: !3763, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3766)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!91, !1481, !94, !91, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3766 = !{!3767, !3768, !3769, !3770, !3771}
!3767 = !DILocalVariable(name: "pwc", arg: 1, scope: !3762, file: !681, line: 100, type: !1481)
!3768 = !DILocalVariable(name: "s", arg: 2, scope: !3762, file: !681, line: 100, type: !94)
!3769 = !DILocalVariable(name: "n", arg: 3, scope: !3762, file: !681, line: 100, type: !91)
!3770 = !DILocalVariable(name: "ps", arg: 4, scope: !3762, file: !681, line: 100, type: !3765)
!3771 = !DILocalVariable(name: "ret", scope: !3762, file: !681, line: 130, type: !91)
!3772 = !DILocation(line: 0, scope: !3762)
!3773 = !DILocation(line: 105, column: 9, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3762, file: !681, line: 105, column: 7)
!3775 = !DILocation(line: 105, column: 7, scope: !3762)
!3776 = !DILocation(line: 117, column: 10, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3762, file: !681, line: 117, column: 7)
!3778 = !DILocation(line: 117, column: 7, scope: !3762)
!3779 = !DILocation(line: 130, column: 16, scope: !3762)
!3780 = !DILocation(line: 135, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3762, file: !681, line: 135, column: 7)
!3782 = !DILocation(line: 135, column: 25, scope: !3781)
!3783 = !DILocation(line: 135, column: 30, scope: !3781)
!3784 = !DILocation(line: 135, column: 7, scope: !3762)
!3785 = !DILocalVariable(name: "ps", arg: 1, scope: !3786, file: !1455, line: 1135, type: !3765)
!3786 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !3787, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3765}
!3789 = !{!3785}
!3790 = !DILocation(line: 0, scope: !3786, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 137, column: 5, scope: !3781)
!3792 = !DILocalVariable(name: "__dest", arg: 1, scope: !3793, file: !1176, line: 57, type: !90)
!3793 = distinct !DISubprogram(name: "memset", scope: !1176, file: !1176, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3794)
!3794 = !{!3792, !3795, !3796}
!3795 = !DILocalVariable(name: "__ch", arg: 2, scope: !3793, file: !1176, line: 57, type: !68)
!3796 = !DILocalVariable(name: "__len", arg: 3, scope: !3793, file: !1176, line: 57, type: !91)
!3797 = !DILocation(line: 0, scope: !3793, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 1137, column: 3, scope: !3786, inlinedAt: !3791)
!3799 = !DILocation(line: 59, column: 10, scope: !3793, inlinedAt: !3798)
!3800 = !DILocation(line: 137, column: 5, scope: !3781)
!3801 = !DILocation(line: 138, column: 11, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3762, file: !681, line: 138, column: 7)
!3803 = !DILocation(line: 138, column: 7, scope: !3762)
!3804 = !DILocation(line: 139, column: 5, scope: !3802)
!3805 = !DILocation(line: 143, column: 26, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3762, file: !681, line: 143, column: 7)
!3807 = !DILocation(line: 143, column: 41, scope: !3806)
!3808 = !DILocation(line: 143, column: 7, scope: !3762)
!3809 = !DILocation(line: 145, column: 15, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !681, line: 145, column: 11)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !681, line: 144, column: 5)
!3812 = !DILocation(line: 145, column: 11, scope: !3811)
!3813 = !DILocation(line: 146, column: 32, scope: !3810)
!3814 = !DILocation(line: 146, column: 16, scope: !3810)
!3815 = !DILocation(line: 146, column: 14, scope: !3810)
!3816 = !DILocation(line: 146, column: 9, scope: !3810)
!3817 = !DILocation(line: 286, column: 1, scope: !3762)
!3818 = !DISubprogram(name: "mbsinit", scope: !3819, file: !3819, line: 293, type: !3820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3819 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!68, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!3824 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !758, file: !758, line: 27, type: !2990, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3825)
!3825 = !{!3826, !3827, !3828, !3829}
!3826 = !DILocalVariable(name: "ptr", arg: 1, scope: !3824, file: !758, line: 27, type: !90)
!3827 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3824, file: !758, line: 27, type: !91)
!3828 = !DILocalVariable(name: "size", arg: 3, scope: !3824, file: !758, line: 27, type: !91)
!3829 = !DILocalVariable(name: "nbytes", scope: !3824, file: !758, line: 29, type: !91)
!3830 = !DILocation(line: 0, scope: !3824)
!3831 = !DILocation(line: 30, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !758, line: 30, column: 7)
!3833 = !DILocation(line: 30, column: 7, scope: !3824)
!3834 = !DILocation(line: 32, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !758, line: 31, column: 5)
!3836 = !DILocation(line: 32, column: 13, scope: !3835)
!3837 = !DILocation(line: 33, column: 7, scope: !3835)
!3838 = !DILocalVariable(name: "ptr", arg: 1, scope: !3839, file: !3079, line: 2057, type: !90)
!3839 = distinct !DISubprogram(name: "rpl_realloc", scope: !3079, file: !3079, line: 2057, type: !3071, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3840)
!3840 = !{!3838, !3841}
!3841 = !DILocalVariable(name: "size", arg: 2, scope: !3839, file: !3079, line: 2057, type: !91)
!3842 = !DILocation(line: 0, scope: !3839, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 37, column: 10, scope: !3824)
!3844 = !DILocation(line: 2059, column: 24, scope: !3839, inlinedAt: !3843)
!3845 = !DILocation(line: 2059, column: 10, scope: !3839, inlinedAt: !3843)
!3846 = !DILocation(line: 37, column: 3, scope: !3824)
!3847 = !DILocation(line: 38, column: 1, scope: !3824)
!3848 = distinct !DISubprogram(name: "hard_locale", scope: !699, file: !699, line: 28, type: !3849, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!126, !68}
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "category", arg: 1, scope: !3848, file: !699, line: 28, type: !68)
!3853 = !DILocalVariable(name: "locale", scope: !3848, file: !699, line: 30, type: !3854)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3855)
!3855 = !{!3856}
!3856 = !DISubrange(count: 257)
!3857 = distinct !DIAssignID()
!3858 = !DILocation(line: 0, scope: !3848)
!3859 = !DILocation(line: 30, column: 3, scope: !3848)
!3860 = !DILocation(line: 32, column: 7, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3848, file: !699, line: 32, column: 7)
!3862 = !DILocation(line: 32, column: 7, scope: !3848)
!3863 = !DILocalVariable(name: "__s1", arg: 1, scope: !3864, file: !862, line: 1359, type: !94)
!3864 = distinct !DISubprogram(name: "streq", scope: !862, file: !862, line: 1359, type: !863, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3865)
!3865 = !{!3863, !3866}
!3866 = !DILocalVariable(name: "__s2", arg: 2, scope: !3864, file: !862, line: 1359, type: !94)
!3867 = !DILocation(line: 0, scope: !3864, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 35, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3848, file: !699, line: 35, column: 7)
!3870 = !DILocation(line: 1361, column: 11, scope: !3864, inlinedAt: !3868)
!3871 = !DILocation(line: 35, column: 29, scope: !3869)
!3872 = !DILocation(line: 0, scope: !3864, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 35, column: 32, scope: !3869)
!3874 = !DILocation(line: 1361, column: 11, scope: !3864, inlinedAt: !3873)
!3875 = !DILocation(line: 1361, column: 10, scope: !3864, inlinedAt: !3873)
!3876 = !DILocation(line: 35, column: 7, scope: !3848)
!3877 = !DILocation(line: 46, column: 3, scope: !3848)
!3878 = !DILocation(line: 47, column: 1, scope: !3848)
!3879 = distinct !DISubprogram(name: "setlocale_null_r", scope: !764, file: !764, line: 154, type: !3880, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!68, !68, !89, !91}
!3882 = !{!3883, !3884, !3885}
!3883 = !DILocalVariable(name: "category", arg: 1, scope: !3879, file: !764, line: 154, type: !68)
!3884 = !DILocalVariable(name: "buf", arg: 2, scope: !3879, file: !764, line: 154, type: !89)
!3885 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3879, file: !764, line: 154, type: !91)
!3886 = !DILocation(line: 0, scope: !3879)
!3887 = !DILocation(line: 159, column: 10, scope: !3879)
!3888 = !DILocation(line: 159, column: 3, scope: !3879)
!3889 = distinct !DISubprogram(name: "setlocale_null", scope: !764, file: !764, line: 186, type: !3890, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!94, !68}
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "category", arg: 1, scope: !3889, file: !764, line: 186, type: !68)
!3894 = !DILocation(line: 0, scope: !3889)
!3895 = !DILocation(line: 189, column: 10, scope: !3889)
!3896 = !DILocation(line: 189, column: 3, scope: !3889)
!3897 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !766, file: !766, line: 35, type: !3890, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3898)
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "category", arg: 1, scope: !3897, file: !766, line: 35, type: !68)
!3900 = !DILocalVariable(name: "result", scope: !3897, file: !766, line: 37, type: !94)
!3901 = !DILocation(line: 0, scope: !3897)
!3902 = !DILocation(line: 37, column: 24, scope: !3897)
!3903 = !DILocation(line: 62, column: 3, scope: !3897)
!3904 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !766, file: !766, line: 66, type: !3880, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3905)
!3905 = !{!3906, !3907, !3908, !3909, !3910}
!3906 = !DILocalVariable(name: "category", arg: 1, scope: !3904, file: !766, line: 66, type: !68)
!3907 = !DILocalVariable(name: "buf", arg: 2, scope: !3904, file: !766, line: 66, type: !89)
!3908 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3904, file: !766, line: 66, type: !91)
!3909 = !DILocalVariable(name: "result", scope: !3904, file: !766, line: 111, type: !94)
!3910 = !DILocalVariable(name: "length", scope: !3911, file: !766, line: 125, type: !91)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !766, line: 124, column: 5)
!3912 = distinct !DILexicalBlock(scope: !3904, file: !766, line: 113, column: 7)
!3913 = !DILocation(line: 0, scope: !3904)
!3914 = !DILocation(line: 0, scope: !3897, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 111, column: 24, scope: !3904)
!3916 = !DILocation(line: 37, column: 24, scope: !3897, inlinedAt: !3915)
!3917 = !DILocation(line: 113, column: 14, scope: !3912)
!3918 = !DILocation(line: 113, column: 7, scope: !3904)
!3919 = !DILocation(line: 116, column: 19, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !766, line: 116, column: 11)
!3921 = distinct !DILexicalBlock(scope: !3912, file: !766, line: 114, column: 5)
!3922 = !DILocation(line: 116, column: 11, scope: !3921)
!3923 = !DILocation(line: 120, column: 16, scope: !3920)
!3924 = !DILocation(line: 120, column: 9, scope: !3920)
!3925 = !DILocation(line: 125, column: 23, scope: !3911)
!3926 = !DILocation(line: 0, scope: !3911)
!3927 = !DILocation(line: 126, column: 18, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3911, file: !766, line: 126, column: 11)
!3929 = !DILocation(line: 126, column: 11, scope: !3911)
!3930 = !DILocation(line: 128, column: 39, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !766, line: 127, column: 9)
!3932 = !DILocalVariable(name: "__dest", arg: 1, scope: !3933, file: !1176, line: 26, type: !1179)
!3933 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3934)
!3934 = !{!3932, !3935, !3936}
!3935 = !DILocalVariable(name: "__src", arg: 2, scope: !3933, file: !1176, line: 26, type: !996)
!3936 = !DILocalVariable(name: "__len", arg: 3, scope: !3933, file: !1176, line: 26, type: !91)
!3937 = !DILocation(line: 0, scope: !3933, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 128, column: 11, scope: !3931)
!3939 = !DILocation(line: 29, column: 10, scope: !3933, inlinedAt: !3938)
!3940 = !DILocation(line: 129, column: 11, scope: !3931)
!3941 = !DILocation(line: 133, column: 23, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !766, line: 133, column: 15)
!3943 = distinct !DILexicalBlock(scope: !3928, file: !766, line: 132, column: 9)
!3944 = !DILocation(line: 133, column: 15, scope: !3943)
!3945 = !DILocation(line: 138, column: 44, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3942, file: !766, line: 134, column: 13)
!3947 = !DILocation(line: 0, scope: !3933, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 138, column: 15, scope: !3946)
!3949 = !DILocation(line: 29, column: 10, scope: !3933, inlinedAt: !3948)
!3950 = !DILocation(line: 139, column: 15, scope: !3946)
!3951 = !DILocation(line: 139, column: 32, scope: !3946)
!3952 = !DILocation(line: 140, column: 13, scope: !3946)
!3953 = !DILocation(line: 0, scope: !3912)
!3954 = !DILocation(line: 145, column: 1, scope: !3904)
