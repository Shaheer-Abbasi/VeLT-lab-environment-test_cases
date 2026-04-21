; ModuleID = 'src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"basename\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [79 x i8] c"  -a, --multiple\0A         support multiple arguments and treat each as a NAME\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [69 x i8] c"  -s, --suffix=SUFFIX\0A         remove a trailing SUFFIX; implies -a\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1, !dbg !67
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.55, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !72
@optarg = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !109
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !114
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !119
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !121
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !126
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !131
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !214
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !219
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !221
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !226
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !266
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !268
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !270
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !272
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !277
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !282
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !287
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !289
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !291
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !293
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !304
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !306
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !311
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !316
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !321
@.str.54 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1, !dbg !326
@.str.55 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1, !dbg !328
@.str.56 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !330
@.str.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !332
@.str.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !334
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !346
@Version = dso_local local_unnamed_addr global ptr @.str.23, align 8, !dbg !349
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !353
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !366
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !358
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !360
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !362
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !364
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !368
@stderr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !374
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !406
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !396
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !398
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !400
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !402
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !404
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !408
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !410
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !415
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !420
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !426
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !428
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !430
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !461
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !464
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !466
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !471
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !473
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !475
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !477
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !479
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !481
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !483
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 16, !dbg !485
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !510
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !524
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !562
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !569
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !526
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !571
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !514
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !531
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !533
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !535
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !537
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !539
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !577
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !580
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !582
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !584
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !586
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !588
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !593
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !598
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !600
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !605
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !610
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !615
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !620
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !622
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !627
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !632
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !637
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !642
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !644
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !646
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !648
@.str.21.106 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !650
@.str.22.107 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !652
@.str.23.108 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !654
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !659
@exit_failure = dso_local global i32 1, align 4, !dbg !667
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !673
@.str.1.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !676
@.str.2.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !678
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !680
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !683
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !698

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !782, metadata !DIExpression()), !dbg !783
  %2 = icmp eq i32 %0, 0, !dbg !784
  br i1 %2, label %8, label %3, !dbg !786

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !787, !tbaa !789
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !787
  %6 = load ptr, ptr @program_name, align 8, !dbg !787, !tbaa !789
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !787
  br label %40, !dbg !787

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !793
  %10 = load ptr, ptr @program_name, align 8, !dbg !793, !tbaa !789
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #38, !dbg !793
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !795
  %13 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !789
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !795
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !796
  %16 = load ptr, ptr @stdout, align 8, !dbg !796, !tbaa !789
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !796
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !800
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !800
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !801
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !801
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !802
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !802
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !803
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !803
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !804
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !804
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !805
  %24 = load ptr, ptr @program_name, align 8, !dbg !805, !tbaa !789
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %23, ptr noundef %24, ptr noundef %24, ptr noundef %24, ptr noundef %24) #38, !dbg !805
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !806, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !818, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr poison, metadata !818, metadata !DIExpression()), !dbg !823
  tail call void @emit_bug_reporting_address() #38, !dbg !825
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !826
  call void @llvm.dbg.value(metadata ptr %26, metadata !821, metadata !DIExpression()), !dbg !823
  %27 = icmp eq ptr %26, null, !dbg !827
  br i1 %27, label %35, label %28, !dbg !829

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !830
  %30 = icmp eq i32 %29, 0, !dbg !830
  br i1 %30, label %35, label %31, !dbg !831

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !832
  %33 = load ptr, ptr @stdout, align 8, !dbg !832, !tbaa !789
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !832
  br label %35, !dbg !834

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !818, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !823
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !835
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !835
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !836
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !836
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !837
  unreachable, !dbg !837
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !838 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !842 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !848 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !851 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !133 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !137, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %0, metadata !138, metadata !DIExpression()), !dbg !855
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !856, !tbaa !857
  %3 = icmp eq i32 %2, -1, !dbg !859
  br i1 %3, label %4, label %16, !dbg !860

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !861
  call void @llvm.dbg.value(metadata ptr %5, metadata !139, metadata !DIExpression()), !dbg !862
  %6 = icmp eq ptr %5, null, !dbg !863
  br i1 %6, label %14, label %7, !dbg !864

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !865, !tbaa !866
  %9 = icmp eq i8 %8, 0, !dbg !865
  br i1 %9, label %14, label %10, !dbg !867

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !868, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !874, metadata !DIExpression()), !dbg !875
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !877
  %12 = icmp eq i32 %11, 0, !dbg !878
  %13 = zext i1 %12 to i32, !dbg !867
  br label %14, !dbg !867

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !879, !tbaa !857
  br label %16, !dbg !880

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !881
  %18 = icmp eq i32 %17, 0, !dbg !881
  br i1 %18, label %22, label %19, !dbg !883

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !789
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !884
  br label %128, !dbg !886

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !142, metadata !DIExpression()), !dbg !855
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !887
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !888
  call void @llvm.dbg.value(metadata ptr %24, metadata !144, metadata !DIExpression()), !dbg !855
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !889
  call void @llvm.dbg.value(metadata ptr %25, metadata !145, metadata !DIExpression()), !dbg !855
  %26 = icmp eq ptr %25, null, !dbg !890
  br i1 %26, label %58, label %27, !dbg !891

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !892
  br i1 %28, label %58, label %29, !dbg !893

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !146, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()), !dbg !894
  %30 = icmp ult ptr %24, %25, !dbg !895
  br i1 %30, label %31, label %52, !dbg !896

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !855
  %33 = load ptr, ptr %32, align 8, !tbaa !789
  br label %34, !dbg !896

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !146, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %36, metadata !150, metadata !DIExpression()), !dbg !894
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !897
  call void @llvm.dbg.value(metadata ptr %37, metadata !146, metadata !DIExpression()), !dbg !894
  %38 = load i8, ptr %35, align 1, !dbg !897, !tbaa !866
  %39 = sext i8 %38 to i64, !dbg !897
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !897
  %41 = load i16, ptr %40, align 2, !dbg !897, !tbaa !898
  %42 = freeze i16 %41, !dbg !900
  %43 = lshr i16 %42, 13, !dbg !900
  %44 = and i16 %43, 1, !dbg !900
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !901
  call void @llvm.dbg.value(metadata i64 %46, metadata !150, metadata !DIExpression()), !dbg !894
  %47 = icmp ult ptr %37, %25, !dbg !895
  %48 = icmp ult i64 %46, 2, !dbg !902
  %49 = select i1 %47, i1 %48, i1 false, !dbg !902
  br i1 %49, label %34, label %50, !dbg !896, !llvm.loop !903

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !905
  br i1 %51, label %52, label %54, !dbg !907

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !907

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !907
  call void @llvm.dbg.value(metadata i8 %57, metadata !142, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %56, metadata !145, metadata !DIExpression()), !dbg !855
  br label %58, !dbg !908

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !855
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !855
  call void @llvm.dbg.value(metadata i8 %60, metadata !142, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %59, metadata !145, metadata !DIExpression()), !dbg !855
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.22) #39, !dbg !909
  call void @llvm.dbg.value(metadata i64 %61, metadata !151, metadata !DIExpression()), !dbg !855
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !910
  call void @llvm.dbg.value(metadata ptr %62, metadata !152, metadata !DIExpression()), !dbg !855
  br label %63, !dbg !911

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !855
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !855
  call void @llvm.dbg.value(metadata i8 %65, metadata !142, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %64, metadata !152, metadata !DIExpression()), !dbg !855
  %66 = load i8, ptr %64, align 1, !dbg !912, !tbaa !866
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !913

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !914
  %69 = load i8, ptr %68, align 1, !dbg !917, !tbaa !866
  %70 = icmp eq i8 %69, 45, !dbg !918
  %71 = select i1 %70, i8 0, i8 %65, !dbg !919
  br label %72, !dbg !919

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !855
  call void @llvm.dbg.value(metadata i8 %73, metadata !142, metadata !DIExpression()), !dbg !855
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !920
  %75 = load ptr, ptr %74, align 8, !dbg !920, !tbaa !789
  %76 = sext i8 %66 to i64, !dbg !920
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !920
  %78 = load i16, ptr %77, align 2, !dbg !920, !tbaa !898
  %79 = and i16 %78, 8192, !dbg !920
  %80 = icmp eq i16 %79, 0, !dbg !920
  br i1 %80, label %96, label %81, !dbg !922

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !923
  br i1 %82, label %98, label %83, !dbg !926

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !927
  %85 = load i8, ptr %84, align 1, !dbg !927, !tbaa !866
  %86 = sext i8 %85 to i64, !dbg !927
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !927
  %88 = load i16, ptr %87, align 2, !dbg !927, !tbaa !898
  %89 = and i16 %88, 8192, !dbg !927
  %90 = icmp eq i16 %89, 0, !dbg !927
  br i1 %90, label %91, label %98, !dbg !928

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !929
  %93 = icmp ne i8 %92, 0, !dbg !929
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !931
  br i1 %95, label %96, label %98, !dbg !931

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !932
  call void @llvm.dbg.value(metadata ptr %97, metadata !152, metadata !DIExpression()), !dbg !855
  br label %63, !dbg !911, !llvm.loop !933

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !935
  %100 = load ptr, ptr @stdout, align 8, !dbg !935, !tbaa !789
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !855
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !956
  %103 = icmp eq i32 %102, 0, !dbg !956
  br i1 %103, label %107, label %104, !dbg !958

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !959
  %106 = icmp eq i32 %105, 0, !dbg !959
  br i1 %106, label %107, label %110, !dbg !960

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !961
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !961
  br label %113, !dbg !963

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !964
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !964
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !789
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %114), !dbg !966
  %116 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !789
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !967
  %118 = ptrtoint ptr %64 to i64, !dbg !968
  %119 = sub i64 %118, %99, !dbg !968
  %120 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !789
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !968
  %122 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !789
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %122), !dbg !969
  %124 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !789
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %124), !dbg !970
  %126 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !789
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !971
  br label %128, !dbg !972

128:                                              ; preds = %113, %19
  ret void, !dbg !972
}

; Function Attrs: nounwind
declare !dbg !973 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !977 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !981 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !983 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !986 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !989 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !992 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !995 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1001 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1002 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1008 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1013, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, metadata !1015, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, metadata !1016, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr null, metadata !1017, metadata !DIExpression()), !dbg !1020
  %3 = load ptr, ptr %1, align 8, !dbg !1021, !tbaa !789
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1022
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1023
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1024
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1025
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1026
  br label %19, !dbg !1027

8:                                                ; preds = %14, %10
  %9 = phi i8 [ %12, %10 ], [ 1, %14 ], !dbg !1028
  br label %10, !dbg !1029

10:                                               ; preds = %19, %8
  %11 = phi i8 [ 1, %8 ], [ %20, %19 ]
  %12 = phi i8 [ %9, %8 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata ptr %22, metadata !1017, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %12, metadata !1016, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %11, metadata !1015, metadata !DIExpression()), !dbg !1020
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %13, metadata !1018, metadata !DIExpression()), !dbg !1031
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %16
    i32 97, label %8
    i32 122, label %14
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1029

14:                                               ; preds = %14, %10
  call void @llvm.dbg.value(metadata ptr %22, metadata !1017, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, metadata !1016, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %11, metadata !1015, metadata !DIExpression()), !dbg !1020
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %15, metadata !1018, metadata !DIExpression()), !dbg !1031
  switch i32 %15, label %28 [
    i32 -1, label %29
    i32 115, label %16
    i32 97, label %8
    i32 122, label %14
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1029, !llvm.loop !1032

16:                                               ; preds = %10, %14
  %17 = phi i8 [ 1, %14 ], [ %12, %10 ], !dbg !1028
  %18 = load ptr, ptr @optarg, align 8, !dbg !1034, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %18, metadata !1017, metadata !DIExpression()), !dbg !1020
  br label %19, !dbg !1036

19:                                               ; preds = %2, %16
  %20 = phi i8 [ 0, %2 ], [ 1, %16 ]
  %21 = phi i8 [ 0, %2 ], [ %17, %16 ]
  %22 = phi ptr [ null, %2 ], [ %18, %16 ]
  br label %10, !dbg !1029

23:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 0) #42, !dbg !1037
  unreachable, !dbg !1037

24:                                               ; preds = %10, %14
  %25 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !789
  %26 = load ptr, ptr @Version, align 8, !dbg !1038, !tbaa !789
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #38, !dbg !1038
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %26, ptr noundef %27, ptr noundef null) #38, !dbg !1038
  tail call void @exit(i32 noundef 0) #40, !dbg !1038
  unreachable, !dbg !1038

28:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 1) #42, !dbg !1039
  unreachable, !dbg !1039

29:                                               ; preds = %10, %14
  %30 = phi i8 [ 1, %14 ], [ %12, %10 ], !dbg !1028
  call void @llvm.dbg.value(metadata ptr %22, metadata !1017, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %30, metadata !1016, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %11, metadata !1015, metadata !DIExpression()), !dbg !1020
  %31 = load i32, ptr @optind, align 4, !dbg !1040, !tbaa !857
  %32 = icmp slt i32 %31, %0, !dbg !1042
  br i1 %32, label %35, label %33, !dbg !1043

33:                                               ; preds = %29
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1044
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %34) #38, !dbg !1044
  tail call void @usage(i32 noundef 1) #42, !dbg !1046
  unreachable, !dbg !1046

35:                                               ; preds = %29
  %36 = icmp eq i8 %11, 0, !dbg !1047
  %37 = add nsw i32 %31, 2
  %38 = icmp slt i32 %37, %0
  %39 = select i1 %36, i1 %38, i1 false, !dbg !1049
  br i1 %39, label %40, label %48, !dbg !1049

40:                                               ; preds = %35
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1050
  %42 = load i32, ptr @optind, align 4, !dbg !1050, !tbaa !857
  %43 = add nsw i32 %42, 2, !dbg !1050
  %44 = sext i32 %43 to i64, !dbg !1050
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1050
  %46 = load ptr, ptr %45, align 8, !dbg !1050, !tbaa !789
  %47 = tail call ptr @quote(ptr noundef %46) #38, !dbg !1050
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %41, ptr noundef %47) #38, !dbg !1050
  tail call void @usage(i32 noundef 1) #42, !dbg !1052
  unreachable, !dbg !1052

48:                                               ; preds = %35
  br i1 %36, label %59, label %49, !dbg !1053

49:                                               ; preds = %48
  %50 = icmp ne i8 %30, 0
  br label %51, !dbg !1054

51:                                               ; preds = %49, %51
  %52 = phi i32 [ %31, %49 ], [ %57, %51 ]
  %53 = sext i32 %52 to i64, !dbg !1058
  %54 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1058
  %55 = load ptr, ptr %54, align 8, !dbg !1058, !tbaa !789
  tail call fastcc void @perform_basename(ptr noundef %55, ptr noundef %22, i1 noundef zeroext %50), !dbg !1060
  %56 = load i32, ptr @optind, align 4, !dbg !1061, !tbaa !857
  %57 = add nsw i32 %56, 1, !dbg !1061
  store i32 %57, ptr @optind, align 4, !dbg !1061, !tbaa !857
  %58 = icmp slt i32 %57, %0, !dbg !1062
  br i1 %58, label %51, label %72, !dbg !1054, !llvm.loop !1063

59:                                               ; preds = %48
  %60 = sext i32 %31 to i64, !dbg !1065
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !1065
  %62 = load ptr, ptr %61, align 8, !dbg !1065, !tbaa !789
  %63 = icmp eq i32 %37, %0, !dbg !1066
  br i1 %63, label %64, label %69, !dbg !1067

64:                                               ; preds = %59
  %65 = add nsw i32 %31, 1, !dbg !1068
  %66 = sext i32 %65 to i64, !dbg !1069
  %67 = getelementptr inbounds ptr, ptr %1, i64 %66, !dbg !1069
  %68 = load ptr, ptr %67, align 8, !dbg !1069, !tbaa !789
  br label %69, !dbg !1067

69:                                               ; preds = %59, %64
  %70 = phi ptr [ %68, %64 ], [ null, %59 ], !dbg !1067
  %71 = icmp ne i8 %30, 0, !dbg !1070
  tail call fastcc void @perform_basename(ptr noundef %62, ptr noundef %70, i1 noundef zeroext %71), !dbg !1071
  br label %72

72:                                               ; preds = %51, %69
  ret i32 0, !dbg !1072
}

; Function Attrs: nounwind
declare !dbg !1073 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1076 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1077 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1080 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @perform_basename(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #10 !dbg !1086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1090, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %1, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i1 %2, metadata !1092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1094
  %4 = tail call noalias nonnull ptr @base_name(ptr noundef %0) #38, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %4, metadata !1093, metadata !DIExpression()), !dbg !1094
  %5 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef nonnull %4) #38, !dbg !1096
  %6 = icmp eq ptr %1, null, !dbg !1097
  br i1 %6, label %29, label %7, !dbg !1099

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !dbg !1100, !tbaa !866
  %9 = icmp eq i8 %8, 47, !dbg !1100
  br i1 %9, label %29, label %10, !dbg !1101

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %4, metadata !1102, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr %1, metadata !1107, metadata !DIExpression()), !dbg !1110
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !1112
  %12 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1113
  call void @llvm.dbg.value(metadata ptr %12, metadata !1108, metadata !DIExpression()), !dbg !1110
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39, !dbg !1114
  %14 = getelementptr inbounds i8, ptr %1, i64 %13, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %14, metadata !1109, metadata !DIExpression()), !dbg !1110
  br label %15, !dbg !1116

15:                                               ; preds = %21, %10
  %16 = phi ptr [ %12, %10 ], [ %22, %21 ], !dbg !1110
  %17 = phi ptr [ %14, %10 ], [ %24, %21 ], !dbg !1110
  call void @llvm.dbg.value(metadata ptr %17, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr %16, metadata !1108, metadata !DIExpression()), !dbg !1110
  %18 = icmp ugt ptr %16, %4, !dbg !1117
  %19 = icmp ugt ptr %17, %1, !dbg !1118
  %20 = select i1 %18, i1 %19, i1 false, !dbg !1118
  br i1 %20, label %21, label %27, !dbg !1116

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %16, i64 -1, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %22, metadata !1108, metadata !DIExpression()), !dbg !1110
  %23 = load i8, ptr %22, align 1, !dbg !1121, !tbaa !866
  %24 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %24, metadata !1109, metadata !DIExpression()), !dbg !1110
  %25 = load i8, ptr %24, align 1, !dbg !1123, !tbaa !866
  %26 = icmp eq i8 %23, %25, !dbg !1124
  br i1 %26, label %15, label %29, !dbg !1125, !llvm.loop !1126

27:                                               ; preds = %15
  br i1 %18, label %28, label %29, !dbg !1128

28:                                               ; preds = %27
  store i8 0, ptr %16, align 1, !dbg !1129, !tbaa !866
  br label %29, !dbg !1131

29:                                               ; preds = %21, %28, %27, %7, %3
  %30 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !789
  %31 = tail call i32 @fputs_unlocked(ptr noundef nonnull %4, ptr noundef %30), !dbg !1132
  %32 = select i1 %2, i32 0, i32 10, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %32, metadata !1134, metadata !DIExpression()), !dbg !1140
  %33 = load ptr, ptr @stdout, align 8, !dbg !1142, !tbaa !789
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1142
  %35 = load ptr, ptr %34, align 8, !dbg !1142, !tbaa !1143
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1142
  %37 = load ptr, ptr %36, align 8, !dbg !1142, !tbaa !1146
  %38 = icmp ult ptr %35, %37, !dbg !1142
  br i1 %38, label %41, label %39, !dbg !1142, !prof !1147

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %32) #38, !dbg !1142
  br label %44, !dbg !1142

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !1142
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1142
  store ptr %43, ptr %34, align 8, !dbg !1142, !tbaa !1143
  store i8 %42, ptr %35, align 1, !dbg !1142, !tbaa !866
  br label %44, !dbg !1142

44:                                               ; preds = %39, %41
  tail call void @free(ptr noundef nonnull %4) #38, !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1150 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1153 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1156 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1159 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1161, metadata !DIExpression()), !dbg !1162
  store ptr %0, ptr @file_name, align 8, !dbg !1163, !tbaa !789
  ret void, !dbg !1164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1165 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1169, metadata !DIExpression()), !dbg !1170
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1171, !tbaa !1172
  ret void, !dbg !1174
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1175 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !789
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1181
  %3 = icmp eq i32 %2, 0, !dbg !1182
  br i1 %3, label %22, label %4, !dbg !1183

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1184, !tbaa !1172, !range !1185, !noundef !798
  %6 = icmp eq i8 %5, 0, !dbg !1184
  br i1 %6, label %11, label %7, !dbg !1186

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1187
  %9 = load i32, ptr %8, align 4, !dbg !1187, !tbaa !857
  %10 = icmp eq i32 %9, 32, !dbg !1188
  br i1 %10, label %22, label %11, !dbg !1189

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #38, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %12, metadata !1177, metadata !DIExpression()), !dbg !1191
  %13 = load ptr, ptr @file_name, align 8, !dbg !1192, !tbaa !789
  %14 = icmp eq ptr %13, null, !dbg !1192
  %15 = tail call ptr @__errno_location() #41, !dbg !1194
  %16 = load i32, ptr %15, align 4, !dbg !1194, !tbaa !857
  br i1 %14, label %19, label %17, !dbg !1195

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1196
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #38, !dbg !1196
  br label %20, !dbg !1196

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #38, !dbg !1197
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1198, !tbaa !857
  tail call void @_exit(i32 noundef %21) #40, !dbg !1199
  unreachable, !dbg !1199

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1200, !tbaa !789
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1202
  %25 = icmp eq i32 %24, 0, !dbg !1203
  br i1 %25, label %28, label %26, !dbg !1204

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1205, !tbaa !857
  tail call void @_exit(i32 noundef %27) #40, !dbg !1206
  unreachable, !dbg !1206

28:                                               ; preds = %22
  ret void, !dbg !1207
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1208 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1212 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @base_name(ptr noundef %0) local_unnamed_addr #10 !dbg !1214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1216, metadata !DIExpression()), !dbg !1221
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %2, metadata !1217, metadata !DIExpression()), !dbg !1221
  %3 = load i8, ptr %2, align 1, !dbg !1223, !tbaa !866
  %4 = icmp eq i8 %3, 0, !dbg !1223
  br i1 %4, label %12, label %5, !dbg !1225

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(ptr noundef nonnull %2) #39, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %6, metadata !1218, metadata !DIExpression()), !dbg !1221
  %7 = getelementptr inbounds i8, ptr %2, i64 %6, !dbg !1228
  %8 = load i8, ptr %7, align 1, !dbg !1228, !tbaa !866
  %9 = icmp eq i8 %8, 47, !dbg !1228
  %10 = zext i1 %9 to i64
  %11 = add nsw i64 %6, %10, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %11, metadata !1218, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 0, metadata !1219, metadata !DIExpression()), !dbg !1221
  br label %14, !dbg !1230

12:                                               ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1217, metadata !DIExpression()), !dbg !1221
  %13 = tail call i64 @base_len(ptr noundef %0) #39, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %13, metadata !1218, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 0, metadata !1219, metadata !DIExpression()), !dbg !1221
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i64 [ %11, %5 ], [ %13, %12 ], !dbg !1233
  %16 = phi ptr [ %2, %5 ], [ %0, %12 ], !dbg !1221
  call void @llvm.dbg.value(metadata ptr %16, metadata !1217, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 0, metadata !1219, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %15, metadata !1218, metadata !DIExpression()), !dbg !1221
  %17 = add nsw i64 %15, 1, !dbg !1234
  %18 = tail call noalias nonnull ptr @ximalloc(i64 noundef %17) #43, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %18, metadata !1220, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr %18, metadata !1236, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr %16, metadata !1243, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %15, metadata !1244, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %18, ptr noundef nonnull align 1 %16, i64 noundef %15, i1 noundef false) #38, !dbg !1247
  %19 = getelementptr inbounds i8, ptr %18, i64 %15, !dbg !1248
  store i8 0, ptr %19, align 1, !dbg !1249, !tbaa !866
  ret ptr %18, !dbg !1250
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local zeroext i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #15 !dbg !1251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1255, metadata !DIExpression()), !dbg !1259
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %2, metadata !1256, metadata !DIExpression()), !dbg !1259
  %3 = load i8, ptr %2, align 1, !dbg !1261, !tbaa !866
  %4 = icmp eq i8 %3, 0, !dbg !1261
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %5, metadata !1256, metadata !DIExpression()), !dbg !1259
  %6 = tail call i64 @base_len(ptr noundef %5) #39, !dbg !1264
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %7, metadata !1257, metadata !DIExpression()), !dbg !1259
  %8 = load i8, ptr %7, align 1, !dbg !1266, !tbaa !866
  %9 = icmp ne i8 %8, 0, !dbg !1267
  call void @llvm.dbg.value(metadata i1 %9, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  store i8 0, ptr %7, align 1, !dbg !1268, !tbaa !866
  ret i1 %9, !dbg !1269
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1274, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1275, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata ptr %2, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata ptr %3, metadata !1277, metadata !DIExpression()), !dbg !1278
  tail call fastcc void @flush_stdout(), !dbg !1279
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1280, !tbaa !789
  %6 = icmp eq ptr %5, null, !dbg !1280
  br i1 %6, label %8, label %7, !dbg !1282

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1283
  br label %12, !dbg !1283

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1284, !tbaa !789
  %10 = tail call ptr @getprogname() #39, !dbg !1284
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %10) #38, !dbg !1284
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1286
  ret void, !dbg !1287
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1288 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 1, metadata !1292, metadata !DIExpression()), !dbg !1295
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1298
  %2 = icmp slt i32 %1, 0, !dbg !1299
  br i1 %2, label %6, label %3, !dbg !1300

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1301, !tbaa !789
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1301
  br label %6, !dbg !1301

6:                                                ; preds = %3, %0
  ret void, !dbg !1302
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1303 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %1, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %2, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %3, metadata !1308, metadata !DIExpression()), !dbg !1309
  %6 = load ptr, ptr @stderr, align 8, !dbg !1310, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %6, metadata !1311, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %2, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1353
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1355
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1356, !tbaa !857
  %9 = add i32 %8, 1, !dbg !1356
  store i32 %9, ptr @error_message_count, align 4, !dbg !1356, !tbaa !857
  %10 = icmp eq i32 %1, 0, !dbg !1357
  br i1 %10, label %20, label %11, !dbg !1359

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1364, metadata !DIExpression()), !dbg !1371
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1372
  call void @llvm.dbg.value(metadata ptr %12, metadata !1363, metadata !DIExpression()), !dbg !1368
  %13 = icmp eq ptr %12, null, !dbg !1373
  br i1 %13, label %14, label %16, !dbg !1375

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #38, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %15, metadata !1363, metadata !DIExpression()), !dbg !1368
  br label %16, !dbg !1377

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1368
  call void @llvm.dbg.value(metadata ptr %17, metadata !1363, metadata !DIExpression()), !dbg !1368
  %18 = load ptr, ptr @stderr, align 8, !dbg !1378, !tbaa !789
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %17) #38, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1379
  br label %20, !dbg !1380

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1381, !tbaa !789
  call void @llvm.dbg.value(metadata i32 10, metadata !1382, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %21, metadata !1387, metadata !DIExpression()), !dbg !1388
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1390
  %23 = load ptr, ptr %22, align 8, !dbg !1390, !tbaa !1143
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1390
  %25 = load ptr, ptr %24, align 8, !dbg !1390, !tbaa !1146
  %26 = icmp ult ptr %23, %25, !dbg !1390
  br i1 %26, label %29, label %27, !dbg !1390, !prof !1147

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1390
  br label %31, !dbg !1390

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1390
  store ptr %30, ptr %22, align 8, !dbg !1390, !tbaa !1143
  store i8 10, ptr %23, align 1, !dbg !1390, !tbaa !866
  br label %31, !dbg !1390

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1391, !tbaa !789
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1391
  %34 = icmp eq i32 %0, 0, !dbg !1392
  br i1 %34, label %36, label %35, !dbg !1394

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1395
  unreachable, !dbg !1395

36:                                               ; preds = %31
  ret void, !dbg !1396
}

declare !dbg !1397 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1400 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #17

declare !dbg !1403 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1406 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1410 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1414, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %1, metadata !1415, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %2, metadata !1416, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1417, metadata !DIExpression()), !dbg !1425
  call void @llvm.va_start(ptr nonnull %4), !dbg !1426
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1427
  call void @llvm.va_end(ptr nonnull %4), !dbg !1428
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1429
  ret void, !dbg !1429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !390, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %1, metadata !391, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %3, metadata !393, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr %4, metadata !394, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr %5, metadata !395, metadata !DIExpression()), !dbg !1430
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1431, !tbaa !857
  %8 = icmp eq i32 %7, 0, !dbg !1431
  br i1 %8, label %23, label %9, !dbg !1433

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1434, !tbaa !857
  %11 = icmp eq i32 %10, %3, !dbg !1437
  br i1 %11, label %12, label %22, !dbg !1438

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1439, !tbaa !789
  %14 = icmp eq ptr %13, %2, !dbg !1440
  br i1 %14, label %36, label %15, !dbg !1441

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1442
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1443
  br i1 %18, label %19, label %22, !dbg !1443

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1444
  %21 = icmp eq i32 %20, 0, !dbg !1445
  br i1 %21, label %36, label %22, !dbg !1446

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1447, !tbaa !789
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1448, !tbaa !857
  br label %23, !dbg !1449

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1450
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1451, !tbaa !789
  %25 = icmp eq ptr %24, null, !dbg !1451
  br i1 %25, label %27, label %26, !dbg !1453

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1454
  br label %31, !dbg !1454

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1455, !tbaa !789
  %29 = tail call ptr @getprogname() #39, !dbg !1455
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %29) #38, !dbg !1455
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1457, !tbaa !789
  %33 = icmp eq ptr %2, null, !dbg !1457
  %34 = select i1 %33, ptr @.str.3.41, ptr @.str.2.42, !dbg !1457
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1457
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1458
  br label %36, !dbg !1459

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1460 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %1, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata ptr %2, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %3, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata ptr %4, metadata !1468, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1469, metadata !DIExpression()), !dbg !1472
  call void @llvm.va_start(ptr nonnull %6), !dbg !1473
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1474
  call void @llvm.va_end(ptr nonnull %6), !dbg !1475
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1476
  ret void, !dbg !1476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1477 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1480, !tbaa !789
  ret ptr %1, !dbg !1481
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1482 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1484, metadata !DIExpression()), !dbg !1487
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %2, metadata !1485, metadata !DIExpression()), !dbg !1487
  %3 = icmp eq ptr %2, null, !dbg !1489
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1489
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %5, metadata !1486, metadata !DIExpression()), !dbg !1487
  %6 = ptrtoint ptr %5 to i64, !dbg !1490
  %7 = ptrtoint ptr %0 to i64, !dbg !1490
  %8 = sub i64 %6, %7, !dbg !1490
  %9 = icmp sgt i64 %8, 6, !dbg !1492
  br i1 %9, label %10, label %19, !dbg !1493

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %11, metadata !1495, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 7, metadata !1501, metadata !DIExpression()), !dbg !1502
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !1504
  %13 = icmp eq i32 %12, 0, !dbg !1505
  br i1 %13, label %14, label %19, !dbg !1506

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1484, metadata !DIExpression()), !dbg !1487
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #39, !dbg !1507
  %16 = icmp eq i32 %15, 0, !dbg !1510
  %17 = select i1 %16, i64 3, i64 0, !dbg !1511
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1511
  br label %19, !dbg !1511

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1487
  call void @llvm.dbg.value(metadata ptr %21, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata ptr %20, metadata !1484, metadata !DIExpression()), !dbg !1487
  store ptr %20, ptr @program_name, align 8, !dbg !1512, !tbaa !789
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1513, !tbaa !789
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1514, !tbaa !789
  ret void, !dbg !1515
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1516 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !432 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !439, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %1, metadata !440, metadata !DIExpression()), !dbg !1517
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %5, metadata !441, metadata !DIExpression()), !dbg !1517
  %6 = icmp eq ptr %5, %0, !dbg !1519
  br i1 %6, label %7, label %14, !dbg !1521

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1522
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %4, metadata !447, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %4, metadata !1534, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 0, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 8, metadata !1540, metadata !DIExpression()), !dbg !1541
  store i64 0, ptr %4, align 8, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %3, metadata !442, metadata !DIExpression(DW_OP_deref)), !dbg !1517
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1544
  %9 = icmp eq i64 %8, 2, !dbg !1546
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !442, metadata !DIExpression()), !dbg !1517
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1547
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1548
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1517
  ret ptr %15, !dbg !1548
}

; Function Attrs: nounwind
declare !dbg !1549 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1555 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1560, metadata !DIExpression()), !dbg !1563
  %2 = tail call ptr @__errno_location() #41, !dbg !1564
  %3 = load i32, ptr %2, align 4, !dbg !1564, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %3, metadata !1561, metadata !DIExpression()), !dbg !1563
  %4 = icmp eq ptr %0, null, !dbg !1565
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1565
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %6, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i32 %3, ptr %2, align 4, !dbg !1567, !tbaa !857
  ret ptr %6, !dbg !1568
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  %2 = icmp eq ptr %0, null, !dbg !1577
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1577
  %4 = load i32, ptr %3, align 8, !dbg !1578, !tbaa !1579
  ret i32 %4, !dbg !1581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1582 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 %1, metadata !1587, metadata !DIExpression()), !dbg !1588
  %3 = icmp eq ptr %0, null, !dbg !1589
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1589
  store i32 %1, ptr %4, align 8, !dbg !1590, !tbaa !1579
  ret void, !dbg !1591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1592 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1596, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %1, metadata !1597, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %2, metadata !1598, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()), !dbg !1604
  %4 = icmp eq ptr %0, null, !dbg !1605
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1605
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1606
  %7 = lshr i8 %1, 5, !dbg !1607
  %8 = zext i8 %7 to i64, !dbg !1607
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %9, metadata !1600, metadata !DIExpression()), !dbg !1604
  %10 = and i8 %1, 31, !dbg !1609
  %11 = zext i8 %10 to i32, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %11, metadata !1602, metadata !DIExpression()), !dbg !1604
  %12 = load i32, ptr %9, align 4, !dbg !1610, !tbaa !857
  %13 = lshr i32 %12, %11, !dbg !1611
  %14 = and i32 %13, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %14, metadata !1603, metadata !DIExpression()), !dbg !1604
  %15 = xor i32 %13, %2, !dbg !1613
  %16 = and i32 %15, 1, !dbg !1613
  %17 = shl nuw i32 %16, %11, !dbg !1614
  %18 = xor i32 %17, %12, !dbg !1615
  store i32 %18, ptr %9, align 4, !dbg !1615, !tbaa !857
  ret i32 %14, !dbg !1616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i32 %1, metadata !1622, metadata !DIExpression()), !dbg !1624
  %3 = icmp eq ptr %0, null, !dbg !1625
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1627
  call void @llvm.dbg.value(metadata ptr %4, metadata !1621, metadata !DIExpression()), !dbg !1624
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1628
  %6 = load i32, ptr %5, align 4, !dbg !1628, !tbaa !1629
  call void @llvm.dbg.value(metadata i32 %6, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i32 %1, ptr %5, align 4, !dbg !1630, !tbaa !1629
  ret i32 %6, !dbg !1631
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1632 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1636, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !1639
  %4 = icmp eq ptr %0, null, !dbg !1640
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !1639
  store i32 10, ptr %5, align 8, !dbg !1643, !tbaa !1579
  %6 = icmp ne ptr %1, null, !dbg !1644
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1646
  br i1 %8, label %10, label %9, !dbg !1646

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1647
  unreachable, !dbg !1647

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1648
  store ptr %1, ptr %11, align 8, !dbg !1649, !tbaa !1650
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1651
  store ptr %2, ptr %12, align 8, !dbg !1652, !tbaa !1653
  ret void, !dbg !1654
}

; Function Attrs: noreturn nounwind
declare !dbg !1655 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1656 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1660, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %1, metadata !1661, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %2, metadata !1662, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %3, metadata !1663, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %4, metadata !1664, metadata !DIExpression()), !dbg !1668
  %6 = icmp eq ptr %4, null, !dbg !1669
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %7, metadata !1665, metadata !DIExpression()), !dbg !1668
  %8 = tail call ptr @__errno_location() #41, !dbg !1670
  %9 = load i32, ptr %8, align 4, !dbg !1670, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %9, metadata !1666, metadata !DIExpression()), !dbg !1668
  %10 = load i32, ptr %7, align 8, !dbg !1671, !tbaa !1579
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1672
  %12 = load i32, ptr %11, align 4, !dbg !1672, !tbaa !1629
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1673
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1674
  %15 = load ptr, ptr %14, align 8, !dbg !1674, !tbaa !1650
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1675
  %17 = load ptr, ptr %16, align 8, !dbg !1675, !tbaa !1653
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %18, metadata !1667, metadata !DIExpression()), !dbg !1668
  store i32 %9, ptr %8, align 4, !dbg !1677, !tbaa !857
  ret i64 %18, !dbg !1678
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1679 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1685, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %1, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %3, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %4, metadata !1689, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %5, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %6, metadata !1691, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %7, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %8, metadata !1693, metadata !DIExpression()), !dbg !1747
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1748
  %17 = icmp eq i64 %16, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i1 %17, metadata !1694, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr null, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1699, metadata !DIExpression()), !dbg !1747
  %18 = trunc i32 %5 to i8, !dbg !1750
  %19 = lshr i8 %18, 1, !dbg !1750
  %20 = and i8 %19, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i8 %20, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1702, metadata !DIExpression()), !dbg !1747
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1751

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1752
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1753
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1754
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1755
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1747
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1756
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1757
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %39, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %38, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %37, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %36, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %35, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %34, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %33, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %32, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %31, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %30, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %29, metadata !1689, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1740), !dbg !1758
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1747
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
  ], !dbg !1759

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 5, metadata !1689, metadata !DIExpression()), !dbg !1747
  br label %115, !dbg !1760

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 5, metadata !1689, metadata !DIExpression()), !dbg !1747
  %43 = and i8 %37, 1, !dbg !1761
  %44 = icmp eq i8 %43, 0, !dbg !1761
  br i1 %44, label %45, label %115, !dbg !1760

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1763
  br i1 %46, label %115, label %47, !dbg !1766

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1763, !tbaa !866
  br label %115, !dbg !1763

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !545, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 %29, metadata !546, metadata !DIExpression()), !dbg !1767
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #38, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %49, metadata !547, metadata !DIExpression()), !dbg !1767
  %50 = icmp eq ptr %49, @.str.11.73, !dbg !1772
  br i1 %50, label %51, label %60, !dbg !1774

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1775
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %13, metadata !549, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata ptr %13, metadata !1778, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata ptr %13, metadata !1786, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 8, metadata !1790, metadata !DIExpression()), !dbg !1791
  store i64 0, ptr %13, align 8, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %12, metadata !548, metadata !DIExpression(DW_OP_deref)), !dbg !1767
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1794
  %53 = icmp eq i64 %52, 3, !dbg !1796
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !548, metadata !DIExpression()), !dbg !1767
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1797
  %57 = icmp eq i32 %29, 9, !dbg !1797
  %58 = select i1 %57, ptr @.str.10.75, ptr @.str.12.76, !dbg !1797
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1797
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1798
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1798
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1767
  call void @llvm.dbg.value(metadata ptr %61, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !545, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %29, metadata !546, metadata !DIExpression()), !dbg !1799
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #38, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %62, metadata !547, metadata !DIExpression()), !dbg !1799
  %63 = icmp eq ptr %62, @.str.12.76, !dbg !1802
  br i1 %63, label %64, label %73, !dbg !1803

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1805
  call void @llvm.dbg.declare(metadata ptr %11, metadata !549, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %11, metadata !1778, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %11, metadata !1786, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 8, metadata !1790, metadata !DIExpression()), !dbg !1809
  store i64 0, ptr %11, align 8, !dbg !1811
  call void @llvm.dbg.value(metadata ptr %10, metadata !548, metadata !DIExpression(DW_OP_deref)), !dbg !1799
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1812
  %66 = icmp eq i64 %65, 3, !dbg !1813
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !548, metadata !DIExpression()), !dbg !1799
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1814
  %70 = icmp eq i32 %29, 9, !dbg !1814
  %71 = select i1 %70, ptr @.str.10.75, ptr @.str.12.76, !dbg !1814
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1815
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %74, metadata !1692, metadata !DIExpression()), !dbg !1747
  %76 = and i8 %37, 1, !dbg !1816
  %77 = icmp eq i8 %76, 0, !dbg !1816
  br i1 %77, label %78, label %93, !dbg !1817

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1704, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1747
  %79 = load i8, ptr %74, align 1, !dbg !1819, !tbaa !866
  %80 = icmp eq i8 %79, 0, !dbg !1821
  br i1 %80, label %93, label %81, !dbg !1821

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1704, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %84, metadata !1695, metadata !DIExpression()), !dbg !1747
  %85 = icmp ult i64 %84, %40, !dbg !1822
  br i1 %85, label %86, label %88, !dbg !1825

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1822
  store i8 %82, ptr %87, align 1, !dbg !1822, !tbaa !866
  br label %88, !dbg !1822

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %89, metadata !1695, metadata !DIExpression()), !dbg !1747
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %90, metadata !1704, metadata !DIExpression()), !dbg !1818
  %91 = load i8, ptr %90, align 1, !dbg !1819, !tbaa !866
  %92 = icmp eq i8 %91, 0, !dbg !1821
  br i1 %92, label %93, label %81, !dbg !1821, !llvm.loop !1827

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1829
  call void @llvm.dbg.value(metadata i64 %94, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %75, metadata !1697, metadata !DIExpression()), !dbg !1747
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %95, metadata !1698, metadata !DIExpression()), !dbg !1747
  br label %115, !dbg !1831

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1699, metadata !DIExpression()), !dbg !1747
  br label %97, !dbg !1832

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %98, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1700, metadata !DIExpression()), !dbg !1747
  br label %99, !dbg !1833

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1755
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %101, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %100, metadata !1699, metadata !DIExpression()), !dbg !1747
  %102 = and i8 %101, 1, !dbg !1834
  %103 = icmp eq i8 %102, 0, !dbg !1834
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1836
  br label %105, !dbg !1836

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1747
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %107, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %106, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1689, metadata !DIExpression()), !dbg !1747
  %108 = and i8 %107, 1, !dbg !1837
  %109 = icmp eq i8 %108, 0, !dbg !1837
  br i1 %109, label %110, label %115, !dbg !1839

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1840
  br i1 %111, label %115, label %112, !dbg !1843

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1840, !tbaa !866
  br label %115, !dbg !1840

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1747
  br label %115, !dbg !1844

114:                                              ; preds = %28
  call void @abort() #40, !dbg !1845
  unreachable, !dbg !1845

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1829
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.75, %45 ], [ @.str.10.75, %47 ], [ @.str.10.75, %42 ], [ %34, %28 ], [ @.str.12.76, %110 ], [ @.str.12.76, %112 ], [ @.str.12.76, %105 ], [ @.str.10.75, %41 ], !dbg !1747
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1747
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1747
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %123, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %122, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %121, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %120, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %119, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %118, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %117, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %116, metadata !1689, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()), !dbg !1846
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
  br label %138, !dbg !1847

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1829
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1752
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1756
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1757
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1848
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1849
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %145, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %144, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %143, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %142, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %141, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %139, metadata !1688, metadata !DIExpression()), !dbg !1747
  %147 = icmp eq i64 %139, -1, !dbg !1850
  br i1 %147, label %148, label %152, !dbg !1851

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1852
  %150 = load i8, ptr %149, align 1, !dbg !1852, !tbaa !866
  %151 = icmp eq i8 %150, 0, !dbg !1853
  br i1 %151, label %627, label %154, !dbg !1854

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1855
  br i1 %153, label %627, label %154, !dbg !1854

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1856
  br i1 %129, label %155, label %170, !dbg !1857

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1859
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1860
  br i1 %157, label %158, label %160, !dbg !1860

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %159, metadata !1688, metadata !DIExpression()), !dbg !1747
  br label %160, !dbg !1862

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1862
  call void @llvm.dbg.value(metadata i64 %161, metadata !1688, metadata !DIExpression()), !dbg !1747
  %162 = icmp ugt i64 %156, %161, !dbg !1863
  br i1 %162, label %170, label %163, !dbg !1864

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %164, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata ptr %120, metadata !1869, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %121, metadata !1870, metadata !DIExpression()), !dbg !1871
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1873
  %166 = icmp ne i32 %165, 0, !dbg !1874
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1875
  %168 = xor i1 %166, true, !dbg !1875
  %169 = zext i1 %168 to i8, !dbg !1875
  br i1 %167, label %170, label %688, !dbg !1875

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1856
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %173, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %171, metadata !1688, metadata !DIExpression()), !dbg !1747
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1876
  %175 = load i8, ptr %174, align 1, !dbg !1876, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %175, metadata !1716, metadata !DIExpression()), !dbg !1856
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
  ], !dbg !1877

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1878

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1879

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1856
  %179 = and i8 %144, 1, !dbg !1883
  %180 = icmp eq i8 %179, 0, !dbg !1883
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1883
  br i1 %181, label %182, label %198, !dbg !1883

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1885
  br i1 %183, label %184, label %186, !dbg !1889

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1885
  store i8 39, ptr %185, align 1, !dbg !1885, !tbaa !866
  br label %186, !dbg !1885

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %187, metadata !1695, metadata !DIExpression()), !dbg !1747
  %188 = icmp ult i64 %187, %146, !dbg !1890
  br i1 %188, label %189, label %191, !dbg !1893

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1890
  store i8 36, ptr %190, align 1, !dbg !1890, !tbaa !866
  br label %191, !dbg !1890

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %192, metadata !1695, metadata !DIExpression()), !dbg !1747
  %193 = icmp ult i64 %192, %146, !dbg !1894
  br i1 %193, label %194, label %196, !dbg !1897

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1894
  store i8 39, ptr %195, align 1, !dbg !1894, !tbaa !866
  br label %196, !dbg !1894

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %197, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %198, !dbg !1898

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1747
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %200, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %199, metadata !1695, metadata !DIExpression()), !dbg !1747
  %201 = icmp ult i64 %199, %146, !dbg !1899
  br i1 %201, label %202, label %204, !dbg !1902

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1899
  store i8 92, ptr %203, align 1, !dbg !1899, !tbaa !866
  br label %204, !dbg !1899

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %205, metadata !1695, metadata !DIExpression()), !dbg !1747
  br i1 %126, label %206, label %491, !dbg !1903

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1905
  %208 = icmp ult i64 %207, %171, !dbg !1906
  br i1 %208, label %209, label %480, !dbg !1907

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1908
  %211 = load i8, ptr %210, align 1, !dbg !1908, !tbaa !866
  %212 = add i8 %211, -48, !dbg !1909
  %213 = icmp ult i8 %212, 10, !dbg !1909
  br i1 %213, label %214, label %480, !dbg !1909

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1910
  br i1 %215, label %216, label %218, !dbg !1914

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1910
  store i8 48, ptr %217, align 1, !dbg !1910, !tbaa !866
  br label %218, !dbg !1910

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %219, metadata !1695, metadata !DIExpression()), !dbg !1747
  %220 = icmp ult i64 %219, %146, !dbg !1915
  br i1 %220, label %221, label %223, !dbg !1918

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1915
  store i8 48, ptr %222, align 1, !dbg !1915, !tbaa !866
  br label %223, !dbg !1915

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %224, metadata !1695, metadata !DIExpression()), !dbg !1747
  br label %480, !dbg !1919

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1920

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1921

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1922

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1924

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1926
  %231 = icmp ult i64 %230, %171, !dbg !1927
  br i1 %231, label %232, label %480, !dbg !1928

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1929
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1930
  %235 = load i8, ptr %234, align 1, !dbg !1930, !tbaa !866
  %236 = icmp eq i8 %235, 63, !dbg !1931
  br i1 %236, label %237, label %480, !dbg !1932

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1933
  %239 = load i8, ptr %238, align 1, !dbg !1933, !tbaa !866
  %240 = sext i8 %239 to i32, !dbg !1933
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
  ], !dbg !1934

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1935

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %230, metadata !1709, metadata !DIExpression()), !dbg !1846
  %243 = icmp ult i64 %140, %146, !dbg !1937
  br i1 %243, label %244, label %246, !dbg !1940

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1937
  store i8 63, ptr %245, align 1, !dbg !1937, !tbaa !866
  br label %246, !dbg !1937

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %247, metadata !1695, metadata !DIExpression()), !dbg !1747
  %248 = icmp ult i64 %247, %146, !dbg !1941
  br i1 %248, label %249, label %251, !dbg !1944

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1941
  store i8 34, ptr %250, align 1, !dbg !1941, !tbaa !866
  br label %251, !dbg !1941

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %252, metadata !1695, metadata !DIExpression()), !dbg !1747
  %253 = icmp ult i64 %252, %146, !dbg !1945
  br i1 %253, label %254, label %256, !dbg !1948

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1945
  store i8 34, ptr %255, align 1, !dbg !1945, !tbaa !866
  br label %256, !dbg !1945

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %257, metadata !1695, metadata !DIExpression()), !dbg !1747
  %258 = icmp ult i64 %257, %146, !dbg !1949
  br i1 %258, label %259, label %261, !dbg !1952

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1949
  store i8 63, ptr %260, align 1, !dbg !1949, !tbaa !866
  br label %261, !dbg !1949

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %262, metadata !1695, metadata !DIExpression()), !dbg !1747
  br label %480, !dbg !1953

263:                                              ; preds = %170
  br label %274, !dbg !1954

264:                                              ; preds = %170
  br label %274, !dbg !1955

265:                                              ; preds = %170
  br label %272, !dbg !1956

266:                                              ; preds = %170
  br label %272, !dbg !1957

267:                                              ; preds = %170
  br label %274, !dbg !1958

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1959

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1960

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1963

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1965

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1966
  call void @llvm.dbg.label(metadata !1741), !dbg !1967
  br i1 %134, label %274, label %670, !dbg !1968

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1966
  call void @llvm.dbg.label(metadata !1743), !dbg !1970
  br i1 %125, label %535, label %491, !dbg !1971

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1972

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1973, !tbaa !866
  %279 = icmp eq i8 %278, 0, !dbg !1975
  br i1 %279, label %280, label %480, !dbg !1976

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1977
  br i1 %281, label %282, label %480, !dbg !1979

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1856
  br label %283, !dbg !1980

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %284, metadata !1715, metadata !DIExpression()), !dbg !1856
  br i1 %134, label %480, label %670, !dbg !1981

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1856
  br i1 %133, label %286, label %480, !dbg !1983

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1984

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1987
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1989
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1989
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %292, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %291, metadata !1696, metadata !DIExpression()), !dbg !1747
  %293 = icmp ult i64 %140, %292, !dbg !1990
  br i1 %293, label %294, label %296, !dbg !1993

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1990
  store i8 39, ptr %295, align 1, !dbg !1990, !tbaa !866
  br label %296, !dbg !1990

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %297, metadata !1695, metadata !DIExpression()), !dbg !1747
  %298 = icmp ult i64 %297, %292, !dbg !1994
  br i1 %298, label %299, label %301, !dbg !1997

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1994
  store i8 92, ptr %300, align 1, !dbg !1994, !tbaa !866
  br label %301, !dbg !1994

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %302, metadata !1695, metadata !DIExpression()), !dbg !1747
  %303 = icmp ult i64 %302, %292, !dbg !1998
  br i1 %303, label %304, label %306, !dbg !2001

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1998
  store i8 39, ptr %305, align 1, !dbg !1998, !tbaa !866
  br label %306, !dbg !1998

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %307, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %480, !dbg !2002

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2003

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1717, metadata !DIExpression()), !dbg !2004
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2005
  %311 = load ptr, ptr %310, align 8, !dbg !2005, !tbaa !789
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2005
  %314 = load i16, ptr %313, align 2, !dbg !2005, !tbaa !898
  %315 = lshr i16 %314, 14, !dbg !2007
  %316 = trunc i16 %315 to i8, !dbg !2007
  %317 = and i8 %316, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i8 %317, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %171, metadata !1688, metadata !DIExpression()), !dbg !1747
  %318 = icmp eq i8 %317, 0, !dbg !2008
  call void @llvm.dbg.value(metadata i1 %318, metadata !1715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  br label %368, !dbg !2009

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1721, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %14, metadata !1778, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata ptr %14, metadata !1786, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 8, metadata !1790, metadata !DIExpression()), !dbg !2014
  store i64 0, ptr %14, align 8, !dbg !2016
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !2004
  %320 = icmp eq i64 %171, -1, !dbg !2017
  br i1 %320, label %321, label %323, !dbg !2019

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %322, metadata !1688, metadata !DIExpression()), !dbg !1747
  br label %323, !dbg !2021

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1856
  call void @llvm.dbg.value(metadata i64 %324, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2022
  %325 = sub i64 %324, %145, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %15, metadata !1724, metadata !DIExpression(DW_OP_deref)), !dbg !2024
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %326, metadata !1728, metadata !DIExpression()), !dbg !2024
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2026

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !2004
  %328 = icmp ugt i64 %324, %145, !dbg !2027
  br i1 %328, label %331, label %329, !dbg !2029

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %324, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i1 true, metadata !1715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  br label %368, !dbg !2009

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !2004
  br label %360, !dbg !2032

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1717, metadata !DIExpression()), !dbg !2004
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2034
  %335 = load i8, ptr %334, align 1, !dbg !2034, !tbaa !866
  %336 = icmp eq i8 %335, 0, !dbg !2029
  br i1 %336, label %363, label %337, !dbg !2035

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %338, metadata !1717, metadata !DIExpression()), !dbg !2004
  %339 = add i64 %338, %145, !dbg !2037
  %340 = icmp eq i64 %338, %325, !dbg !2027
  br i1 %340, label %363, label %331, !dbg !2029, !llvm.loop !2038

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2039
  %344 = and i1 %343, %133, !dbg !2039
  call void @llvm.dbg.value(metadata i64 1, metadata !1729, metadata !DIExpression()), !dbg !2040
  br i1 %344, label %345, label %354, !dbg !2039

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1729, metadata !DIExpression()), !dbg !2040
  %347 = add i64 %346, %145, !dbg !2041
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2043
  %349 = load i8, ptr %348, align 1, !dbg !2043, !tbaa !866
  %350 = sext i8 %349 to i32, !dbg !2043
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2044

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %352, metadata !1729, metadata !DIExpression()), !dbg !2040
  %353 = icmp eq i64 %352, %326, !dbg !2046
  br i1 %353, label %354, label %345, !dbg !2047, !llvm.loop !2048

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2050, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %355, metadata !1724, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %355, metadata !2052, metadata !DIExpression()), !dbg !2060
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2062
  %357 = icmp ne i32 %356, 0, !dbg !2063
  %358 = zext i1 %357 to i8, !dbg !2064
  call void @llvm.dbg.value(metadata i8 %358, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %326, metadata !1717, metadata !DIExpression()), !dbg !2004
  br label %363, !dbg !2065

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2031
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %324, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i1 %361, metadata !1715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  br label %368, !dbg !2009

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1720, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %364, metadata !1717, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %324, metadata !1688, metadata !DIExpression()), !dbg !1747
  %366 = icmp eq i8 %365, 0, !dbg !2008
  call void @llvm.dbg.value(metadata i1 %366, metadata !1715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  %367 = icmp ugt i64 %364, 1, !dbg !2066
  br i1 %367, label %374, label %368, !dbg !2009

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2067
  br i1 %373, label %374, label %480, !dbg !2067

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %379, metadata !1737, metadata !DIExpression()), !dbg !2069
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2070

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1747
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1848
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1846
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1856
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2071
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %387, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %386, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %385, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %384, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %383, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %382, metadata !1695, metadata !DIExpression()), !dbg !1747
  br i1 %380, label %388, label %434, !dbg !2072

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2077

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1856
  %390 = and i8 %383, 1, !dbg !2080
  %391 = icmp eq i8 %390, 0, !dbg !2080
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2080
  br i1 %392, label %393, label %409, !dbg !2080

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2082
  br i1 %394, label %395, label %397, !dbg !2086

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2082
  store i8 39, ptr %396, align 1, !dbg !2082, !tbaa !866
  br label %397, !dbg !2082

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %398, metadata !1695, metadata !DIExpression()), !dbg !1747
  %399 = icmp ult i64 %398, %146, !dbg !2087
  br i1 %399, label %400, label %402, !dbg !2090

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2087
  store i8 36, ptr %401, align 1, !dbg !2087, !tbaa !866
  br label %402, !dbg !2087

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %403, metadata !1695, metadata !DIExpression()), !dbg !1747
  %404 = icmp ult i64 %403, %146, !dbg !2091
  br i1 %404, label %405, label %407, !dbg !2094

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2091
  store i8 39, ptr %406, align 1, !dbg !2091, !tbaa !866
  br label %407, !dbg !2091

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %408, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %409, !dbg !2095

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1747
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %411, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %410, metadata !1695, metadata !DIExpression()), !dbg !1747
  %412 = icmp ult i64 %410, %146, !dbg !2096
  br i1 %412, label %413, label %415, !dbg !2099

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2096
  store i8 92, ptr %414, align 1, !dbg !2096, !tbaa !866
  br label %415, !dbg !2096

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %416, metadata !1695, metadata !DIExpression()), !dbg !1747
  %417 = icmp ult i64 %416, %146, !dbg !2100
  br i1 %417, label %418, label %422, !dbg !2103

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2100
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2100
  store i8 %420, ptr %421, align 1, !dbg !2100, !tbaa !866
  br label %422, !dbg !2100

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %423, metadata !1695, metadata !DIExpression()), !dbg !1747
  %424 = icmp ult i64 %423, %146, !dbg !2104
  br i1 %424, label %425, label %430, !dbg !2107

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2104
  %428 = or i8 %427, 48, !dbg !2104
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2104
  store i8 %428, ptr %429, align 1, !dbg !2104, !tbaa !866
  br label %430, !dbg !2104

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %431, metadata !1695, metadata !DIExpression()), !dbg !1747
  %432 = and i8 %387, 7, !dbg !2108
  %433 = or i8 %432, 48, !dbg !2109
  call void @llvm.dbg.value(metadata i8 %433, metadata !1716, metadata !DIExpression()), !dbg !1856
  br label %443, !dbg !2110

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2111
  %436 = icmp eq i8 %435, 0, !dbg !2111
  br i1 %436, label %443, label %437, !dbg !2113

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2114
  br i1 %438, label %439, label %441, !dbg !2118

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2114
  store i8 92, ptr %440, align 1, !dbg !2114, !tbaa !866
  br label %441, !dbg !2114

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %442, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1711, metadata !DIExpression()), !dbg !1856
  br label %443, !dbg !2119

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1747
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1848
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1856
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1856
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %448, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %447, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %446, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %445, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %444, metadata !1695, metadata !DIExpression()), !dbg !1747
  %449 = add i64 %384, 1, !dbg !2120
  %450 = icmp ugt i64 %379, %449, !dbg !2122
  br i1 %450, label %451, label %478, !dbg !2123

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2124
  %453 = icmp ne i8 %452, 0, !dbg !2124
  %454 = and i8 %447, 1, !dbg !2124
  %455 = icmp eq i8 %454, 0, !dbg !2124
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2124
  br i1 %456, label %457, label %468, !dbg !2124

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2127
  br i1 %458, label %459, label %461, !dbg !2131

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2127
  store i8 39, ptr %460, align 1, !dbg !2127, !tbaa !866
  br label %461, !dbg !2127

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %462, metadata !1695, metadata !DIExpression()), !dbg !1747
  %463 = icmp ult i64 %462, %146, !dbg !2132
  br i1 %463, label %464, label %466, !dbg !2135

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2132
  store i8 39, ptr %465, align 1, !dbg !2132, !tbaa !866
  br label %466, !dbg !2132

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %467, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %468, !dbg !2136

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2137
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %470, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %469, metadata !1695, metadata !DIExpression()), !dbg !1747
  %471 = icmp ult i64 %469, %146, !dbg !2138
  br i1 %471, label %472, label %474, !dbg !2141

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2138
  store i8 %448, ptr %473, align 1, !dbg !2138, !tbaa !866
  br label %474, !dbg !2138

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %475, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %449, metadata !1709, metadata !DIExpression()), !dbg !1846
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2142
  %477 = load i8, ptr %476, align 1, !dbg !2142, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %477, metadata !1716, metadata !DIExpression()), !dbg !1856
  br label %381, !dbg !2143, !llvm.loop !2144

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i8 %448, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %479, metadata !1715, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %447, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %446, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %384, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %445, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %444, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %378, metadata !1688, metadata !DIExpression()), !dbg !1747
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2147
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1747
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1752
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1747
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1747
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1846
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1856
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1856
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1856
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %489, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %488, metadata !1715, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %487, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %173, metadata !1711, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %486, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %485, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %484, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %483, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %482, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %481, metadata !1688, metadata !DIExpression()), !dbg !1747
  br i1 %127, label %502, label %491, !dbg !2148

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
  br i1 %137, label %503, label %524, !dbg !2150

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2151

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
  %514 = lshr i8 %505, 5, !dbg !2152
  %515 = zext i8 %514 to i64, !dbg !2152
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2153
  %517 = load i32, ptr %516, align 4, !dbg !2153, !tbaa !857
  %518 = and i8 %505, 31, !dbg !2154
  %519 = zext i8 %518 to i32, !dbg !2154
  %520 = shl nuw i32 1, %519, !dbg !2155
  %521 = and i32 %517, %520, !dbg !2155
  %522 = icmp eq i32 %521, 0, !dbg !2155
  %523 = and i1 %172, %522, !dbg !2156
  br i1 %523, label %573, label %535, !dbg !2156

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
  br i1 %172, label %573, label %535, !dbg !2157

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2147
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1747
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1752
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1756
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1848
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2158
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1856
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1856
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %543, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %542, metadata !1715, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %541, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %540, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %539, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %538, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %537, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %536, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1744), !dbg !2159
  br i1 %132, label %545, label %674, !dbg !2160

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1856
  %546 = and i8 %540, 1, !dbg !2162
  %547 = icmp eq i8 %546, 0, !dbg !2162
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2162
  br i1 %548, label %549, label %565, !dbg !2162

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2164
  br i1 %550, label %551, label %553, !dbg !2168

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2164
  store i8 39, ptr %552, align 1, !dbg !2164, !tbaa !866
  br label %553, !dbg !2164

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %554, metadata !1695, metadata !DIExpression()), !dbg !1747
  %555 = icmp ult i64 %554, %544, !dbg !2169
  br i1 %555, label %556, label %558, !dbg !2172

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2169
  store i8 36, ptr %557, align 1, !dbg !2169, !tbaa !866
  br label %558, !dbg !2169

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %559, metadata !1695, metadata !DIExpression()), !dbg !1747
  %560 = icmp ult i64 %559, %544, !dbg !2173
  br i1 %560, label %561, label %563, !dbg !2176

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2173
  store i8 39, ptr %562, align 1, !dbg !2173, !tbaa !866
  br label %563, !dbg !2173

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %564, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %565, !dbg !2177

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1856
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %567, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %566, metadata !1695, metadata !DIExpression()), !dbg !1747
  %568 = icmp ult i64 %566, %544, !dbg !2178
  br i1 %568, label %569, label %571, !dbg !2181

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2178
  store i8 92, ptr %570, align 1, !dbg !2178, !tbaa !866
  br label %571, !dbg !2178

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %544, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %543, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %542, metadata !1715, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %541, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %567, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %539, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %538, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %572, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %536, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1745), !dbg !2182
  br label %600, !dbg !2183

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2147
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1747
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1752
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1756
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1848
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2158
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1856
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1856
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2186
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %582, metadata !1716, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %581, metadata !1715, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %580, metadata !1714, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %579, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %578, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %577, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %576, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %575, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %574, metadata !1688, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1745), !dbg !2182
  %584 = and i8 %578, 1, !dbg !2183
  %585 = icmp ne i8 %584, 0, !dbg !2183
  %586 = and i8 %580, 1, !dbg !2183
  %587 = icmp eq i8 %586, 0, !dbg !2183
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2183
  br i1 %588, label %589, label %600, !dbg !2183

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2187
  br i1 %590, label %591, label %593, !dbg !2191

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2187
  store i8 39, ptr %592, align 1, !dbg !2187, !tbaa !866
  br label %593, !dbg !2187

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %594, metadata !1695, metadata !DIExpression()), !dbg !1747
  %595 = icmp ult i64 %594, %583, !dbg !2192
  br i1 %595, label %596, label %598, !dbg !2195

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2192
  store i8 39, ptr %597, align 1, !dbg !2192, !tbaa !866
  br label %598, !dbg !2192

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %599, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %600, !dbg !2196

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1856
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %609, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %608, metadata !1695, metadata !DIExpression()), !dbg !1747
  %610 = icmp ult i64 %608, %601, !dbg !2197
  br i1 %610, label %611, label %613, !dbg !2200

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2197
  store i8 %602, ptr %612, align 1, !dbg !2197, !tbaa !866
  br label %613, !dbg !2197

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %614, metadata !1695, metadata !DIExpression()), !dbg !1747
  %615 = icmp eq i8 %603, 0, !dbg !2201
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2203
  call void @llvm.dbg.value(metadata i8 %616, metadata !1702, metadata !DIExpression()), !dbg !1747
  br label %617, !dbg !2204

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2147
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1747
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1752
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1756
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1757
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1848
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2158
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %624, metadata !1709, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %623, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %622, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %621, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %620, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %619, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %618, metadata !1688, metadata !DIExpression()), !dbg !1747
  %626 = add i64 %624, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %626, metadata !1709, metadata !DIExpression()), !dbg !1846
  br label %138, !dbg !2206, !llvm.loop !2207

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1686, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %143, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %142, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %141, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %139, metadata !1688, metadata !DIExpression()), !dbg !1747
  %628 = icmp eq i64 %140, 0, !dbg !2209
  %629 = and i1 %133, %628, !dbg !2211
  %630 = xor i1 %629, true, !dbg !2211
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2211
  br i1 %631, label %632, label %670, !dbg !2211

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2212
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2212
  br i1 %636, label %637, label %646, !dbg !2212

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2214
  %639 = icmp eq i8 %638, 0, !dbg !2214
  br i1 %639, label %642, label %640, !dbg !2217

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2218
  br label %694, !dbg !2219

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2220
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2222
  br i1 %645, label %28, label %646, !dbg !2222

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2223
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2225
  br i1 %649, label %650, label %665, !dbg !2225

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1747
  %651 = load i8, ptr %120, align 1, !dbg !2226, !tbaa !866
  %652 = icmp eq i8 %651, 0, !dbg !2229
  br i1 %652, label %665, label %653, !dbg !2229

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %656, metadata !1695, metadata !DIExpression()), !dbg !1747
  %657 = icmp ult i64 %656, %146, !dbg !2230
  br i1 %657, label %658, label %660, !dbg !2233

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2230
  store i8 %654, ptr %659, align 1, !dbg !2230, !tbaa !866
  br label %660, !dbg !2230

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %661, metadata !1695, metadata !DIExpression()), !dbg !1747
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2234
  call void @llvm.dbg.value(metadata ptr %662, metadata !1697, metadata !DIExpression()), !dbg !1747
  %663 = load i8, ptr %662, align 1, !dbg !2226, !tbaa !866
  %664 = icmp eq i8 %663, 0, !dbg !2229
  br i1 %664, label %665, label %653, !dbg !2229, !llvm.loop !2235

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1829
  call void @llvm.dbg.value(metadata i64 %666, metadata !1695, metadata !DIExpression()), !dbg !1747
  %667 = icmp ult i64 %666, %146, !dbg !2237
  br i1 %667, label %668, label %694, !dbg !2239

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2240
  store i8 0, ptr %669, align 1, !dbg !2241, !tbaa !866
  br label %694, !dbg !2240

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1746), !dbg !2242
  %672 = icmp eq i8 %124, 0, !dbg !2243
  %673 = select i1 %672, i32 2, i32 4, !dbg !2243
  br label %684, !dbg !2243

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2243
  %678 = select i1 %677, i32 2, i32 4, !dbg !2243
  br label %679, !dbg !2245

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1746), !dbg !2242
  %683 = icmp eq i32 %116, 2, !dbg !2245
  br i1 %683, label %684, label %688, !dbg !2243

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2243

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1689, metadata !DIExpression()), !dbg !1747
  %692 = and i32 %5, -3, !dbg !2246
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2247
  br label %694, !dbg !2248

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2249
}

; Function Attrs: nounwind
declare !dbg !2250 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2253 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %1, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %2, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %0, metadata !2263, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr null, metadata !2269, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr %2, metadata !2270, metadata !DIExpression()), !dbg !2276
  %4 = icmp eq ptr %2, null, !dbg !2278
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !2276
  %6 = tail call ptr @__errno_location() #41, !dbg !2279
  %7 = load i32, ptr %6, align 4, !dbg !2279, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %7, metadata !2272, metadata !DIExpression()), !dbg !2276
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2280
  %9 = load i32, ptr %8, align 4, !dbg !2280, !tbaa !1629
  %10 = or i32 %9, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %10, metadata !2273, metadata !DIExpression()), !dbg !2276
  %11 = load i32, ptr %5, align 8, !dbg !2282, !tbaa !1579
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2283
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2284
  %14 = load ptr, ptr %13, align 8, !dbg !2284, !tbaa !1650
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2285
  %16 = load ptr, ptr %15, align 8, !dbg !2285, !tbaa !1653
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2286
  %18 = add i64 %17, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %18, metadata !2274, metadata !DIExpression()), !dbg !2276
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %19, metadata !2275, metadata !DIExpression()), !dbg !2276
  %20 = load i32, ptr %5, align 8, !dbg !2289, !tbaa !1579
  %21 = load ptr, ptr %13, align 8, !dbg !2290, !tbaa !1650
  %22 = load ptr, ptr %15, align 8, !dbg !2291, !tbaa !1653
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2292
  store i32 %7, ptr %6, align 4, !dbg !2293, !tbaa !857
  ret ptr %19, !dbg !2294
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2264 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2263, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata ptr %2, metadata !2269, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata ptr %3, metadata !2270, metadata !DIExpression()), !dbg !2295
  %5 = icmp eq ptr %3, null, !dbg !2296
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %6, metadata !2271, metadata !DIExpression()), !dbg !2295
  %7 = tail call ptr @__errno_location() #41, !dbg !2297
  %8 = load i32, ptr %7, align 4, !dbg !2297, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %8, metadata !2272, metadata !DIExpression()), !dbg !2295
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2298
  %10 = load i32, ptr %9, align 4, !dbg !2298, !tbaa !1629
  %11 = icmp eq ptr %2, null, !dbg !2299
  %12 = zext i1 %11 to i32, !dbg !2299
  %13 = or i32 %10, %12, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %13, metadata !2273, metadata !DIExpression()), !dbg !2295
  %14 = load i32, ptr %6, align 8, !dbg !2301, !tbaa !1579
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2302
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2303
  %17 = load ptr, ptr %16, align 8, !dbg !2303, !tbaa !1650
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2304
  %19 = load ptr, ptr %18, align 8, !dbg !2304, !tbaa !1653
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2305
  %21 = add i64 %20, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %21, metadata !2274, metadata !DIExpression()), !dbg !2295
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %22, metadata !2275, metadata !DIExpression()), !dbg !2295
  %23 = load i32, ptr %6, align 8, !dbg !2308, !tbaa !1579
  %24 = load ptr, ptr %16, align 8, !dbg !2309, !tbaa !1650
  %25 = load ptr, ptr %18, align 8, !dbg !2310, !tbaa !1653
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2311
  store i32 %8, ptr %7, align 4, !dbg !2312, !tbaa !857
  br i1 %11, label %28, label %27, !dbg !2313

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2314, !tbaa !2316
  br label %28, !dbg !2317

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2318
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2319 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2324, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %1, metadata !2321, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 1, metadata !2322, metadata !DIExpression()), !dbg !2326
  %2 = load i32, ptr @nslots, align 4, !tbaa !857
  call void @llvm.dbg.value(metadata i32 1, metadata !2322, metadata !DIExpression()), !dbg !2326
  %3 = icmp sgt i32 %2, 1, !dbg !2327
  br i1 %3, label %4, label %6, !dbg !2329

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2327
  br label %10, !dbg !2329

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2330
  %8 = load ptr, ptr %7, align 8, !dbg !2330, !tbaa !2332
  %9 = icmp eq ptr %8, @slot0, !dbg !2334
  br i1 %9, label %17, label %16, !dbg !2335

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2322, metadata !DIExpression()), !dbg !2326
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2336
  %13 = load ptr, ptr %12, align 8, !dbg !2336, !tbaa !2332
  tail call void @free(ptr noundef %13) #38, !dbg !2337
  %14 = add nuw nsw i64 %11, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %14, metadata !2322, metadata !DIExpression()), !dbg !2326
  %15 = icmp eq i64 %14, %5, !dbg !2327
  br i1 %15, label %6, label %10, !dbg !2329, !llvm.loop !2339

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2341
  store i64 256, ptr @slotvec0, align 8, !dbg !2343, !tbaa !2344
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2345, !tbaa !2332
  br label %17, !dbg !2346

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2347
  br i1 %18, label %20, label %19, !dbg !2349

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2350
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2352, !tbaa !789
  br label %20, !dbg !2353

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2354, !tbaa !857
  ret void, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %1, metadata !2359, metadata !DIExpression()), !dbg !2360
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2361
  ret ptr %3, !dbg !2362
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2363 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %2, metadata !2369, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %3, metadata !2370, metadata !DIExpression()), !dbg !2383
  %6 = tail call ptr @__errno_location() #41, !dbg !2384
  %7 = load i32, ptr %6, align 4, !dbg !2384, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %7, metadata !2371, metadata !DIExpression()), !dbg !2383
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2385, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %8, metadata !2372, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2373, metadata !DIExpression()), !dbg !2383
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2386
  br i1 %9, label %10, label %11, !dbg !2386

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2388
  unreachable, !dbg !2388

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2389, !tbaa !857
  %13 = icmp sgt i32 %12, %0, !dbg !2390
  br i1 %13, label %32, label %14, !dbg !2391

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2392
  call void @llvm.dbg.value(metadata i1 %15, metadata !2374, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2393
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2394
  %16 = sext i32 %12 to i64, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %16, metadata !2377, metadata !DIExpression()), !dbg !2393
  store i64 %16, ptr %5, align 8, !dbg !2396, !tbaa !2316
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2397
  %18 = add nuw nsw i32 %0, 1, !dbg !2398
  %19 = sub i32 %18, %12, !dbg !2399
  %20 = sext i32 %19 to i64, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %5, metadata !2377, metadata !DIExpression(DW_OP_deref)), !dbg !2393
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %21, metadata !2372, metadata !DIExpression()), !dbg !2383
  store ptr %21, ptr @slotvec, align 8, !dbg !2402, !tbaa !789
  br i1 %15, label %22, label %23, !dbg !2403

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2404, !tbaa.struct !2406
  br label %23, !dbg !2407

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2408, !tbaa !857
  %25 = sext i32 %24 to i64, !dbg !2409
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2409
  %27 = load i64, ptr %5, align 8, !dbg !2410, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %27, metadata !2377, metadata !DIExpression()), !dbg !2393
  %28 = sub nsw i64 %27, %25, !dbg !2411
  %29 = shl i64 %28, 4, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %26, metadata !1786, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %29, metadata !1790, metadata !DIExpression()), !dbg !2413
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2415
  %30 = load i64, ptr %5, align 8, !dbg !2416, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %30, metadata !2377, metadata !DIExpression()), !dbg !2393
  %31 = trunc i64 %30 to i32, !dbg !2416
  store i32 %31, ptr @nslots, align 4, !dbg !2417, !tbaa !857
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2418
  br label %32, !dbg !2419

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2383
  call void @llvm.dbg.value(metadata ptr %33, metadata !2372, metadata !DIExpression()), !dbg !2383
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2420
  %36 = load i64, ptr %35, align 8, !dbg !2421, !tbaa !2344
  call void @llvm.dbg.value(metadata i64 %36, metadata !2378, metadata !DIExpression()), !dbg !2422
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2423
  %38 = load ptr, ptr %37, align 8, !dbg !2423, !tbaa !2332
  call void @llvm.dbg.value(metadata ptr %38, metadata !2380, metadata !DIExpression()), !dbg !2422
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2424
  %40 = load i32, ptr %39, align 4, !dbg !2424, !tbaa !1629
  %41 = or i32 %40, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %41, metadata !2381, metadata !DIExpression()), !dbg !2422
  %42 = load i32, ptr %3, align 8, !dbg !2426, !tbaa !1579
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2427
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2428
  %45 = load ptr, ptr %44, align 8, !dbg !2428, !tbaa !1650
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2429
  %47 = load ptr, ptr %46, align 8, !dbg !2429, !tbaa !1653
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %48, metadata !2382, metadata !DIExpression()), !dbg !2422
  %49 = icmp ugt i64 %36, %48, !dbg !2431
  br i1 %49, label %60, label %50, !dbg !2433

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %51, metadata !2378, metadata !DIExpression()), !dbg !2422
  store i64 %51, ptr %35, align 8, !dbg !2436, !tbaa !2344
  %52 = icmp eq ptr %38, @slot0, !dbg !2437
  br i1 %52, label %54, label %53, !dbg !2439

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2440
  br label %54, !dbg !2440

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %55, metadata !2380, metadata !DIExpression()), !dbg !2422
  store ptr %55, ptr %37, align 8, !dbg !2442, !tbaa !2332
  %56 = load i32, ptr %3, align 8, !dbg !2443, !tbaa !1579
  %57 = load ptr, ptr %44, align 8, !dbg !2444, !tbaa !1650
  %58 = load ptr, ptr %46, align 8, !dbg !2445, !tbaa !1653
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2446
  br label %60, !dbg !2447

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2422
  call void @llvm.dbg.value(metadata ptr %61, metadata !2380, metadata !DIExpression()), !dbg !2422
  store i32 %7, ptr %6, align 4, !dbg !2448, !tbaa !857
  ret ptr %61, !dbg !2449
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata ptr %1, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %2, metadata !2456, metadata !DIExpression()), !dbg !2457
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2458
  ret ptr %4, !dbg !2459
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2460 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 0, metadata !2358, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %0, metadata !2359, metadata !DIExpression()), !dbg !2464
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2466
  ret ptr %2, !dbg !2467
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2468 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %0, metadata !2455, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %1, metadata !2456, metadata !DIExpression()), !dbg !2475
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2477
  ret ptr %3, !dbg !2478
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2479 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2483, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr %2, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2486, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2502, !alias.scope !2490
  %5 = icmp eq i32 %1, 10, !dbg !2503
  br i1 %5, label %6, label %7, !dbg !2505

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2506, !noalias !2490
  unreachable, !dbg !2506

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2507, !tbaa !1579, !alias.scope !2490
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2508
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2509
  ret ptr %8, !dbg !2510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2511 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %1, metadata !2516, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata ptr %2, metadata !2517, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %3, metadata !2518, metadata !DIExpression()), !dbg !2520
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2521
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !2522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !2529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2529, !alias.scope !2523
  %6 = icmp eq i32 %1, 10, !dbg !2530
  br i1 %6, label %7, label %8, !dbg !2531

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2532, !noalias !2523
  unreachable, !dbg !2532

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2533, !tbaa !1579, !alias.scope !2523
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2535
  ret ptr %9, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2537 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %1, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2483, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %1, metadata !2485, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2486, metadata !DIExpression()), !dbg !2547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2499, metadata !DIExpression()), !dbg !2554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2554, !alias.scope !2548
  %4 = icmp eq i32 %0, 10, !dbg !2555
  br i1 %4, label %5, label %6, !dbg !2556

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2557, !noalias !2548
  unreachable, !dbg !2557

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2558, !tbaa !1579, !alias.scope !2548
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2559
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2560
  ret ptr %7, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2562 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %1, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %2, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %0, metadata !2516, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %1, metadata !2517, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %2, metadata !2518, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !2573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !2580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2580, !alias.scope !2574
  %5 = icmp eq i32 %0, 10, !dbg !2581
  br i1 %5, label %6, label %7, !dbg !2582

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2583, !noalias !2574
  unreachable, !dbg !2583

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2584, !tbaa !1579, !alias.scope !2574
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2586
  ret ptr %8, !dbg !2587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2588 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %1, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 %2, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2599, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %4, metadata !1596, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8 %2, metadata !1597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8 %2, metadata !1599, metadata !DIExpression()), !dbg !2601
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2603
  %6 = lshr i8 %2, 5, !dbg !2604
  %7 = zext i8 %6 to i64, !dbg !2604
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2605
  call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression()), !dbg !2601
  %9 = and i8 %2, 31, !dbg !2606
  %10 = zext i8 %9 to i32, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %10, metadata !1602, metadata !DIExpression()), !dbg !2601
  %11 = load i32, ptr %8, align 4, !dbg !2607, !tbaa !857
  %12 = lshr i32 %11, %10, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %12, metadata !1603, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2601
  %13 = and i32 %12, 1, !dbg !2609
  %14 = xor i32 %13, 1, !dbg !2609
  %15 = shl nuw i32 %14, %10, !dbg !2610
  %16 = xor i32 %15, %11, !dbg !2611
  store i32 %16, ptr %8, align 4, !dbg !2611, !tbaa !857
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2612
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2613
  ret ptr %17, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2615 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %1, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 -1, metadata !2593, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 %1, metadata !2594, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2595, metadata !DIExpression()), !dbg !2625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2626, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %3, metadata !1596, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 %1, metadata !1597, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()), !dbg !2627
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2629
  %5 = lshr i8 %1, 5, !dbg !2630
  %6 = zext i8 %5 to i64, !dbg !2630
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %7, metadata !1600, metadata !DIExpression()), !dbg !2627
  %8 = and i8 %1, 31, !dbg !2632
  %9 = zext i8 %8 to i32, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %9, metadata !1602, metadata !DIExpression()), !dbg !2627
  %10 = load i32, ptr %7, align 4, !dbg !2633, !tbaa !857
  %11 = lshr i32 %10, %9, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %11, metadata !1603, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2627
  %12 = and i32 %11, 1, !dbg !2635
  %13 = xor i32 %12, 1, !dbg !2635
  %14 = shl nuw i32 %13, %9, !dbg !2636
  %15 = xor i32 %14, %10, !dbg !2637
  store i32 %15, ptr %7, align 4, !dbg !2637, !tbaa !857
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2638
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2639
  ret ptr %16, !dbg !2640
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2641 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 58, metadata !2620, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 -1, metadata !2593, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 58, metadata !2594, metadata !DIExpression()), !dbg !2647
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2649
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2595, metadata !DIExpression()), !dbg !2650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2651, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %2, metadata !1596, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2652
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2654
  call void @llvm.dbg.value(metadata ptr %3, metadata !1600, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2652
  %4 = load i32, ptr %3, align 4, !dbg !2655, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %4, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2652
  %5 = or i32 %4, 67108864, !dbg !2656
  store i32 %5, ptr %3, align 4, !dbg !2656, !tbaa !857
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2658
  ret ptr %6, !dbg !2659
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2660 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2593, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 58, metadata !2594, metadata !DIExpression()), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2667
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2595, metadata !DIExpression()), !dbg !2668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2669, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %3, metadata !1596, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2670
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %4, metadata !1600, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2670
  %5 = load i32, ptr %4, align 4, !dbg !2673, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %5, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2670
  %6 = or i32 %5, 67108864, !dbg !2674
  store i32 %6, ptr %4, align 4, !dbg !2674, !tbaa !857
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2675
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2676
  ret ptr %7, !dbg !2677
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2678 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %0, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %1, metadata !2681, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2683, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2689
  %5 = icmp eq i32 %1, 10, !dbg !2690
  br i1 %5, label %6, label %7, !dbg !2691

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2692, !noalias !2693
  unreachable, !dbg !2692

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2689
  store i32 %1, ptr %4, align 8, !dbg !2696, !tbaa.struct !2600
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %4, metadata !1596, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2697
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2699
  call void @llvm.dbg.value(metadata ptr %9, metadata !1600, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2697
  %10 = load i32, ptr %9, align 4, !dbg !2700, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %10, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2697
  %11 = or i32 %10, 67108864, !dbg !2701
  store i32 %11, ptr %9, align 4, !dbg !2701, !tbaa !857
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2702
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2703
  ret ptr %12, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2705 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %1, metadata !2710, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %2, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %3, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2719, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %2, metadata !2720, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %3, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 -1, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2723, metadata !DIExpression()), !dbg !2727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2728, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2729
  store i32 10, ptr %5, align 8, !dbg !2731, !tbaa !1579
  %6 = icmp ne ptr %1, null, !dbg !2732
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2733
  br i1 %8, label %10, label %9, !dbg !2733

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2734
  unreachable, !dbg !2734

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2735
  store ptr %1, ptr %11, align 8, !dbg !2736, !tbaa !1650
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2737
  store ptr %2, ptr %12, align 8, !dbg !2738, !tbaa !1653
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2740
  ret ptr %13, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2715 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %1, metadata !2719, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %2, metadata !2720, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %3, metadata !2721, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %4, metadata !2722, metadata !DIExpression()), !dbg !2742
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2743
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2723, metadata !DIExpression()), !dbg !2744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2745, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !2746
  store i32 10, ptr %6, align 8, !dbg !2748, !tbaa !1579
  %7 = icmp ne ptr %1, null, !dbg !2749
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2750
  br i1 %9, label %11, label %10, !dbg !2750

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2751
  unreachable, !dbg !2751

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2752
  store ptr %1, ptr %12, align 8, !dbg !2753, !tbaa !1650
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2754
  store ptr %2, ptr %13, align 8, !dbg !2755, !tbaa !1653
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2756
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2757
  ret ptr %14, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2759 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %0, metadata !2710, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %1, metadata !2711, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %2, metadata !2712, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 -1, metadata !2722, metadata !DIExpression()), !dbg !2769
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2723, metadata !DIExpression()), !dbg !2772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2773, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !2774
  store i32 10, ptr %4, align 8, !dbg !2776, !tbaa !1579
  %5 = icmp ne ptr %0, null, !dbg !2777
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2778
  br i1 %7, label %9, label %8, !dbg !2778

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2779
  unreachable, !dbg !2779

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2780
  store ptr %0, ptr %10, align 8, !dbg !2781, !tbaa !1650
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2782
  store ptr %1, ptr %11, align 8, !dbg !2783, !tbaa !1653
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2784
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2785
  ret ptr %12, !dbg !2786
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2787 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %2, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %3, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %3, metadata !2722, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2798
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2723, metadata !DIExpression()), !dbg !2799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2800, !tbaa.struct !2600
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2801
  store i32 10, ptr %5, align 8, !dbg !2803, !tbaa !1579
  %6 = icmp ne ptr %0, null, !dbg !2804
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2805
  br i1 %8, label %10, label %9, !dbg !2805

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2806
  unreachable, !dbg !2806

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2807
  store ptr %0, ptr %11, align 8, !dbg !2808, !tbaa !1650
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2809
  store ptr %1, ptr %12, align 8, !dbg !2810, !tbaa !1653
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2811
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2812
  ret ptr %13, !dbg !2813
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %2, metadata !2820, metadata !DIExpression()), !dbg !2821
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2822
  ret ptr %4, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2824 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i32 0, metadata !2818, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()), !dbg !2831
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2833
  ret ptr %3, !dbg !2834
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2839, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %1, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %1, metadata !2819, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 -1, metadata !2820, metadata !DIExpression()), !dbg !2842
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2844
  ret ptr %3, !dbg !2845
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 0, metadata !2839, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %0, metadata !2840, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 0, metadata !2818, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 -1, metadata !2820, metadata !DIExpression()), !dbg !2854
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2856
  ret ptr %2, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %1, metadata !2898, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %3, metadata !2900, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %4, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 %5, metadata !2902, metadata !DIExpression()), !dbg !2903
  %7 = icmp eq ptr %1, null, !dbg !2904
  br i1 %7, label %10, label %8, !dbg !2906

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2907
  br label %12, !dbg !2907

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #38, !dbg !2908
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #38, !dbg !2909
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2909
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2910
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #38, !dbg !2911
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #38, !dbg !2911
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2912
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
  ], !dbg !2913

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #38, !dbg !2914
  %21 = load ptr, ptr %4, align 8, !dbg !2914, !tbaa !789
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2914
  br label %147, !dbg !2916

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #38, !dbg !2917
  %25 = load ptr, ptr %4, align 8, !dbg !2917, !tbaa !789
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2917
  %27 = load ptr, ptr %26, align 8, !dbg !2917, !tbaa !789
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2917
  br label %147, !dbg !2918

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #38, !dbg !2919
  %31 = load ptr, ptr %4, align 8, !dbg !2919, !tbaa !789
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2919
  %33 = load ptr, ptr %32, align 8, !dbg !2919, !tbaa !789
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2919
  %35 = load ptr, ptr %34, align 8, !dbg !2919, !tbaa !789
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2919
  br label %147, !dbg !2920

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #38, !dbg !2921
  %39 = load ptr, ptr %4, align 8, !dbg !2921, !tbaa !789
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2921
  %41 = load ptr, ptr %40, align 8, !dbg !2921, !tbaa !789
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2921
  %43 = load ptr, ptr %42, align 8, !dbg !2921, !tbaa !789
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2921
  %45 = load ptr, ptr %44, align 8, !dbg !2921, !tbaa !789
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2921
  br label %147, !dbg !2922

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #38, !dbg !2923
  %49 = load ptr, ptr %4, align 8, !dbg !2923, !tbaa !789
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2923
  %51 = load ptr, ptr %50, align 8, !dbg !2923, !tbaa !789
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2923
  %53 = load ptr, ptr %52, align 8, !dbg !2923, !tbaa !789
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2923
  %55 = load ptr, ptr %54, align 8, !dbg !2923, !tbaa !789
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2923
  %57 = load ptr, ptr %56, align 8, !dbg !2923, !tbaa !789
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2923
  br label %147, !dbg !2924

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #38, !dbg !2925
  %61 = load ptr, ptr %4, align 8, !dbg !2925, !tbaa !789
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2925
  %63 = load ptr, ptr %62, align 8, !dbg !2925, !tbaa !789
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2925
  %65 = load ptr, ptr %64, align 8, !dbg !2925, !tbaa !789
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2925
  %67 = load ptr, ptr %66, align 8, !dbg !2925, !tbaa !789
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2925
  %69 = load ptr, ptr %68, align 8, !dbg !2925, !tbaa !789
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2925
  %71 = load ptr, ptr %70, align 8, !dbg !2925, !tbaa !789
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2925
  br label %147, !dbg !2926

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #38, !dbg !2927
  %75 = load ptr, ptr %4, align 8, !dbg !2927, !tbaa !789
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2927
  %77 = load ptr, ptr %76, align 8, !dbg !2927, !tbaa !789
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2927
  %79 = load ptr, ptr %78, align 8, !dbg !2927, !tbaa !789
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2927
  %81 = load ptr, ptr %80, align 8, !dbg !2927, !tbaa !789
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2927
  %83 = load ptr, ptr %82, align 8, !dbg !2927, !tbaa !789
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2927
  %85 = load ptr, ptr %84, align 8, !dbg !2927, !tbaa !789
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2927
  %87 = load ptr, ptr %86, align 8, !dbg !2927, !tbaa !789
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2927
  br label %147, !dbg !2928

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #38, !dbg !2929
  %91 = load ptr, ptr %4, align 8, !dbg !2929, !tbaa !789
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2929
  %93 = load ptr, ptr %92, align 8, !dbg !2929, !tbaa !789
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2929
  %95 = load ptr, ptr %94, align 8, !dbg !2929, !tbaa !789
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2929
  %97 = load ptr, ptr %96, align 8, !dbg !2929, !tbaa !789
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2929
  %99 = load ptr, ptr %98, align 8, !dbg !2929, !tbaa !789
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2929
  %101 = load ptr, ptr %100, align 8, !dbg !2929, !tbaa !789
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2929
  %103 = load ptr, ptr %102, align 8, !dbg !2929, !tbaa !789
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2929
  %105 = load ptr, ptr %104, align 8, !dbg !2929, !tbaa !789
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2929
  br label %147, !dbg !2930

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #38, !dbg !2931
  %109 = load ptr, ptr %4, align 8, !dbg !2931, !tbaa !789
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2931
  %111 = load ptr, ptr %110, align 8, !dbg !2931, !tbaa !789
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2931
  %113 = load ptr, ptr %112, align 8, !dbg !2931, !tbaa !789
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2931
  %115 = load ptr, ptr %114, align 8, !dbg !2931, !tbaa !789
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2931
  %117 = load ptr, ptr %116, align 8, !dbg !2931, !tbaa !789
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2931
  %119 = load ptr, ptr %118, align 8, !dbg !2931, !tbaa !789
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2931
  %121 = load ptr, ptr %120, align 8, !dbg !2931, !tbaa !789
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2931
  %123 = load ptr, ptr %122, align 8, !dbg !2931, !tbaa !789
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2931
  %125 = load ptr, ptr %124, align 8, !dbg !2931, !tbaa !789
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2931
  br label %147, !dbg !2932

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #38, !dbg !2933
  %129 = load ptr, ptr %4, align 8, !dbg !2933, !tbaa !789
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2933
  %131 = load ptr, ptr %130, align 8, !dbg !2933, !tbaa !789
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2933
  %133 = load ptr, ptr %132, align 8, !dbg !2933, !tbaa !789
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2933
  %135 = load ptr, ptr %134, align 8, !dbg !2933, !tbaa !789
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2933
  %137 = load ptr, ptr %136, align 8, !dbg !2933, !tbaa !789
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2933
  %139 = load ptr, ptr %138, align 8, !dbg !2933, !tbaa !789
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2933
  %141 = load ptr, ptr %140, align 8, !dbg !2933, !tbaa !789
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2933
  %143 = load ptr, ptr %142, align 8, !dbg !2933, !tbaa !789
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2933
  %145 = load ptr, ptr %144, align 8, !dbg !2933, !tbaa !789
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2933
  br label %147, !dbg !2934

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2936 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %1, metadata !2941, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %2, metadata !2942, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %3, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %4, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 0, metadata !2945, metadata !DIExpression()), !dbg !2946
  br label %6, !dbg !2947

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2949
  call void @llvm.dbg.value(metadata i64 %7, metadata !2945, metadata !DIExpression()), !dbg !2946
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2950
  %9 = load ptr, ptr %8, align 8, !dbg !2950, !tbaa !789
  %10 = icmp eq ptr %9, null, !dbg !2952
  %11 = add i64 %7, 1, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %11, metadata !2945, metadata !DIExpression()), !dbg !2946
  br i1 %10, label %12, label %6, !dbg !2952, !llvm.loop !2954

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2958 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %1, metadata !2971, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %3, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %4, metadata !2974, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2976, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 0, metadata !2975, metadata !DIExpression()), !dbg !2978
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2975, metadata !DIExpression()), !dbg !2978
  %10 = icmp ult i32 %9, 41, !dbg !2981
  br i1 %10, label %11, label %16, !dbg !2981

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2981
  %13 = zext i32 %9 to i64, !dbg !2981
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2981
  %15 = add nuw nsw i32 %9, 8, !dbg !2981
  store i32 %15, ptr %4, align 8, !dbg !2981
  br label %19, !dbg !2981

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2981
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2981
  store ptr %18, ptr %7, align 8, !dbg !2981
  br label %19, !dbg !2981

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2981
  %22 = load ptr, ptr %21, align 8, !dbg !2981
  store ptr %22, ptr %6, align 16, !dbg !2984, !tbaa !789
  %23 = icmp eq ptr %22, null, !dbg !2985
  br i1 %23, label %128, label %24, !dbg !2986

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 1, metadata !2975, metadata !DIExpression()), !dbg !2978
  %25 = icmp ult i32 %20, 41, !dbg !2981
  br i1 %25, label %29, label %26, !dbg !2981

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2981
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2981
  store ptr %28, ptr %7, align 8, !dbg !2981
  br label %34, !dbg !2981

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2981
  %31 = zext i32 %20 to i64, !dbg !2981
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2981
  %33 = add nuw nsw i32 %20, 8, !dbg !2981
  store i32 %33, ptr %4, align 8, !dbg !2981
  br label %34, !dbg !2981

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2981
  %37 = load ptr, ptr %36, align 8, !dbg !2981
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2987
  store ptr %37, ptr %38, align 8, !dbg !2984, !tbaa !789
  %39 = icmp eq ptr %37, null, !dbg !2985
  br i1 %39, label %128, label %40, !dbg !2986

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 2, metadata !2975, metadata !DIExpression()), !dbg !2978
  %41 = icmp ult i32 %35, 41, !dbg !2981
  br i1 %41, label %45, label %42, !dbg !2981

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2981
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2981
  store ptr %44, ptr %7, align 8, !dbg !2981
  br label %50, !dbg !2981

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2981
  %47 = zext i32 %35 to i64, !dbg !2981
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2981
  %49 = add nuw nsw i32 %35, 8, !dbg !2981
  store i32 %49, ptr %4, align 8, !dbg !2981
  br label %50, !dbg !2981

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2981
  %53 = load ptr, ptr %52, align 8, !dbg !2981
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2987
  store ptr %53, ptr %54, align 16, !dbg !2984, !tbaa !789
  %55 = icmp eq ptr %53, null, !dbg !2985
  br i1 %55, label %128, label %56, !dbg !2986

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 3, metadata !2975, metadata !DIExpression()), !dbg !2978
  %57 = icmp ult i32 %51, 41, !dbg !2981
  br i1 %57, label %61, label %58, !dbg !2981

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2981
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2981
  store ptr %60, ptr %7, align 8, !dbg !2981
  br label %66, !dbg !2981

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2981
  %63 = zext i32 %51 to i64, !dbg !2981
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2981
  %65 = add nuw nsw i32 %51, 8, !dbg !2981
  store i32 %65, ptr %4, align 8, !dbg !2981
  br label %66, !dbg !2981

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2981
  %69 = load ptr, ptr %68, align 8, !dbg !2981
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2987
  store ptr %69, ptr %70, align 8, !dbg !2984, !tbaa !789
  %71 = icmp eq ptr %69, null, !dbg !2985
  br i1 %71, label %128, label %72, !dbg !2986

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 4, metadata !2975, metadata !DIExpression()), !dbg !2978
  %73 = icmp ult i32 %67, 41, !dbg !2981
  br i1 %73, label %77, label %74, !dbg !2981

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2981
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2981
  store ptr %76, ptr %7, align 8, !dbg !2981
  br label %82, !dbg !2981

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2981
  %79 = zext i32 %67 to i64, !dbg !2981
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2981
  %81 = add nuw nsw i32 %67, 8, !dbg !2981
  store i32 %81, ptr %4, align 8, !dbg !2981
  br label %82, !dbg !2981

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2981
  %85 = load ptr, ptr %84, align 8, !dbg !2981
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2987
  store ptr %85, ptr %86, align 16, !dbg !2984, !tbaa !789
  %87 = icmp eq ptr %85, null, !dbg !2985
  br i1 %87, label %128, label %88, !dbg !2986

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 5, metadata !2975, metadata !DIExpression()), !dbg !2978
  %89 = icmp ult i32 %83, 41, !dbg !2981
  br i1 %89, label %93, label %90, !dbg !2981

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2981
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2981
  store ptr %92, ptr %7, align 8, !dbg !2981
  br label %98, !dbg !2981

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2981
  %95 = zext i32 %83 to i64, !dbg !2981
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2981
  %97 = add nuw nsw i32 %83, 8, !dbg !2981
  store i32 %97, ptr %4, align 8, !dbg !2981
  br label %98, !dbg !2981

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2981
  %100 = load ptr, ptr %99, align 8, !dbg !2981
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2987
  store ptr %100, ptr %101, align 8, !dbg !2984, !tbaa !789
  %102 = icmp eq ptr %100, null, !dbg !2985
  br i1 %102, label %128, label %103, !dbg !2986

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2975, metadata !DIExpression()), !dbg !2978
  %104 = load ptr, ptr %7, align 8, !dbg !2981
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2981
  store ptr %105, ptr %7, align 8, !dbg !2981
  %106 = load ptr, ptr %104, align 8, !dbg !2981
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2987
  store ptr %106, ptr %107, align 16, !dbg !2984, !tbaa !789
  %108 = icmp eq ptr %106, null, !dbg !2985
  br i1 %108, label %128, label %109, !dbg !2986

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2975, metadata !DIExpression()), !dbg !2978
  %110 = load ptr, ptr %7, align 8, !dbg !2981
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2981
  store ptr %111, ptr %7, align 8, !dbg !2981
  %112 = load ptr, ptr %110, align 8, !dbg !2981
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2987
  store ptr %112, ptr %113, align 8, !dbg !2984, !tbaa !789
  %114 = icmp eq ptr %112, null, !dbg !2985
  br i1 %114, label %128, label %115, !dbg !2986

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2975, metadata !DIExpression()), !dbg !2978
  %116 = load ptr, ptr %7, align 8, !dbg !2981
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2981
  store ptr %117, ptr %7, align 8, !dbg !2981
  %118 = load ptr, ptr %116, align 8, !dbg !2981
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2987
  store ptr %118, ptr %119, align 16, !dbg !2984, !tbaa !789
  %120 = icmp eq ptr %118, null, !dbg !2985
  br i1 %120, label %128, label %121, !dbg !2986

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2975, metadata !DIExpression()), !dbg !2978
  %122 = load ptr, ptr %7, align 8, !dbg !2981
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2981
  store ptr %123, ptr %7, align 8, !dbg !2981
  %124 = load ptr, ptr %122, align 8, !dbg !2981
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2987
  store ptr %124, ptr %125, align 8, !dbg !2984, !tbaa !789
  %126 = icmp eq ptr %124, null, !dbg !2985
  %127 = select i1 %126, i64 9, i64 10, !dbg !2986
  br label %128, !dbg !2986

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2988
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2989
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !2990
  ret void, !dbg !2990
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2991 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %1, metadata !2996, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %2, metadata !2997, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %3, metadata !2998, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2999, metadata !DIExpression()), !dbg !3006
  call void @llvm.va_start(ptr nonnull %5), !dbg !3007
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3008
  call void @llvm.va_end(ptr nonnull %5), !dbg !3009
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3010
  ret void, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3011 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3012, !tbaa !789
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3012
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #38, !dbg !3013
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #38, !dbg !3013
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #38, !dbg !3014
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21.106) #38, !dbg !3014
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22.107, i32 noundef 5) #38, !dbg !3015
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.108) #38, !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %2, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %2, metadata !3030, metadata !DIExpression()), !dbg !3031
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3039
  %5 = icmp eq ptr %4, null, !dbg !3041
  br i1 %5, label %6, label %7, !dbg !3043

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3044
  unreachable, !dbg !3044

7:                                                ; preds = %3
  ret ptr %4, !dbg !3045
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %2, metadata !3030, metadata !DIExpression()), !dbg !3046
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3048
  %5 = icmp eq ptr %4, null, !dbg !3050
  br i1 %5, label %6, label %7, !dbg !3051

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3052
  unreachable, !dbg !3052

7:                                                ; preds = %3
  ret ptr %4, !dbg !3053
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3054 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3061
  %3 = icmp eq ptr %2, null, !dbg !3063
  br i1 %3, label %4, label %5, !dbg !3064

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3065
  unreachable, !dbg !3065

5:                                                ; preds = %1
  ret ptr %2, !dbg !3066
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3067 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3068 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3078
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3081
  %3 = icmp eq ptr %2, null, !dbg !3083
  br i1 %3, label %4, label %5, !dbg !3084

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3085
  unreachable, !dbg !3085

5:                                                ; preds = %1
  ret ptr %2, !dbg !3086
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3087 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()), !dbg !3093
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3095
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3096
  %3 = icmp eq ptr %2, null, !dbg !3098
  br i1 %3, label %4, label %5, !dbg !3099

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3100
  unreachable, !dbg !3100

5:                                                ; preds = %1
  ret ptr %2, !dbg !3101
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3102 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3114
  %3 = icmp eq i64 %1, 0, !dbg !3116
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3116
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %5, metadata !3034, metadata !DIExpression()), !dbg !3118
  %6 = icmp eq ptr %5, null, !dbg !3120
  br i1 %6, label %7, label %8, !dbg !3121

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3122
  unreachable, !dbg !3122

8:                                                ; preds = %2
  ret ptr %5, !dbg !3123
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3124 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3138
  %3 = icmp eq i64 %1, 0, !dbg !3140
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3140
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %5, metadata !3034, metadata !DIExpression()), !dbg !3142
  %6 = icmp eq ptr %5, null, !dbg !3144
  br i1 %6, label %7, label %8, !dbg !3145

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3146
  unreachable, !dbg !3146

8:                                                ; preds = %2
  ret ptr %5, !dbg !3147
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %2, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !3156, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %2, metadata !3160, metadata !DIExpression()), !dbg !3161
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3164
  %5 = icmp eq ptr %4, null, !dbg !3166
  br i1 %5, label %6, label %7, !dbg !3167

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3168
  unreachable, !dbg !3168

7:                                                ; preds = %3
  ret ptr %4, !dbg !3169
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3170 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata ptr null, metadata !3026, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %0, metadata !3029, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %1, metadata !3030, metadata !DIExpression()), !dbg !3177
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3180
  %4 = icmp eq ptr %3, null, !dbg !3182
  br i1 %4, label %5, label %6, !dbg !3183

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3184
  unreachable, !dbg !3184

6:                                                ; preds = %2
  ret ptr %3, !dbg !3185
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3186 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3190, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %1, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata ptr null, metadata !3152, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %0, metadata !3153, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr null, metadata !3156, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %0, metadata !3159, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3195
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3197
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3198
  %4 = icmp eq ptr %3, null, !dbg !3200
  br i1 %4, label %5, label %6, !dbg !3201

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3202
  unreachable, !dbg !3202

6:                                                ; preds = %2
  ret ptr %3, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3204 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata ptr %1, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata ptr %0, metadata !723, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %1, metadata !724, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 1, metadata !725, metadata !DIExpression()), !dbg !3211
  %3 = load i64, ptr %1, align 8, !dbg !3213, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %3, metadata !726, metadata !DIExpression()), !dbg !3211
  %4 = icmp eq ptr %0, null, !dbg !3214
  br i1 %4, label %5, label %8, !dbg !3216

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3217
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3220
  br label %15, !dbg !3220

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3221
  %10 = add nuw i64 %9, 1, !dbg !3221
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3221
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3221
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %13, metadata !726, metadata !DIExpression()), !dbg !3211
  br i1 %12, label %14, label %15, !dbg !3224

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3225
  unreachable, !dbg !3225

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3211
  call void @llvm.dbg.value(metadata i64 %16, metadata !726, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %16, metadata !3029, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 1, metadata !3030, metadata !DIExpression()), !dbg !3226
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %17, metadata !3034, metadata !DIExpression()), !dbg !3229
  %18 = icmp eq ptr %17, null, !dbg !3231
  br i1 %18, label %19, label %20, !dbg !3232

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3233
  unreachable, !dbg !3233

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !723, metadata !DIExpression()), !dbg !3211
  store i64 %16, ptr %1, align 8, !dbg !3234, !tbaa !2316
  ret ptr %17, !dbg !3235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !718 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !723, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %1, metadata !724, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %2, metadata !725, metadata !DIExpression()), !dbg !3236
  %4 = load i64, ptr %1, align 8, !dbg !3237, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %4, metadata !726, metadata !DIExpression()), !dbg !3236
  %5 = icmp eq ptr %0, null, !dbg !3238
  br i1 %5, label %6, label %13, !dbg !3239

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3240
  br i1 %7, label %8, label %20, !dbg !3241

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %9, metadata !726, metadata !DIExpression()), !dbg !3236
  %10 = icmp ugt i64 %2, 128, !dbg !3244
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %12, metadata !726, metadata !DIExpression()), !dbg !3236
  br label %20, !dbg !3246

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3247
  %15 = add nuw i64 %14, 1, !dbg !3247
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3247
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3247
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %18, metadata !726, metadata !DIExpression()), !dbg !3236
  br i1 %17, label %19, label %20, !dbg !3248

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3249
  unreachable, !dbg !3249

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3236
  call void @llvm.dbg.value(metadata i64 %21, metadata !726, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %21, metadata !3029, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %2, metadata !3030, metadata !DIExpression()), !dbg !3250
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3252
  call void @llvm.dbg.value(metadata ptr %22, metadata !3034, metadata !DIExpression()), !dbg !3253
  %23 = icmp eq ptr %22, null, !dbg !3255
  br i1 %23, label %24, label %25, !dbg !3256

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3257
  unreachable, !dbg !3257

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !723, metadata !DIExpression()), !dbg !3236
  store i64 %21, ptr %1, align 8, !dbg !3258, !tbaa !2316
  ret ptr %22, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !730 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !738, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %1, metadata !739, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %2, metadata !740, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %3, metadata !741, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %4, metadata !742, metadata !DIExpression()), !dbg !3260
  %6 = load i64, ptr %1, align 8, !dbg !3261, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %6, metadata !743, metadata !DIExpression()), !dbg !3260
  %7 = ashr i64 %6, 1, !dbg !3262
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3262
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3262
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %10, metadata !744, metadata !DIExpression()), !dbg !3260
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %11, metadata !744, metadata !DIExpression()), !dbg !3260
  %12 = icmp sgt i64 %3, -1, !dbg !3265
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3267
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %15, metadata !744, metadata !DIExpression()), !dbg !3260
  %16 = icmp slt i64 %4, 0, !dbg !3268
  br i1 %16, label %17, label %30, !dbg !3268

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3268
  br i1 %18, label %19, label %24, !dbg !3268

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3268
  %21 = udiv i64 9223372036854775807, %20, !dbg !3268
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3268
  br i1 %23, label %46, label %43, !dbg !3268

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3268
  br i1 %25, label %43, label %26, !dbg !3268

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3268
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3268
  %29 = icmp ult i64 %28, %15, !dbg !3268
  br i1 %29, label %46, label %43, !dbg !3268

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3268
  br i1 %31, label %43, label %32, !dbg !3268

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3268
  br i1 %33, label %34, label %40, !dbg !3268

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3268
  br i1 %35, label %43, label %36, !dbg !3268

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3268
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3268
  %39 = icmp ult i64 %38, %4, !dbg !3268
  br i1 %39, label %46, label %43, !dbg !3268

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3268
  br i1 %42, label %46, label %43, !dbg !3268

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !745, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  %44 = mul i64 %15, %4, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %44, metadata !745, metadata !DIExpression()), !dbg !3260
  %45 = icmp slt i64 %44, 128, !dbg !3268
  br i1 %45, label %46, label %51, !dbg !3268

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !746, metadata !DIExpression()), !dbg !3260
  %48 = sdiv i64 %47, %4, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %48, metadata !744, metadata !DIExpression()), !dbg !3260
  %49 = srem i64 %47, %4, !dbg !3272
  %50 = sub nsw i64 %47, %49, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %50, metadata !745, metadata !DIExpression()), !dbg !3260
  br label %51, !dbg !3274

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3260
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3260
  call void @llvm.dbg.value(metadata i64 %53, metadata !745, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %52, metadata !744, metadata !DIExpression()), !dbg !3260
  %54 = icmp eq ptr %0, null, !dbg !3275
  br i1 %54, label %55, label %56, !dbg !3277

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3278, !tbaa !2316
  br label %56, !dbg !3279

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3280
  %58 = icmp slt i64 %57, %2, !dbg !3282
  br i1 %58, label %59, label %96, !dbg !3283

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3284
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3284
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %62, metadata !744, metadata !DIExpression()), !dbg !3260
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3285
  br i1 %65, label %95, label %66, !dbg !3285

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3286

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3286
  br i1 %68, label %69, label %74, !dbg !3286

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3286
  %71 = udiv i64 9223372036854775807, %70, !dbg !3286
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3286
  br i1 %73, label %95, label %93, !dbg !3286

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3286
  br i1 %75, label %93, label %76, !dbg !3286

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3286
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3286
  %79 = icmp ult i64 %78, %62, !dbg !3286
  br i1 %79, label %95, label %93, !dbg !3286

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3286
  br i1 %81, label %93, label %82, !dbg !3286

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3286
  br i1 %83, label %84, label %90, !dbg !3286

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3286
  br i1 %85, label %93, label %86, !dbg !3286

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3286
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3286
  %89 = icmp ult i64 %88, %4, !dbg !3286
  br i1 %89, label %95, label %93, !dbg !3286

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3286
  br i1 %92, label %95, label %93, !dbg !3286

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !745, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  %94 = mul i64 %62, %4, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %94, metadata !745, metadata !DIExpression()), !dbg !3260
  br label %96, !dbg !3287

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !3288
  unreachable, !dbg !3288

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3260
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3260
  call void @llvm.dbg.value(metadata i64 %98, metadata !745, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %97, metadata !744, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %98, metadata !3107, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %98, metadata !3113, metadata !DIExpression()), !dbg !3291
  %99 = icmp eq i64 %98, 0, !dbg !3293
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3293
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %101, metadata !3034, metadata !DIExpression()), !dbg !3295
  %102 = icmp eq ptr %101, null, !dbg !3297
  br i1 %102, label %103, label %104, !dbg !3298

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !3299
  unreachable, !dbg !3299

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !738, metadata !DIExpression()), !dbg !3260
  store i64 %97, ptr %1, align 8, !dbg !3300, !tbaa !2316
  ret ptr %101, !dbg !3301
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 1, metadata !3309, metadata !DIExpression()), !dbg !3310
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3313
  %3 = icmp eq ptr %2, null, !dbg !3315
  br i1 %3, label %4, label %5, !dbg !3316

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3317
  unreachable, !dbg !3317

5:                                                ; preds = %1
  ret ptr %2, !dbg !3318
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3319 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3307 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3320
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3321
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3322
  %4 = icmp eq ptr %3, null, !dbg !3324
  br i1 %4, label %5, label %6, !dbg !3325

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3326
  unreachable, !dbg !3326

6:                                                ; preds = %2
  ret ptr %3, !dbg !3327
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3328 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %0, metadata !3332, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 1, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %0, metadata !3338, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 1, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %0, metadata !3338, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 1, metadata !3341, metadata !DIExpression()), !dbg !3342
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3344
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3345
  %3 = icmp eq ptr %2, null, !dbg !3347
  br i1 %3, label %4, label %5, !dbg !3348

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3349
  unreachable, !dbg !3349

5:                                                ; preds = %1
  ret ptr %2, !dbg !3350
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3333 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3332, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %0, metadata !3338, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %0, metadata !3338, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3352
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3354
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3355
  %4 = icmp eq ptr %3, null, !dbg !3357
  br i1 %4, label %5, label %6, !dbg !3358

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3359
  unreachable, !dbg !3359

6:                                                ; preds = %2
  ret ptr %3, !dbg !3360
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3361 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3368
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3370
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3371
  %4 = icmp eq ptr %3, null, !dbg !3373
  br i1 %4, label %5, label %6, !dbg !3374

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3375
  unreachable, !dbg !3375

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %0, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3383
  ret ptr %3, !dbg !3384
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3385 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3394
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3397
  %4 = icmp eq ptr %3, null, !dbg !3399
  br i1 %4, label %5, label %6, !dbg !3400

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3401
  unreachable, !dbg !3401

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %0, metadata !3379, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3402
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3404
  ret ptr %3, !dbg !3405
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  %3 = add nsw i64 %1, 1, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %3, metadata !3072, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %3, metadata !3074, metadata !DIExpression()), !dbg !3417
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3420
  %5 = icmp eq ptr %4, null, !dbg !3422
  br i1 %5, label %6, label %7, !dbg !3423

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3424
  unreachable, !dbg !3424

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3412, metadata !DIExpression()), !dbg !3413
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3425
  store i8 0, ptr %8, align 1, !dbg !3426, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %4, metadata !3376, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %0, metadata !3379, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3427
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3429
  ret ptr %4, !dbg !3430
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3431 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3434
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3435
  %3 = add i64 %2, 1, !dbg !3436
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %3, metadata !3366, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %3, metadata !3058, metadata !DIExpression()), !dbg !3439
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3442
  %5 = icmp eq ptr %4, null, !dbg !3444
  br i1 %5, label %6, label %7, !dbg !3445

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3446
  unreachable, !dbg !3446

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3376, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata ptr %0, metadata !3379, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %3, metadata !3380, metadata !DIExpression()), !dbg !3447
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3449
  ret ptr %4, !dbg !3450
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3451 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3456, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %1, metadata !3453, metadata !DIExpression()), !dbg !3457
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.121, ptr noundef nonnull @.str.2.122, i32 noundef 5) #38, !dbg !3456
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef %2) #38, !dbg !3456
  %3 = icmp eq i32 %1, 0, !dbg !3456
  tail call void @llvm.assume(i1 %3), !dbg !3456
  tail call void @abort() #40, !dbg !3458
  unreachable, !dbg !3458
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3459 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3461, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3466
  br label %2, !dbg !3467

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3466
  call void @llvm.dbg.value(metadata ptr %3, metadata !3462, metadata !DIExpression()), !dbg !3466
  %4 = load i8, ptr %3, align 1, !dbg !3468, !tbaa !866
  %5 = icmp eq i8 %4, 47, !dbg !3468
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %6, metadata !3462, metadata !DIExpression()), !dbg !3466
  br i1 %5, label %2, label %7, !dbg !3467, !llvm.loop !3470

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3471
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3473
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3466
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3474
  call void @llvm.dbg.value(metadata ptr %11, metadata !3464, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8 %10, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3476

12:                                               ; preds = %7
  ret ptr %9, !dbg !3477

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3478
  %15 = icmp eq i8 %14, 0, !dbg !3478
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3482
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3482
  br label %18, !dbg !3482

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3466
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3466
  call void @llvm.dbg.value(metadata i8 %20, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %19, metadata !3462, metadata !DIExpression()), !dbg !3466
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %21, metadata !3464, metadata !DIExpression()), !dbg !3475
  %22 = load i8, ptr %21, align 1, !dbg !3471, !tbaa !866
  br label %7, !dbg !3484, !llvm.loop !3485
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #35 !dbg !3487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %2, metadata !3492, metadata !DIExpression()), !dbg !3494
  %3 = icmp ne i64 %2, 0, !dbg !3497
  %4 = zext i1 %3 to i64, !dbg !3497
  br label %5, !dbg !3497

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3498
  call void @llvm.dbg.value(metadata i64 %6, metadata !3492, metadata !DIExpression()), !dbg !3494
  %7 = icmp ugt i64 %6, 1, !dbg !3499
  br i1 %7, label %8, label %13, !dbg !3501

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3502
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3502
  %11 = load i8, ptr %10, align 1, !dbg !3502, !tbaa !866
  %12 = icmp eq i8 %11, 47, !dbg !3502
  br i1 %12, label %5, label %13, !dbg !3503, !llvm.loop !3504

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3498
  call void @llvm.dbg.value(metadata i64 0, metadata !3493, metadata !DIExpression()), !dbg !3494
  ret i64 %14, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3545, metadata !DIExpression()), !dbg !3550
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3551
  call void @llvm.dbg.value(metadata i1 poison, metadata !3546, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %0, metadata !3552, metadata !DIExpression()), !dbg !3555
  %3 = load i32, ptr %0, align 8, !dbg !3557, !tbaa !3558
  %4 = and i32 %3, 32, !dbg !3559
  %5 = icmp eq i32 %4, 0, !dbg !3559
  call void @llvm.dbg.value(metadata i1 %5, metadata !3548, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3550
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3560
  %7 = icmp eq i32 %6, 0, !dbg !3561
  call void @llvm.dbg.value(metadata i1 %7, metadata !3549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3550
  br i1 %5, label %8, label %18, !dbg !3562

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3564
  call void @llvm.dbg.value(metadata i1 %9, metadata !3546, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3550
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3565
  %11 = xor i1 %7, true, !dbg !3565
  %12 = sext i1 %11 to i32, !dbg !3565
  br i1 %10, label %21, label %13, !dbg !3565

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3566
  %15 = load i32, ptr %14, align 4, !dbg !3566, !tbaa !857
  %16 = icmp ne i32 %15, 9, !dbg !3567
  %17 = sext i1 %16 to i32, !dbg !3568
  br label %21, !dbg !3568

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3569

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3571
  store i32 0, ptr %20, align 4, !dbg !3573, !tbaa !857
  br label %21, !dbg !3571

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3550
  ret i32 %22, !dbg !3574
}

; Function Attrs: nounwind
declare !dbg !3575 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()), !dbg !3621
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3622
  call void @llvm.dbg.value(metadata i32 %2, metadata !3619, metadata !DIExpression()), !dbg !3621
  %3 = icmp slt i32 %2, 0, !dbg !3623
  br i1 %3, label %4, label %6, !dbg !3625

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3626
  br label %24, !dbg !3627

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3628
  %8 = icmp eq i32 %7, 0, !dbg !3628
  br i1 %8, label %13, label %9, !dbg !3630

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3631
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3632
  %12 = icmp eq i64 %11, -1, !dbg !3633
  br i1 %12, label %16, label %13, !dbg !3634

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3635
  %15 = icmp eq i32 %14, 0, !dbg !3635
  br i1 %15, label %16, label %18, !dbg !3636

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i32 0, metadata !3620, metadata !DIExpression()), !dbg !3621
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3637
  call void @llvm.dbg.value(metadata i32 %17, metadata !3620, metadata !DIExpression()), !dbg !3621
  br label %24, !dbg !3638

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3639
  %20 = load i32, ptr %19, align 4, !dbg !3639, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %20, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i32 0, metadata !3620, metadata !DIExpression()), !dbg !3621
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3637
  call void @llvm.dbg.value(metadata i32 %21, metadata !3620, metadata !DIExpression()), !dbg !3621
  %22 = icmp eq i32 %20, 0, !dbg !3640
  br i1 %22, label %24, label %23, !dbg !3638

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3642, !tbaa !857
  call void @llvm.dbg.value(metadata i32 -1, metadata !3620, metadata !DIExpression()), !dbg !3621
  br label %24, !dbg !3644

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3621
  ret i32 %25, !dbg !3645
}

; Function Attrs: nofree nounwind
declare !dbg !3646 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3647 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3648 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3649 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3652 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3691
  %2 = icmp eq ptr %0, null, !dbg !3692
  br i1 %2, label %6, label %3, !dbg !3694

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3695
  %5 = icmp eq i32 %4, 0, !dbg !3695
  br i1 %5, label %6, label %8, !dbg !3696

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3697
  br label %16, !dbg !3698

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3704
  %9 = load i32, ptr %0, align 8, !dbg !3706, !tbaa !3558
  %10 = and i32 %9, 256, !dbg !3708
  %11 = icmp eq i32 %10, 0, !dbg !3708
  br i1 %11, label %14, label %12, !dbg !3709

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3710
  br label %14, !dbg !3710

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3711
  br label %16, !dbg !3712

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3691
  ret i32 %17, !dbg !3713
}

; Function Attrs: nofree nounwind
declare !dbg !3714 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3754, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3755, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %2, metadata !3756, metadata !DIExpression()), !dbg !3760
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3761
  %5 = load ptr, ptr %4, align 8, !dbg !3761, !tbaa !3762
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3763
  %7 = load ptr, ptr %6, align 8, !dbg !3763, !tbaa !3764
  %8 = icmp eq ptr %5, %7, !dbg !3765
  br i1 %8, label %9, label %27, !dbg !3766

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3767
  %11 = load ptr, ptr %10, align 8, !dbg !3767, !tbaa !1143
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3768
  %13 = load ptr, ptr %12, align 8, !dbg !3768, !tbaa !3769
  %14 = icmp eq ptr %11, %13, !dbg !3770
  br i1 %14, label %15, label %27, !dbg !3771

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3772
  %17 = load ptr, ptr %16, align 8, !dbg !3772, !tbaa !3773
  %18 = icmp eq ptr %17, null, !dbg !3774
  br i1 %18, label %19, label %27, !dbg !3775

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3776
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3777
  call void @llvm.dbg.value(metadata i64 %21, metadata !3757, metadata !DIExpression()), !dbg !3778
  %22 = icmp eq i64 %21, -1, !dbg !3779
  br i1 %22, label %29, label %23, !dbg !3781

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3782, !tbaa !3558
  %25 = and i32 %24, -17, !dbg !3782
  store i32 %25, ptr %0, align 8, !dbg !3782, !tbaa !3558
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3783
  store i64 %21, ptr %26, align 8, !dbg !3784, !tbaa !3785
  br label %29, !dbg !3786

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3787
  br label %29, !dbg !3788

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3760
  ret i32 %30, !dbg !3789
}

; Function Attrs: nofree nounwind
declare !dbg !3790 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3793 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %3, metadata !3801, metadata !DIExpression()), !dbg !3803
  %5 = icmp eq ptr %1, null, !dbg !3804
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3806
  %7 = select i1 %5, ptr @.str.138, ptr %1, !dbg !3806
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %8, metadata !3800, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %7, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %6, metadata !3798, metadata !DIExpression()), !dbg !3803
  %9 = icmp eq ptr %3, null, !dbg !3807
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3809
  call void @llvm.dbg.value(metadata ptr %10, metadata !3801, metadata !DIExpression()), !dbg !3803
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %11, metadata !3802, metadata !DIExpression()), !dbg !3803
  %12 = icmp ult i64 %11, -3, !dbg !3811
  br i1 %12, label %13, label %17, !dbg !3813

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3814
  %15 = icmp eq i32 %14, 0, !dbg !3814
  br i1 %15, label %16, label %29, !dbg !3815

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3816, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr %10, metadata !3823, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 8, metadata !3827, metadata !DIExpression()), !dbg !3828
  store i64 0, ptr %10, align 1, !dbg !3830
  br label %29, !dbg !3831

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3832
  br i1 %18, label %19, label %20, !dbg !3834

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3835
  unreachable, !dbg !3835

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3836

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !3838
  br i1 %23, label %29, label %24, !dbg !3839

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3840
  br i1 %25, label %29, label %26, !dbg !3843

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3844, !tbaa !866
  %28 = zext i8 %27 to i32, !dbg !3845
  store i32 %28, ptr %6, align 4, !dbg !3846, !tbaa !857
  br label %29, !dbg !3847

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3803
  ret i64 %30, !dbg !3848
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3849 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !3855 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %2, metadata !3859, metadata !DIExpression()), !dbg !3861
  %4 = icmp eq i64 %2, 0, !dbg !3862
  br i1 %4, label %8, label %5, !dbg !3862

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3862
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3862
  br i1 %7, label %13, label %8, !dbg !3862

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3860, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3861
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3860, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3861
  %9 = mul i64 %2, %1, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %9, metadata !3860, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %9, metadata !3867, metadata !DIExpression()), !dbg !3868
  %10 = icmp eq i64 %9, 0, !dbg !3870
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3870
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !3871
  br label %15, !dbg !3872

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3860, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3861
  %14 = tail call ptr @__errno_location() #41, !dbg !3873
  store i32 12, ptr %14, align 4, !dbg !3875, !tbaa !857
  br label %15, !dbg !3876

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3861
  ret ptr %16, !dbg !3877
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3878 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3887
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3889
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3890
  %4 = icmp eq i32 %3, 0, !dbg !3890
  br i1 %4, label %5, label %12, !dbg !3892

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3893, metadata !DIExpression()), !dbg !3897
  %6 = load i16, ptr %2, align 16, !dbg !3900
  %7 = icmp eq i16 %6, 67, !dbg !3900
  br i1 %7, label %11, label %8, !dbg !3901

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3893, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !3896, metadata !DIExpression()), !dbg !3902
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !3904
  %10 = icmp eq i32 %9, 0, !dbg !3905
  br i1 %10, label %11, label %12, !dbg !3906

11:                                               ; preds = %8, %5
  br label %12, !dbg !3907

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3887
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3908
  ret i1 %13, !dbg !3908
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3913, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %1, metadata !3914, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i64 %2, metadata !3915, metadata !DIExpression()), !dbg !3916
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3917
  ret i32 %4, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3925
  ret ptr %2, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3929, metadata !DIExpression()), !dbg !3931
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3932
  call void @llvm.dbg.value(metadata ptr %2, metadata !3930, metadata !DIExpression()), !dbg !3931
  ret ptr %2, !dbg !3933
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3936, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %1, metadata !3937, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %2, metadata !3938, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 %0, metadata !3929, metadata !DIExpression()), !dbg !3944
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3946
  call void @llvm.dbg.value(metadata ptr %4, metadata !3930, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %4, metadata !3939, metadata !DIExpression()), !dbg !3943
  %5 = icmp eq ptr %4, null, !dbg !3947
  br i1 %5, label %6, label %9, !dbg !3948

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3949
  br i1 %7, label %19, label %8, !dbg !3952

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3953, !tbaa !866
  br label %19, !dbg !3954

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3955
  call void @llvm.dbg.value(metadata i64 %10, metadata !3940, metadata !DIExpression()), !dbg !3956
  %11 = icmp ult i64 %10, %2, !dbg !3957
  br i1 %11, label %12, label %14, !dbg !3959

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %1, metadata !3962, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr %4, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %13, metadata !3966, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !3969
  br label %19, !dbg !3970

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3971
  br i1 %15, label %19, label %16, !dbg !3974

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3975
  call void @llvm.dbg.value(metadata ptr %1, metadata !3962, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %4, metadata !3965, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i64 %17, metadata !3966, metadata !DIExpression()), !dbg !3977
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !3979
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3980
  store i8 0, ptr %18, align 1, !dbg !3981, !tbaa !866
  br label %19, !dbg !3982

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3983
  ret i32 %20, !dbg !3984
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !351, !355, !701, !703, !370, !669, !705, !422, !436, !487, !707, !661, !714, !748, !750, !752, !754, !756, !758, !685, !760, !763, !767, !769}
!llvm.ident = !{!771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771}
!llvm.module.flags = !{!772, !773, !774, !775, !776, !777}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "477d3cd1850fe551cd0c5a9952f88312")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 53)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 832, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 104)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 79)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 69)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 66)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 185)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 6)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "longopts", scope: !74, file: !2, line: 30, type: !336, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !98, globals: !108, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76, !82}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 337, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!81 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 46, baseType: !84, size: 32, elements: !85)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "_ISupper", value: 256)
!87 = !DIEnumerator(name: "_ISlower", value: 512)
!88 = !DIEnumerator(name: "_ISalpha", value: 1024)
!89 = !DIEnumerator(name: "_ISdigit", value: 2048)
!90 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!91 = !DIEnumerator(name: "_ISspace", value: 8192)
!92 = !DIEnumerator(name: "_ISprint", value: 16384)
!93 = !DIEnumerator(name: "_ISgraph", value: 32768)
!94 = !DIEnumerator(name: "_ISblank", value: 1)
!95 = !DIEnumerator(name: "_IScntrl", value: 2)
!96 = !DIEnumerator(name: "_ISpunct", value: 4)
!97 = !DIEnumerator(name: "_ISalnum", value: 8)
!98 = !{!99, !100, !78, !101, !102, !105, !107}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !109, !114, !119, !121, !126, !131, !214, !219, !221, !226, !228, !233, !235, !237, !242, !244, !246, !248, !253, !258, !260, !262, !264, !266, !268, !270, !272, !277, !282, !287, !289, !291, !293, !295, !297, !302, !304, !306, !311, !316, !321, !326, !328, !330, !332, !334, !72}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 14)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 16)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !116, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 17)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !77, line: 736, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 75)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !133, file: !77, line: 575, type: !78, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "oputs_", scope: !77, file: !77, line: 573, type: !134, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !136)
!134 = !DISubroutineType(cc: DW_CC_nocall, types: !135)
!135 = !{null, !105, !105}
!136 = !{!137, !138, !139, !142, !144, !145, !146, !150, !151, !152, !153, !155, !208, !209, !210, !212, !213}
!137 = !DILocalVariable(name: "program", arg: 1, scope: !133, file: !77, line: 573, type: !105)
!138 = !DILocalVariable(name: "option", arg: 2, scope: !133, file: !77, line: 573, type: !105)
!139 = !DILocalVariable(name: "term", scope: !140, file: !77, line: 585, type: !105)
!140 = distinct !DILexicalBlock(scope: !141, file: !77, line: 582, column: 5)
!141 = distinct !DILexicalBlock(scope: !133, file: !77, line: 581, column: 7)
!142 = !DILocalVariable(name: "double_space", scope: !133, file: !77, line: 594, type: !143)
!143 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!144 = !DILocalVariable(name: "first_word", scope: !133, file: !77, line: 595, type: !105)
!145 = !DILocalVariable(name: "option_text", scope: !133, file: !77, line: 596, type: !105)
!146 = !DILocalVariable(name: "s", scope: !147, file: !77, line: 608, type: !105)
!147 = distinct !DILexicalBlock(scope: !148, file: !77, line: 605, column: 5)
!148 = distinct !DILexicalBlock(scope: !149, file: !77, line: 604, column: 12)
!149 = distinct !DILexicalBlock(scope: !133, file: !77, line: 597, column: 7)
!150 = !DILocalVariable(name: "spaces", scope: !147, file: !77, line: 609, type: !102)
!151 = !DILocalVariable(name: "anchor_len", scope: !133, file: !77, line: 620, type: !102)
!152 = !DILocalVariable(name: "desc_text", scope: !133, file: !77, line: 625, type: !105)
!153 = !DILocalVariable(name: "__ptr", scope: !154, file: !77, line: 644, type: !105)
!154 = distinct !DILexicalBlock(scope: !133, file: !77, line: 644, column: 3)
!155 = !DILocalVariable(name: "__stream", scope: !154, file: !77, line: 644, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !161)
!160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !177, !179, !180, !181, !185, !186, !188, !189, !192, !194, !197, !200, !201, !202, !203, !204}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !159, file: !160, line: 51, baseType: !78, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !159, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !159, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !159, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !159, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !159, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !159, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !159, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !159, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !159, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !159, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !159, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !159, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !160, line: 36, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !159, file: !160, line: 70, baseType: !178, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !159, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !159, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !159, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !183, line: 152, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!184 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !159, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !159, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!187 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !159, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !159, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !160, line: 43, baseType: null)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !159, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !183, line: 153, baseType: !184)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !159, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !160, line: 37, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !159, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !160, line: 38, flags: DIFlagFwdDecl)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !159, file: !160, line: 93, baseType: !178, size: 64, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !159, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !159, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !159, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !159, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 20)
!208 = !DILocalVariable(name: "__cnt", scope: !154, file: !77, line: 644, type: !102)
!209 = !DILocalVariable(name: "url_program", scope: !133, file: !77, line: 648, type: !105)
!210 = !DILocalVariable(name: "__ptr", scope: !211, file: !77, line: 686, type: !105)
!211 = distinct !DILexicalBlock(scope: !133, file: !77, line: 686, column: 3)
!212 = !DILocalVariable(name: "__stream", scope: !211, file: !77, line: 686, type: !156)
!213 = !DILocalVariable(name: "__cnt", scope: !211, file: !77, line: 686, type: !102)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !77, line: 585, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 5)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !77, line: 586, type: !216, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !77, line: 595, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !77, line: 620, type: !69, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 2)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !216, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !223, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 3)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !77, line: 650, type: !216, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !69, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !69, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !77, line: 652, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 7)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !77, line: 653, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 8)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !77, line: 654, type: !59, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !77, line: 655, type: !59, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !77, line: 656, type: !59, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !77, line: 657, type: !59, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !77, line: 663, type: !250, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !77, line: 664, type: !59, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !123, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 40)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 15)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 61)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !77, line: 679, type: !239, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !77, line: 683, type: !216, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !77, line: 688, type: !216, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !77, line: 691, type: !255, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !77, line: 839, type: !116, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !77, line: 840, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 22)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !77, line: 841, type: !279, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !77, line: 862, type: !223, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !77, line: 868, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 71)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !77, line: 875, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 27)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 51)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 12)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !19, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !250, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !216, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !216, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !255, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1536, elements: !70)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !339, line: 50, size: 256, elements: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!340 = !{!341, !342, !343, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !339, line: 52, baseType: !105, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !338, file: !339, line: 55, baseType: !78, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !338, file: !339, line: 56, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !339, line: 57, baseType: !78, size: 32, offset: 192)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !348, line: 3, type: !279, isLocal: true, isDefinition: true)
!348 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "Version", scope: !351, file: !348, line: 3, type: !105, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C11, file: !348, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !352, splitDebugInlining: false, nameTableKind: None)
!352 = !{!346, !349}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "file_name", scope: !355, file: !356, line: 45, type: !105, isLocal: true, isDefinition: true)
!355 = distinct !DICompileUnit(language: DW_LANG_C11, file: !356, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!357 = !{!358, !360, !362, !364, !353, !366}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !356, line: 121, type: !250, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !356, line: 121, type: !323, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !356, line: 123, type: !250, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !356, line: 126, type: !239, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !355, file: !356, line: 55, type: !143, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !417, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!100, !107}
!373 = !{!374, !376, !396, !398, !400, !402, !368, !404, !406, !408, !410, !415}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !216, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !105, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !389)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !78, !78, !105, !84, !105, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !383)
!383 = !{!384, !386, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !382, file: !385, baseType: !84, size: 32)
!385 = !DIFile(filename: "lib/error.c", directory: "/src")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !382, file: !385, baseType: !84, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !382, file: !385, baseType: !100, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !382, file: !385, baseType: !100, size: 64, offset: 128)
!389 = !{!390, !391, !392, !393, !394, !395}
!390 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !78)
!391 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !78)
!392 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !105)
!393 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !84)
!394 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !105)
!395 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !84, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !223, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !255, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !230, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !84, isLocal: false, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !78, isLocal: false, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !250, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 21)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !216, isLocal: true, isDefinition: true)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "program_name", scope: !422, file: !423, line: 31, type: !105, isLocal: false, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !424, globals: !425, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!424 = !{!99}
!425 = !{!420, !426, !428}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !423, line: 46, type: !255, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !423, line: 49, type: !223, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "utf07FF", scope: !432, file: !433, line: 46, type: !460, isLocal: true, isDefinition: true)
!432 = distinct !DISubprogram(name: "proper_name_lite", scope: !433, file: !433, line: 38, type: !434, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !438)
!433 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!434 = !DISubroutineType(types: !435)
!435 = !{!105, !105, !105}
!436 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !437, splitDebugInlining: false, nameTableKind: None)
!437 = !{!430}
!438 = !{!439, !440, !441, !442, !447}
!439 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !432, file: !433, line: 38, type: !105)
!440 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !432, file: !433, line: 38, type: !105)
!441 = !DILocalVariable(name: "translation", scope: !432, file: !433, line: 40, type: !105)
!442 = !DILocalVariable(name: "w", scope: !432, file: !433, line: 47, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !444, line: 37, baseType: !445)
!444 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !183, line: 57, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !183, line: 42, baseType: !84)
!447 = !DILocalVariable(name: "mbs", scope: !432, file: !433, line: 48, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !450)
!449 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !452)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !452, file: !451, line: 15, baseType: !78, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !452, file: !451, line: 20, baseType: !456, size: 32, offset: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 16, size: 32, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !456, file: !451, line: 18, baseType: !84, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !456, file: !451, line: 19, baseType: !223, size: 32)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16, elements: !231)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !463, line: 78, type: !255, isLocal: true, isDefinition: true)
!463 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !463, line: 79, type: !69, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !463, line: 80, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 13)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !463, line: 81, type: !468, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !463, line: 82, type: !205, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !463, line: 83, type: !230, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !463, line: 84, type: !255, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !463, line: 85, type: !250, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !463, line: 86, type: !250, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !463, line: 87, type: !255, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !487, file: !463, line: 76, type: !573, isLocal: false, isDefinition: true)
!487 = distinct !DICompileUnit(language: DW_LANG_C11, file: !463, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !488, retainedTypes: !508, globals: !509, splitDebugInlining: false, nameTableKind: None)
!488 = !{!489, !503, !82}
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !490, line: 42, baseType: !84, size: 32, elements: !491)
!490 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!492 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!493 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!494 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!495 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!496 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!497 = !DIEnumerator(name: "c_quoting_style", value: 5)
!498 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!499 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!500 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!501 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!502 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!503 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !490, line: 254, baseType: !84, size: 32, elements: !504)
!504 = !{!505, !506, !507}
!505 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!506 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!507 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!508 = !{!78, !101, !102}
!509 = !{!461, !464, !466, !471, !473, !475, !477, !479, !481, !483, !485, !510, !514, !524, !526, !531, !533, !535, !537, !539, !562, !569, !571}
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !487, file: !463, line: 92, type: !512, isLocal: false, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 320, elements: !60)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !487, file: !463, line: 1040, type: !516, isLocal: false, isDefinition: true)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !463, line: 56, size: 448, elements: !517)
!517 = !{!518, !519, !520, !522, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !516, file: !463, line: 59, baseType: !489, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !463, line: 62, baseType: !78, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !516, file: !463, line: 66, baseType: !521, size: 256, offset: 64)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !516, file: !463, line: 69, baseType: !105, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !516, file: !463, line: 72, baseType: !105, size: 64, offset: 384)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !487, file: !463, line: 107, type: !516, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "slot0", scope: !487, file: !463, line: 831, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 256)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !463, line: 321, type: !230, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !463, line: 357, type: !230, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !463, line: 358, type: !230, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !463, line: 199, type: !250, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "quote", scope: !541, file: !463, line: 228, type: !560, isLocal: true, isDefinition: true)
!541 = distinct !DISubprogram(name: "gettext_quote", scope: !463, file: !463, line: 197, type: !542, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!105, !105, !489}
!544 = !{!545, !546, !547, !548, !549}
!545 = !DILocalVariable(name: "msgid", arg: 1, scope: !541, file: !463, line: 197, type: !105)
!546 = !DILocalVariable(name: "s", arg: 2, scope: !541, file: !463, line: 197, type: !489)
!547 = !DILocalVariable(name: "translation", scope: !541, file: !463, line: 199, type: !105)
!548 = !DILocalVariable(name: "w", scope: !541, file: !463, line: 229, type: !443)
!549 = !DILocalVariable(name: "mbs", scope: !541, file: !463, line: 230, type: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !552, file: !451, line: 15, baseType: !78, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !552, file: !451, line: 20, baseType: !556, size: 32, offset: 32)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !451, line: 16, size: 32, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !556, file: !451, line: 18, baseType: !84, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !556, file: !451, line: 19, baseType: !223, size: 32)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !561)
!561 = !{!232, !225}
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "slotvec", scope: !487, file: !463, line: 834, type: !564, isLocal: true, isDefinition: true)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !463, line: 823, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !565, file: !463, line: 825, baseType: !102, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !565, file: !463, line: 826, baseType: !99, size: 64, offset: 64)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "nslots", scope: !487, file: !463, line: 832, type: !78, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "slotvec0", scope: !487, file: !463, line: 833, type: !565, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 704, elements: !575)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!575 = !{!576}
!576 = !DISubrange(count: 11)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !579, line: 67, type: !323, isLocal: true, isDefinition: true)
!579 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !579, line: 69, type: !250, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !579, line: 83, type: !250, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !579, line: 83, type: !223, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !579, line: 85, type: !230, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !579, line: 88, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 171)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !579, line: 88, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 34)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !579, line: 105, type: !116, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !579, line: 109, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 23)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !579, line: 113, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 28)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !579, line: 120, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 32)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !579, line: 127, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 36)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !579, line: 134, type: !274, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !579, line: 142, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 44)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !579, line: 150, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 48)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !579, line: 159, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 52)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !579, line: 170, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 60)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !579, line: 248, type: !205, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !579, line: 248, type: !299, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !579, line: 254, type: !205, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !579, line: 254, type: !111, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !579, line: 254, type: !274, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !579, line: 259, type: !3, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !579, line: 259, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 29)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !661, file: !662, line: 26, type: !664, isLocal: false, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!663 = !{!659}
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 376, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 47)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "exit_failure", scope: !669, file: !670, line: 24, type: !672, isLocal: false, isDefinition: true)
!669 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !671, splitDebugInlining: false, nameTableKind: None)
!670 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!671 = !{!667}
!672 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !239, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !250, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !675, line: 34, type: !123, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !682, line: 108, type: !54, isLocal: true, isDefinition: true)
!682 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "internal_state", scope: !685, file: !682, line: 97, type: !688, isLocal: true, isDefinition: true)
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, globals: !687, splitDebugInlining: false, nameTableKind: None)
!686 = !{!100, !102, !107}
!687 = !{!680, !683}
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !690, file: !451, line: 15, baseType: !78, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !690, file: !451, line: 20, baseType: !694, size: 32, offset: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !451, line: 16, size: 32, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !694, file: !451, line: 18, baseType: !84, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !694, file: !451, line: 19, baseType: !223, size: 32)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !700, line: 35, type: !69, isLocal: true, isDefinition: true)
!700 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !579, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !708, retainedTypes: !712, globals: !713, splitDebugInlining: false, nameTableKind: None)
!708 = !{!709}
!709 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !579, line: 40, baseType: !84, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!712 = !{!100}
!713 = !{!577, !580, !582, !584, !586, !588, !593, !598, !600, !605, !610, !615, !620, !622, !627, !632, !637, !642, !644, !646, !648, !650, !652, !654}
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !716, retainedTypes: !747, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!716 = !{!717, !729}
!717 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !718, file: !715, line: 188, baseType: !84, size: 32, elements: !727)
!718 = distinct !DISubprogram(name: "x2nrealloc", scope: !715, file: !715, line: 176, type: !719, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !722)
!719 = !DISubroutineType(types: !720)
!720 = !{!100, !100, !721, !102}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!722 = !{!723, !724, !725, !726}
!723 = !DILocalVariable(name: "p", arg: 1, scope: !718, file: !715, line: 176, type: !100)
!724 = !DILocalVariable(name: "pn", arg: 2, scope: !718, file: !715, line: 176, type: !721)
!725 = !DILocalVariable(name: "s", arg: 3, scope: !718, file: !715, line: 176, type: !102)
!726 = !DILocalVariable(name: "n", scope: !718, file: !715, line: 178, type: !102)
!727 = !{!728}
!728 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!729 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !730, file: !715, line: 228, baseType: !84, size: 32, elements: !727)
!730 = distinct !DISubprogram(name: "xpalloc", scope: !715, file: !715, line: 223, type: !731, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !737)
!731 = !DISubroutineType(types: !732)
!732 = !{!100, !100, !733, !734, !736, !734}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !735, line: 130, baseType: !736)
!735 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !103, line: 35, baseType: !184)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746}
!738 = !DILocalVariable(name: "pa", arg: 1, scope: !730, file: !715, line: 223, type: !100)
!739 = !DILocalVariable(name: "pn", arg: 2, scope: !730, file: !715, line: 223, type: !733)
!740 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !730, file: !715, line: 223, type: !734)
!741 = !DILocalVariable(name: "n_max", arg: 4, scope: !730, file: !715, line: 223, type: !736)
!742 = !DILocalVariable(name: "s", arg: 5, scope: !730, file: !715, line: 223, type: !734)
!743 = !DILocalVariable(name: "n0", scope: !730, file: !715, line: 230, type: !734)
!744 = !DILocalVariable(name: "n", scope: !730, file: !715, line: 237, type: !734)
!745 = !DILocalVariable(name: "nbytes", scope: !730, file: !715, line: 248, type: !734)
!746 = !DILocalVariable(name: "adjusted_nbytes", scope: !730, file: !715, line: 252, type: !734)
!747 = !{!99, !100, !143, !184, !104}
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !749, splitDebugInlining: false, nameTableKind: None)
!749 = !{!673, !676, !678}
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !424, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!762 = !{!143, !104, !100}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!764 = !{!765, !698}
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !700, line: 35, type: !230, isLocal: true, isDefinition: true)
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!771 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!772 = !{i32 7, !"Dwarf Version", i32 5}
!773 = !{i32 2, !"Debug Info Version", i32 3}
!774 = !{i32 1, !"wchar_size", i32 4}
!775 = !{i32 8, !"PIC Level", i32 2}
!776 = !{i32 7, !"PIE Level", i32 2}
!777 = !{i32 7, !"uwtable", i32 2}
!778 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 41, type: !779, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !78}
!781 = !{!782}
!782 = !DILocalVariable(name: "status", arg: 1, scope: !778, file: !2, line: 41, type: !78)
!783 = !DILocation(line: 0, scope: !778)
!784 = !DILocation(line: 43, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !2, line: 43, column: 7)
!786 = !DILocation(line: 43, column: 7, scope: !778)
!787 = !DILocation(line: 44, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !2, line: 44, column: 5)
!789 = !{!790, !790, i64 0}
!790 = !{!"any pointer", !791, i64 0}
!791 = !{!"omnipotent char", !792, i64 0}
!792 = !{!"Simple C/C++ TBAA"}
!793 = !DILocation(line: 47, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !785, file: !2, line: 46, column: 5)
!795 = !DILocation(line: 52, column: 7, scope: !794)
!796 = !DILocation(line: 736, column: 3, scope: !797, inlinedAt: !799)
!797 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !418, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !798)
!798 = !{}
!799 = distinct !DILocation(line: 57, column: 7, scope: !794)
!800 = !DILocation(line: 59, column: 7, scope: !794)
!801 = !DILocation(line: 63, column: 7, scope: !794)
!802 = !DILocation(line: 67, column: 7, scope: !794)
!803 = !DILocation(line: 71, column: 7, scope: !794)
!804 = !DILocation(line: 72, column: 7, scope: !794)
!805 = !DILocation(line: 73, column: 7, scope: !794)
!806 = !DILocalVariable(name: "program", arg: 1, scope: !807, file: !77, line: 836, type: !105)
!807 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !808, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !105}
!810 = !{!806, !811, !818, !819, !821, !822}
!811 = !DILocalVariable(name: "infomap", scope: !807, file: !77, line: 838, type: !812)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 896, elements: !251)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !807, file: !77, line: 838, size: 128, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !814, file: !77, line: 838, baseType: !105, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !814, file: !77, line: 838, baseType: !105, size: 64, offset: 64)
!818 = !DILocalVariable(name: "node", scope: !807, file: !77, line: 848, type: !105)
!819 = !DILocalVariable(name: "map_prog", scope: !807, file: !77, line: 849, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!821 = !DILocalVariable(name: "lc_messages", scope: !807, file: !77, line: 861, type: !105)
!822 = !DILocalVariable(name: "url_program", scope: !807, file: !77, line: 874, type: !105)
!823 = !DILocation(line: 0, scope: !807, inlinedAt: !824)
!824 = distinct !DILocation(line: 82, column: 7, scope: !794)
!825 = !DILocation(line: 857, column: 3, scope: !807, inlinedAt: !824)
!826 = !DILocation(line: 861, column: 29, scope: !807, inlinedAt: !824)
!827 = !DILocation(line: 862, column: 7, scope: !828, inlinedAt: !824)
!828 = distinct !DILexicalBlock(scope: !807, file: !77, line: 862, column: 7)
!829 = !DILocation(line: 862, column: 19, scope: !828, inlinedAt: !824)
!830 = !DILocation(line: 862, column: 22, scope: !828, inlinedAt: !824)
!831 = !DILocation(line: 862, column: 7, scope: !807, inlinedAt: !824)
!832 = !DILocation(line: 868, column: 7, scope: !833, inlinedAt: !824)
!833 = distinct !DILexicalBlock(scope: !828, file: !77, line: 863, column: 5)
!834 = !DILocation(line: 870, column: 5, scope: !833, inlinedAt: !824)
!835 = !DILocation(line: 875, column: 3, scope: !807, inlinedAt: !824)
!836 = !DILocation(line: 877, column: 3, scope: !807, inlinedAt: !824)
!837 = !DILocation(line: 84, column: 3, scope: !778)
!838 = !DISubprogram(name: "dcgettext", scope: !839, file: !839, line: 51, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!839 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!840 = !DISubroutineType(types: !841)
!841 = !{!99, !105, !105, !78}
!842 = !DISubprogram(name: "__fprintf_chk", scope: !843, file: !843, line: 93, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!843 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!844 = !DISubroutineType(types: !845)
!845 = !{!78, !846, !78, !847, null}
!846 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!847 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!848 = !DISubprogram(name: "__printf_chk", scope: !843, file: !843, line: 95, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!849 = !DISubroutineType(types: !850)
!850 = !{!78, !78, !847, null}
!851 = !DISubprogram(name: "fputs_unlocked", scope: !852, file: !852, line: 691, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!852 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!853 = !DISubroutineType(types: !854)
!854 = !{!78, !847, !846}
!855 = !DILocation(line: 0, scope: !133)
!856 = !DILocation(line: 581, column: 7, scope: !141)
!857 = !{!858, !858, i64 0}
!858 = !{!"int", !791, i64 0}
!859 = !DILocation(line: 581, column: 19, scope: !141)
!860 = !DILocation(line: 581, column: 7, scope: !133)
!861 = !DILocation(line: 585, column: 26, scope: !140)
!862 = !DILocation(line: 0, scope: !140)
!863 = !DILocation(line: 586, column: 23, scope: !140)
!864 = !DILocation(line: 586, column: 28, scope: !140)
!865 = !DILocation(line: 586, column: 32, scope: !140)
!866 = !{!791, !791, i64 0}
!867 = !DILocation(line: 586, column: 38, scope: !140)
!868 = !DILocalVariable(name: "__s1", arg: 1, scope: !869, file: !870, line: 1359, type: !105)
!869 = distinct !DISubprogram(name: "streq", scope: !870, file: !870, line: 1359, type: !871, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !873)
!870 = !DIFile(filename: "./lib/string.h", directory: "/src")
!871 = !DISubroutineType(types: !872)
!872 = !{!143, !105, !105}
!873 = !{!868, !874}
!874 = !DILocalVariable(name: "__s2", arg: 2, scope: !869, file: !870, line: 1359, type: !105)
!875 = !DILocation(line: 0, scope: !869, inlinedAt: !876)
!876 = distinct !DILocation(line: 586, column: 41, scope: !140)
!877 = !DILocation(line: 1361, column: 11, scope: !869, inlinedAt: !876)
!878 = !DILocation(line: 1361, column: 10, scope: !869, inlinedAt: !876)
!879 = !DILocation(line: 586, column: 19, scope: !140)
!880 = !DILocation(line: 587, column: 5, scope: !140)
!881 = !DILocation(line: 588, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !133, file: !77, line: 588, column: 7)
!883 = !DILocation(line: 588, column: 7, scope: !133)
!884 = !DILocation(line: 590, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !77, line: 589, column: 5)
!886 = !DILocation(line: 591, column: 7, scope: !885)
!887 = !DILocation(line: 595, column: 37, scope: !133)
!888 = !DILocation(line: 595, column: 35, scope: !133)
!889 = !DILocation(line: 596, column: 29, scope: !133)
!890 = !DILocation(line: 597, column: 8, scope: !149)
!891 = !DILocation(line: 597, column: 7, scope: !133)
!892 = !DILocation(line: 604, column: 24, scope: !148)
!893 = !DILocation(line: 604, column: 12, scope: !149)
!894 = !DILocation(line: 0, scope: !147)
!895 = !DILocation(line: 610, column: 16, scope: !147)
!896 = !DILocation(line: 610, column: 7, scope: !147)
!897 = !DILocation(line: 611, column: 21, scope: !147)
!898 = !{!899, !899, i64 0}
!899 = !{!"short", !791, i64 0}
!900 = !DILocation(line: 611, column: 19, scope: !147)
!901 = !DILocation(line: 611, column: 16, scope: !147)
!902 = !DILocation(line: 610, column: 30, scope: !147)
!903 = distinct !{!903, !896, !897, !904}
!904 = !{!"llvm.loop.mustprogress"}
!905 = !DILocation(line: 612, column: 18, scope: !906)
!906 = distinct !DILexicalBlock(scope: !147, file: !77, line: 612, column: 11)
!907 = !DILocation(line: 612, column: 11, scope: !147)
!908 = !DILocation(line: 618, column: 5, scope: !147)
!909 = !DILocation(line: 620, column: 23, scope: !133)
!910 = !DILocation(line: 625, column: 39, scope: !133)
!911 = !DILocation(line: 626, column: 3, scope: !133)
!912 = !DILocation(line: 626, column: 10, scope: !133)
!913 = !DILocation(line: 626, column: 21, scope: !133)
!914 = !DILocation(line: 628, column: 44, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !77, line: 628, column: 11)
!916 = distinct !DILexicalBlock(scope: !133, file: !77, line: 627, column: 5)
!917 = !DILocation(line: 628, column: 32, scope: !915)
!918 = !DILocation(line: 628, column: 49, scope: !915)
!919 = !DILocation(line: 628, column: 11, scope: !916)
!920 = !DILocation(line: 630, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !77, line: 630, column: 11)
!922 = !DILocation(line: 630, column: 11, scope: !916)
!923 = !DILocation(line: 632, column: 26, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !77, line: 632, column: 15)
!925 = distinct !DILexicalBlock(scope: !921, file: !77, line: 631, column: 9)
!926 = !DILocation(line: 632, column: 34, scope: !924)
!927 = !DILocation(line: 632, column: 37, scope: !924)
!928 = !DILocation(line: 632, column: 15, scope: !925)
!929 = !DILocation(line: 636, column: 16, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !77, line: 636, column: 15)
!931 = !DILocation(line: 636, column: 29, scope: !930)
!932 = !DILocation(line: 640, column: 16, scope: !916)
!933 = distinct !{!933, !911, !934, !904}
!934 = !DILocation(line: 641, column: 5, scope: !133)
!935 = !DILocation(line: 644, column: 3, scope: !133)
!936 = !DILocation(line: 0, scope: !869, inlinedAt: !937)
!937 = distinct !DILocation(line: 648, column: 31, scope: !133)
!938 = !DILocation(line: 0, scope: !869, inlinedAt: !939)
!939 = distinct !DILocation(line: 649, column: 31, scope: !133)
!940 = !DILocation(line: 0, scope: !869, inlinedAt: !941)
!941 = distinct !DILocation(line: 650, column: 31, scope: !133)
!942 = !DILocation(line: 0, scope: !869, inlinedAt: !943)
!943 = distinct !DILocation(line: 651, column: 31, scope: !133)
!944 = !DILocation(line: 0, scope: !869, inlinedAt: !945)
!945 = distinct !DILocation(line: 652, column: 31, scope: !133)
!946 = !DILocation(line: 0, scope: !869, inlinedAt: !947)
!947 = distinct !DILocation(line: 653, column: 31, scope: !133)
!948 = !DILocation(line: 0, scope: !869, inlinedAt: !949)
!949 = distinct !DILocation(line: 654, column: 31, scope: !133)
!950 = !DILocation(line: 0, scope: !869, inlinedAt: !951)
!951 = distinct !DILocation(line: 655, column: 31, scope: !133)
!952 = !DILocation(line: 0, scope: !869, inlinedAt: !953)
!953 = distinct !DILocation(line: 656, column: 31, scope: !133)
!954 = !DILocation(line: 0, scope: !869, inlinedAt: !955)
!955 = distinct !DILocation(line: 657, column: 31, scope: !133)
!956 = !DILocation(line: 663, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !133, file: !77, line: 663, column: 7)
!958 = !DILocation(line: 664, column: 7, scope: !957)
!959 = !DILocation(line: 664, column: 10, scope: !957)
!960 = !DILocation(line: 663, column: 7, scope: !133)
!961 = !DILocation(line: 669, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !77, line: 665, column: 5)
!963 = !DILocation(line: 671, column: 5, scope: !962)
!964 = !DILocation(line: 676, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !957, file: !77, line: 673, column: 5)
!966 = !DILocation(line: 679, column: 3, scope: !133)
!967 = !DILocation(line: 683, column: 3, scope: !133)
!968 = !DILocation(line: 686, column: 3, scope: !133)
!969 = !DILocation(line: 688, column: 3, scope: !133)
!970 = !DILocation(line: 691, column: 3, scope: !133)
!971 = !DILocation(line: 695, column: 3, scope: !133)
!972 = !DILocation(line: 696, column: 1, scope: !133)
!973 = !DISubprogram(name: "setlocale", scope: !974, file: !974, line: 122, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!974 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!975 = !DISubroutineType(types: !976)
!976 = !{!99, !78, !105}
!977 = !DISubprogram(name: "strncmp", scope: !978, file: !978, line: 159, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!978 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!979 = !DISubroutineType(types: !980)
!980 = !{!78, !105, !105, !102}
!981 = !DISubprogram(name: "exit", scope: !982, file: !982, line: 624, type: !779, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!982 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!983 = !DISubprogram(name: "getenv", scope: !982, file: !982, line: 641, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!984 = !DISubroutineType(types: !985)
!985 = !{!99, !105}
!986 = !DISubprogram(name: "strcmp", scope: !978, file: !978, line: 156, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!987 = !DISubroutineType(types: !988)
!988 = !{!78, !105, !105}
!989 = !DISubprogram(name: "strspn", scope: !978, file: !978, line: 297, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!990 = !DISubroutineType(types: !991)
!991 = !{!104, !105, !105}
!992 = !DISubprogram(name: "strchr", scope: !978, file: !978, line: 246, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!993 = !DISubroutineType(types: !994)
!994 = !{!99, !105, !78}
!995 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!996 = !DISubroutineType(types: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1001 = !DISubprogram(name: "strcspn", scope: !978, file: !978, line: 293, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1002 = !DISubprogram(name: "fwrite_unlocked", scope: !852, file: !852, line: 704, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!102, !1005, !102, !102, !846}
!1005 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1008 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 127, type: !1009, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1012)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!78, !78, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018}
!1013 = !DILocalVariable(name: "argc", arg: 1, scope: !1008, file: !2, line: 127, type: !78)
!1014 = !DILocalVariable(name: "argv", arg: 2, scope: !1008, file: !2, line: 127, type: !1011)
!1015 = !DILocalVariable(name: "multiple_names", scope: !1008, file: !2, line: 129, type: !143)
!1016 = !DILocalVariable(name: "use_nuls", scope: !1008, file: !2, line: 130, type: !143)
!1017 = !DILocalVariable(name: "suffix", scope: !1008, file: !2, line: 131, type: !105)
!1018 = !DILocalVariable(name: "c", scope: !1019, file: !2, line: 143, type: !78)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 142, column: 5)
!1020 = !DILocation(line: 0, scope: !1008)
!1021 = !DILocation(line: 134, column: 21, scope: !1008)
!1022 = !DILocation(line: 134, column: 3, scope: !1008)
!1023 = !DILocation(line: 135, column: 3, scope: !1008)
!1024 = !DILocation(line: 136, column: 3, scope: !1008)
!1025 = !DILocation(line: 137, column: 3, scope: !1008)
!1026 = !DILocation(line: 139, column: 3, scope: !1008)
!1027 = !DILocation(line: 141, column: 3, scope: !1008)
!1028 = !DILocation(line: 130, column: 8, scope: !1008)
!1029 = !DILocation(line: 145, column: 11, scope: !1019)
!1030 = !DILocation(line: 143, column: 15, scope: !1019)
!1031 = !DILocation(line: 0, scope: !1019)
!1032 = distinct !{!1032, !1033}
!1033 = !{!"llvm.loop.peeled.count", i32 1}
!1034 = !DILocation(line: 151, column: 20, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 149, column: 9)
!1036 = !DILocation(line: 151, column: 11, scope: !1035)
!1037 = !DILocation(line: 163, column: 9, scope: !1035)
!1038 = !DILocation(line: 164, column: 9, scope: !1035)
!1039 = !DILocation(line: 167, column: 11, scope: !1035)
!1040 = !DILocation(line: 171, column: 14, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 171, column: 7)
!1042 = !DILocation(line: 171, column: 12, scope: !1041)
!1043 = !DILocation(line: 171, column: 7, scope: !1008)
!1044 = !DILocation(line: 173, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 172, column: 5)
!1046 = !DILocation(line: 174, column: 7, scope: !1045)
!1047 = !DILocation(line: 177, column: 8, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 177, column: 7)
!1049 = !DILocation(line: 177, column: 23, scope: !1048)
!1050 = !DILocation(line: 179, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 178, column: 5)
!1052 = !DILocation(line: 180, column: 7, scope: !1051)
!1053 = !DILocation(line: 183, column: 7, scope: !1008)
!1054 = !DILocation(line: 185, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 185, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 184, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 183, column: 7)
!1058 = !DILocation(line: 186, column: 27, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 185, column: 7)
!1060 = !DILocation(line: 186, column: 9, scope: !1059)
!1061 = !DILocation(line: 185, column: 35, scope: !1059)
!1062 = !DILocation(line: 185, column: 21, scope: !1059)
!1063 = distinct !{!1063, !1054, !1064, !904}
!1064 = !DILocation(line: 186, column: 57, scope: !1055)
!1065 = !DILocation(line: 189, column: 23, scope: !1057)
!1066 = !DILocation(line: 190, column: 34, scope: !1057)
!1067 = !DILocation(line: 190, column: 23, scope: !1057)
!1068 = !DILocation(line: 190, column: 56, scope: !1057)
!1069 = !DILocation(line: 190, column: 44, scope: !1057)
!1070 = !DILocation(line: 191, column: 23, scope: !1057)
!1071 = !DILocation(line: 189, column: 5, scope: !1057)
!1072 = !DILocation(line: 194, column: 1, scope: !1008)
!1073 = !DISubprogram(name: "bindtextdomain", scope: !839, file: !839, line: 86, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!99, !105, !105}
!1076 = !DISubprogram(name: "textdomain", scope: !839, file: !839, line: 82, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1077 = !DISubprogram(name: "atexit", scope: !982, file: !982, line: 602, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!78, !417}
!1080 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!78, !78, !1083, !105, !1085, !344}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1086 = distinct !DISubprogram(name: "perform_basename", scope: !2, file: !2, line: 107, type: !1087, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !105, !105, !143}
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DILocalVariable(name: "string", arg: 1, scope: !1086, file: !2, line: 107, type: !105)
!1091 = !DILocalVariable(name: "suffix", arg: 2, scope: !1086, file: !2, line: 107, type: !105)
!1092 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !1086, file: !2, line: 107, type: !143)
!1093 = !DILocalVariable(name: "name", scope: !1086, file: !2, line: 109, type: !99)
!1094 = !DILocation(line: 0, scope: !1086)
!1095 = !DILocation(line: 109, column: 16, scope: !1086)
!1096 = !DILocation(line: 110, column: 3, scope: !1086)
!1097 = !DILocation(line: 118, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 118, column: 7)
!1099 = !DILocation(line: 118, column: 14, scope: !1098)
!1100 = !DILocation(line: 118, column: 17, scope: !1098)
!1101 = !DILocation(line: 118, column: 46, scope: !1098)
!1102 = !DILocalVariable(name: "name", arg: 1, scope: !1103, file: !2, line: 91, type: !99)
!1103 = distinct !DISubprogram(name: "remove_suffix", scope: !2, file: !2, line: 91, type: !1104, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !99, !105}
!1106 = !{!1102, !1107, !1108, !1109}
!1107 = !DILocalVariable(name: "suffix", arg: 2, scope: !1103, file: !2, line: 91, type: !105)
!1108 = !DILocalVariable(name: "np", scope: !1103, file: !2, line: 93, type: !99)
!1109 = !DILocalVariable(name: "sp", scope: !1103, file: !2, line: 94, type: !105)
!1110 = !DILocation(line: 0, scope: !1103, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 119, column: 5, scope: !1098)
!1112 = !DILocation(line: 93, column: 21, scope: !1103, inlinedAt: !1111)
!1113 = !DILocation(line: 93, column: 19, scope: !1103, inlinedAt: !1111)
!1114 = !DILocation(line: 94, column: 29, scope: !1103, inlinedAt: !1111)
!1115 = !DILocation(line: 94, column: 27, scope: !1103, inlinedAt: !1111)
!1116 = !DILocation(line: 96, column: 3, scope: !1103, inlinedAt: !1111)
!1117 = !DILocation(line: 96, column: 13, scope: !1103, inlinedAt: !1111)
!1118 = !DILocation(line: 96, column: 20, scope: !1103, inlinedAt: !1111)
!1119 = !DILocation(line: 97, column: 10, scope: !1120, inlinedAt: !1111)
!1120 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 97, column: 9)
!1121 = !DILocation(line: 97, column: 9, scope: !1120, inlinedAt: !1111)
!1122 = !DILocation(line: 97, column: 19, scope: !1120, inlinedAt: !1111)
!1123 = !DILocation(line: 97, column: 18, scope: !1120, inlinedAt: !1111)
!1124 = !DILocation(line: 97, column: 15, scope: !1120, inlinedAt: !1111)
!1125 = !DILocation(line: 97, column: 9, scope: !1103, inlinedAt: !1111)
!1126 = distinct !{!1126, !1116, !1127, !904}
!1127 = !DILocation(line: 98, column: 7, scope: !1103, inlinedAt: !1111)
!1128 = !DILocation(line: 99, column: 7, scope: !1103, inlinedAt: !1111)
!1129 = !DILocation(line: 100, column: 9, scope: !1130, inlinedAt: !1111)
!1130 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 99, column: 7)
!1131 = !DILocation(line: 100, column: 5, scope: !1130, inlinedAt: !1111)
!1132 = !DILocation(line: 121, column: 3, scope: !1086)
!1133 = !DILocation(line: 122, column: 3, scope: !1086)
!1134 = !DILocalVariable(name: "__c", arg: 1, scope: !1135, file: !1136, line: 108, type: !78)
!1135 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1136, file: !1136, line: 108, type: !1137, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1139)
!1136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!78, !78}
!1139 = !{!1134}
!1140 = !DILocation(line: 0, scope: !1135, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 122, column: 3, scope: !1086)
!1142 = !DILocation(line: 110, column: 10, scope: !1135, inlinedAt: !1141)
!1143 = !{!1144, !790, i64 40}
!1144 = !{!"_IO_FILE", !858, i64 0, !790, i64 8, !790, i64 16, !790, i64 24, !790, i64 32, !790, i64 40, !790, i64 48, !790, i64 56, !790, i64 64, !790, i64 72, !790, i64 80, !790, i64 88, !790, i64 96, !790, i64 104, !858, i64 112, !858, i64 116, !1145, i64 120, !899, i64 128, !791, i64 130, !791, i64 131, !790, i64 136, !1145, i64 144, !790, i64 152, !790, i64 160, !790, i64 168, !790, i64 176, !1145, i64 184, !858, i64 192, !791, i64 196}
!1145 = !{!"long", !791, i64 0}
!1146 = !{!1144, !790, i64 48}
!1147 = !{!"branch_weights", i32 2000, i32 1}
!1148 = !DILocation(line: 123, column: 3, scope: !1086)
!1149 = !DILocation(line: 124, column: 1, scope: !1086)
!1150 = !DISubprogram(name: "strlen", scope: !978, file: !978, line: 407, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!104, !105}
!1153 = !DISubprogram(name: "__overflow", scope: !852, file: !852, line: 886, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!78, !156, !78}
!1156 = !DISubprogram(name: "free", scope: !982, file: !982, line: 555, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !100}
!1159 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !808, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1160)
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "file", arg: 1, scope: !1159, file: !356, line: 50, type: !105)
!1162 = !DILocation(line: 0, scope: !1159)
!1163 = !DILocation(line: 52, column: 13, scope: !1159)
!1164 = !DILocation(line: 53, column: 1, scope: !1159)
!1165 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1166, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !143}
!1168 = !{!1169}
!1169 = !DILocalVariable(name: "ignore", arg: 1, scope: !1165, file: !356, line: 87, type: !143)
!1170 = !DILocation(line: 0, scope: !1165)
!1171 = !DILocation(line: 89, column: 16, scope: !1165)
!1172 = !{!1173, !1173, i64 0}
!1173 = !{!"_Bool", !791, i64 0}
!1174 = !DILocation(line: 90, column: 1, scope: !1165)
!1175 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !418, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1176)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "write_error", scope: !1178, file: !356, line: 121, type: !105)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !356, line: 120, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !356, line: 118, column: 7)
!1180 = !DILocation(line: 118, column: 21, scope: !1179)
!1181 = !DILocation(line: 118, column: 7, scope: !1179)
!1182 = !DILocation(line: 118, column: 29, scope: !1179)
!1183 = !DILocation(line: 119, column: 7, scope: !1179)
!1184 = !DILocation(line: 119, column: 12, scope: !1179)
!1185 = !{i8 0, i8 2}
!1186 = !DILocation(line: 119, column: 25, scope: !1179)
!1187 = !DILocation(line: 119, column: 28, scope: !1179)
!1188 = !DILocation(line: 119, column: 34, scope: !1179)
!1189 = !DILocation(line: 118, column: 7, scope: !1175)
!1190 = !DILocation(line: 121, column: 33, scope: !1178)
!1191 = !DILocation(line: 0, scope: !1178)
!1192 = !DILocation(line: 122, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1178, file: !356, line: 122, column: 11)
!1194 = !DILocation(line: 0, scope: !1193)
!1195 = !DILocation(line: 122, column: 11, scope: !1178)
!1196 = !DILocation(line: 123, column: 9, scope: !1193)
!1197 = !DILocation(line: 126, column: 9, scope: !1193)
!1198 = !DILocation(line: 128, column: 14, scope: !1178)
!1199 = !DILocation(line: 128, column: 7, scope: !1178)
!1200 = !DILocation(line: 133, column: 42, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1175, file: !356, line: 133, column: 7)
!1202 = !DILocation(line: 133, column: 28, scope: !1201)
!1203 = !DILocation(line: 133, column: 50, scope: !1201)
!1204 = !DILocation(line: 133, column: 7, scope: !1175)
!1205 = !DILocation(line: 134, column: 12, scope: !1201)
!1206 = !DILocation(line: 134, column: 5, scope: !1201)
!1207 = !DILocation(line: 135, column: 1, scope: !1175)
!1208 = !DISubprogram(name: "__errno_location", scope: !1209, file: !1209, line: 37, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1209 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!344}
!1212 = !DISubprogram(name: "_exit", scope: !1213, file: !1213, line: 624, type: !779, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1213 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1214 = distinct !DISubprogram(name: "base_name", scope: !702, file: !702, line: 27, type: !984, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220}
!1216 = !DILocalVariable(name: "name", arg: 1, scope: !1214, file: !702, line: 27, type: !105)
!1217 = !DILocalVariable(name: "base", scope: !1214, file: !702, line: 29, type: !105)
!1218 = !DILocalVariable(name: "length", scope: !1214, file: !702, line: 30, type: !734)
!1219 = !DILocalVariable(name: "dotslash_len", scope: !1214, file: !702, line: 31, type: !78)
!1220 = !DILocalVariable(name: "p", scope: !1214, file: !702, line: 53, type: !99)
!1221 = !DILocation(line: 0, scope: !1214)
!1222 = !DILocation(line: 29, column: 22, scope: !1214)
!1223 = !DILocation(line: 32, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1214, file: !702, line: 32, column: 7)
!1225 = !DILocation(line: 32, column: 7, scope: !1214)
!1226 = !DILocation(line: 34, column: 16, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !702, line: 33, column: 5)
!1228 = !DILocation(line: 37, column: 17, scope: !1227)
!1229 = !DILocation(line: 37, column: 14, scope: !1227)
!1230 = !DILocation(line: 43, column: 5, scope: !1227)
!1231 = !DILocation(line: 49, column: 16, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !702, line: 45, column: 5)
!1233 = !DILocation(line: 0, scope: !1224)
!1234 = !DILocation(line: 53, column: 45, scope: !1214)
!1235 = !DILocation(line: 53, column: 13, scope: !1214)
!1236 = !DILocalVariable(name: "__dest", arg: 1, scope: !1237, file: !1238, line: 26, type: !1241)
!1237 = distinct !DISubprogram(name: "memcpy", scope: !1238, file: !1238, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1242)
!1238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!100, !1241, !1005, !102}
!1241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1242 = !{!1236, !1243, !1244}
!1243 = !DILocalVariable(name: "__src", arg: 2, scope: !1237, file: !1238, line: 26, type: !1005)
!1244 = !DILocalVariable(name: "__len", arg: 3, scope: !1237, file: !1238, line: 26, type: !102)
!1245 = !DILocation(line: 0, scope: !1237, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 61, column: 3, scope: !1214)
!1247 = !DILocation(line: 29, column: 10, scope: !1237, inlinedAt: !1246)
!1248 = !DILocation(line: 62, column: 3, scope: !1214)
!1249 = !DILocation(line: 62, column: 28, scope: !1214)
!1250 = !DILocation(line: 63, column: 3, scope: !1214)
!1251 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !704, file: !704, line: 31, type: !1252, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!143, !99}
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DILocalVariable(name: "file", arg: 1, scope: !1251, file: !704, line: 31, type: !99)
!1256 = !DILocalVariable(name: "base", scope: !1251, file: !704, line: 33, type: !99)
!1257 = !DILocalVariable(name: "base_lim", scope: !1251, file: !704, line: 39, type: !99)
!1258 = !DILocalVariable(name: "had_slash", scope: !1251, file: !704, line: 40, type: !143)
!1259 = !DILocation(line: 0, scope: !1251)
!1260 = !DILocation(line: 33, column: 16, scope: !1251)
!1261 = !DILocation(line: 37, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1251, file: !704, line: 37, column: 7)
!1263 = !DILocation(line: 37, column: 7, scope: !1251)
!1264 = !DILocation(line: 39, column: 27, scope: !1251)
!1265 = !DILocation(line: 39, column: 25, scope: !1251)
!1266 = !DILocation(line: 40, column: 21, scope: !1251)
!1267 = !DILocation(line: 40, column: 31, scope: !1251)
!1268 = !DILocation(line: 41, column: 13, scope: !1251)
!1269 = !DILocation(line: 42, column: 3, scope: !1251)
!1270 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1271, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !78, !78, !105, !381}
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DILocalVariable(name: "status", arg: 1, scope: !1270, file: !371, line: 251, type: !78)
!1275 = !DILocalVariable(name: "errnum", arg: 2, scope: !1270, file: !371, line: 251, type: !78)
!1276 = !DILocalVariable(name: "message", arg: 3, scope: !1270, file: !371, line: 251, type: !105)
!1277 = !DILocalVariable(name: "args", arg: 4, scope: !1270, file: !371, line: 251, type: !381)
!1278 = !DILocation(line: 0, scope: !1270)
!1279 = !DILocation(line: 261, column: 3, scope: !1270)
!1280 = !DILocation(line: 265, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !371, line: 265, column: 7)
!1282 = !DILocation(line: 265, column: 7, scope: !1270)
!1283 = !DILocation(line: 266, column: 5, scope: !1281)
!1284 = !DILocation(line: 272, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !371, line: 268, column: 5)
!1286 = !DILocation(line: 276, column: 3, scope: !1270)
!1287 = !DILocation(line: 282, column: 1, scope: !1270)
!1288 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !418, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "stdout_fd", scope: !1288, file: !371, line: 166, type: !78)
!1291 = !DILocation(line: 0, scope: !1288)
!1292 = !DILocalVariable(name: "fd", arg: 1, scope: !1293, file: !371, line: 145, type: !78)
!1293 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1137, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1294)
!1294 = !{!1292}
!1295 = !DILocation(line: 0, scope: !1293, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 182, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !371, line: 182, column: 7)
!1298 = !DILocation(line: 157, column: 15, scope: !1293, inlinedAt: !1296)
!1299 = !DILocation(line: 157, column: 12, scope: !1293, inlinedAt: !1296)
!1300 = !DILocation(line: 182, column: 7, scope: !1288)
!1301 = !DILocation(line: 184, column: 5, scope: !1297)
!1302 = !DILocation(line: 185, column: 1, scope: !1288)
!1303 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1271, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1304)
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "status", arg: 1, scope: !1303, file: !371, line: 219, type: !78)
!1306 = !DILocalVariable(name: "errnum", arg: 2, scope: !1303, file: !371, line: 219, type: !78)
!1307 = !DILocalVariable(name: "message", arg: 3, scope: !1303, file: !371, line: 219, type: !105)
!1308 = !DILocalVariable(name: "args", arg: 4, scope: !1303, file: !371, line: 219, type: !381)
!1309 = !DILocation(line: 0, scope: !1303)
!1310 = !DILocation(line: 229, column: 13, scope: !1303)
!1311 = !DILocalVariable(name: "__stream", arg: 1, scope: !1312, file: !843, line: 132, type: !1315)
!1312 = distinct !DISubprogram(name: "vfprintf", scope: !843, file: !843, line: 132, type: !1313, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1350)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!78, !1315, !847, !381}
!1315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1318, file: !160, line: 51, baseType: !78, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1318, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1318, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1318, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1318, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1318, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1318, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1318, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1318, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1318, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1318, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1318, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1318, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1318, file: !160, line: 70, baseType: !1334, size: 64, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1318, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1318, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1318, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1318, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1318, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1318, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1318, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1318, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1318, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1318, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1318, file: !160, line: 93, baseType: !1334, size: 64, offset: 1344)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1318, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1318, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1318, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1318, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!1350 = !{!1311, !1351, !1352}
!1351 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1312, file: !843, line: 133, type: !847)
!1352 = !DILocalVariable(name: "__ap", arg: 3, scope: !1312, file: !843, line: 133, type: !381)
!1353 = !DILocation(line: 0, scope: !1312, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 229, column: 3, scope: !1303)
!1355 = !DILocation(line: 135, column: 10, scope: !1312, inlinedAt: !1354)
!1356 = !DILocation(line: 232, column: 3, scope: !1303)
!1357 = !DILocation(line: 233, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 233, column: 7)
!1359 = !DILocation(line: 233, column: 7, scope: !1303)
!1360 = !DILocalVariable(name: "errnum", arg: 1, scope: !1361, file: !371, line: 188, type: !78)
!1361 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !779, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1362)
!1362 = !{!1360, !1363, !1364}
!1363 = !DILocalVariable(name: "s", scope: !1361, file: !371, line: 190, type: !105)
!1364 = !DILocalVariable(name: "errbuf", scope: !1361, file: !371, line: 193, type: !1365)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1024)
!1368 = !DILocation(line: 0, scope: !1361, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 234, column: 5, scope: !1358)
!1370 = !DILocation(line: 193, column: 3, scope: !1361, inlinedAt: !1369)
!1371 = !DILocation(line: 193, column: 8, scope: !1361, inlinedAt: !1369)
!1372 = !DILocation(line: 195, column: 7, scope: !1361, inlinedAt: !1369)
!1373 = !DILocation(line: 207, column: 9, scope: !1374, inlinedAt: !1369)
!1374 = distinct !DILexicalBlock(scope: !1361, file: !371, line: 207, column: 7)
!1375 = !DILocation(line: 207, column: 7, scope: !1361, inlinedAt: !1369)
!1376 = !DILocation(line: 208, column: 9, scope: !1374, inlinedAt: !1369)
!1377 = !DILocation(line: 208, column: 5, scope: !1374, inlinedAt: !1369)
!1378 = !DILocation(line: 214, column: 3, scope: !1361, inlinedAt: !1369)
!1379 = !DILocation(line: 216, column: 1, scope: !1361, inlinedAt: !1369)
!1380 = !DILocation(line: 234, column: 5, scope: !1358)
!1381 = !DILocation(line: 238, column: 3, scope: !1303)
!1382 = !DILocalVariable(name: "__c", arg: 1, scope: !1383, file: !1136, line: 101, type: !78)
!1383 = distinct !DISubprogram(name: "putc_unlocked", scope: !1136, file: !1136, line: 101, type: !1384, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!78, !78, !1316}
!1386 = !{!1382, !1387}
!1387 = !DILocalVariable(name: "__stream", arg: 2, scope: !1383, file: !1136, line: 101, type: !1316)
!1388 = !DILocation(line: 0, scope: !1383, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 238, column: 3, scope: !1303)
!1390 = !DILocation(line: 103, column: 10, scope: !1383, inlinedAt: !1389)
!1391 = !DILocation(line: 240, column: 3, scope: !1303)
!1392 = !DILocation(line: 241, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 241, column: 7)
!1394 = !DILocation(line: 241, column: 7, scope: !1303)
!1395 = !DILocation(line: 242, column: 5, scope: !1393)
!1396 = !DILocation(line: 243, column: 1, scope: !1303)
!1397 = !DISubprogram(name: "__vfprintf_chk", scope: !843, file: !843, line: 96, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!78, !1315, !78, !847, !381}
!1400 = !DISubprogram(name: "strerror_r", scope: !978, file: !978, line: 444, type: !1401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!99, !78, !99, !102}
!1403 = !DISubprogram(name: "fflush_unlocked", scope: !852, file: !852, line: 239, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!78, !1316}
!1406 = !DISubprogram(name: "fcntl", scope: !1407, file: !1407, line: 149, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1407 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!78, !78, !78, null}
!1410 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1411, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !78, !78, !105, null}
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DILocalVariable(name: "status", arg: 1, scope: !1410, file: !371, line: 285, type: !78)
!1415 = !DILocalVariable(name: "errnum", arg: 2, scope: !1410, file: !371, line: 285, type: !78)
!1416 = !DILocalVariable(name: "message", arg: 3, scope: !1410, file: !371, line: 285, type: !105)
!1417 = !DILocalVariable(name: "ap", scope: !1410, file: !371, line: 287, type: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !852, line: 52, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1420, line: 14, baseType: !1421)
!1420 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !385, baseType: !1422)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !55)
!1423 = !DILocation(line: 0, scope: !1410)
!1424 = !DILocation(line: 287, column: 3, scope: !1410)
!1425 = !DILocation(line: 287, column: 11, scope: !1410)
!1426 = !DILocation(line: 288, column: 3, scope: !1410)
!1427 = !DILocation(line: 289, column: 3, scope: !1410)
!1428 = !DILocation(line: 290, column: 3, scope: !1410)
!1429 = !DILocation(line: 291, column: 1, scope: !1410)
!1430 = !DILocation(line: 0, scope: !378)
!1431 = !DILocation(line: 302, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1433 = !DILocation(line: 302, column: 7, scope: !378)
!1434 = !DILocation(line: 307, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !371, line: 307, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !371, line: 303, column: 5)
!1437 = !DILocation(line: 307, column: 27, scope: !1435)
!1438 = !DILocation(line: 308, column: 11, scope: !1435)
!1439 = !DILocation(line: 308, column: 28, scope: !1435)
!1440 = !DILocation(line: 308, column: 25, scope: !1435)
!1441 = !DILocation(line: 309, column: 15, scope: !1435)
!1442 = !DILocation(line: 309, column: 33, scope: !1435)
!1443 = !DILocation(line: 310, column: 19, scope: !1435)
!1444 = !DILocation(line: 311, column: 22, scope: !1435)
!1445 = !DILocation(line: 311, column: 56, scope: !1435)
!1446 = !DILocation(line: 307, column: 11, scope: !1436)
!1447 = !DILocation(line: 316, column: 21, scope: !1436)
!1448 = !DILocation(line: 317, column: 23, scope: !1436)
!1449 = !DILocation(line: 318, column: 5, scope: !1436)
!1450 = !DILocation(line: 327, column: 3, scope: !378)
!1451 = !DILocation(line: 331, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1453 = !DILocation(line: 331, column: 7, scope: !378)
!1454 = !DILocation(line: 332, column: 5, scope: !1452)
!1455 = !DILocation(line: 338, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !371, line: 334, column: 5)
!1457 = !DILocation(line: 346, column: 3, scope: !378)
!1458 = !DILocation(line: 350, column: 3, scope: !378)
!1459 = !DILocation(line: 356, column: 1, scope: !378)
!1460 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1461, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !78, !78, !105, !84, !105, null}
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469}
!1464 = !DILocalVariable(name: "status", arg: 1, scope: !1460, file: !371, line: 359, type: !78)
!1465 = !DILocalVariable(name: "errnum", arg: 2, scope: !1460, file: !371, line: 359, type: !78)
!1466 = !DILocalVariable(name: "file_name", arg: 3, scope: !1460, file: !371, line: 359, type: !105)
!1467 = !DILocalVariable(name: "line_number", arg: 4, scope: !1460, file: !371, line: 360, type: !84)
!1468 = !DILocalVariable(name: "message", arg: 5, scope: !1460, file: !371, line: 360, type: !105)
!1469 = !DILocalVariable(name: "ap", scope: !1460, file: !371, line: 362, type: !1418)
!1470 = !DILocation(line: 0, scope: !1460)
!1471 = !DILocation(line: 362, column: 3, scope: !1460)
!1472 = !DILocation(line: 362, column: 11, scope: !1460)
!1473 = !DILocation(line: 363, column: 3, scope: !1460)
!1474 = !DILocation(line: 364, column: 3, scope: !1460)
!1475 = !DILocation(line: 366, column: 3, scope: !1460)
!1476 = !DILocation(line: 367, column: 1, scope: !1460)
!1477 = distinct !DISubprogram(name: "getprogname", scope: !706, file: !706, line: 54, type: !1478, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !798)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!105}
!1480 = !DILocation(line: 58, column: 10, scope: !1477)
!1481 = !DILocation(line: 58, column: 3, scope: !1477)
!1482 = distinct !DISubprogram(name: "set_program_name", scope: !423, file: !423, line: 37, type: !808, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "argv0", arg: 1, scope: !1482, file: !423, line: 37, type: !105)
!1485 = !DILocalVariable(name: "slash", scope: !1482, file: !423, line: 44, type: !105)
!1486 = !DILocalVariable(name: "base", scope: !1482, file: !423, line: 45, type: !105)
!1487 = !DILocation(line: 0, scope: !1482)
!1488 = !DILocation(line: 44, column: 23, scope: !1482)
!1489 = !DILocation(line: 45, column: 22, scope: !1482)
!1490 = !DILocation(line: 46, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !423, line: 46, column: 7)
!1492 = !DILocation(line: 46, column: 9, scope: !1491)
!1493 = !DILocation(line: 46, column: 25, scope: !1491)
!1494 = !DILocation(line: 46, column: 40, scope: !1491)
!1495 = !DILocalVariable(name: "__s1", arg: 1, scope: !1496, file: !870, line: 974, type: !1006)
!1496 = distinct !DISubprogram(name: "memeq", scope: !870, file: !870, line: 974, type: !1497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!143, !1006, !1006, !102}
!1499 = !{!1495, !1500, !1501}
!1500 = !DILocalVariable(name: "__s2", arg: 2, scope: !1496, file: !870, line: 974, type: !1006)
!1501 = !DILocalVariable(name: "__n", arg: 3, scope: !1496, file: !870, line: 974, type: !102)
!1502 = !DILocation(line: 0, scope: !1496, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 46, column: 28, scope: !1491)
!1504 = !DILocation(line: 976, column: 11, scope: !1496, inlinedAt: !1503)
!1505 = !DILocation(line: 976, column: 10, scope: !1496, inlinedAt: !1503)
!1506 = !DILocation(line: 46, column: 7, scope: !1482)
!1507 = !DILocation(line: 49, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !423, line: 49, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1491, file: !423, line: 47, column: 5)
!1510 = !DILocation(line: 49, column: 36, scope: !1508)
!1511 = !DILocation(line: 49, column: 11, scope: !1509)
!1512 = !DILocation(line: 65, column: 16, scope: !1482)
!1513 = !DILocation(line: 71, column: 27, scope: !1482)
!1514 = !DILocation(line: 74, column: 33, scope: !1482)
!1515 = !DILocation(line: 76, column: 1, scope: !1482)
!1516 = !DISubprogram(name: "strrchr", scope: !978, file: !978, line: 273, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1517 = !DILocation(line: 0, scope: !432)
!1518 = !DILocation(line: 40, column: 29, scope: !432)
!1519 = !DILocation(line: 41, column: 19, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !432, file: !433, line: 41, column: 7)
!1521 = !DILocation(line: 41, column: 7, scope: !432)
!1522 = !DILocation(line: 47, column: 3, scope: !432)
!1523 = !DILocation(line: 48, column: 3, scope: !432)
!1524 = !DILocation(line: 48, column: 13, scope: !432)
!1525 = !DILocalVariable(name: "ps", arg: 1, scope: !1526, file: !1527, line: 1135, type: !1530)
!1526 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !1528, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1531)
!1527 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1531 = !{!1525}
!1532 = !DILocation(line: 0, scope: !1526, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 48, column: 18, scope: !432)
!1534 = !DILocalVariable(name: "__dest", arg: 1, scope: !1535, file: !1238, line: 57, type: !100)
!1535 = distinct !DISubprogram(name: "memset", scope: !1238, file: !1238, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!100, !100, !78, !102}
!1538 = !{!1534, !1539, !1540}
!1539 = !DILocalVariable(name: "__ch", arg: 2, scope: !1535, file: !1238, line: 57, type: !78)
!1540 = !DILocalVariable(name: "__len", arg: 3, scope: !1535, file: !1238, line: 57, type: !102)
!1541 = !DILocation(line: 0, scope: !1535, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 1137, column: 3, scope: !1526, inlinedAt: !1533)
!1543 = !DILocation(line: 59, column: 10, scope: !1535, inlinedAt: !1542)
!1544 = !DILocation(line: 49, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !432, file: !433, line: 49, column: 7)
!1546 = !DILocation(line: 49, column: 39, scope: !1545)
!1547 = !DILocation(line: 49, column: 44, scope: !1545)
!1548 = !DILocation(line: 54, column: 1, scope: !432)
!1549 = !DISubprogram(name: "mbrtoc32", scope: !444, file: !444, line: 57, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!102, !1552, !847, !102, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1530)
!1555 = distinct !DISubprogram(name: "clone_quoting_options", scope: !463, file: !463, line: 113, type: !1556, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1559)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1559 = !{!1560, !1561, !1562}
!1560 = !DILocalVariable(name: "o", arg: 1, scope: !1555, file: !463, line: 113, type: !1558)
!1561 = !DILocalVariable(name: "saved_errno", scope: !1555, file: !463, line: 115, type: !78)
!1562 = !DILocalVariable(name: "p", scope: !1555, file: !463, line: 116, type: !1558)
!1563 = !DILocation(line: 0, scope: !1555)
!1564 = !DILocation(line: 115, column: 21, scope: !1555)
!1565 = !DILocation(line: 116, column: 40, scope: !1555)
!1566 = !DILocation(line: 116, column: 31, scope: !1555)
!1567 = !DILocation(line: 118, column: 9, scope: !1555)
!1568 = !DILocation(line: 119, column: 3, scope: !1555)
!1569 = distinct !DISubprogram(name: "get_quoting_style", scope: !463, file: !463, line: 124, type: !1570, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1574)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!489, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "o", arg: 1, scope: !1569, file: !463, line: 124, type: !1572)
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 126, column: 11, scope: !1569)
!1578 = !DILocation(line: 126, column: 46, scope: !1569)
!1579 = !{!1580, !791, i64 0}
!1580 = !{!"quoting_options", !791, i64 0, !858, i64 4, !791, i64 8, !790, i64 40, !790, i64 48}
!1581 = !DILocation(line: 126, column: 3, scope: !1569)
!1582 = distinct !DISubprogram(name: "set_quoting_style", scope: !463, file: !463, line: 132, type: !1583, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1558, !489}
!1585 = !{!1586, !1587}
!1586 = !DILocalVariable(name: "o", arg: 1, scope: !1582, file: !463, line: 132, type: !1558)
!1587 = !DILocalVariable(name: "s", arg: 2, scope: !1582, file: !463, line: 132, type: !489)
!1588 = !DILocation(line: 0, scope: !1582)
!1589 = !DILocation(line: 134, column: 4, scope: !1582)
!1590 = !DILocation(line: 134, column: 45, scope: !1582)
!1591 = !DILocation(line: 135, column: 1, scope: !1582)
!1592 = distinct !DISubprogram(name: "set_char_quoting", scope: !463, file: !463, line: 143, type: !1593, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!78, !1558, !4, !78}
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1602, !1603}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1592, file: !463, line: 143, type: !1558)
!1597 = !DILocalVariable(name: "c", arg: 2, scope: !1592, file: !463, line: 143, type: !4)
!1598 = !DILocalVariable(name: "i", arg: 3, scope: !1592, file: !463, line: 143, type: !78)
!1599 = !DILocalVariable(name: "uc", scope: !1592, file: !463, line: 145, type: !107)
!1600 = !DILocalVariable(name: "p", scope: !1592, file: !463, line: 146, type: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1602 = !DILocalVariable(name: "shift", scope: !1592, file: !463, line: 148, type: !78)
!1603 = !DILocalVariable(name: "r", scope: !1592, file: !463, line: 149, type: !84)
!1604 = !DILocation(line: 0, scope: !1592)
!1605 = !DILocation(line: 147, column: 6, scope: !1592)
!1606 = !DILocation(line: 147, column: 41, scope: !1592)
!1607 = !DILocation(line: 147, column: 62, scope: !1592)
!1608 = !DILocation(line: 147, column: 57, scope: !1592)
!1609 = !DILocation(line: 148, column: 15, scope: !1592)
!1610 = !DILocation(line: 149, column: 21, scope: !1592)
!1611 = !DILocation(line: 149, column: 24, scope: !1592)
!1612 = !DILocation(line: 149, column: 34, scope: !1592)
!1613 = !DILocation(line: 150, column: 19, scope: !1592)
!1614 = !DILocation(line: 150, column: 24, scope: !1592)
!1615 = !DILocation(line: 150, column: 6, scope: !1592)
!1616 = !DILocation(line: 151, column: 3, scope: !1592)
!1617 = distinct !DISubprogram(name: "set_quoting_flags", scope: !463, file: !463, line: 159, type: !1618, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!78, !1558, !78}
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1617, file: !463, line: 159, type: !1558)
!1622 = !DILocalVariable(name: "i", arg: 2, scope: !1617, file: !463, line: 159, type: !78)
!1623 = !DILocalVariable(name: "r", scope: !1617, file: !463, line: 163, type: !78)
!1624 = !DILocation(line: 0, scope: !1617)
!1625 = !DILocation(line: 161, column: 8, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1617, file: !463, line: 161, column: 7)
!1627 = !DILocation(line: 161, column: 7, scope: !1617)
!1628 = !DILocation(line: 163, column: 14, scope: !1617)
!1629 = !{!1580, !858, i64 4}
!1630 = !DILocation(line: 164, column: 12, scope: !1617)
!1631 = !DILocation(line: 165, column: 3, scope: !1617)
!1632 = distinct !DISubprogram(name: "set_custom_quoting", scope: !463, file: !463, line: 169, type: !1633, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1558, !105, !105}
!1635 = !{!1636, !1637, !1638}
!1636 = !DILocalVariable(name: "o", arg: 1, scope: !1632, file: !463, line: 169, type: !1558)
!1637 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1632, file: !463, line: 170, type: !105)
!1638 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1632, file: !463, line: 170, type: !105)
!1639 = !DILocation(line: 0, scope: !1632)
!1640 = !DILocation(line: 172, column: 8, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1632, file: !463, line: 172, column: 7)
!1642 = !DILocation(line: 172, column: 7, scope: !1632)
!1643 = !DILocation(line: 174, column: 12, scope: !1632)
!1644 = !DILocation(line: 175, column: 8, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1632, file: !463, line: 175, column: 7)
!1646 = !DILocation(line: 175, column: 19, scope: !1645)
!1647 = !DILocation(line: 176, column: 5, scope: !1645)
!1648 = !DILocation(line: 177, column: 6, scope: !1632)
!1649 = !DILocation(line: 177, column: 17, scope: !1632)
!1650 = !{!1580, !790, i64 40}
!1651 = !DILocation(line: 178, column: 6, scope: !1632)
!1652 = !DILocation(line: 178, column: 18, scope: !1632)
!1653 = !{!1580, !790, i64 48}
!1654 = !DILocation(line: 179, column: 1, scope: !1632)
!1655 = !DISubprogram(name: "abort", scope: !982, file: !982, line: 598, type: !418, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1656 = distinct !DISubprogram(name: "quotearg_buffer", scope: !463, file: !463, line: 774, type: !1657, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!102, !99, !102, !105, !102, !1572}
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1660 = !DILocalVariable(name: "buffer", arg: 1, scope: !1656, file: !463, line: 774, type: !99)
!1661 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1656, file: !463, line: 774, type: !102)
!1662 = !DILocalVariable(name: "arg", arg: 3, scope: !1656, file: !463, line: 775, type: !105)
!1663 = !DILocalVariable(name: "argsize", arg: 4, scope: !1656, file: !463, line: 775, type: !102)
!1664 = !DILocalVariable(name: "o", arg: 5, scope: !1656, file: !463, line: 776, type: !1572)
!1665 = !DILocalVariable(name: "p", scope: !1656, file: !463, line: 778, type: !1572)
!1666 = !DILocalVariable(name: "saved_errno", scope: !1656, file: !463, line: 779, type: !78)
!1667 = !DILocalVariable(name: "r", scope: !1656, file: !463, line: 780, type: !102)
!1668 = !DILocation(line: 0, scope: !1656)
!1669 = !DILocation(line: 778, column: 37, scope: !1656)
!1670 = !DILocation(line: 779, column: 21, scope: !1656)
!1671 = !DILocation(line: 781, column: 43, scope: !1656)
!1672 = !DILocation(line: 781, column: 53, scope: !1656)
!1673 = !DILocation(line: 781, column: 63, scope: !1656)
!1674 = !DILocation(line: 782, column: 43, scope: !1656)
!1675 = !DILocation(line: 782, column: 58, scope: !1656)
!1676 = !DILocation(line: 780, column: 14, scope: !1656)
!1677 = !DILocation(line: 783, column: 9, scope: !1656)
!1678 = !DILocation(line: 784, column: 3, scope: !1656)
!1679 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !463, file: !463, line: 251, type: !1680, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1684)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!102, !99, !102, !105, !102, !489, !78, !1682, !105, !105}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1709, !1711, !1714, !1715, !1716, !1717, !1720, !1721, !1724, !1728, !1729, !1737, !1740, !1741, !1743, !1744, !1745, !1746}
!1685 = !DILocalVariable(name: "buffer", arg: 1, scope: !1679, file: !463, line: 251, type: !99)
!1686 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1679, file: !463, line: 251, type: !102)
!1687 = !DILocalVariable(name: "arg", arg: 3, scope: !1679, file: !463, line: 252, type: !105)
!1688 = !DILocalVariable(name: "argsize", arg: 4, scope: !1679, file: !463, line: 252, type: !102)
!1689 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1679, file: !463, line: 253, type: !489)
!1690 = !DILocalVariable(name: "flags", arg: 6, scope: !1679, file: !463, line: 253, type: !78)
!1691 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1679, file: !463, line: 254, type: !1682)
!1692 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1679, file: !463, line: 255, type: !105)
!1693 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1679, file: !463, line: 256, type: !105)
!1694 = !DILocalVariable(name: "unibyte_locale", scope: !1679, file: !463, line: 258, type: !143)
!1695 = !DILocalVariable(name: "len", scope: !1679, file: !463, line: 260, type: !102)
!1696 = !DILocalVariable(name: "orig_buffersize", scope: !1679, file: !463, line: 261, type: !102)
!1697 = !DILocalVariable(name: "quote_string", scope: !1679, file: !463, line: 262, type: !105)
!1698 = !DILocalVariable(name: "quote_string_len", scope: !1679, file: !463, line: 263, type: !102)
!1699 = !DILocalVariable(name: "backslash_escapes", scope: !1679, file: !463, line: 264, type: !143)
!1700 = !DILocalVariable(name: "elide_outer_quotes", scope: !1679, file: !463, line: 265, type: !143)
!1701 = !DILocalVariable(name: "encountered_single_quote", scope: !1679, file: !463, line: 266, type: !143)
!1702 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1679, file: !463, line: 267, type: !143)
!1703 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1679, file: !463, line: 309, type: !143)
!1704 = !DILocalVariable(name: "lq", scope: !1705, file: !463, line: 361, type: !105)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !463, line: 361, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !463, line: 360, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !463, line: 333, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 312, column: 5)
!1709 = !DILocalVariable(name: "i", scope: !1710, file: !463, line: 395, type: !102)
!1710 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 395, column: 3)
!1711 = !DILocalVariable(name: "is_right_quote", scope: !1712, file: !463, line: 397, type: !143)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !463, line: 396, column: 5)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !463, line: 395, column: 3)
!1714 = !DILocalVariable(name: "escaping", scope: !1712, file: !463, line: 398, type: !143)
!1715 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1712, file: !463, line: 399, type: !143)
!1716 = !DILocalVariable(name: "c", scope: !1712, file: !463, line: 417, type: !107)
!1717 = !DILocalVariable(name: "m", scope: !1718, file: !463, line: 598, type: !102)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 596, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 419, column: 9)
!1720 = !DILocalVariable(name: "printable", scope: !1718, file: !463, line: 600, type: !143)
!1721 = !DILocalVariable(name: "mbs", scope: !1722, file: !463, line: 609, type: !550)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !463, line: 608, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !463, line: 602, column: 17)
!1724 = !DILocalVariable(name: "w", scope: !1725, file: !463, line: 618, type: !443)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !463, line: 617, column: 19)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !463, line: 616, column: 17)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !463, line: 616, column: 17)
!1728 = !DILocalVariable(name: "bytes", scope: !1725, file: !463, line: 619, type: !102)
!1729 = !DILocalVariable(name: "j", scope: !1730, file: !463, line: 648, type: !102)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !463, line: 648, column: 29)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !463, line: 647, column: 27)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !463, line: 645, column: 29)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !463, line: 636, column: 23)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !463, line: 628, column: 30)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !463, line: 623, column: 30)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !463, line: 621, column: 25)
!1737 = !DILocalVariable(name: "ilim", scope: !1738, file: !463, line: 674, type: !102)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !463, line: 671, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1718, file: !463, line: 670, column: 17)
!1740 = !DILabel(scope: !1679, name: "process_input", file: !463, line: 308)
!1741 = !DILabel(scope: !1742, name: "c_and_shell_escape", file: !463, line: 502)
!1742 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 478, column: 9)
!1743 = !DILabel(scope: !1742, name: "c_escape", file: !463, line: 507)
!1744 = !DILabel(scope: !1712, name: "store_escape", file: !463, line: 709)
!1745 = !DILabel(scope: !1712, name: "store_c", file: !463, line: 712)
!1746 = !DILabel(scope: !1679, name: "force_outer_quoting_style", file: !463, line: 753)
!1747 = !DILocation(line: 0, scope: !1679)
!1748 = !DILocation(line: 258, column: 25, scope: !1679)
!1749 = !DILocation(line: 258, column: 36, scope: !1679)
!1750 = !DILocation(line: 265, column: 8, scope: !1679)
!1751 = !DILocation(line: 267, column: 3, scope: !1679)
!1752 = !DILocation(line: 261, column: 10, scope: !1679)
!1753 = !DILocation(line: 262, column: 15, scope: !1679)
!1754 = !DILocation(line: 263, column: 10, scope: !1679)
!1755 = !DILocation(line: 264, column: 8, scope: !1679)
!1756 = !DILocation(line: 266, column: 8, scope: !1679)
!1757 = !DILocation(line: 267, column: 8, scope: !1679)
!1758 = !DILocation(line: 308, column: 2, scope: !1679)
!1759 = !DILocation(line: 311, column: 3, scope: !1679)
!1760 = !DILocation(line: 318, column: 11, scope: !1708)
!1761 = !DILocation(line: 318, column: 12, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1708, file: !463, line: 318, column: 11)
!1763 = !DILocation(line: 319, column: 9, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !463, line: 319, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !463, line: 319, column: 9)
!1766 = !DILocation(line: 319, column: 9, scope: !1765)
!1767 = !DILocation(line: 0, scope: !541, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 357, column: 26, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !463, line: 335, column: 11)
!1770 = distinct !DILexicalBlock(scope: !1707, file: !463, line: 334, column: 13)
!1771 = !DILocation(line: 199, column: 29, scope: !541, inlinedAt: !1768)
!1772 = !DILocation(line: 201, column: 19, scope: !1773, inlinedAt: !1768)
!1773 = distinct !DILexicalBlock(scope: !541, file: !463, line: 201, column: 7)
!1774 = !DILocation(line: 201, column: 7, scope: !541, inlinedAt: !1768)
!1775 = !DILocation(line: 229, column: 3, scope: !541, inlinedAt: !1768)
!1776 = !DILocation(line: 230, column: 3, scope: !541, inlinedAt: !1768)
!1777 = !DILocation(line: 230, column: 13, scope: !541, inlinedAt: !1768)
!1778 = !DILocalVariable(name: "ps", arg: 1, scope: !1779, file: !1527, line: 1135, type: !1782)
!1779 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !1780, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1783)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!1783 = !{!1778}
!1784 = !DILocation(line: 0, scope: !1779, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 230, column: 18, scope: !541, inlinedAt: !1768)
!1786 = !DILocalVariable(name: "__dest", arg: 1, scope: !1787, file: !1238, line: 57, type: !100)
!1787 = distinct !DISubprogram(name: "memset", scope: !1238, file: !1238, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1788)
!1788 = !{!1786, !1789, !1790}
!1789 = !DILocalVariable(name: "__ch", arg: 2, scope: !1787, file: !1238, line: 57, type: !78)
!1790 = !DILocalVariable(name: "__len", arg: 3, scope: !1787, file: !1238, line: 57, type: !102)
!1791 = !DILocation(line: 0, scope: !1787, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 1137, column: 3, scope: !1779, inlinedAt: !1785)
!1793 = !DILocation(line: 59, column: 10, scope: !1787, inlinedAt: !1792)
!1794 = !DILocation(line: 231, column: 7, scope: !1795, inlinedAt: !1768)
!1795 = distinct !DILexicalBlock(scope: !541, file: !463, line: 231, column: 7)
!1796 = !DILocation(line: 231, column: 40, scope: !1795, inlinedAt: !1768)
!1797 = !DILocation(line: 231, column: 45, scope: !1795, inlinedAt: !1768)
!1798 = !DILocation(line: 235, column: 1, scope: !541, inlinedAt: !1768)
!1799 = !DILocation(line: 0, scope: !541, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 358, column: 27, scope: !1769)
!1801 = !DILocation(line: 199, column: 29, scope: !541, inlinedAt: !1800)
!1802 = !DILocation(line: 201, column: 19, scope: !1773, inlinedAt: !1800)
!1803 = !DILocation(line: 201, column: 7, scope: !541, inlinedAt: !1800)
!1804 = !DILocation(line: 229, column: 3, scope: !541, inlinedAt: !1800)
!1805 = !DILocation(line: 230, column: 3, scope: !541, inlinedAt: !1800)
!1806 = !DILocation(line: 230, column: 13, scope: !541, inlinedAt: !1800)
!1807 = !DILocation(line: 0, scope: !1779, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 230, column: 18, scope: !541, inlinedAt: !1800)
!1809 = !DILocation(line: 0, scope: !1787, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 1137, column: 3, scope: !1779, inlinedAt: !1808)
!1811 = !DILocation(line: 59, column: 10, scope: !1787, inlinedAt: !1810)
!1812 = !DILocation(line: 231, column: 7, scope: !1795, inlinedAt: !1800)
!1813 = !DILocation(line: 231, column: 40, scope: !1795, inlinedAt: !1800)
!1814 = !DILocation(line: 231, column: 45, scope: !1795, inlinedAt: !1800)
!1815 = !DILocation(line: 235, column: 1, scope: !541, inlinedAt: !1800)
!1816 = !DILocation(line: 360, column: 14, scope: !1706)
!1817 = !DILocation(line: 360, column: 13, scope: !1707)
!1818 = !DILocation(line: 0, scope: !1705)
!1819 = !DILocation(line: 361, column: 45, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1705, file: !463, line: 361, column: 11)
!1821 = !DILocation(line: 361, column: 11, scope: !1705)
!1822 = !DILocation(line: 362, column: 13, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !463, line: 362, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 362, column: 13)
!1825 = !DILocation(line: 362, column: 13, scope: !1824)
!1826 = !DILocation(line: 361, column: 52, scope: !1820)
!1827 = distinct !{!1827, !1821, !1828, !904}
!1828 = !DILocation(line: 362, column: 13, scope: !1705)
!1829 = !DILocation(line: 260, column: 10, scope: !1679)
!1830 = !DILocation(line: 365, column: 28, scope: !1707)
!1831 = !DILocation(line: 367, column: 7, scope: !1708)
!1832 = !DILocation(line: 370, column: 7, scope: !1708)
!1833 = !DILocation(line: 373, column: 7, scope: !1708)
!1834 = !DILocation(line: 376, column: 12, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1708, file: !463, line: 376, column: 11)
!1836 = !DILocation(line: 376, column: 11, scope: !1708)
!1837 = !DILocation(line: 381, column: 12, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1708, file: !463, line: 381, column: 11)
!1839 = !DILocation(line: 381, column: 11, scope: !1708)
!1840 = !DILocation(line: 382, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !463, line: 382, column: 9)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !463, line: 382, column: 9)
!1843 = !DILocation(line: 382, column: 9, scope: !1842)
!1844 = !DILocation(line: 389, column: 7, scope: !1708)
!1845 = !DILocation(line: 392, column: 7, scope: !1708)
!1846 = !DILocation(line: 0, scope: !1710)
!1847 = !DILocation(line: 395, column: 8, scope: !1710)
!1848 = !DILocation(line: 309, column: 8, scope: !1679)
!1849 = !DILocation(line: 395, scope: !1710)
!1850 = !DILocation(line: 395, column: 34, scope: !1713)
!1851 = !DILocation(line: 395, column: 26, scope: !1713)
!1852 = !DILocation(line: 395, column: 48, scope: !1713)
!1853 = !DILocation(line: 395, column: 55, scope: !1713)
!1854 = !DILocation(line: 395, column: 3, scope: !1710)
!1855 = !DILocation(line: 395, column: 67, scope: !1713)
!1856 = !DILocation(line: 0, scope: !1712)
!1857 = !DILocation(line: 402, column: 11, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 401, column: 11)
!1859 = !DILocation(line: 404, column: 17, scope: !1858)
!1860 = !DILocation(line: 405, column: 39, scope: !1858)
!1861 = !DILocation(line: 409, column: 32, scope: !1858)
!1862 = !DILocation(line: 405, column: 19, scope: !1858)
!1863 = !DILocation(line: 405, column: 15, scope: !1858)
!1864 = !DILocation(line: 410, column: 11, scope: !1858)
!1865 = !DILocation(line: 410, column: 25, scope: !1858)
!1866 = !DILocalVariable(name: "__s1", arg: 1, scope: !1867, file: !870, line: 974, type: !1006)
!1867 = distinct !DISubprogram(name: "memeq", scope: !870, file: !870, line: 974, type: !1497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1868)
!1868 = !{!1866, !1869, !1870}
!1869 = !DILocalVariable(name: "__s2", arg: 2, scope: !1867, file: !870, line: 974, type: !1006)
!1870 = !DILocalVariable(name: "__n", arg: 3, scope: !1867, file: !870, line: 974, type: !102)
!1871 = !DILocation(line: 0, scope: !1867, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 410, column: 14, scope: !1858)
!1873 = !DILocation(line: 976, column: 11, scope: !1867, inlinedAt: !1872)
!1874 = !DILocation(line: 976, column: 10, scope: !1867, inlinedAt: !1872)
!1875 = !DILocation(line: 401, column: 11, scope: !1712)
!1876 = !DILocation(line: 417, column: 25, scope: !1712)
!1877 = !DILocation(line: 418, column: 7, scope: !1712)
!1878 = !DILocation(line: 421, column: 15, scope: !1719)
!1879 = !DILocation(line: 423, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !463, line: 423, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !463, line: 422, column: 13)
!1882 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 421, column: 15)
!1883 = !DILocation(line: 423, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !463, line: 423, column: 15)
!1885 = !DILocation(line: 423, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !463, line: 423, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !463, line: 423, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !463, line: 423, column: 15)
!1889 = !DILocation(line: 423, column: 15, scope: !1887)
!1890 = !DILocation(line: 423, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !463, line: 423, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !463, line: 423, column: 15)
!1893 = !DILocation(line: 423, column: 15, scope: !1892)
!1894 = !DILocation(line: 423, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !463, line: 423, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !463, line: 423, column: 15)
!1897 = !DILocation(line: 423, column: 15, scope: !1896)
!1898 = !DILocation(line: 423, column: 15, scope: !1888)
!1899 = !DILocation(line: 423, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !463, line: 423, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1880, file: !463, line: 423, column: 15)
!1902 = !DILocation(line: 423, column: 15, scope: !1901)
!1903 = !DILocation(line: 431, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1881, file: !463, line: 430, column: 19)
!1905 = !DILocation(line: 431, column: 24, scope: !1904)
!1906 = !DILocation(line: 431, column: 28, scope: !1904)
!1907 = !DILocation(line: 431, column: 38, scope: !1904)
!1908 = !DILocation(line: 431, column: 48, scope: !1904)
!1909 = !DILocation(line: 431, column: 59, scope: !1904)
!1910 = !DILocation(line: 433, column: 19, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !463, line: 433, column: 19)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !463, line: 433, column: 19)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !463, line: 432, column: 17)
!1914 = !DILocation(line: 433, column: 19, scope: !1912)
!1915 = !DILocation(line: 434, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !463, line: 434, column: 19)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !463, line: 434, column: 19)
!1918 = !DILocation(line: 434, column: 19, scope: !1917)
!1919 = !DILocation(line: 435, column: 17, scope: !1913)
!1920 = !DILocation(line: 442, column: 20, scope: !1882)
!1921 = !DILocation(line: 447, column: 11, scope: !1719)
!1922 = !DILocation(line: 450, column: 19, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 448, column: 13)
!1924 = !DILocation(line: 456, column: 19, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !463, line: 455, column: 19)
!1926 = !DILocation(line: 456, column: 24, scope: !1925)
!1927 = !DILocation(line: 456, column: 28, scope: !1925)
!1928 = !DILocation(line: 456, column: 38, scope: !1925)
!1929 = !DILocation(line: 456, column: 47, scope: !1925)
!1930 = !DILocation(line: 456, column: 41, scope: !1925)
!1931 = !DILocation(line: 456, column: 52, scope: !1925)
!1932 = !DILocation(line: 455, column: 19, scope: !1923)
!1933 = !DILocation(line: 457, column: 25, scope: !1925)
!1934 = !DILocation(line: 457, column: 17, scope: !1925)
!1935 = !DILocation(line: 464, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !463, line: 458, column: 19)
!1937 = !DILocation(line: 468, column: 21, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !463, line: 468, column: 21)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !463, line: 468, column: 21)
!1940 = !DILocation(line: 468, column: 21, scope: !1939)
!1941 = !DILocation(line: 469, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !463, line: 469, column: 21)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !463, line: 469, column: 21)
!1944 = !DILocation(line: 469, column: 21, scope: !1943)
!1945 = !DILocation(line: 470, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !463, line: 470, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1936, file: !463, line: 470, column: 21)
!1948 = !DILocation(line: 470, column: 21, scope: !1947)
!1949 = !DILocation(line: 471, column: 21, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !463, line: 471, column: 21)
!1951 = distinct !DILexicalBlock(scope: !1936, file: !463, line: 471, column: 21)
!1952 = !DILocation(line: 471, column: 21, scope: !1951)
!1953 = !DILocation(line: 472, column: 21, scope: !1936)
!1954 = !DILocation(line: 482, column: 33, scope: !1742)
!1955 = !DILocation(line: 483, column: 33, scope: !1742)
!1956 = !DILocation(line: 485, column: 33, scope: !1742)
!1957 = !DILocation(line: 486, column: 33, scope: !1742)
!1958 = !DILocation(line: 487, column: 33, scope: !1742)
!1959 = !DILocation(line: 490, column: 17, scope: !1742)
!1960 = !DILocation(line: 492, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !463, line: 491, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1742, file: !463, line: 490, column: 17)
!1963 = !DILocation(line: 499, column: 35, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1742, file: !463, line: 499, column: 17)
!1965 = !DILocation(line: 499, column: 57, scope: !1964)
!1966 = !DILocation(line: 0, scope: !1742)
!1967 = !DILocation(line: 502, column: 11, scope: !1742)
!1968 = !DILocation(line: 504, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1742, file: !463, line: 503, column: 17)
!1970 = !DILocation(line: 507, column: 11, scope: !1742)
!1971 = !DILocation(line: 508, column: 17, scope: !1742)
!1972 = !DILocation(line: 517, column: 15, scope: !1719)
!1973 = !DILocation(line: 517, column: 40, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 517, column: 15)
!1975 = !DILocation(line: 517, column: 47, scope: !1974)
!1976 = !DILocation(line: 517, column: 18, scope: !1974)
!1977 = !DILocation(line: 521, column: 17, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 521, column: 15)
!1979 = !DILocation(line: 521, column: 15, scope: !1719)
!1980 = !DILocation(line: 525, column: 11, scope: !1719)
!1981 = !DILocation(line: 537, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 536, column: 15)
!1983 = !DILocation(line: 544, column: 15, scope: !1719)
!1984 = !DILocation(line: 546, column: 19, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !463, line: 545, column: 13)
!1986 = distinct !DILexicalBlock(scope: !1719, file: !463, line: 544, column: 15)
!1987 = !DILocation(line: 549, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 549, column: 19)
!1989 = !DILocation(line: 549, column: 30, scope: !1988)
!1990 = !DILocation(line: 558, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !463, line: 558, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 558, column: 15)
!1993 = !DILocation(line: 558, column: 15, scope: !1992)
!1994 = !DILocation(line: 559, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !463, line: 559, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 559, column: 15)
!1997 = !DILocation(line: 559, column: 15, scope: !1996)
!1998 = !DILocation(line: 560, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !463, line: 560, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1985, file: !463, line: 560, column: 15)
!2001 = !DILocation(line: 560, column: 15, scope: !2000)
!2002 = !DILocation(line: 562, column: 13, scope: !1985)
!2003 = !DILocation(line: 602, column: 17, scope: !1718)
!2004 = !DILocation(line: 0, scope: !1718)
!2005 = !DILocation(line: 605, column: 29, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1723, file: !463, line: 603, column: 15)
!2007 = !DILocation(line: 605, column: 27, scope: !2006)
!2008 = !DILocation(line: 668, column: 40, scope: !1718)
!2009 = !DILocation(line: 670, column: 23, scope: !1739)
!2010 = !DILocation(line: 609, column: 17, scope: !1722)
!2011 = !DILocation(line: 609, column: 27, scope: !1722)
!2012 = !DILocation(line: 0, scope: !1779, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 609, column: 32, scope: !1722)
!2014 = !DILocation(line: 0, scope: !1787, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1137, column: 3, scope: !1779, inlinedAt: !2013)
!2016 = !DILocation(line: 59, column: 10, scope: !1787, inlinedAt: !2015)
!2017 = !DILocation(line: 613, column: 29, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1722, file: !463, line: 613, column: 21)
!2019 = !DILocation(line: 613, column: 21, scope: !1722)
!2020 = !DILocation(line: 614, column: 29, scope: !2018)
!2021 = !DILocation(line: 614, column: 19, scope: !2018)
!2022 = !DILocation(line: 618, column: 21, scope: !1725)
!2023 = !DILocation(line: 620, column: 54, scope: !1725)
!2024 = !DILocation(line: 0, scope: !1725)
!2025 = !DILocation(line: 619, column: 36, scope: !1725)
!2026 = !DILocation(line: 621, column: 25, scope: !1725)
!2027 = !DILocation(line: 631, column: 38, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1734, file: !463, line: 629, column: 23)
!2029 = !DILocation(line: 631, column: 48, scope: !2028)
!2030 = !DILocation(line: 665, column: 19, scope: !1726)
!2031 = !DILocation(line: 666, column: 15, scope: !1723)
!2032 = !DILocation(line: 626, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1735, file: !463, line: 624, column: 23)
!2034 = !DILocation(line: 631, column: 51, scope: !2028)
!2035 = !DILocation(line: 631, column: 25, scope: !2028)
!2036 = !DILocation(line: 632, column: 28, scope: !2028)
!2037 = !DILocation(line: 631, column: 34, scope: !2028)
!2038 = distinct !{!2038, !2035, !2036, !904}
!2039 = !DILocation(line: 646, column: 29, scope: !1732)
!2040 = !DILocation(line: 0, scope: !1730)
!2041 = !DILocation(line: 649, column: 49, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1730, file: !463, line: 648, column: 29)
!2043 = !DILocation(line: 649, column: 39, scope: !2042)
!2044 = !DILocation(line: 649, column: 31, scope: !2042)
!2045 = !DILocation(line: 648, column: 60, scope: !2042)
!2046 = !DILocation(line: 648, column: 50, scope: !2042)
!2047 = !DILocation(line: 648, column: 29, scope: !1730)
!2048 = distinct !{!2048, !2047, !2049, !904}
!2049 = !DILocation(line: 654, column: 33, scope: !1730)
!2050 = !DILocation(line: 657, column: 43, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1733, file: !463, line: 657, column: 29)
!2052 = !DILocalVariable(name: "wc", arg: 1, scope: !2053, file: !2054, line: 865, type: !2057)
!2053 = distinct !DISubprogram(name: "c32isprint", scope: !2054, file: !2054, line: 865, type: !2055, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2059)
!2054 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!78, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2058, line: 20, baseType: !84)
!2058 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2059 = !{!2052}
!2060 = !DILocation(line: 0, scope: !2053, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 657, column: 31, scope: !2051)
!2062 = !DILocation(line: 871, column: 10, scope: !2053, inlinedAt: !2061)
!2063 = !DILocation(line: 657, column: 31, scope: !2051)
!2064 = !DILocation(line: 657, column: 29, scope: !1733)
!2065 = !DILocation(line: 664, column: 23, scope: !1725)
!2066 = !DILocation(line: 670, column: 19, scope: !1739)
!2067 = !DILocation(line: 670, column: 45, scope: !1739)
!2068 = !DILocation(line: 674, column: 33, scope: !1738)
!2069 = !DILocation(line: 0, scope: !1738)
!2070 = !DILocation(line: 676, column: 17, scope: !1738)
!2071 = !DILocation(line: 398, column: 12, scope: !1712)
!2072 = !DILocation(line: 678, column: 43, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !463, line: 678, column: 25)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !463, line: 677, column: 19)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !463, line: 676, column: 17)
!2076 = distinct !DILexicalBlock(scope: !1738, file: !463, line: 676, column: 17)
!2077 = !DILocation(line: 680, column: 25, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !463, line: 680, column: 25)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !463, line: 679, column: 23)
!2080 = !DILocation(line: 680, column: 25, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !463, line: 680, column: 25)
!2082 = !DILocation(line: 680, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !463, line: 680, column: 25)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !463, line: 680, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !463, line: 680, column: 25)
!2086 = !DILocation(line: 680, column: 25, scope: !2084)
!2087 = !DILocation(line: 680, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !463, line: 680, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !463, line: 680, column: 25)
!2090 = !DILocation(line: 680, column: 25, scope: !2089)
!2091 = !DILocation(line: 680, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 680, column: 25)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !463, line: 680, column: 25)
!2094 = !DILocation(line: 680, column: 25, scope: !2093)
!2095 = !DILocation(line: 680, column: 25, scope: !2085)
!2096 = !DILocation(line: 680, column: 25, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !463, line: 680, column: 25)
!2098 = distinct !DILexicalBlock(scope: !2078, file: !463, line: 680, column: 25)
!2099 = !DILocation(line: 680, column: 25, scope: !2098)
!2100 = !DILocation(line: 681, column: 25, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !463, line: 681, column: 25)
!2102 = distinct !DILexicalBlock(scope: !2079, file: !463, line: 681, column: 25)
!2103 = !DILocation(line: 681, column: 25, scope: !2102)
!2104 = !DILocation(line: 682, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !463, line: 682, column: 25)
!2106 = distinct !DILexicalBlock(scope: !2079, file: !463, line: 682, column: 25)
!2107 = !DILocation(line: 682, column: 25, scope: !2106)
!2108 = !DILocation(line: 683, column: 38, scope: !2079)
!2109 = !DILocation(line: 683, column: 33, scope: !2079)
!2110 = !DILocation(line: 684, column: 23, scope: !2079)
!2111 = !DILocation(line: 685, column: 30, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2073, file: !463, line: 685, column: 30)
!2113 = !DILocation(line: 685, column: 30, scope: !2073)
!2114 = !DILocation(line: 687, column: 25, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !463, line: 687, column: 25)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !463, line: 687, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !463, line: 686, column: 23)
!2118 = !DILocation(line: 687, column: 25, scope: !2116)
!2119 = !DILocation(line: 689, column: 23, scope: !2117)
!2120 = !DILocation(line: 690, column: 35, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2074, file: !463, line: 690, column: 25)
!2122 = !DILocation(line: 690, column: 30, scope: !2121)
!2123 = !DILocation(line: 690, column: 25, scope: !2074)
!2124 = !DILocation(line: 692, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !463, line: 692, column: 21)
!2126 = distinct !DILexicalBlock(scope: !2074, file: !463, line: 692, column: 21)
!2127 = !DILocation(line: 692, column: 21, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !463, line: 692, column: 21)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !463, line: 692, column: 21)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !463, line: 692, column: 21)
!2131 = !DILocation(line: 692, column: 21, scope: !2129)
!2132 = !DILocation(line: 692, column: 21, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !463, line: 692, column: 21)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !463, line: 692, column: 21)
!2135 = !DILocation(line: 692, column: 21, scope: !2134)
!2136 = !DILocation(line: 692, column: 21, scope: !2130)
!2137 = !DILocation(line: 0, scope: !2074)
!2138 = !DILocation(line: 693, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !463, line: 693, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2074, file: !463, line: 693, column: 21)
!2141 = !DILocation(line: 693, column: 21, scope: !2140)
!2142 = !DILocation(line: 694, column: 25, scope: !2074)
!2143 = !DILocation(line: 676, column: 17, scope: !2075)
!2144 = distinct !{!2144, !2145, !2146}
!2145 = !DILocation(line: 676, column: 17, scope: !2076)
!2146 = !DILocation(line: 695, column: 19, scope: !2076)
!2147 = !DILocation(line: 409, column: 30, scope: !1858)
!2148 = !DILocation(line: 702, column: 34, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 702, column: 11)
!2150 = !DILocation(line: 704, column: 14, scope: !2149)
!2151 = !DILocation(line: 705, column: 14, scope: !2149)
!2152 = !DILocation(line: 705, column: 35, scope: !2149)
!2153 = !DILocation(line: 705, column: 17, scope: !2149)
!2154 = !DILocation(line: 705, column: 47, scope: !2149)
!2155 = !DILocation(line: 705, column: 65, scope: !2149)
!2156 = !DILocation(line: 706, column: 11, scope: !2149)
!2157 = !DILocation(line: 702, column: 11, scope: !1712)
!2158 = !DILocation(line: 395, column: 15, scope: !1710)
!2159 = !DILocation(line: 709, column: 5, scope: !1712)
!2160 = !DILocation(line: 710, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 710, column: 7)
!2162 = !DILocation(line: 710, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2161, file: !463, line: 710, column: 7)
!2164 = !DILocation(line: 710, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !463, line: 710, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !463, line: 710, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !463, line: 710, column: 7)
!2168 = !DILocation(line: 710, column: 7, scope: !2166)
!2169 = !DILocation(line: 710, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !463, line: 710, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !463, line: 710, column: 7)
!2172 = !DILocation(line: 710, column: 7, scope: !2171)
!2173 = !DILocation(line: 710, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !463, line: 710, column: 7)
!2175 = distinct !DILexicalBlock(scope: !2167, file: !463, line: 710, column: 7)
!2176 = !DILocation(line: 710, column: 7, scope: !2175)
!2177 = !DILocation(line: 710, column: 7, scope: !2167)
!2178 = !DILocation(line: 710, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 710, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2161, file: !463, line: 710, column: 7)
!2181 = !DILocation(line: 710, column: 7, scope: !2180)
!2182 = !DILocation(line: 712, column: 5, scope: !1712)
!2183 = !DILocation(line: 713, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !463, line: 713, column: 7)
!2185 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 713, column: 7)
!2186 = !DILocation(line: 417, column: 21, scope: !1712)
!2187 = !DILocation(line: 713, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !463, line: 713, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !463, line: 713, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 713, column: 7)
!2191 = !DILocation(line: 713, column: 7, scope: !2189)
!2192 = !DILocation(line: 713, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !463, line: 713, column: 7)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !463, line: 713, column: 7)
!2195 = !DILocation(line: 713, column: 7, scope: !2194)
!2196 = !DILocation(line: 713, column: 7, scope: !2190)
!2197 = !DILocation(line: 714, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !463, line: 714, column: 7)
!2199 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 714, column: 7)
!2200 = !DILocation(line: 714, column: 7, scope: !2199)
!2201 = !DILocation(line: 716, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1712, file: !463, line: 716, column: 11)
!2203 = !DILocation(line: 716, column: 11, scope: !1712)
!2204 = !DILocation(line: 718, column: 5, scope: !1713)
!2205 = !DILocation(line: 395, column: 82, scope: !1713)
!2206 = !DILocation(line: 395, column: 3, scope: !1713)
!2207 = distinct !{!2207, !1854, !2208, !904}
!2208 = !DILocation(line: 718, column: 5, scope: !1710)
!2209 = !DILocation(line: 720, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 720, column: 7)
!2211 = !DILocation(line: 720, column: 16, scope: !2210)
!2212 = !DILocation(line: 728, column: 51, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 728, column: 7)
!2214 = !DILocation(line: 731, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !463, line: 731, column: 11)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !463, line: 730, column: 5)
!2217 = !DILocation(line: 731, column: 11, scope: !2216)
!2218 = !DILocation(line: 732, column: 16, scope: !2215)
!2219 = !DILocation(line: 732, column: 9, scope: !2215)
!2220 = !DILocation(line: 736, column: 18, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !463, line: 736, column: 16)
!2222 = !DILocation(line: 736, column: 29, scope: !2221)
!2223 = !DILocation(line: 745, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 745, column: 7)
!2225 = !DILocation(line: 745, column: 20, scope: !2224)
!2226 = !DILocation(line: 746, column: 12, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !463, line: 746, column: 5)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !463, line: 746, column: 5)
!2229 = !DILocation(line: 746, column: 5, scope: !2228)
!2230 = !DILocation(line: 747, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !463, line: 747, column: 7)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !463, line: 747, column: 7)
!2233 = !DILocation(line: 747, column: 7, scope: !2232)
!2234 = !DILocation(line: 746, column: 39, scope: !2227)
!2235 = distinct !{!2235, !2229, !2236, !904}
!2236 = !DILocation(line: 747, column: 7, scope: !2228)
!2237 = !DILocation(line: 749, column: 11, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 749, column: 7)
!2239 = !DILocation(line: 749, column: 7, scope: !1679)
!2240 = !DILocation(line: 750, column: 5, scope: !2238)
!2241 = !DILocation(line: 750, column: 17, scope: !2238)
!2242 = !DILocation(line: 753, column: 2, scope: !1679)
!2243 = !DILocation(line: 756, column: 51, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1679, file: !463, line: 756, column: 7)
!2245 = !DILocation(line: 756, column: 21, scope: !2244)
!2246 = !DILocation(line: 760, column: 42, scope: !1679)
!2247 = !DILocation(line: 758, column: 10, scope: !1679)
!2248 = !DILocation(line: 758, column: 3, scope: !1679)
!2249 = !DILocation(line: 762, column: 1, scope: !1679)
!2250 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !982, file: !982, line: 98, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!102}
!2253 = !DISubprogram(name: "iswprint", scope: !2254, file: !2254, line: 120, type: !2055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2255 = distinct !DISubprogram(name: "quotearg_alloc", scope: !463, file: !463, line: 788, type: !2256, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!99, !105, !102, !1572}
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "arg", arg: 1, scope: !2255, file: !463, line: 788, type: !105)
!2260 = !DILocalVariable(name: "argsize", arg: 2, scope: !2255, file: !463, line: 788, type: !102)
!2261 = !DILocalVariable(name: "o", arg: 3, scope: !2255, file: !463, line: 789, type: !1572)
!2262 = !DILocation(line: 0, scope: !2255)
!2263 = !DILocalVariable(name: "arg", arg: 1, scope: !2264, file: !463, line: 801, type: !105)
!2264 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !463, file: !463, line: 801, type: !2265, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!99, !105, !102, !721, !1572}
!2267 = !{!2263, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2268 = !DILocalVariable(name: "argsize", arg: 2, scope: !2264, file: !463, line: 801, type: !102)
!2269 = !DILocalVariable(name: "size", arg: 3, scope: !2264, file: !463, line: 801, type: !721)
!2270 = !DILocalVariable(name: "o", arg: 4, scope: !2264, file: !463, line: 802, type: !1572)
!2271 = !DILocalVariable(name: "p", scope: !2264, file: !463, line: 804, type: !1572)
!2272 = !DILocalVariable(name: "saved_errno", scope: !2264, file: !463, line: 805, type: !78)
!2273 = !DILocalVariable(name: "flags", scope: !2264, file: !463, line: 807, type: !78)
!2274 = !DILocalVariable(name: "bufsize", scope: !2264, file: !463, line: 808, type: !102)
!2275 = !DILocalVariable(name: "buf", scope: !2264, file: !463, line: 812, type: !99)
!2276 = !DILocation(line: 0, scope: !2264, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 791, column: 10, scope: !2255)
!2278 = !DILocation(line: 804, column: 37, scope: !2264, inlinedAt: !2277)
!2279 = !DILocation(line: 805, column: 21, scope: !2264, inlinedAt: !2277)
!2280 = !DILocation(line: 807, column: 18, scope: !2264, inlinedAt: !2277)
!2281 = !DILocation(line: 807, column: 24, scope: !2264, inlinedAt: !2277)
!2282 = !DILocation(line: 808, column: 72, scope: !2264, inlinedAt: !2277)
!2283 = !DILocation(line: 809, column: 56, scope: !2264, inlinedAt: !2277)
!2284 = !DILocation(line: 810, column: 49, scope: !2264, inlinedAt: !2277)
!2285 = !DILocation(line: 811, column: 49, scope: !2264, inlinedAt: !2277)
!2286 = !DILocation(line: 808, column: 20, scope: !2264, inlinedAt: !2277)
!2287 = !DILocation(line: 811, column: 62, scope: !2264, inlinedAt: !2277)
!2288 = !DILocation(line: 812, column: 15, scope: !2264, inlinedAt: !2277)
!2289 = !DILocation(line: 813, column: 60, scope: !2264, inlinedAt: !2277)
!2290 = !DILocation(line: 815, column: 32, scope: !2264, inlinedAt: !2277)
!2291 = !DILocation(line: 815, column: 47, scope: !2264, inlinedAt: !2277)
!2292 = !DILocation(line: 813, column: 3, scope: !2264, inlinedAt: !2277)
!2293 = !DILocation(line: 816, column: 9, scope: !2264, inlinedAt: !2277)
!2294 = !DILocation(line: 791, column: 3, scope: !2255)
!2295 = !DILocation(line: 0, scope: !2264)
!2296 = !DILocation(line: 804, column: 37, scope: !2264)
!2297 = !DILocation(line: 805, column: 21, scope: !2264)
!2298 = !DILocation(line: 807, column: 18, scope: !2264)
!2299 = !DILocation(line: 807, column: 27, scope: !2264)
!2300 = !DILocation(line: 807, column: 24, scope: !2264)
!2301 = !DILocation(line: 808, column: 72, scope: !2264)
!2302 = !DILocation(line: 809, column: 56, scope: !2264)
!2303 = !DILocation(line: 810, column: 49, scope: !2264)
!2304 = !DILocation(line: 811, column: 49, scope: !2264)
!2305 = !DILocation(line: 808, column: 20, scope: !2264)
!2306 = !DILocation(line: 811, column: 62, scope: !2264)
!2307 = !DILocation(line: 812, column: 15, scope: !2264)
!2308 = !DILocation(line: 813, column: 60, scope: !2264)
!2309 = !DILocation(line: 815, column: 32, scope: !2264)
!2310 = !DILocation(line: 815, column: 47, scope: !2264)
!2311 = !DILocation(line: 813, column: 3, scope: !2264)
!2312 = !DILocation(line: 816, column: 9, scope: !2264)
!2313 = !DILocation(line: 817, column: 7, scope: !2264)
!2314 = !DILocation(line: 818, column: 11, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2264, file: !463, line: 817, column: 7)
!2316 = !{!1145, !1145, i64 0}
!2317 = !DILocation(line: 818, column: 5, scope: !2315)
!2318 = !DILocation(line: 819, column: 3, scope: !2264)
!2319 = distinct !DISubprogram(name: "quotearg_free", scope: !463, file: !463, line: 837, type: !418, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2320)
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "sv", scope: !2319, file: !463, line: 839, type: !564)
!2322 = !DILocalVariable(name: "i", scope: !2323, file: !463, line: 840, type: !78)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !463, line: 840, column: 3)
!2324 = !DILocation(line: 839, column: 24, scope: !2319)
!2325 = !DILocation(line: 0, scope: !2319)
!2326 = !DILocation(line: 0, scope: !2323)
!2327 = !DILocation(line: 840, column: 21, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !463, line: 840, column: 3)
!2329 = !DILocation(line: 840, column: 3, scope: !2323)
!2330 = !DILocation(line: 842, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2319, file: !463, line: 842, column: 7)
!2332 = !{!2333, !790, i64 8}
!2333 = !{!"slotvec", !1145, i64 0, !790, i64 8}
!2334 = !DILocation(line: 842, column: 17, scope: !2331)
!2335 = !DILocation(line: 842, column: 7, scope: !2319)
!2336 = !DILocation(line: 841, column: 17, scope: !2328)
!2337 = !DILocation(line: 841, column: 5, scope: !2328)
!2338 = !DILocation(line: 840, column: 32, scope: !2328)
!2339 = distinct !{!2339, !2329, !2340, !904}
!2340 = !DILocation(line: 841, column: 20, scope: !2323)
!2341 = !DILocation(line: 844, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2331, file: !463, line: 843, column: 5)
!2343 = !DILocation(line: 845, column: 21, scope: !2342)
!2344 = !{!2333, !1145, i64 0}
!2345 = !DILocation(line: 846, column: 20, scope: !2342)
!2346 = !DILocation(line: 847, column: 5, scope: !2342)
!2347 = !DILocation(line: 848, column: 10, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2319, file: !463, line: 848, column: 7)
!2349 = !DILocation(line: 848, column: 7, scope: !2319)
!2350 = !DILocation(line: 850, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !463, line: 849, column: 5)
!2352 = !DILocation(line: 851, column: 15, scope: !2351)
!2353 = !DILocation(line: 852, column: 5, scope: !2351)
!2354 = !DILocation(line: 853, column: 10, scope: !2319)
!2355 = !DILocation(line: 854, column: 1, scope: !2319)
!2356 = distinct !DISubprogram(name: "quotearg_n", scope: !463, file: !463, line: 919, type: !975, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2357)
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "n", arg: 1, scope: !2356, file: !463, line: 919, type: !78)
!2359 = !DILocalVariable(name: "arg", arg: 2, scope: !2356, file: !463, line: 919, type: !105)
!2360 = !DILocation(line: 0, scope: !2356)
!2361 = !DILocation(line: 921, column: 10, scope: !2356)
!2362 = !DILocation(line: 921, column: 3, scope: !2356)
!2363 = distinct !DISubprogram(name: "quotearg_n_options", scope: !463, file: !463, line: 866, type: !2364, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!99, !78, !105, !102, !1572}
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2377, !2378, !2380, !2381, !2382}
!2367 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !463, line: 866, type: !78)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !463, line: 866, type: !105)
!2369 = !DILocalVariable(name: "argsize", arg: 3, scope: !2363, file: !463, line: 866, type: !102)
!2370 = !DILocalVariable(name: "options", arg: 4, scope: !2363, file: !463, line: 867, type: !1572)
!2371 = !DILocalVariable(name: "saved_errno", scope: !2363, file: !463, line: 869, type: !78)
!2372 = !DILocalVariable(name: "sv", scope: !2363, file: !463, line: 871, type: !564)
!2373 = !DILocalVariable(name: "nslots_max", scope: !2363, file: !463, line: 873, type: !78)
!2374 = !DILocalVariable(name: "preallocated", scope: !2375, file: !463, line: 879, type: !143)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !463, line: 878, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2363, file: !463, line: 877, column: 7)
!2377 = !DILocalVariable(name: "new_nslots", scope: !2375, file: !463, line: 880, type: !734)
!2378 = !DILocalVariable(name: "size", scope: !2379, file: !463, line: 891, type: !102)
!2379 = distinct !DILexicalBlock(scope: !2363, file: !463, line: 890, column: 3)
!2380 = !DILocalVariable(name: "val", scope: !2379, file: !463, line: 892, type: !99)
!2381 = !DILocalVariable(name: "flags", scope: !2379, file: !463, line: 894, type: !78)
!2382 = !DILocalVariable(name: "qsize", scope: !2379, file: !463, line: 895, type: !102)
!2383 = !DILocation(line: 0, scope: !2363)
!2384 = !DILocation(line: 869, column: 21, scope: !2363)
!2385 = !DILocation(line: 871, column: 24, scope: !2363)
!2386 = !DILocation(line: 874, column: 17, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2363, file: !463, line: 874, column: 7)
!2388 = !DILocation(line: 875, column: 5, scope: !2387)
!2389 = !DILocation(line: 877, column: 7, scope: !2376)
!2390 = !DILocation(line: 877, column: 14, scope: !2376)
!2391 = !DILocation(line: 877, column: 7, scope: !2363)
!2392 = !DILocation(line: 879, column: 31, scope: !2375)
!2393 = !DILocation(line: 0, scope: !2375)
!2394 = !DILocation(line: 880, column: 7, scope: !2375)
!2395 = !DILocation(line: 880, column: 26, scope: !2375)
!2396 = !DILocation(line: 880, column: 13, scope: !2375)
!2397 = !DILocation(line: 882, column: 31, scope: !2375)
!2398 = !DILocation(line: 883, column: 33, scope: !2375)
!2399 = !DILocation(line: 883, column: 42, scope: !2375)
!2400 = !DILocation(line: 883, column: 31, scope: !2375)
!2401 = !DILocation(line: 882, column: 22, scope: !2375)
!2402 = !DILocation(line: 882, column: 15, scope: !2375)
!2403 = !DILocation(line: 884, column: 11, scope: !2375)
!2404 = !DILocation(line: 885, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2375, file: !463, line: 884, column: 11)
!2406 = !{i64 0, i64 8, !2316, i64 8, i64 8, !789}
!2407 = !DILocation(line: 885, column: 9, scope: !2405)
!2408 = !DILocation(line: 886, column: 20, scope: !2375)
!2409 = !DILocation(line: 886, column: 18, scope: !2375)
!2410 = !DILocation(line: 886, column: 32, scope: !2375)
!2411 = !DILocation(line: 886, column: 43, scope: !2375)
!2412 = !DILocation(line: 886, column: 53, scope: !2375)
!2413 = !DILocation(line: 0, scope: !1787, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 886, column: 7, scope: !2375)
!2415 = !DILocation(line: 59, column: 10, scope: !1787, inlinedAt: !2414)
!2416 = !DILocation(line: 887, column: 16, scope: !2375)
!2417 = !DILocation(line: 887, column: 14, scope: !2375)
!2418 = !DILocation(line: 888, column: 5, scope: !2376)
!2419 = !DILocation(line: 888, column: 5, scope: !2375)
!2420 = !DILocation(line: 891, column: 19, scope: !2379)
!2421 = !DILocation(line: 891, column: 25, scope: !2379)
!2422 = !DILocation(line: 0, scope: !2379)
!2423 = !DILocation(line: 892, column: 23, scope: !2379)
!2424 = !DILocation(line: 894, column: 26, scope: !2379)
!2425 = !DILocation(line: 894, column: 32, scope: !2379)
!2426 = !DILocation(line: 896, column: 55, scope: !2379)
!2427 = !DILocation(line: 897, column: 55, scope: !2379)
!2428 = !DILocation(line: 898, column: 55, scope: !2379)
!2429 = !DILocation(line: 899, column: 55, scope: !2379)
!2430 = !DILocation(line: 895, column: 20, scope: !2379)
!2431 = !DILocation(line: 901, column: 14, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2379, file: !463, line: 901, column: 9)
!2433 = !DILocation(line: 901, column: 9, scope: !2379)
!2434 = !DILocation(line: 903, column: 35, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !463, line: 902, column: 7)
!2436 = !DILocation(line: 903, column: 20, scope: !2435)
!2437 = !DILocation(line: 904, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !463, line: 904, column: 13)
!2439 = !DILocation(line: 904, column: 13, scope: !2435)
!2440 = !DILocation(line: 905, column: 11, scope: !2438)
!2441 = !DILocation(line: 906, column: 27, scope: !2435)
!2442 = !DILocation(line: 906, column: 19, scope: !2435)
!2443 = !DILocation(line: 907, column: 69, scope: !2435)
!2444 = !DILocation(line: 909, column: 44, scope: !2435)
!2445 = !DILocation(line: 910, column: 44, scope: !2435)
!2446 = !DILocation(line: 907, column: 9, scope: !2435)
!2447 = !DILocation(line: 911, column: 7, scope: !2435)
!2448 = !DILocation(line: 913, column: 11, scope: !2379)
!2449 = !DILocation(line: 914, column: 5, scope: !2379)
!2450 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !463, file: !463, line: 925, type: !2451, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!99, !78, !105, !102}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !463, line: 925, type: !78)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !463, line: 925, type: !105)
!2456 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !463, line: 925, type: !102)
!2457 = !DILocation(line: 0, scope: !2450)
!2458 = !DILocation(line: 927, column: 10, scope: !2450)
!2459 = !DILocation(line: 927, column: 3, scope: !2450)
!2460 = distinct !DISubprogram(name: "quotearg", scope: !463, file: !463, line: 931, type: !984, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2461)
!2461 = !{!2462}
!2462 = !DILocalVariable(name: "arg", arg: 1, scope: !2460, file: !463, line: 931, type: !105)
!2463 = !DILocation(line: 0, scope: !2460)
!2464 = !DILocation(line: 0, scope: !2356, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 933, column: 10, scope: !2460)
!2466 = !DILocation(line: 921, column: 10, scope: !2356, inlinedAt: !2465)
!2467 = !DILocation(line: 933, column: 3, scope: !2460)
!2468 = distinct !DISubprogram(name: "quotearg_mem", scope: !463, file: !463, line: 937, type: !2469, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!99, !105, !102}
!2471 = !{!2472, !2473}
!2472 = !DILocalVariable(name: "arg", arg: 1, scope: !2468, file: !463, line: 937, type: !105)
!2473 = !DILocalVariable(name: "argsize", arg: 2, scope: !2468, file: !463, line: 937, type: !102)
!2474 = !DILocation(line: 0, scope: !2468)
!2475 = !DILocation(line: 0, scope: !2450, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 939, column: 10, scope: !2468)
!2477 = !DILocation(line: 927, column: 10, scope: !2450, inlinedAt: !2476)
!2478 = !DILocation(line: 939, column: 3, scope: !2468)
!2479 = distinct !DISubprogram(name: "quotearg_n_style", scope: !463, file: !463, line: 943, type: !2480, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!99, !78, !489, !105}
!2482 = !{!2483, !2484, !2485, !2486}
!2483 = !DILocalVariable(name: "n", arg: 1, scope: !2479, file: !463, line: 943, type: !78)
!2484 = !DILocalVariable(name: "s", arg: 2, scope: !2479, file: !463, line: 943, type: !489)
!2485 = !DILocalVariable(name: "arg", arg: 3, scope: !2479, file: !463, line: 943, type: !105)
!2486 = !DILocalVariable(name: "o", scope: !2479, file: !463, line: 945, type: !1573)
!2487 = !DILocation(line: 0, scope: !2479)
!2488 = !DILocation(line: 945, column: 3, scope: !2479)
!2489 = !DILocation(line: 945, column: 32, scope: !2479)
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"quoting_options_from_style: argument 0"}
!2492 = distinct !{!2492, !"quoting_options_from_style"}
!2493 = !DILocation(line: 945, column: 36, scope: !2479)
!2494 = !DILocalVariable(name: "style", arg: 1, scope: !2495, file: !463, line: 183, type: !489)
!2495 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !463, file: !463, line: 183, type: !2496, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!516, !489}
!2498 = !{!2494, !2499}
!2499 = !DILocalVariable(name: "o", scope: !2495, file: !463, line: 185, type: !516)
!2500 = !DILocation(line: 0, scope: !2495, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 945, column: 36, scope: !2479)
!2502 = !DILocation(line: 185, column: 26, scope: !2495, inlinedAt: !2501)
!2503 = !DILocation(line: 186, column: 13, scope: !2504, inlinedAt: !2501)
!2504 = distinct !DILexicalBlock(scope: !2495, file: !463, line: 186, column: 7)
!2505 = !DILocation(line: 186, column: 7, scope: !2495, inlinedAt: !2501)
!2506 = !DILocation(line: 187, column: 5, scope: !2504, inlinedAt: !2501)
!2507 = !DILocation(line: 188, column: 11, scope: !2495, inlinedAt: !2501)
!2508 = !DILocation(line: 946, column: 10, scope: !2479)
!2509 = !DILocation(line: 947, column: 1, scope: !2479)
!2510 = !DILocation(line: 946, column: 3, scope: !2479)
!2511 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !463, file: !463, line: 950, type: !2512, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!99, !78, !489, !105, !102}
!2514 = !{!2515, !2516, !2517, !2518, !2519}
!2515 = !DILocalVariable(name: "n", arg: 1, scope: !2511, file: !463, line: 950, type: !78)
!2516 = !DILocalVariable(name: "s", arg: 2, scope: !2511, file: !463, line: 950, type: !489)
!2517 = !DILocalVariable(name: "arg", arg: 3, scope: !2511, file: !463, line: 951, type: !105)
!2518 = !DILocalVariable(name: "argsize", arg: 4, scope: !2511, file: !463, line: 951, type: !102)
!2519 = !DILocalVariable(name: "o", scope: !2511, file: !463, line: 953, type: !1573)
!2520 = !DILocation(line: 0, scope: !2511)
!2521 = !DILocation(line: 953, column: 3, scope: !2511)
!2522 = !DILocation(line: 953, column: 32, scope: !2511)
!2523 = !{!2524}
!2524 = distinct !{!2524, !2525, !"quoting_options_from_style: argument 0"}
!2525 = distinct !{!2525, !"quoting_options_from_style"}
!2526 = !DILocation(line: 953, column: 36, scope: !2511)
!2527 = !DILocation(line: 0, scope: !2495, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 953, column: 36, scope: !2511)
!2529 = !DILocation(line: 185, column: 26, scope: !2495, inlinedAt: !2528)
!2530 = !DILocation(line: 186, column: 13, scope: !2504, inlinedAt: !2528)
!2531 = !DILocation(line: 186, column: 7, scope: !2495, inlinedAt: !2528)
!2532 = !DILocation(line: 187, column: 5, scope: !2504, inlinedAt: !2528)
!2533 = !DILocation(line: 188, column: 11, scope: !2495, inlinedAt: !2528)
!2534 = !DILocation(line: 954, column: 10, scope: !2511)
!2535 = !DILocation(line: 955, column: 1, scope: !2511)
!2536 = !DILocation(line: 954, column: 3, scope: !2511)
!2537 = distinct !DISubprogram(name: "quotearg_style", scope: !463, file: !463, line: 958, type: !2538, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!99, !489, !105}
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "s", arg: 1, scope: !2537, file: !463, line: 958, type: !489)
!2542 = !DILocalVariable(name: "arg", arg: 2, scope: !2537, file: !463, line: 958, type: !105)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 0, scope: !2479, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 960, column: 10, scope: !2537)
!2546 = !DILocation(line: 945, column: 3, scope: !2479, inlinedAt: !2545)
!2547 = !DILocation(line: 945, column: 32, scope: !2479, inlinedAt: !2545)
!2548 = !{!2549}
!2549 = distinct !{!2549, !2550, !"quoting_options_from_style: argument 0"}
!2550 = distinct !{!2550, !"quoting_options_from_style"}
!2551 = !DILocation(line: 945, column: 36, scope: !2479, inlinedAt: !2545)
!2552 = !DILocation(line: 0, scope: !2495, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 945, column: 36, scope: !2479, inlinedAt: !2545)
!2554 = !DILocation(line: 185, column: 26, scope: !2495, inlinedAt: !2553)
!2555 = !DILocation(line: 186, column: 13, scope: !2504, inlinedAt: !2553)
!2556 = !DILocation(line: 186, column: 7, scope: !2495, inlinedAt: !2553)
!2557 = !DILocation(line: 187, column: 5, scope: !2504, inlinedAt: !2553)
!2558 = !DILocation(line: 188, column: 11, scope: !2495, inlinedAt: !2553)
!2559 = !DILocation(line: 946, column: 10, scope: !2479, inlinedAt: !2545)
!2560 = !DILocation(line: 947, column: 1, scope: !2479, inlinedAt: !2545)
!2561 = !DILocation(line: 960, column: 3, scope: !2537)
!2562 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !463, file: !463, line: 964, type: !2563, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!99, !489, !105, !102}
!2565 = !{!2566, !2567, !2568}
!2566 = !DILocalVariable(name: "s", arg: 1, scope: !2562, file: !463, line: 964, type: !489)
!2567 = !DILocalVariable(name: "arg", arg: 2, scope: !2562, file: !463, line: 964, type: !105)
!2568 = !DILocalVariable(name: "argsize", arg: 3, scope: !2562, file: !463, line: 964, type: !102)
!2569 = !DILocation(line: 0, scope: !2562)
!2570 = !DILocation(line: 0, scope: !2511, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 966, column: 10, scope: !2562)
!2572 = !DILocation(line: 953, column: 3, scope: !2511, inlinedAt: !2571)
!2573 = !DILocation(line: 953, column: 32, scope: !2511, inlinedAt: !2571)
!2574 = !{!2575}
!2575 = distinct !{!2575, !2576, !"quoting_options_from_style: argument 0"}
!2576 = distinct !{!2576, !"quoting_options_from_style"}
!2577 = !DILocation(line: 953, column: 36, scope: !2511, inlinedAt: !2571)
!2578 = !DILocation(line: 0, scope: !2495, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 953, column: 36, scope: !2511, inlinedAt: !2571)
!2580 = !DILocation(line: 185, column: 26, scope: !2495, inlinedAt: !2579)
!2581 = !DILocation(line: 186, column: 13, scope: !2504, inlinedAt: !2579)
!2582 = !DILocation(line: 186, column: 7, scope: !2495, inlinedAt: !2579)
!2583 = !DILocation(line: 187, column: 5, scope: !2504, inlinedAt: !2579)
!2584 = !DILocation(line: 188, column: 11, scope: !2495, inlinedAt: !2579)
!2585 = !DILocation(line: 954, column: 10, scope: !2511, inlinedAt: !2571)
!2586 = !DILocation(line: 955, column: 1, scope: !2511, inlinedAt: !2571)
!2587 = !DILocation(line: 966, column: 3, scope: !2562)
!2588 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !463, file: !463, line: 970, type: !2589, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!99, !105, !102, !4}
!2591 = !{!2592, !2593, !2594, !2595}
!2592 = !DILocalVariable(name: "arg", arg: 1, scope: !2588, file: !463, line: 970, type: !105)
!2593 = !DILocalVariable(name: "argsize", arg: 2, scope: !2588, file: !463, line: 970, type: !102)
!2594 = !DILocalVariable(name: "ch", arg: 3, scope: !2588, file: !463, line: 970, type: !4)
!2595 = !DILocalVariable(name: "options", scope: !2588, file: !463, line: 972, type: !516)
!2596 = !DILocation(line: 0, scope: !2588)
!2597 = !DILocation(line: 972, column: 3, scope: !2588)
!2598 = !DILocation(line: 972, column: 26, scope: !2588)
!2599 = !DILocation(line: 973, column: 13, scope: !2588)
!2600 = !{i64 0, i64 4, !866, i64 4, i64 4, !857, i64 8, i64 32, !866, i64 40, i64 8, !789, i64 48, i64 8, !789}
!2601 = !DILocation(line: 0, scope: !1592, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 974, column: 3, scope: !2588)
!2603 = !DILocation(line: 147, column: 41, scope: !1592, inlinedAt: !2602)
!2604 = !DILocation(line: 147, column: 62, scope: !1592, inlinedAt: !2602)
!2605 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2602)
!2606 = !DILocation(line: 148, column: 15, scope: !1592, inlinedAt: !2602)
!2607 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2602)
!2608 = !DILocation(line: 149, column: 24, scope: !1592, inlinedAt: !2602)
!2609 = !DILocation(line: 150, column: 19, scope: !1592, inlinedAt: !2602)
!2610 = !DILocation(line: 150, column: 24, scope: !1592, inlinedAt: !2602)
!2611 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2602)
!2612 = !DILocation(line: 975, column: 10, scope: !2588)
!2613 = !DILocation(line: 976, column: 1, scope: !2588)
!2614 = !DILocation(line: 975, column: 3, scope: !2588)
!2615 = distinct !DISubprogram(name: "quotearg_char", scope: !463, file: !463, line: 979, type: !2616, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!99, !105, !4}
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "arg", arg: 1, scope: !2615, file: !463, line: 979, type: !105)
!2620 = !DILocalVariable(name: "ch", arg: 2, scope: !2615, file: !463, line: 979, type: !4)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 0, scope: !2588, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 981, column: 10, scope: !2615)
!2624 = !DILocation(line: 972, column: 3, scope: !2588, inlinedAt: !2623)
!2625 = !DILocation(line: 972, column: 26, scope: !2588, inlinedAt: !2623)
!2626 = !DILocation(line: 973, column: 13, scope: !2588, inlinedAt: !2623)
!2627 = !DILocation(line: 0, scope: !1592, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 974, column: 3, scope: !2588, inlinedAt: !2623)
!2629 = !DILocation(line: 147, column: 41, scope: !1592, inlinedAt: !2628)
!2630 = !DILocation(line: 147, column: 62, scope: !1592, inlinedAt: !2628)
!2631 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2628)
!2632 = !DILocation(line: 148, column: 15, scope: !1592, inlinedAt: !2628)
!2633 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2628)
!2634 = !DILocation(line: 149, column: 24, scope: !1592, inlinedAt: !2628)
!2635 = !DILocation(line: 150, column: 19, scope: !1592, inlinedAt: !2628)
!2636 = !DILocation(line: 150, column: 24, scope: !1592, inlinedAt: !2628)
!2637 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2628)
!2638 = !DILocation(line: 975, column: 10, scope: !2588, inlinedAt: !2623)
!2639 = !DILocation(line: 976, column: 1, scope: !2588, inlinedAt: !2623)
!2640 = !DILocation(line: 981, column: 3, scope: !2615)
!2641 = distinct !DISubprogram(name: "quotearg_colon", scope: !463, file: !463, line: 985, type: !984, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2642)
!2642 = !{!2643}
!2643 = !DILocalVariable(name: "arg", arg: 1, scope: !2641, file: !463, line: 985, type: !105)
!2644 = !DILocation(line: 0, scope: !2641)
!2645 = !DILocation(line: 0, scope: !2615, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 987, column: 10, scope: !2641)
!2647 = !DILocation(line: 0, scope: !2588, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 981, column: 10, scope: !2615, inlinedAt: !2646)
!2649 = !DILocation(line: 972, column: 3, scope: !2588, inlinedAt: !2648)
!2650 = !DILocation(line: 972, column: 26, scope: !2588, inlinedAt: !2648)
!2651 = !DILocation(line: 973, column: 13, scope: !2588, inlinedAt: !2648)
!2652 = !DILocation(line: 0, scope: !1592, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 974, column: 3, scope: !2588, inlinedAt: !2648)
!2654 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2653)
!2655 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2653)
!2656 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2653)
!2657 = !DILocation(line: 975, column: 10, scope: !2588, inlinedAt: !2648)
!2658 = !DILocation(line: 976, column: 1, scope: !2588, inlinedAt: !2648)
!2659 = !DILocation(line: 987, column: 3, scope: !2641)
!2660 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !463, file: !463, line: 991, type: !2469, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2661)
!2661 = !{!2662, !2663}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2660, file: !463, line: 991, type: !105)
!2663 = !DILocalVariable(name: "argsize", arg: 2, scope: !2660, file: !463, line: 991, type: !102)
!2664 = !DILocation(line: 0, scope: !2660)
!2665 = !DILocation(line: 0, scope: !2588, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 993, column: 10, scope: !2660)
!2667 = !DILocation(line: 972, column: 3, scope: !2588, inlinedAt: !2666)
!2668 = !DILocation(line: 972, column: 26, scope: !2588, inlinedAt: !2666)
!2669 = !DILocation(line: 973, column: 13, scope: !2588, inlinedAt: !2666)
!2670 = !DILocation(line: 0, scope: !1592, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 974, column: 3, scope: !2588, inlinedAt: !2666)
!2672 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2671)
!2673 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2671)
!2674 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2671)
!2675 = !DILocation(line: 975, column: 10, scope: !2588, inlinedAt: !2666)
!2676 = !DILocation(line: 976, column: 1, scope: !2588, inlinedAt: !2666)
!2677 = !DILocation(line: 993, column: 3, scope: !2660)
!2678 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !463, file: !463, line: 997, type: !2480, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2679)
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !463, line: 997, type: !78)
!2681 = !DILocalVariable(name: "s", arg: 2, scope: !2678, file: !463, line: 997, type: !489)
!2682 = !DILocalVariable(name: "arg", arg: 3, scope: !2678, file: !463, line: 997, type: !105)
!2683 = !DILocalVariable(name: "options", scope: !2678, file: !463, line: 999, type: !516)
!2684 = !DILocation(line: 185, column: 26, scope: !2495, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1000, column: 13, scope: !2678)
!2686 = !DILocation(line: 0, scope: !2678)
!2687 = !DILocation(line: 999, column: 3, scope: !2678)
!2688 = !DILocation(line: 999, column: 26, scope: !2678)
!2689 = !DILocation(line: 0, scope: !2495, inlinedAt: !2685)
!2690 = !DILocation(line: 186, column: 13, scope: !2504, inlinedAt: !2685)
!2691 = !DILocation(line: 186, column: 7, scope: !2495, inlinedAt: !2685)
!2692 = !DILocation(line: 187, column: 5, scope: !2504, inlinedAt: !2685)
!2693 = !{!2694}
!2694 = distinct !{!2694, !2695, !"quoting_options_from_style: argument 0"}
!2695 = distinct !{!2695, !"quoting_options_from_style"}
!2696 = !DILocation(line: 1000, column: 13, scope: !2678)
!2697 = !DILocation(line: 0, scope: !1592, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1001, column: 3, scope: !2678)
!2699 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2698)
!2700 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2698)
!2701 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2698)
!2702 = !DILocation(line: 1002, column: 10, scope: !2678)
!2703 = !DILocation(line: 1003, column: 1, scope: !2678)
!2704 = !DILocation(line: 1002, column: 3, scope: !2678)
!2705 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !463, file: !463, line: 1006, type: !2706, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!99, !78, !105, !105, !105}
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2705, file: !463, line: 1006, type: !78)
!2710 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2705, file: !463, line: 1006, type: !105)
!2711 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2705, file: !463, line: 1007, type: !105)
!2712 = !DILocalVariable(name: "arg", arg: 4, scope: !2705, file: !463, line: 1007, type: !105)
!2713 = !DILocation(line: 0, scope: !2705)
!2714 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !463, line: 1014, type: !78)
!2715 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !463, file: !463, line: 1014, type: !2716, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!99, !78, !105, !105, !105, !102}
!2718 = !{!2714, !2719, !2720, !2721, !2722, !2723}
!2719 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2715, file: !463, line: 1014, type: !105)
!2720 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2715, file: !463, line: 1015, type: !105)
!2721 = !DILocalVariable(name: "arg", arg: 4, scope: !2715, file: !463, line: 1016, type: !105)
!2722 = !DILocalVariable(name: "argsize", arg: 5, scope: !2715, file: !463, line: 1016, type: !102)
!2723 = !DILocalVariable(name: "o", scope: !2715, file: !463, line: 1018, type: !516)
!2724 = !DILocation(line: 0, scope: !2715, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1009, column: 10, scope: !2705)
!2726 = !DILocation(line: 1018, column: 3, scope: !2715, inlinedAt: !2725)
!2727 = !DILocation(line: 1018, column: 26, scope: !2715, inlinedAt: !2725)
!2728 = !DILocation(line: 1018, column: 30, scope: !2715, inlinedAt: !2725)
!2729 = !DILocation(line: 0, scope: !1632, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1019, column: 3, scope: !2715, inlinedAt: !2725)
!2731 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2730)
!2732 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2730)
!2733 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2730)
!2734 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2730)
!2735 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2730)
!2736 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2730)
!2737 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2730)
!2738 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2730)
!2739 = !DILocation(line: 1020, column: 10, scope: !2715, inlinedAt: !2725)
!2740 = !DILocation(line: 1021, column: 1, scope: !2715, inlinedAt: !2725)
!2741 = !DILocation(line: 1009, column: 3, scope: !2705)
!2742 = !DILocation(line: 0, scope: !2715)
!2743 = !DILocation(line: 1018, column: 3, scope: !2715)
!2744 = !DILocation(line: 1018, column: 26, scope: !2715)
!2745 = !DILocation(line: 1018, column: 30, scope: !2715)
!2746 = !DILocation(line: 0, scope: !1632, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1019, column: 3, scope: !2715)
!2748 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2747)
!2749 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2747)
!2750 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2747)
!2751 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2747)
!2752 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2747)
!2753 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2747)
!2754 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2747)
!2755 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2747)
!2756 = !DILocation(line: 1020, column: 10, scope: !2715)
!2757 = !DILocation(line: 1021, column: 1, scope: !2715)
!2758 = !DILocation(line: 1020, column: 3, scope: !2715)
!2759 = distinct !DISubprogram(name: "quotearg_custom", scope: !463, file: !463, line: 1024, type: !2760, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!99, !105, !105, !105}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2759, file: !463, line: 1024, type: !105)
!2764 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2759, file: !463, line: 1024, type: !105)
!2765 = !DILocalVariable(name: "arg", arg: 3, scope: !2759, file: !463, line: 1025, type: !105)
!2766 = !DILocation(line: 0, scope: !2759)
!2767 = !DILocation(line: 0, scope: !2705, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1027, column: 10, scope: !2759)
!2769 = !DILocation(line: 0, scope: !2715, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1009, column: 10, scope: !2705, inlinedAt: !2768)
!2771 = !DILocation(line: 1018, column: 3, scope: !2715, inlinedAt: !2770)
!2772 = !DILocation(line: 1018, column: 26, scope: !2715, inlinedAt: !2770)
!2773 = !DILocation(line: 1018, column: 30, scope: !2715, inlinedAt: !2770)
!2774 = !DILocation(line: 0, scope: !1632, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1019, column: 3, scope: !2715, inlinedAt: !2770)
!2776 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2775)
!2777 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2775)
!2778 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2775)
!2779 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2775)
!2780 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2775)
!2781 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2775)
!2782 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2775)
!2783 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2775)
!2784 = !DILocation(line: 1020, column: 10, scope: !2715, inlinedAt: !2770)
!2785 = !DILocation(line: 1021, column: 1, scope: !2715, inlinedAt: !2770)
!2786 = !DILocation(line: 1027, column: 3, scope: !2759)
!2787 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !463, file: !463, line: 1031, type: !2788, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!99, !105, !105, !105, !102}
!2790 = !{!2791, !2792, !2793, !2794}
!2791 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2787, file: !463, line: 1031, type: !105)
!2792 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2787, file: !463, line: 1031, type: !105)
!2793 = !DILocalVariable(name: "arg", arg: 3, scope: !2787, file: !463, line: 1032, type: !105)
!2794 = !DILocalVariable(name: "argsize", arg: 4, scope: !2787, file: !463, line: 1032, type: !102)
!2795 = !DILocation(line: 0, scope: !2787)
!2796 = !DILocation(line: 0, scope: !2715, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1034, column: 10, scope: !2787)
!2798 = !DILocation(line: 1018, column: 3, scope: !2715, inlinedAt: !2797)
!2799 = !DILocation(line: 1018, column: 26, scope: !2715, inlinedAt: !2797)
!2800 = !DILocation(line: 1018, column: 30, scope: !2715, inlinedAt: !2797)
!2801 = !DILocation(line: 0, scope: !1632, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1019, column: 3, scope: !2715, inlinedAt: !2797)
!2803 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2802)
!2804 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2802)
!2805 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2802)
!2806 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2802)
!2807 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2802)
!2808 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2802)
!2809 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2802)
!2810 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2802)
!2811 = !DILocation(line: 1020, column: 10, scope: !2715, inlinedAt: !2797)
!2812 = !DILocation(line: 1021, column: 1, scope: !2715, inlinedAt: !2797)
!2813 = !DILocation(line: 1034, column: 3, scope: !2787)
!2814 = distinct !DISubprogram(name: "quote_n_mem", scope: !463, file: !463, line: 1049, type: !2815, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!105, !78, !105, !102}
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !463, line: 1049, type: !78)
!2819 = !DILocalVariable(name: "arg", arg: 2, scope: !2814, file: !463, line: 1049, type: !105)
!2820 = !DILocalVariable(name: "argsize", arg: 3, scope: !2814, file: !463, line: 1049, type: !102)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 1051, column: 10, scope: !2814)
!2823 = !DILocation(line: 1051, column: 3, scope: !2814)
!2824 = distinct !DISubprogram(name: "quote_mem", scope: !463, file: !463, line: 1055, type: !2825, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!105, !105, !102}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "arg", arg: 1, scope: !2824, file: !463, line: 1055, type: !105)
!2829 = !DILocalVariable(name: "argsize", arg: 2, scope: !2824, file: !463, line: 1055, type: !102)
!2830 = !DILocation(line: 0, scope: !2824)
!2831 = !DILocation(line: 0, scope: !2814, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1057, column: 10, scope: !2824)
!2833 = !DILocation(line: 1051, column: 10, scope: !2814, inlinedAt: !2832)
!2834 = !DILocation(line: 1057, column: 3, scope: !2824)
!2835 = distinct !DISubprogram(name: "quote_n", scope: !463, file: !463, line: 1061, type: !2836, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!105, !78, !105}
!2838 = !{!2839, !2840}
!2839 = !DILocalVariable(name: "n", arg: 1, scope: !2835, file: !463, line: 1061, type: !78)
!2840 = !DILocalVariable(name: "arg", arg: 2, scope: !2835, file: !463, line: 1061, type: !105)
!2841 = !DILocation(line: 0, scope: !2835)
!2842 = !DILocation(line: 0, scope: !2814, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1063, column: 10, scope: !2835)
!2844 = !DILocation(line: 1051, column: 10, scope: !2814, inlinedAt: !2843)
!2845 = !DILocation(line: 1063, column: 3, scope: !2835)
!2846 = distinct !DISubprogram(name: "quote", scope: !463, file: !463, line: 1067, type: !2847, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!105, !105}
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "arg", arg: 1, scope: !2846, file: !463, line: 1067, type: !105)
!2851 = !DILocation(line: 0, scope: !2846)
!2852 = !DILocation(line: 0, scope: !2835, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1069, column: 10, scope: !2846)
!2854 = !DILocation(line: 0, scope: !2814, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1063, column: 10, scope: !2835, inlinedAt: !2853)
!2856 = !DILocation(line: 1051, column: 10, scope: !2814, inlinedAt: !2855)
!2857 = !DILocation(line: 1069, column: 3, scope: !2846)
!2858 = distinct !DISubprogram(name: "version_etc_arn", scope: !579, file: !579, line: 61, type: !2859, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2896)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2861, !105, !105, !105, !2895, !102}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2863, file: !160, line: 51, baseType: !78, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2863, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2863, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2863, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2863, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2863, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2863, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2863, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2863, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2863, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2863, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2863, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2863, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2863, file: !160, line: 70, baseType: !2879, size: 64, offset: 832)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2863, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2863, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2863, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2863, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2863, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2863, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2863, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2863, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2863, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2863, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2863, file: !160, line: 93, baseType: !2879, size: 64, offset: 1344)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2863, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2863, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2863, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2863, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902}
!2897 = !DILocalVariable(name: "stream", arg: 1, scope: !2858, file: !579, line: 61, type: !2861)
!2898 = !DILocalVariable(name: "command_name", arg: 2, scope: !2858, file: !579, line: 62, type: !105)
!2899 = !DILocalVariable(name: "package", arg: 3, scope: !2858, file: !579, line: 62, type: !105)
!2900 = !DILocalVariable(name: "version", arg: 4, scope: !2858, file: !579, line: 63, type: !105)
!2901 = !DILocalVariable(name: "authors", arg: 5, scope: !2858, file: !579, line: 64, type: !2895)
!2902 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2858, file: !579, line: 64, type: !102)
!2903 = !DILocation(line: 0, scope: !2858)
!2904 = !DILocation(line: 66, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2858, file: !579, line: 66, column: 7)
!2906 = !DILocation(line: 66, column: 7, scope: !2858)
!2907 = !DILocation(line: 67, column: 5, scope: !2905)
!2908 = !DILocation(line: 69, column: 5, scope: !2905)
!2909 = !DILocation(line: 83, column: 3, scope: !2858)
!2910 = !DILocation(line: 85, column: 3, scope: !2858)
!2911 = !DILocation(line: 88, column: 3, scope: !2858)
!2912 = !DILocation(line: 95, column: 3, scope: !2858)
!2913 = !DILocation(line: 97, column: 3, scope: !2858)
!2914 = !DILocation(line: 105, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2858, file: !579, line: 98, column: 5)
!2916 = !DILocation(line: 106, column: 7, scope: !2915)
!2917 = !DILocation(line: 109, column: 7, scope: !2915)
!2918 = !DILocation(line: 110, column: 7, scope: !2915)
!2919 = !DILocation(line: 113, column: 7, scope: !2915)
!2920 = !DILocation(line: 115, column: 7, scope: !2915)
!2921 = !DILocation(line: 120, column: 7, scope: !2915)
!2922 = !DILocation(line: 122, column: 7, scope: !2915)
!2923 = !DILocation(line: 127, column: 7, scope: !2915)
!2924 = !DILocation(line: 129, column: 7, scope: !2915)
!2925 = !DILocation(line: 134, column: 7, scope: !2915)
!2926 = !DILocation(line: 137, column: 7, scope: !2915)
!2927 = !DILocation(line: 142, column: 7, scope: !2915)
!2928 = !DILocation(line: 145, column: 7, scope: !2915)
!2929 = !DILocation(line: 150, column: 7, scope: !2915)
!2930 = !DILocation(line: 154, column: 7, scope: !2915)
!2931 = !DILocation(line: 159, column: 7, scope: !2915)
!2932 = !DILocation(line: 163, column: 7, scope: !2915)
!2933 = !DILocation(line: 170, column: 7, scope: !2915)
!2934 = !DILocation(line: 174, column: 7, scope: !2915)
!2935 = !DILocation(line: 176, column: 1, scope: !2858)
!2936 = distinct !DISubprogram(name: "version_etc_ar", scope: !579, file: !579, line: 183, type: !2937, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2861, !105, !105, !105, !2895}
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945}
!2940 = !DILocalVariable(name: "stream", arg: 1, scope: !2936, file: !579, line: 183, type: !2861)
!2941 = !DILocalVariable(name: "command_name", arg: 2, scope: !2936, file: !579, line: 184, type: !105)
!2942 = !DILocalVariable(name: "package", arg: 3, scope: !2936, file: !579, line: 184, type: !105)
!2943 = !DILocalVariable(name: "version", arg: 4, scope: !2936, file: !579, line: 185, type: !105)
!2944 = !DILocalVariable(name: "authors", arg: 5, scope: !2936, file: !579, line: 185, type: !2895)
!2945 = !DILocalVariable(name: "n_authors", scope: !2936, file: !579, line: 187, type: !102)
!2946 = !DILocation(line: 0, scope: !2936)
!2947 = !DILocation(line: 189, column: 8, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2936, file: !579, line: 189, column: 3)
!2949 = !DILocation(line: 189, scope: !2948)
!2950 = !DILocation(line: 189, column: 23, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !579, line: 189, column: 3)
!2952 = !DILocation(line: 189, column: 3, scope: !2948)
!2953 = !DILocation(line: 189, column: 52, scope: !2951)
!2954 = distinct !{!2954, !2952, !2955, !904}
!2955 = !DILocation(line: 190, column: 5, scope: !2948)
!2956 = !DILocation(line: 191, column: 3, scope: !2936)
!2957 = !DILocation(line: 192, column: 1, scope: !2936)
!2958 = distinct !DISubprogram(name: "version_etc_va", scope: !579, file: !579, line: 199, type: !2959, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2969)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2861, !105, !105, !105, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2963)
!2963 = !{!2964, !2966, !2967, !2968}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2962, file: !2965, line: 192, baseType: !84, size: 32)
!2965 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2962, file: !2965, line: 192, baseType: !84, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2962, file: !2965, line: 192, baseType: !100, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2962, file: !2965, line: 192, baseType: !100, size: 64, offset: 128)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2970 = !DILocalVariable(name: "stream", arg: 1, scope: !2958, file: !579, line: 199, type: !2861)
!2971 = !DILocalVariable(name: "command_name", arg: 2, scope: !2958, file: !579, line: 200, type: !105)
!2972 = !DILocalVariable(name: "package", arg: 3, scope: !2958, file: !579, line: 200, type: !105)
!2973 = !DILocalVariable(name: "version", arg: 4, scope: !2958, file: !579, line: 201, type: !105)
!2974 = !DILocalVariable(name: "authors", arg: 5, scope: !2958, file: !579, line: 201, type: !2961)
!2975 = !DILocalVariable(name: "n_authors", scope: !2958, file: !579, line: 203, type: !102)
!2976 = !DILocalVariable(name: "authtab", scope: !2958, file: !579, line: 204, type: !2977)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !60)
!2978 = !DILocation(line: 0, scope: !2958)
!2979 = !DILocation(line: 204, column: 3, scope: !2958)
!2980 = !DILocation(line: 204, column: 15, scope: !2958)
!2981 = !DILocation(line: 208, column: 35, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !579, line: 206, column: 3)
!2983 = distinct !DILexicalBlock(scope: !2958, file: !579, line: 206, column: 3)
!2984 = !DILocation(line: 208, column: 33, scope: !2982)
!2985 = !DILocation(line: 208, column: 67, scope: !2982)
!2986 = !DILocation(line: 206, column: 3, scope: !2983)
!2987 = !DILocation(line: 208, column: 14, scope: !2982)
!2988 = !DILocation(line: 0, scope: !2983)
!2989 = !DILocation(line: 211, column: 3, scope: !2958)
!2990 = !DILocation(line: 213, column: 1, scope: !2958)
!2991 = distinct !DISubprogram(name: "version_etc", scope: !579, file: !579, line: 230, type: !2992, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !2861, !105, !105, !105, null}
!2994 = !{!2995, !2996, !2997, !2998, !2999}
!2995 = !DILocalVariable(name: "stream", arg: 1, scope: !2991, file: !579, line: 230, type: !2861)
!2996 = !DILocalVariable(name: "command_name", arg: 2, scope: !2991, file: !579, line: 231, type: !105)
!2997 = !DILocalVariable(name: "package", arg: 3, scope: !2991, file: !579, line: 231, type: !105)
!2998 = !DILocalVariable(name: "version", arg: 4, scope: !2991, file: !579, line: 232, type: !105)
!2999 = !DILocalVariable(name: "authors", scope: !2991, file: !579, line: 234, type: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !852, line: 52, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1420, line: 14, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2965, baseType: !3003)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 192, elements: !55)
!3004 = !DILocation(line: 0, scope: !2991)
!3005 = !DILocation(line: 234, column: 3, scope: !2991)
!3006 = !DILocation(line: 234, column: 11, scope: !2991)
!3007 = !DILocation(line: 235, column: 3, scope: !2991)
!3008 = !DILocation(line: 236, column: 3, scope: !2991)
!3009 = !DILocation(line: 237, column: 3, scope: !2991)
!3010 = !DILocation(line: 238, column: 1, scope: !2991)
!3011 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !579, file: !579, line: 241, type: !418, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !798)
!3012 = !DILocation(line: 243, column: 3, scope: !3011)
!3013 = !DILocation(line: 248, column: 3, scope: !3011)
!3014 = !DILocation(line: 254, column: 3, scope: !3011)
!3015 = !DILocation(line: 259, column: 3, scope: !3011)
!3016 = !DILocation(line: 261, column: 1, scope: !3011)
!3017 = distinct !DISubprogram(name: "xnrealloc", scope: !3018, file: !3018, line: 147, type: !3019, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3021)
!3018 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!100, !100, !102, !102}
!3021 = !{!3022, !3023, !3024}
!3022 = !DILocalVariable(name: "p", arg: 1, scope: !3017, file: !3018, line: 147, type: !100)
!3023 = !DILocalVariable(name: "n", arg: 2, scope: !3017, file: !3018, line: 147, type: !102)
!3024 = !DILocalVariable(name: "s", arg: 3, scope: !3017, file: !3018, line: 147, type: !102)
!3025 = !DILocation(line: 0, scope: !3017)
!3026 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !715, line: 83, type: !100)
!3027 = distinct !DISubprogram(name: "xreallocarray", scope: !715, file: !715, line: 83, type: !3019, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3028)
!3028 = !{!3026, !3029, !3030}
!3029 = !DILocalVariable(name: "n", arg: 2, scope: !3027, file: !715, line: 83, type: !102)
!3030 = !DILocalVariable(name: "s", arg: 3, scope: !3027, file: !715, line: 83, type: !102)
!3031 = !DILocation(line: 0, scope: !3027, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 149, column: 10, scope: !3017)
!3033 = !DILocation(line: 85, column: 25, scope: !3027, inlinedAt: !3032)
!3034 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !715, line: 37, type: !100)
!3035 = distinct !DISubprogram(name: "check_nonnull", scope: !715, file: !715, line: 37, type: !3036, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!100, !100}
!3038 = !{!3034}
!3039 = !DILocation(line: 0, scope: !3035, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 85, column: 10, scope: !3027, inlinedAt: !3032)
!3041 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3040)
!3042 = distinct !DILexicalBlock(scope: !3035, file: !715, line: 39, column: 7)
!3043 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3040)
!3044 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3040)
!3045 = !DILocation(line: 149, column: 3, scope: !3017)
!3046 = !DILocation(line: 0, scope: !3027)
!3047 = !DILocation(line: 85, column: 25, scope: !3027)
!3048 = !DILocation(line: 0, scope: !3035, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 85, column: 10, scope: !3027)
!3050 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3049)
!3053 = !DILocation(line: 85, column: 3, scope: !3027)
!3054 = distinct !DISubprogram(name: "xmalloc", scope: !715, file: !715, line: 47, type: !3055, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!100, !102}
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "s", arg: 1, scope: !3054, file: !715, line: 47, type: !102)
!3059 = !DILocation(line: 0, scope: !3054)
!3060 = !DILocation(line: 49, column: 25, scope: !3054)
!3061 = !DILocation(line: 0, scope: !3035, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 49, column: 10, scope: !3054)
!3063 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3062)
!3064 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3062)
!3065 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3062)
!3066 = !DILocation(line: 49, column: 3, scope: !3054)
!3067 = !DISubprogram(name: "malloc", scope: !982, file: !982, line: 540, type: !3055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3068 = distinct !DISubprogram(name: "ximalloc", scope: !715, file: !715, line: 53, type: !3069, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!100, !734}
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "s", arg: 1, scope: !3068, file: !715, line: 53, type: !734)
!3073 = !DILocation(line: 0, scope: !3068)
!3074 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !3076, line: 55, type: !734)
!3075 = distinct !DISubprogram(name: "imalloc", scope: !3076, file: !3076, line: 55, type: !3069, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3077)
!3076 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3077 = !{!3074}
!3078 = !DILocation(line: 0, scope: !3075, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 55, column: 25, scope: !3068)
!3080 = !DILocation(line: 57, column: 26, scope: !3075, inlinedAt: !3079)
!3081 = !DILocation(line: 0, scope: !3035, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 55, column: 10, scope: !3068)
!3083 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3082)
!3086 = !DILocation(line: 55, column: 3, scope: !3068)
!3087 = distinct !DISubprogram(name: "xcharalloc", scope: !715, file: !715, line: 59, type: !3088, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!99, !102}
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !715, line: 59, type: !102)
!3092 = !DILocation(line: 0, scope: !3087)
!3093 = !DILocation(line: 0, scope: !3054, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 61, column: 10, scope: !3087)
!3095 = !DILocation(line: 49, column: 25, scope: !3054, inlinedAt: !3094)
!3096 = !DILocation(line: 0, scope: !3035, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 49, column: 10, scope: !3054, inlinedAt: !3094)
!3098 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3097)
!3099 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3097)
!3100 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3097)
!3101 = !DILocation(line: 61, column: 3, scope: !3087)
!3102 = distinct !DISubprogram(name: "xrealloc", scope: !715, file: !715, line: 68, type: !3103, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!100, !100, !102}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "p", arg: 1, scope: !3102, file: !715, line: 68, type: !100)
!3107 = !DILocalVariable(name: "s", arg: 2, scope: !3102, file: !715, line: 68, type: !102)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocalVariable(name: "ptr", arg: 1, scope: !3110, file: !3111, line: 2057, type: !100)
!3110 = distinct !DISubprogram(name: "rpl_realloc", scope: !3111, file: !3111, line: 2057, type: !3103, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3112)
!3111 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3112 = !{!3109, !3113}
!3113 = !DILocalVariable(name: "size", arg: 2, scope: !3110, file: !3111, line: 2057, type: !102)
!3114 = !DILocation(line: 0, scope: !3110, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 70, column: 25, scope: !3102)
!3116 = !DILocation(line: 2059, column: 24, scope: !3110, inlinedAt: !3115)
!3117 = !DILocation(line: 2059, column: 10, scope: !3110, inlinedAt: !3115)
!3118 = !DILocation(line: 0, scope: !3035, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 70, column: 10, scope: !3102)
!3120 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3119)
!3121 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3119)
!3122 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3119)
!3123 = !DILocation(line: 70, column: 3, scope: !3102)
!3124 = !DISubprogram(name: "realloc", scope: !982, file: !982, line: 551, type: !3103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3125 = distinct !DISubprogram(name: "xirealloc", scope: !715, file: !715, line: 74, type: !3126, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!100, !100, !734}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "p", arg: 1, scope: !3125, file: !715, line: 74, type: !100)
!3130 = !DILocalVariable(name: "s", arg: 2, scope: !3125, file: !715, line: 74, type: !734)
!3131 = !DILocation(line: 0, scope: !3125)
!3132 = !DILocalVariable(name: "p", arg: 1, scope: !3133, file: !3076, line: 66, type: !100)
!3133 = distinct !DISubprogram(name: "irealloc", scope: !3076, file: !3076, line: 66, type: !3126, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3134)
!3134 = !{!3132, !3135}
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !3076, line: 66, type: !734)
!3136 = !DILocation(line: 0, scope: !3133, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 76, column: 25, scope: !3125)
!3138 = !DILocation(line: 0, scope: !3110, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 68, column: 26, scope: !3133, inlinedAt: !3137)
!3140 = !DILocation(line: 2059, column: 24, scope: !3110, inlinedAt: !3139)
!3141 = !DILocation(line: 2059, column: 10, scope: !3110, inlinedAt: !3139)
!3142 = !DILocation(line: 0, scope: !3035, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 76, column: 10, scope: !3125)
!3144 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3143)
!3147 = !DILocation(line: 76, column: 3, scope: !3125)
!3148 = distinct !DISubprogram(name: "xireallocarray", scope: !715, file: !715, line: 89, type: !3149, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!100, !100, !734, !734}
!3151 = !{!3152, !3153, !3154}
!3152 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !715, line: 89, type: !100)
!3153 = !DILocalVariable(name: "n", arg: 2, scope: !3148, file: !715, line: 89, type: !734)
!3154 = !DILocalVariable(name: "s", arg: 3, scope: !3148, file: !715, line: 89, type: !734)
!3155 = !DILocation(line: 0, scope: !3148)
!3156 = !DILocalVariable(name: "p", arg: 1, scope: !3157, file: !3076, line: 98, type: !100)
!3157 = distinct !DISubprogram(name: "ireallocarray", scope: !3076, file: !3076, line: 98, type: !3149, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3158)
!3158 = !{!3156, !3159, !3160}
!3159 = !DILocalVariable(name: "n", arg: 2, scope: !3157, file: !3076, line: 98, type: !734)
!3160 = !DILocalVariable(name: "s", arg: 3, scope: !3157, file: !3076, line: 98, type: !734)
!3161 = !DILocation(line: 0, scope: !3157, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 91, column: 25, scope: !3148)
!3163 = !DILocation(line: 101, column: 13, scope: !3157, inlinedAt: !3162)
!3164 = !DILocation(line: 0, scope: !3035, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 91, column: 10, scope: !3148)
!3166 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3165)
!3169 = !DILocation(line: 91, column: 3, scope: !3148)
!3170 = distinct !DISubprogram(name: "xnmalloc", scope: !715, file: !715, line: 98, type: !3171, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!100, !102, !102}
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3170, file: !715, line: 98, type: !102)
!3175 = !DILocalVariable(name: "s", arg: 2, scope: !3170, file: !715, line: 98, type: !102)
!3176 = !DILocation(line: 0, scope: !3170)
!3177 = !DILocation(line: 0, scope: !3027, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 100, column: 10, scope: !3170)
!3179 = !DILocation(line: 85, column: 25, scope: !3027, inlinedAt: !3178)
!3180 = !DILocation(line: 0, scope: !3035, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 85, column: 10, scope: !3027, inlinedAt: !3178)
!3182 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3181)
!3183 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3181)
!3184 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3181)
!3185 = !DILocation(line: 100, column: 3, scope: !3170)
!3186 = distinct !DISubprogram(name: "xinmalloc", scope: !715, file: !715, line: 104, type: !3187, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!100, !734, !734}
!3189 = !{!3190, !3191}
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !715, line: 104, type: !734)
!3191 = !DILocalVariable(name: "s", arg: 2, scope: !3186, file: !715, line: 104, type: !734)
!3192 = !DILocation(line: 0, scope: !3186)
!3193 = !DILocation(line: 0, scope: !3148, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 106, column: 10, scope: !3186)
!3195 = !DILocation(line: 0, scope: !3157, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 91, column: 25, scope: !3148, inlinedAt: !3194)
!3197 = !DILocation(line: 101, column: 13, scope: !3157, inlinedAt: !3196)
!3198 = !DILocation(line: 0, scope: !3035, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 91, column: 10, scope: !3148, inlinedAt: !3194)
!3200 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3199)
!3201 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3199)
!3202 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3199)
!3203 = !DILocation(line: 106, column: 3, scope: !3186)
!3204 = distinct !DISubprogram(name: "x2realloc", scope: !715, file: !715, line: 116, type: !3205, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!100, !100, !721}
!3207 = !{!3208, !3209}
!3208 = !DILocalVariable(name: "p", arg: 1, scope: !3204, file: !715, line: 116, type: !100)
!3209 = !DILocalVariable(name: "ps", arg: 2, scope: !3204, file: !715, line: 116, type: !721)
!3210 = !DILocation(line: 0, scope: !3204)
!3211 = !DILocation(line: 0, scope: !718, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 118, column: 10, scope: !3204)
!3213 = !DILocation(line: 178, column: 14, scope: !718, inlinedAt: !3212)
!3214 = !DILocation(line: 180, column: 9, scope: !3215, inlinedAt: !3212)
!3215 = distinct !DILexicalBlock(scope: !718, file: !715, line: 180, column: 7)
!3216 = !DILocation(line: 180, column: 7, scope: !718, inlinedAt: !3212)
!3217 = !DILocation(line: 182, column: 13, scope: !3218, inlinedAt: !3212)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !715, line: 182, column: 11)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !715, line: 181, column: 5)
!3220 = !DILocation(line: 182, column: 11, scope: !3219, inlinedAt: !3212)
!3221 = !DILocation(line: 197, column: 11, scope: !3222, inlinedAt: !3212)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !715, line: 197, column: 11)
!3223 = distinct !DILexicalBlock(scope: !3215, file: !715, line: 195, column: 5)
!3224 = !DILocation(line: 197, column: 11, scope: !3223, inlinedAt: !3212)
!3225 = !DILocation(line: 198, column: 9, scope: !3222, inlinedAt: !3212)
!3226 = !DILocation(line: 0, scope: !3027, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 201, column: 7, scope: !718, inlinedAt: !3212)
!3228 = !DILocation(line: 85, column: 25, scope: !3027, inlinedAt: !3227)
!3229 = !DILocation(line: 0, scope: !3035, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 85, column: 10, scope: !3027, inlinedAt: !3227)
!3231 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3230)
!3232 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3230)
!3233 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3230)
!3234 = !DILocation(line: 202, column: 7, scope: !718, inlinedAt: !3212)
!3235 = !DILocation(line: 118, column: 3, scope: !3204)
!3236 = !DILocation(line: 0, scope: !718)
!3237 = !DILocation(line: 178, column: 14, scope: !718)
!3238 = !DILocation(line: 180, column: 9, scope: !3215)
!3239 = !DILocation(line: 180, column: 7, scope: !718)
!3240 = !DILocation(line: 182, column: 13, scope: !3218)
!3241 = !DILocation(line: 182, column: 11, scope: !3219)
!3242 = !DILocation(line: 190, column: 30, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3218, file: !715, line: 183, column: 9)
!3244 = !DILocation(line: 191, column: 16, scope: !3243)
!3245 = !DILocation(line: 191, column: 13, scope: !3243)
!3246 = !DILocation(line: 192, column: 9, scope: !3243)
!3247 = !DILocation(line: 197, column: 11, scope: !3222)
!3248 = !DILocation(line: 197, column: 11, scope: !3223)
!3249 = !DILocation(line: 198, column: 9, scope: !3222)
!3250 = !DILocation(line: 0, scope: !3027, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 201, column: 7, scope: !718)
!3252 = !DILocation(line: 85, column: 25, scope: !3027, inlinedAt: !3251)
!3253 = !DILocation(line: 0, scope: !3035, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 85, column: 10, scope: !3027, inlinedAt: !3251)
!3255 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3254)
!3256 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3254)
!3257 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3254)
!3258 = !DILocation(line: 202, column: 7, scope: !718)
!3259 = !DILocation(line: 203, column: 3, scope: !718)
!3260 = !DILocation(line: 0, scope: !730)
!3261 = !DILocation(line: 230, column: 14, scope: !730)
!3262 = !DILocation(line: 238, column: 7, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !730, file: !715, line: 238, column: 7)
!3264 = !DILocation(line: 238, column: 7, scope: !730)
!3265 = !DILocation(line: 240, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !730, file: !715, line: 240, column: 7)
!3267 = !DILocation(line: 240, column: 18, scope: !3266)
!3268 = !DILocation(line: 253, column: 8, scope: !730)
!3269 = !DILocation(line: 258, column: 27, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !715, line: 257, column: 5)
!3271 = distinct !DILexicalBlock(scope: !730, file: !715, line: 256, column: 7)
!3272 = !DILocation(line: 259, column: 50, scope: !3270)
!3273 = !DILocation(line: 259, column: 32, scope: !3270)
!3274 = !DILocation(line: 260, column: 5, scope: !3270)
!3275 = !DILocation(line: 262, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !730, file: !715, line: 262, column: 7)
!3277 = !DILocation(line: 262, column: 7, scope: !730)
!3278 = !DILocation(line: 263, column: 9, scope: !3276)
!3279 = !DILocation(line: 263, column: 5, scope: !3276)
!3280 = !DILocation(line: 264, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !730, file: !715, line: 264, column: 7)
!3282 = !DILocation(line: 264, column: 14, scope: !3281)
!3283 = !DILocation(line: 265, column: 7, scope: !3281)
!3284 = !DILocation(line: 265, column: 11, scope: !3281)
!3285 = !DILocation(line: 266, column: 11, scope: !3281)
!3286 = !DILocation(line: 267, column: 14, scope: !3281)
!3287 = !DILocation(line: 264, column: 7, scope: !730)
!3288 = !DILocation(line: 268, column: 5, scope: !3281)
!3289 = !DILocation(line: 0, scope: !3102, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 269, column: 8, scope: !730)
!3291 = !DILocation(line: 0, scope: !3110, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 70, column: 25, scope: !3102, inlinedAt: !3290)
!3293 = !DILocation(line: 2059, column: 24, scope: !3110, inlinedAt: !3292)
!3294 = !DILocation(line: 2059, column: 10, scope: !3110, inlinedAt: !3292)
!3295 = !DILocation(line: 0, scope: !3035, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 70, column: 10, scope: !3102, inlinedAt: !3290)
!3297 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3296)
!3300 = !DILocation(line: 270, column: 7, scope: !730)
!3301 = !DILocation(line: 271, column: 3, scope: !730)
!3302 = distinct !DISubprogram(name: "xzalloc", scope: !715, file: !715, line: 279, type: !3055, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "s", arg: 1, scope: !3302, file: !715, line: 279, type: !102)
!3305 = !DILocation(line: 0, scope: !3302)
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !715, line: 294, type: !102)
!3307 = distinct !DISubprogram(name: "xcalloc", scope: !715, file: !715, line: 294, type: !3171, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3308)
!3308 = !{!3306, !3309}
!3309 = !DILocalVariable(name: "s", arg: 2, scope: !3307, file: !715, line: 294, type: !102)
!3310 = !DILocation(line: 0, scope: !3307, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 281, column: 10, scope: !3302)
!3312 = !DILocation(line: 296, column: 25, scope: !3307, inlinedAt: !3311)
!3313 = !DILocation(line: 0, scope: !3035, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 296, column: 10, scope: !3307, inlinedAt: !3311)
!3315 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3314)
!3316 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3314)
!3317 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3314)
!3318 = !DILocation(line: 281, column: 3, scope: !3302)
!3319 = !DISubprogram(name: "calloc", scope: !982, file: !982, line: 543, type: !3171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3320 = !DILocation(line: 0, scope: !3307)
!3321 = !DILocation(line: 296, column: 25, scope: !3307)
!3322 = !DILocation(line: 0, scope: !3035, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 296, column: 10, scope: !3307)
!3324 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3323)
!3325 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3323)
!3326 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3323)
!3327 = !DILocation(line: 296, column: 3, scope: !3307)
!3328 = distinct !DISubprogram(name: "xizalloc", scope: !715, file: !715, line: 285, type: !3069, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3329)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "s", arg: 1, scope: !3328, file: !715, line: 285, type: !734)
!3331 = !DILocation(line: 0, scope: !3328)
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !715, line: 300, type: !734)
!3333 = distinct !DISubprogram(name: "xicalloc", scope: !715, file: !715, line: 300, type: !3187, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3334)
!3334 = !{!3332, !3335}
!3335 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !715, line: 300, type: !734)
!3336 = !DILocation(line: 0, scope: !3333, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 287, column: 10, scope: !3328)
!3338 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !3076, line: 77, type: !734)
!3339 = distinct !DISubprogram(name: "icalloc", scope: !3076, file: !3076, line: 77, type: !3187, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3340)
!3340 = !{!3338, !3341}
!3341 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !3076, line: 77, type: !734)
!3342 = !DILocation(line: 0, scope: !3339, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 302, column: 25, scope: !3333, inlinedAt: !3337)
!3344 = !DILocation(line: 91, column: 10, scope: !3339, inlinedAt: !3343)
!3345 = !DILocation(line: 0, scope: !3035, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 302, column: 10, scope: !3333, inlinedAt: !3337)
!3347 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3346)
!3348 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3346)
!3349 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3346)
!3350 = !DILocation(line: 287, column: 3, scope: !3328)
!3351 = !DILocation(line: 0, scope: !3333)
!3352 = !DILocation(line: 0, scope: !3339, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 302, column: 25, scope: !3333)
!3354 = !DILocation(line: 91, column: 10, scope: !3339, inlinedAt: !3353)
!3355 = !DILocation(line: 0, scope: !3035, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 302, column: 10, scope: !3333)
!3357 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3356)
!3358 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3356)
!3359 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3356)
!3360 = !DILocation(line: 302, column: 3, scope: !3333)
!3361 = distinct !DISubprogram(name: "xmemdup", scope: !715, file: !715, line: 310, type: !3362, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!100, !1006, !102}
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "p", arg: 1, scope: !3361, file: !715, line: 310, type: !1006)
!3366 = !DILocalVariable(name: "s", arg: 2, scope: !3361, file: !715, line: 310, type: !102)
!3367 = !DILocation(line: 0, scope: !3361)
!3368 = !DILocation(line: 0, scope: !3054, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 312, column: 18, scope: !3361)
!3370 = !DILocation(line: 49, column: 25, scope: !3054, inlinedAt: !3369)
!3371 = !DILocation(line: 0, scope: !3035, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 49, column: 10, scope: !3054, inlinedAt: !3369)
!3373 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3372)
!3374 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3372)
!3375 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3372)
!3376 = !DILocalVariable(name: "__dest", arg: 1, scope: !3377, file: !1238, line: 26, type: !1241)
!3377 = distinct !DISubprogram(name: "memcpy", scope: !1238, file: !1238, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3378)
!3378 = !{!3376, !3379, !3380}
!3379 = !DILocalVariable(name: "__src", arg: 2, scope: !3377, file: !1238, line: 26, type: !1005)
!3380 = !DILocalVariable(name: "__len", arg: 3, scope: !3377, file: !1238, line: 26, type: !102)
!3381 = !DILocation(line: 0, scope: !3377, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 312, column: 10, scope: !3361)
!3383 = !DILocation(line: 29, column: 10, scope: !3377, inlinedAt: !3382)
!3384 = !DILocation(line: 312, column: 3, scope: !3361)
!3385 = distinct !DISubprogram(name: "ximemdup", scope: !715, file: !715, line: 316, type: !3386, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!100, !1006, !734}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "p", arg: 1, scope: !3385, file: !715, line: 316, type: !1006)
!3390 = !DILocalVariable(name: "s", arg: 2, scope: !3385, file: !715, line: 316, type: !734)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3068, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 318, column: 18, scope: !3385)
!3394 = !DILocation(line: 0, scope: !3075, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 55, column: 25, scope: !3068, inlinedAt: !3393)
!3396 = !DILocation(line: 57, column: 26, scope: !3075, inlinedAt: !3395)
!3397 = !DILocation(line: 0, scope: !3035, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 55, column: 10, scope: !3068, inlinedAt: !3393)
!3399 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3398)
!3402 = !DILocation(line: 0, scope: !3377, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 318, column: 10, scope: !3385)
!3404 = !DILocation(line: 29, column: 10, scope: !3377, inlinedAt: !3403)
!3405 = !DILocation(line: 318, column: 3, scope: !3385)
!3406 = distinct !DISubprogram(name: "ximemdup0", scope: !715, file: !715, line: 325, type: !3407, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!99, !1006, !734}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "p", arg: 1, scope: !3406, file: !715, line: 325, type: !1006)
!3411 = !DILocalVariable(name: "s", arg: 2, scope: !3406, file: !715, line: 325, type: !734)
!3412 = !DILocalVariable(name: "result", scope: !3406, file: !715, line: 327, type: !99)
!3413 = !DILocation(line: 0, scope: !3406)
!3414 = !DILocation(line: 327, column: 30, scope: !3406)
!3415 = !DILocation(line: 0, scope: !3068, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 327, column: 18, scope: !3406)
!3417 = !DILocation(line: 0, scope: !3075, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 55, column: 25, scope: !3068, inlinedAt: !3416)
!3419 = !DILocation(line: 57, column: 26, scope: !3075, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !3035, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 55, column: 10, scope: !3068, inlinedAt: !3416)
!3422 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3421)
!3425 = !DILocation(line: 328, column: 3, scope: !3406)
!3426 = !DILocation(line: 328, column: 13, scope: !3406)
!3427 = !DILocation(line: 0, scope: !3377, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 329, column: 10, scope: !3406)
!3429 = !DILocation(line: 29, column: 10, scope: !3377, inlinedAt: !3428)
!3430 = !DILocation(line: 329, column: 3, scope: !3406)
!3431 = distinct !DISubprogram(name: "xstrdup", scope: !715, file: !715, line: 335, type: !984, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3432)
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "string", arg: 1, scope: !3431, file: !715, line: 335, type: !105)
!3434 = !DILocation(line: 0, scope: !3431)
!3435 = !DILocation(line: 337, column: 27, scope: !3431)
!3436 = !DILocation(line: 337, column: 43, scope: !3431)
!3437 = !DILocation(line: 0, scope: !3361, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 337, column: 10, scope: !3431)
!3439 = !DILocation(line: 0, scope: !3054, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 312, column: 18, scope: !3361, inlinedAt: !3438)
!3441 = !DILocation(line: 49, column: 25, scope: !3054, inlinedAt: !3440)
!3442 = !DILocation(line: 0, scope: !3035, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 49, column: 10, scope: !3054, inlinedAt: !3440)
!3444 = !DILocation(line: 39, column: 8, scope: !3042, inlinedAt: !3443)
!3445 = !DILocation(line: 39, column: 7, scope: !3035, inlinedAt: !3443)
!3446 = !DILocation(line: 40, column: 5, scope: !3042, inlinedAt: !3443)
!3447 = !DILocation(line: 0, scope: !3377, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 312, column: 10, scope: !3361, inlinedAt: !3438)
!3449 = !DILocation(line: 29, column: 10, scope: !3377, inlinedAt: !3448)
!3450 = !DILocation(line: 337, column: 3, scope: !3431)
!3451 = distinct !DISubprogram(name: "xalloc_die", scope: !675, file: !675, line: 32, type: !418, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3452)
!3452 = !{!3453}
!3453 = !DILocalVariable(name: "__errstatus", scope: !3454, file: !675, line: 34, type: !3455)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !675, line: 34, column: 3)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3456 = !DILocation(line: 34, column: 3, scope: !3454)
!3457 = !DILocation(line: 0, scope: !3454)
!3458 = !DILocation(line: 40, column: 3, scope: !3451)
!3459 = distinct !DISubprogram(name: "last_component", scope: !751, file: !751, line: 29, type: !984, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3460)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DILocalVariable(name: "name", arg: 1, scope: !3459, file: !751, line: 29, type: !105)
!3462 = !DILocalVariable(name: "base", scope: !3459, file: !751, line: 31, type: !105)
!3463 = !DILocalVariable(name: "last_was_slash", scope: !3459, file: !751, line: 35, type: !143)
!3464 = !DILocalVariable(name: "p", scope: !3465, file: !751, line: 36, type: !105)
!3465 = distinct !DILexicalBlock(scope: !3459, file: !751, line: 36, column: 3)
!3466 = !DILocation(line: 0, scope: !3459)
!3467 = !DILocation(line: 32, column: 3, scope: !3459)
!3468 = !DILocation(line: 32, column: 10, scope: !3459)
!3469 = !DILocation(line: 33, column: 9, scope: !3459)
!3470 = distinct !{!3470, !3467, !3469, !904}
!3471 = !DILocation(line: 36, column: 30, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !751, line: 36, column: 3)
!3473 = !DILocation(line: 31, column: 15, scope: !3459)
!3474 = !DILocation(line: 36, scope: !3465)
!3475 = !DILocation(line: 0, scope: !3465)
!3476 = !DILocation(line: 36, column: 3, scope: !3465)
!3477 = !DILocation(line: 47, column: 3, scope: !3459)
!3478 = !DILocation(line: 40, column: 16, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !751, line: 40, column: 16)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !751, line: 38, column: 11)
!3481 = distinct !DILexicalBlock(scope: !3472, file: !751, line: 37, column: 5)
!3482 = !DILocation(line: 40, column: 16, scope: !3480)
!3483 = !DILocation(line: 36, column: 35, scope: !3472)
!3484 = !DILocation(line: 36, column: 3, scope: !3472)
!3485 = distinct !{!3485, !3476, !3486, !904}
!3486 = !DILocation(line: 45, column: 5, scope: !3465)
!3487 = distinct !DISubprogram(name: "base_len", scope: !751, file: !751, line: 51, type: !3488, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!102, !105}
!3490 = !{!3491, !3492, !3493}
!3491 = !DILocalVariable(name: "name", arg: 1, scope: !3487, file: !751, line: 51, type: !105)
!3492 = !DILocalVariable(name: "len", scope: !3487, file: !751, line: 53, type: !102)
!3493 = !DILocalVariable(name: "prefix_len", scope: !3487, file: !751, line: 61, type: !102)
!3494 = !DILocation(line: 0, scope: !3487)
!3495 = !DILocation(line: 54, column: 14, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3487, file: !751, line: 54, column: 3)
!3497 = !DILocation(line: 54, column: 8, scope: !3496)
!3498 = !DILocation(line: 54, scope: !3496)
!3499 = !DILocation(line: 54, column: 32, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !751, line: 54, column: 3)
!3501 = !DILocation(line: 54, column: 38, scope: !3500)
!3502 = !DILocation(line: 54, column: 41, scope: !3500)
!3503 = !DILocation(line: 54, column: 3, scope: !3496)
!3504 = distinct !{!3504, !3503, !3505, !904}
!3505 = !DILocation(line: 55, column: 5, scope: !3496)
!3506 = !DILocation(line: 66, column: 3, scope: !3487)
!3507 = distinct !DISubprogram(name: "close_stream", scope: !753, file: !753, line: 55, type: !3508, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3544)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!78, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3512)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3512, file: !160, line: 51, baseType: !78, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3512, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3512, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3512, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3512, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3512, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3512, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3512, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3512, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3512, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3512, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3512, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3512, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3512, file: !160, line: 70, baseType: !3528, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3512, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3512, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3512, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3512, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3512, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3512, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3512, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3512, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3512, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3512, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3512, file: !160, line: 93, baseType: !3528, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3512, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3512, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3512, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3512, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3544 = !{!3545, !3546, !3548, !3549}
!3545 = !DILocalVariable(name: "stream", arg: 1, scope: !3507, file: !753, line: 55, type: !3510)
!3546 = !DILocalVariable(name: "some_pending", scope: !3507, file: !753, line: 57, type: !3547)
!3547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3548 = !DILocalVariable(name: "prev_fail", scope: !3507, file: !753, line: 58, type: !3547)
!3549 = !DILocalVariable(name: "fclose_fail", scope: !3507, file: !753, line: 59, type: !3547)
!3550 = !DILocation(line: 0, scope: !3507)
!3551 = !DILocation(line: 57, column: 30, scope: !3507)
!3552 = !DILocalVariable(name: "__stream", arg: 1, scope: !3553, file: !1136, line: 135, type: !3510)
!3553 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1136, file: !1136, line: 135, type: !3508, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3554)
!3554 = !{!3552}
!3555 = !DILocation(line: 0, scope: !3553, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 58, column: 27, scope: !3507)
!3557 = !DILocation(line: 137, column: 10, scope: !3553, inlinedAt: !3556)
!3558 = !{!1144, !858, i64 0}
!3559 = !DILocation(line: 58, column: 43, scope: !3507)
!3560 = !DILocation(line: 59, column: 29, scope: !3507)
!3561 = !DILocation(line: 59, column: 45, scope: !3507)
!3562 = !DILocation(line: 69, column: 17, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3507, file: !753, line: 69, column: 7)
!3564 = !DILocation(line: 57, column: 50, scope: !3507)
!3565 = !DILocation(line: 69, column: 33, scope: !3563)
!3566 = !DILocation(line: 69, column: 53, scope: !3563)
!3567 = !DILocation(line: 69, column: 59, scope: !3563)
!3568 = !DILocation(line: 69, column: 7, scope: !3507)
!3569 = !DILocation(line: 71, column: 11, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3563, file: !753, line: 70, column: 5)
!3571 = !DILocation(line: 72, column: 9, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3570, file: !753, line: 71, column: 11)
!3573 = !DILocation(line: 72, column: 15, scope: !3572)
!3574 = !DILocation(line: 77, column: 1, scope: !3507)
!3575 = !DISubprogram(name: "__fpending", scope: !3576, file: !3576, line: 75, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3576 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!102, !3510}
!3579 = distinct !DISubprogram(name: "rpl_fclose", scope: !755, file: !755, line: 58, type: !3580, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3616)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!78, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3584, file: !160, line: 51, baseType: !78, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3584, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3584, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3584, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3584, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3584, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3584, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3584, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3584, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3584, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3584, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3584, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3584, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3584, file: !160, line: 70, baseType: !3600, size: 64, offset: 832)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3584, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3584, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3584, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3584, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3584, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3584, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3584, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3584, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3584, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3584, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3584, file: !160, line: 93, baseType: !3600, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3584, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3584, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3584, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3584, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DILocalVariable(name: "fp", arg: 1, scope: !3579, file: !755, line: 58, type: !3582)
!3618 = !DILocalVariable(name: "saved_errno", scope: !3579, file: !755, line: 60, type: !78)
!3619 = !DILocalVariable(name: "fd", scope: !3579, file: !755, line: 63, type: !78)
!3620 = !DILocalVariable(name: "result", scope: !3579, file: !755, line: 74, type: !78)
!3621 = !DILocation(line: 0, scope: !3579)
!3622 = !DILocation(line: 63, column: 12, scope: !3579)
!3623 = !DILocation(line: 64, column: 10, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3579, file: !755, line: 64, column: 7)
!3625 = !DILocation(line: 64, column: 7, scope: !3579)
!3626 = !DILocation(line: 65, column: 12, scope: !3624)
!3627 = !DILocation(line: 65, column: 5, scope: !3624)
!3628 = !DILocation(line: 70, column: 9, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3579, file: !755, line: 70, column: 7)
!3630 = !DILocation(line: 70, column: 23, scope: !3629)
!3631 = !DILocation(line: 70, column: 33, scope: !3629)
!3632 = !DILocation(line: 70, column: 26, scope: !3629)
!3633 = !DILocation(line: 70, column: 59, scope: !3629)
!3634 = !DILocation(line: 71, column: 7, scope: !3629)
!3635 = !DILocation(line: 71, column: 10, scope: !3629)
!3636 = !DILocation(line: 70, column: 7, scope: !3579)
!3637 = !DILocation(line: 100, column: 12, scope: !3579)
!3638 = !DILocation(line: 105, column: 7, scope: !3579)
!3639 = !DILocation(line: 72, column: 19, scope: !3629)
!3640 = !DILocation(line: 105, column: 19, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3579, file: !755, line: 105, column: 7)
!3642 = !DILocation(line: 107, column: 13, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3641, file: !755, line: 106, column: 5)
!3644 = !DILocation(line: 109, column: 5, scope: !3643)
!3645 = !DILocation(line: 112, column: 1, scope: !3579)
!3646 = !DISubprogram(name: "fileno", scope: !852, file: !852, line: 809, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3647 = !DISubprogram(name: "fclose", scope: !852, file: !852, line: 178, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3648 = !DISubprogram(name: "__freading", scope: !3576, file: !3576, line: 51, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3649 = !DISubprogram(name: "lseek", scope: !1213, file: !1213, line: 339, type: !3650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!182, !78, !182, !78}
!3652 = distinct !DISubprogram(name: "rpl_fflush", scope: !757, file: !757, line: 130, type: !3653, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3689)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!78, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3657, file: !160, line: 51, baseType: !78, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3657, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3657, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3657, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3657, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3657, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3657, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3657, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3657, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3657, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3657, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3657, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3657, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3657, file: !160, line: 70, baseType: !3673, size: 64, offset: 832)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3657, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3657, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3657, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3657, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3657, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3657, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3657, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3657, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3657, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3657, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3657, file: !160, line: 93, baseType: !3673, size: 64, offset: 1344)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3657, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3657, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3657, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3657, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "stream", arg: 1, scope: !3652, file: !757, line: 130, type: !3655)
!3691 = !DILocation(line: 0, scope: !3652)
!3692 = !DILocation(line: 151, column: 14, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3652, file: !757, line: 151, column: 7)
!3694 = !DILocation(line: 151, column: 22, scope: !3693)
!3695 = !DILocation(line: 151, column: 27, scope: !3693)
!3696 = !DILocation(line: 151, column: 7, scope: !3652)
!3697 = !DILocation(line: 152, column: 12, scope: !3693)
!3698 = !DILocation(line: 152, column: 5, scope: !3693)
!3699 = !DILocalVariable(name: "fp", arg: 1, scope: !3700, file: !757, line: 42, type: !3655)
!3700 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !757, file: !757, line: 42, type: !3701, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !3655}
!3703 = !{!3699}
!3704 = !DILocation(line: 0, scope: !3700, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 157, column: 3, scope: !3652)
!3706 = !DILocation(line: 44, column: 12, scope: !3707, inlinedAt: !3705)
!3707 = distinct !DILexicalBlock(scope: !3700, file: !757, line: 44, column: 7)
!3708 = !DILocation(line: 44, column: 19, scope: !3707, inlinedAt: !3705)
!3709 = !DILocation(line: 44, column: 7, scope: !3700, inlinedAt: !3705)
!3710 = !DILocation(line: 46, column: 5, scope: !3707, inlinedAt: !3705)
!3711 = !DILocation(line: 159, column: 10, scope: !3652)
!3712 = !DILocation(line: 159, column: 3, scope: !3652)
!3713 = !DILocation(line: 236, column: 1, scope: !3652)
!3714 = !DISubprogram(name: "fflush", scope: !852, file: !852, line: 230, type: !3653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3715 = distinct !DISubprogram(name: "rpl_fseeko", scope: !759, file: !759, line: 28, type: !3716, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !3753)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!78, !3718, !3752, !78}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3720)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3720, file: !160, line: 51, baseType: !78, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3720, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3720, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3720, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3720, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3720, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3720, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3720, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3720, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3720, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3720, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3720, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3720, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3720, file: !160, line: 70, baseType: !3736, size: 64, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3720, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3720, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3720, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3720, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3720, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3720, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3720, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3720, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3720, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3720, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3720, file: !160, line: 93, baseType: !3736, size: 64, offset: 1344)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3720, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3720, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3720, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3720, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !852, line: 63, baseType: !182)
!3753 = !{!3754, !3755, !3756, !3757}
!3754 = !DILocalVariable(name: "fp", arg: 1, scope: !3715, file: !759, line: 28, type: !3718)
!3755 = !DILocalVariable(name: "offset", arg: 2, scope: !3715, file: !759, line: 28, type: !3752)
!3756 = !DILocalVariable(name: "whence", arg: 3, scope: !3715, file: !759, line: 28, type: !78)
!3757 = !DILocalVariable(name: "pos", scope: !3758, file: !759, line: 123, type: !3752)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !759, line: 119, column: 5)
!3759 = distinct !DILexicalBlock(scope: !3715, file: !759, line: 55, column: 7)
!3760 = !DILocation(line: 0, scope: !3715)
!3761 = !DILocation(line: 55, column: 12, scope: !3759)
!3762 = !{!1144, !790, i64 16}
!3763 = !DILocation(line: 55, column: 33, scope: !3759)
!3764 = !{!1144, !790, i64 8}
!3765 = !DILocation(line: 55, column: 25, scope: !3759)
!3766 = !DILocation(line: 56, column: 7, scope: !3759)
!3767 = !DILocation(line: 56, column: 15, scope: !3759)
!3768 = !DILocation(line: 56, column: 37, scope: !3759)
!3769 = !{!1144, !790, i64 32}
!3770 = !DILocation(line: 56, column: 29, scope: !3759)
!3771 = !DILocation(line: 57, column: 7, scope: !3759)
!3772 = !DILocation(line: 57, column: 15, scope: !3759)
!3773 = !{!1144, !790, i64 72}
!3774 = !DILocation(line: 57, column: 29, scope: !3759)
!3775 = !DILocation(line: 55, column: 7, scope: !3715)
!3776 = !DILocation(line: 123, column: 26, scope: !3758)
!3777 = !DILocation(line: 123, column: 19, scope: !3758)
!3778 = !DILocation(line: 0, scope: !3758)
!3779 = !DILocation(line: 124, column: 15, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3758, file: !759, line: 124, column: 11)
!3781 = !DILocation(line: 124, column: 11, scope: !3758)
!3782 = !DILocation(line: 135, column: 19, scope: !3758)
!3783 = !DILocation(line: 136, column: 12, scope: !3758)
!3784 = !DILocation(line: 136, column: 20, scope: !3758)
!3785 = !{!1144, !1145, i64 144}
!3786 = !DILocation(line: 167, column: 7, scope: !3758)
!3787 = !DILocation(line: 169, column: 10, scope: !3715)
!3788 = !DILocation(line: 169, column: 3, scope: !3715)
!3789 = !DILocation(line: 170, column: 1, scope: !3715)
!3790 = !DISubprogram(name: "fseeko", scope: !852, file: !852, line: 736, type: !3791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!78, !3718, !182, !78}
!3793 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !682, file: !682, line: 100, type: !3794, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3797)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!102, !1553, !105, !102, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DILocalVariable(name: "pwc", arg: 1, scope: !3793, file: !682, line: 100, type: !1553)
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3793, file: !682, line: 100, type: !105)
!3800 = !DILocalVariable(name: "n", arg: 3, scope: !3793, file: !682, line: 100, type: !102)
!3801 = !DILocalVariable(name: "ps", arg: 4, scope: !3793, file: !682, line: 100, type: !3796)
!3802 = !DILocalVariable(name: "ret", scope: !3793, file: !682, line: 130, type: !102)
!3803 = !DILocation(line: 0, scope: !3793)
!3804 = !DILocation(line: 105, column: 9, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3793, file: !682, line: 105, column: 7)
!3806 = !DILocation(line: 105, column: 7, scope: !3793)
!3807 = !DILocation(line: 117, column: 10, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3793, file: !682, line: 117, column: 7)
!3809 = !DILocation(line: 117, column: 7, scope: !3793)
!3810 = !DILocation(line: 130, column: 16, scope: !3793)
!3811 = !DILocation(line: 135, column: 11, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3793, file: !682, line: 135, column: 7)
!3813 = !DILocation(line: 135, column: 25, scope: !3812)
!3814 = !DILocation(line: 135, column: 30, scope: !3812)
!3815 = !DILocation(line: 135, column: 7, scope: !3793)
!3816 = !DILocalVariable(name: "ps", arg: 1, scope: !3817, file: !1527, line: 1135, type: !3796)
!3817 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !3818, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3796}
!3820 = !{!3816}
!3821 = !DILocation(line: 0, scope: !3817, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 137, column: 5, scope: !3812)
!3823 = !DILocalVariable(name: "__dest", arg: 1, scope: !3824, file: !1238, line: 57, type: !100)
!3824 = distinct !DISubprogram(name: "memset", scope: !1238, file: !1238, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3825)
!3825 = !{!3823, !3826, !3827}
!3826 = !DILocalVariable(name: "__ch", arg: 2, scope: !3824, file: !1238, line: 57, type: !78)
!3827 = !DILocalVariable(name: "__len", arg: 3, scope: !3824, file: !1238, line: 57, type: !102)
!3828 = !DILocation(line: 0, scope: !3824, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1137, column: 3, scope: !3817, inlinedAt: !3822)
!3830 = !DILocation(line: 59, column: 10, scope: !3824, inlinedAt: !3829)
!3831 = !DILocation(line: 137, column: 5, scope: !3812)
!3832 = !DILocation(line: 138, column: 11, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3793, file: !682, line: 138, column: 7)
!3834 = !DILocation(line: 138, column: 7, scope: !3793)
!3835 = !DILocation(line: 139, column: 5, scope: !3833)
!3836 = !DILocation(line: 143, column: 26, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3793, file: !682, line: 143, column: 7)
!3838 = !DILocation(line: 143, column: 41, scope: !3837)
!3839 = !DILocation(line: 143, column: 7, scope: !3793)
!3840 = !DILocation(line: 145, column: 15, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !682, line: 145, column: 11)
!3842 = distinct !DILexicalBlock(scope: !3837, file: !682, line: 144, column: 5)
!3843 = !DILocation(line: 145, column: 11, scope: !3842)
!3844 = !DILocation(line: 146, column: 32, scope: !3841)
!3845 = !DILocation(line: 146, column: 16, scope: !3841)
!3846 = !DILocation(line: 146, column: 14, scope: !3841)
!3847 = !DILocation(line: 146, column: 9, scope: !3841)
!3848 = !DILocation(line: 286, column: 1, scope: !3793)
!3849 = !DISubprogram(name: "mbsinit", scope: !3850, file: !3850, line: 293, type: !3851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3850 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!78, !3853}
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!3855 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !761, file: !761, line: 27, type: !3019, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3856)
!3856 = !{!3857, !3858, !3859, !3860}
!3857 = !DILocalVariable(name: "ptr", arg: 1, scope: !3855, file: !761, line: 27, type: !100)
!3858 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3855, file: !761, line: 27, type: !102)
!3859 = !DILocalVariable(name: "size", arg: 3, scope: !3855, file: !761, line: 27, type: !102)
!3860 = !DILocalVariable(name: "nbytes", scope: !3855, file: !761, line: 29, type: !102)
!3861 = !DILocation(line: 0, scope: !3855)
!3862 = !DILocation(line: 30, column: 7, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3855, file: !761, line: 30, column: 7)
!3864 = !DILocalVariable(name: "ptr", arg: 1, scope: !3865, file: !3111, line: 2057, type: !100)
!3865 = distinct !DISubprogram(name: "rpl_realloc", scope: !3111, file: !3111, line: 2057, type: !3103, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3866)
!3866 = !{!3864, !3867}
!3867 = !DILocalVariable(name: "size", arg: 2, scope: !3865, file: !3111, line: 2057, type: !102)
!3868 = !DILocation(line: 0, scope: !3865, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 37, column: 10, scope: !3855)
!3870 = !DILocation(line: 2059, column: 24, scope: !3865, inlinedAt: !3869)
!3871 = !DILocation(line: 2059, column: 10, scope: !3865, inlinedAt: !3869)
!3872 = !DILocation(line: 37, column: 3, scope: !3855)
!3873 = !DILocation(line: 32, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3863, file: !761, line: 31, column: 5)
!3875 = !DILocation(line: 32, column: 13, scope: !3874)
!3876 = !DILocation(line: 33, column: 7, scope: !3874)
!3877 = !DILocation(line: 38, column: 1, scope: !3855)
!3878 = distinct !DISubprogram(name: "hard_locale", scope: !700, file: !700, line: 28, type: !3879, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!143, !78}
!3881 = !{!3882, !3883}
!3882 = !DILocalVariable(name: "category", arg: 1, scope: !3878, file: !700, line: 28, type: !78)
!3883 = !DILocalVariable(name: "locale", scope: !3878, file: !700, line: 30, type: !3884)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3885)
!3885 = !{!3886}
!3886 = !DISubrange(count: 257)
!3887 = !DILocation(line: 0, scope: !3878)
!3888 = !DILocation(line: 30, column: 3, scope: !3878)
!3889 = !DILocation(line: 30, column: 8, scope: !3878)
!3890 = !DILocation(line: 32, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3878, file: !700, line: 32, column: 7)
!3892 = !DILocation(line: 32, column: 7, scope: !3878)
!3893 = !DILocalVariable(name: "__s1", arg: 1, scope: !3894, file: !870, line: 1359, type: !105)
!3894 = distinct !DISubprogram(name: "streq", scope: !870, file: !870, line: 1359, type: !871, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3895)
!3895 = !{!3893, !3896}
!3896 = !DILocalVariable(name: "__s2", arg: 2, scope: !3894, file: !870, line: 1359, type: !105)
!3897 = !DILocation(line: 0, scope: !3894, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 35, column: 9, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3878, file: !700, line: 35, column: 7)
!3900 = !DILocation(line: 1361, column: 11, scope: !3894, inlinedAt: !3898)
!3901 = !DILocation(line: 35, column: 29, scope: !3899)
!3902 = !DILocation(line: 0, scope: !3894, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 35, column: 32, scope: !3899)
!3904 = !DILocation(line: 1361, column: 11, scope: !3894, inlinedAt: !3903)
!3905 = !DILocation(line: 1361, column: 10, scope: !3894, inlinedAt: !3903)
!3906 = !DILocation(line: 35, column: 7, scope: !3878)
!3907 = !DILocation(line: 46, column: 3, scope: !3878)
!3908 = !DILocation(line: 47, column: 1, scope: !3878)
!3909 = distinct !DISubprogram(name: "setlocale_null_r", scope: !768, file: !768, line: 154, type: !3910, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3912)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!78, !78, !99, !102}
!3912 = !{!3913, !3914, !3915}
!3913 = !DILocalVariable(name: "category", arg: 1, scope: !3909, file: !768, line: 154, type: !78)
!3914 = !DILocalVariable(name: "buf", arg: 2, scope: !3909, file: !768, line: 154, type: !99)
!3915 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3909, file: !768, line: 154, type: !102)
!3916 = !DILocation(line: 0, scope: !3909)
!3917 = !DILocation(line: 159, column: 10, scope: !3909)
!3918 = !DILocation(line: 159, column: 3, scope: !3909)
!3919 = distinct !DISubprogram(name: "setlocale_null", scope: !768, file: !768, line: 186, type: !3920, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!105, !78}
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "category", arg: 1, scope: !3919, file: !768, line: 186, type: !78)
!3924 = !DILocation(line: 0, scope: !3919)
!3925 = !DILocation(line: 189, column: 10, scope: !3919)
!3926 = !DILocation(line: 189, column: 3, scope: !3919)
!3927 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !770, file: !770, line: 35, type: !3920, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3928)
!3928 = !{!3929, !3930}
!3929 = !DILocalVariable(name: "category", arg: 1, scope: !3927, file: !770, line: 35, type: !78)
!3930 = !DILocalVariable(name: "result", scope: !3927, file: !770, line: 37, type: !105)
!3931 = !DILocation(line: 0, scope: !3927)
!3932 = !DILocation(line: 37, column: 24, scope: !3927)
!3933 = !DILocation(line: 62, column: 3, scope: !3927)
!3934 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !770, file: !770, line: 66, type: !3910, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940}
!3936 = !DILocalVariable(name: "category", arg: 1, scope: !3934, file: !770, line: 66, type: !78)
!3937 = !DILocalVariable(name: "buf", arg: 2, scope: !3934, file: !770, line: 66, type: !99)
!3938 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3934, file: !770, line: 66, type: !102)
!3939 = !DILocalVariable(name: "result", scope: !3934, file: !770, line: 111, type: !105)
!3940 = !DILocalVariable(name: "length", scope: !3941, file: !770, line: 125, type: !102)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !770, line: 124, column: 5)
!3942 = distinct !DILexicalBlock(scope: !3934, file: !770, line: 113, column: 7)
!3943 = !DILocation(line: 0, scope: !3934)
!3944 = !DILocation(line: 0, scope: !3927, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 111, column: 24, scope: !3934)
!3946 = !DILocation(line: 37, column: 24, scope: !3927, inlinedAt: !3945)
!3947 = !DILocation(line: 113, column: 14, scope: !3942)
!3948 = !DILocation(line: 113, column: 7, scope: !3934)
!3949 = !DILocation(line: 116, column: 19, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !770, line: 116, column: 11)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !770, line: 114, column: 5)
!3952 = !DILocation(line: 116, column: 11, scope: !3951)
!3953 = !DILocation(line: 120, column: 16, scope: !3950)
!3954 = !DILocation(line: 120, column: 9, scope: !3950)
!3955 = !DILocation(line: 125, column: 23, scope: !3941)
!3956 = !DILocation(line: 0, scope: !3941)
!3957 = !DILocation(line: 126, column: 18, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3941, file: !770, line: 126, column: 11)
!3959 = !DILocation(line: 126, column: 11, scope: !3941)
!3960 = !DILocation(line: 128, column: 39, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3958, file: !770, line: 127, column: 9)
!3962 = !DILocalVariable(name: "__dest", arg: 1, scope: !3963, file: !1238, line: 26, type: !1241)
!3963 = distinct !DISubprogram(name: "memcpy", scope: !1238, file: !1238, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3964)
!3964 = !{!3962, !3965, !3966}
!3965 = !DILocalVariable(name: "__src", arg: 2, scope: !3963, file: !1238, line: 26, type: !1005)
!3966 = !DILocalVariable(name: "__len", arg: 3, scope: !3963, file: !1238, line: 26, type: !102)
!3967 = !DILocation(line: 0, scope: !3963, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 128, column: 11, scope: !3961)
!3969 = !DILocation(line: 29, column: 10, scope: !3963, inlinedAt: !3968)
!3970 = !DILocation(line: 129, column: 11, scope: !3961)
!3971 = !DILocation(line: 133, column: 23, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !770, line: 133, column: 15)
!3973 = distinct !DILexicalBlock(scope: !3958, file: !770, line: 132, column: 9)
!3974 = !DILocation(line: 133, column: 15, scope: !3973)
!3975 = !DILocation(line: 138, column: 44, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !770, line: 134, column: 13)
!3977 = !DILocation(line: 0, scope: !3963, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 138, column: 15, scope: !3976)
!3979 = !DILocation(line: 29, column: 10, scope: !3963, inlinedAt: !3978)
!3980 = !DILocation(line: 139, column: 15, scope: !3976)
!3981 = !DILocation(line: 139, column: 32, scope: !3976)
!3982 = !DILocation(line: 140, column: 13, scope: !3976)
!3983 = !DILocation(line: 0, scope: !3942)
!3984 = !DILocation(line: 145, column: 1, scope: !3934)
