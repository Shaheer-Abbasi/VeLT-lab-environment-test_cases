; ModuleID = 'src/basename.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

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
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.55, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !72
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !366
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !358
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !360
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !362
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !364
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !368
@stderr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !374
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !411
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !401
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !403
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !405
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !407
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !409
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !415
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !420
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !425
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !431
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !433
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !435
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !466
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !469
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !471
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !476
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !478
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !480
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !482
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !484
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !486
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !488
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 8, !dbg !490
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !515
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !529
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !567
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !574
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !531
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !576
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !519
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !536
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !538
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !540
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !542
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !544
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !582
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !585
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !587
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !589
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !591
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !593
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !598
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !603
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !605
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !610
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !615
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !620
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !625
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !627
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !632
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !637
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !642
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !647
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !649
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !651
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !653
@.str.21.106 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !655
@.str.22.107 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !657
@.str.23.108 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !659
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !664
@exit_failure = dso_local global i32 1, align 4, !dbg !672
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !678
@.str.1.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !681
@.str.2.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !683
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !685
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !688
@.str.143 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !703
@.str.1.144 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !706

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !788, metadata !DIExpression()), !dbg !789
  %2 = icmp eq i32 %0, 0, !dbg !790
  br i1 %2, label %8, label %3, !dbg !792

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !793, !tbaa !795
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !793
  %6 = load ptr, ptr @program_name, align 8, !dbg !793, !tbaa !795
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !793
  br label %40, !dbg !793

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !799
  %10 = load ptr, ptr @program_name, align 8, !dbg !799, !tbaa !795
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #38, !dbg !799
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !801
  %13 = load ptr, ptr @stdout, align 8, !dbg !801, !tbaa !795
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !801
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !802
  %16 = load ptr, ptr @stdout, align 8, !dbg !802, !tbaa !795
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !802
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !806
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !806
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !807
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !807
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !808
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !809
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !810
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !810
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !811
  %24 = load ptr, ptr @program_name, align 8, !dbg !811, !tbaa !795
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %23, ptr noundef %24, ptr noundef %24, ptr noundef %24, ptr noundef %24) #38, !dbg !811
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !812, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr poison, metadata !824, metadata !DIExpression()), !dbg !829
  tail call void @emit_bug_reporting_address() #38, !dbg !831
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !832
  call void @llvm.dbg.value(metadata ptr %26, metadata !827, metadata !DIExpression()), !dbg !829
  %27 = icmp eq ptr %26, null, !dbg !833
  br i1 %27, label %35, label %28, !dbg !835

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !836
  %30 = icmp eq i32 %29, 0, !dbg !836
  br i1 %30, label %35, label %31, !dbg !837

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !838
  %33 = load ptr, ptr @stdout, align 8, !dbg !838, !tbaa !795
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !838
  br label %35, !dbg !840

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !829
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !841
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !841
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !842
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !842
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !843
  unreachable, !dbg !843
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !844 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !848 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !854 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !857 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !133 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !137, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %0, metadata !138, metadata !DIExpression()), !dbg !860
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !861, !tbaa !862
  %3 = icmp eq i32 %2, -1, !dbg !864
  br i1 %3, label %4, label %16, !dbg !865

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !866
  call void @llvm.dbg.value(metadata ptr %5, metadata !139, metadata !DIExpression()), !dbg !867
  %6 = icmp eq ptr %5, null, !dbg !868
  br i1 %6, label %14, label %7, !dbg !869

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !870, !tbaa !871
  %9 = icmp eq i8 %8, 0, !dbg !870
  br i1 %9, label %14, label %10, !dbg !872

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !873, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !879, metadata !DIExpression()), !dbg !880
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !882
  %12 = icmp eq i32 %11, 0, !dbg !883
  %13 = zext i1 %12 to i32, !dbg !872
  br label %14, !dbg !872

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !884, !tbaa !862
  br label %16, !dbg !885

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !886
  %18 = icmp eq i32 %17, 0, !dbg !886
  br i1 %18, label %22, label %19, !dbg !888

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !889, !tbaa !795
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !889
  br label %122, !dbg !891

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !142, metadata !DIExpression()), !dbg !860
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !892
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !893
  call void @llvm.dbg.value(metadata ptr %24, metadata !144, metadata !DIExpression()), !dbg !860
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !894
  call void @llvm.dbg.value(metadata ptr %25, metadata !145, metadata !DIExpression()), !dbg !860
  %26 = icmp eq ptr %25, null, !dbg !895
  br i1 %26, label %54, label %27, !dbg !896

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !897
  br i1 %28, label %54, label %29, !dbg !898

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !146, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()), !dbg !899
  %30 = icmp ult ptr %24, %25, !dbg !900
  br i1 %30, label %31, label %52, !dbg !901

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !860
  %33 = load ptr, ptr %32, align 8, !tbaa !795
  br label %34, !dbg !901

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !146, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i64 %36, metadata !150, metadata !DIExpression()), !dbg !899
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !902
  call void @llvm.dbg.value(metadata ptr %37, metadata !146, metadata !DIExpression()), !dbg !899
  %38 = load i8, ptr %35, align 1, !dbg !902, !tbaa !871
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !902
  %41 = load i16, ptr %40, align 2, !dbg !902, !tbaa !903
  %42 = freeze i16 %41, !dbg !905
  %43 = lshr i16 %42, 13, !dbg !905
  %44 = and i16 %43, 1, !dbg !905
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !906
  call void @llvm.dbg.value(metadata i64 %46, metadata !150, metadata !DIExpression()), !dbg !899
  %47 = icmp ult ptr %37, %25, !dbg !900
  %48 = icmp ult i64 %46, 2, !dbg !907
  %49 = select i1 %47, i1 %48, i1 false, !dbg !907
  br i1 %49, label %34, label %50, !dbg !901, !llvm.loop !908

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !910
  br i1 %51, label %52, label %54, !dbg !912

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !912

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !860
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %55, metadata !145, metadata !DIExpression()), !dbg !860
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #39, !dbg !913
  call void @llvm.dbg.value(metadata i64 %57, metadata !151, metadata !DIExpression()), !dbg !860
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !914
  call void @llvm.dbg.value(metadata ptr %58, metadata !152, metadata !DIExpression()), !dbg !860
  br label %59, !dbg !915

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !860
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %60, metadata !152, metadata !DIExpression()), !dbg !860
  %62 = load i8, ptr %60, align 1, !dbg !916, !tbaa !871
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !917

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !918
  %65 = load i8, ptr %64, align 1, !dbg !921, !tbaa !871
  %66 = icmp ne i8 %65, 45, !dbg !922
  %67 = select i1 %66, i1 %61, i1 false, !dbg !923
  br label %68, !dbg !923

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !860
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !924
  %71 = load ptr, ptr %70, align 8, !dbg !924, !tbaa !795
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !924
  %74 = load i16, ptr %73, align 2, !dbg !924, !tbaa !903
  %75 = and i16 %74, 8192, !dbg !924
  %76 = icmp eq i16 %75, 0, !dbg !924
  br i1 %76, label %90, label %77, !dbg !926

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !927
  br i1 %78, label %92, label %79, !dbg !930

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !931
  %81 = load i8, ptr %80, align 1, !dbg !931, !tbaa !871
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !931
  %84 = load i16, ptr %83, align 2, !dbg !931, !tbaa !903
  %85 = and i16 %84, 8192, !dbg !931
  %86 = icmp eq i16 %85, 0, !dbg !931
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !932
  br i1 %89, label %90, label %92, !dbg !932

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !933
  call void @llvm.dbg.value(metadata ptr %91, metadata !152, metadata !DIExpression()), !dbg !860
  br label %59, !dbg !915, !llvm.loop !934

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !936
  %94 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !795
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !860
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !957
  %97 = icmp eq i32 %96, 0, !dbg !957
  br i1 %97, label %101, label %98, !dbg !959

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !960
  %100 = icmp eq i32 %99, 0, !dbg !960
  br i1 %100, label %101, label %104, !dbg !961

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !962
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !962
  br label %107, !dbg !964

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !965
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !965
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !795
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %108), !dbg !967
  %110 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !795
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %110), !dbg !968
  %112 = ptrtoint ptr %60 to i64, !dbg !969
  %113 = sub i64 %112, %93, !dbg !969
  %114 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !795
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !969
  %116 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !795
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %116), !dbg !970
  %118 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !795
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %118), !dbg !971
  %120 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !795
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !972
  br label %122, !dbg !973

122:                                              ; preds = %107, %19
  ret void, !dbg !973
}

; Function Attrs: nounwind
declare !dbg !974 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !978 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !982 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !984 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !987 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !996 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1003 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1014, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %1, metadata !1015, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 0, metadata !1016, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 0, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr null, metadata !1018, metadata !DIExpression()), !dbg !1021
  %3 = load ptr, ptr %1, align 8, !dbg !1022, !tbaa !795
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1023
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1024
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1025
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1026
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1027
  br label %19, !dbg !1028

8:                                                ; preds = %14, %10
  %9 = phi i1 [ %12, %10 ], [ true, %14 ]
  br label %10, !dbg !1029

10:                                               ; preds = %19, %8
  %11 = phi i1 [ true, %8 ], [ %20, %19 ]
  %12 = phi i1 [ %9, %8 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata ptr %22, metadata !1018, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1016, metadata !DIExpression()), !dbg !1021
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %13, metadata !1019, metadata !DIExpression()), !dbg !1031
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %16
    i32 97, label %8
    i32 122, label %14
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !1029

14:                                               ; preds = %14, %10
  call void @llvm.dbg.value(metadata ptr %22, metadata !1018, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1016, metadata !DIExpression()), !dbg !1021
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %15, metadata !1019, metadata !DIExpression()), !dbg !1031
  switch i32 %15, label %28 [
    i32 -1, label %29
    i32 115, label %16
    i32 97, label %8
    i32 122, label %14
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !1029, !llvm.loop !1032

16:                                               ; preds = %10, %14
  %17 = phi i1 [ true, %14 ], [ %12, %10 ]
  %18 = load ptr, ptr @optarg, align 8, !dbg !1034, !tbaa !795
  call void @llvm.dbg.value(metadata ptr %18, metadata !1018, metadata !DIExpression()), !dbg !1021
  br label %19, !dbg !1036

19:                                               ; preds = %2, %16
  %20 = phi i1 [ false, %2 ], [ true, %16 ]
  %21 = phi i1 [ false, %2 ], [ %17, %16 ]
  %22 = phi ptr [ null, %2 ], [ %18, %16 ]
  br label %10, !dbg !1029

23:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 0) #42, !dbg !1037
  unreachable, !dbg !1037

24:                                               ; preds = %10, %14
  %25 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !795
  %26 = load ptr, ptr @Version, align 8, !dbg !1038, !tbaa !795
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #38, !dbg !1038
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %26, ptr noundef %27, ptr noundef null) #38, !dbg !1038
  tail call void @exit(i32 noundef 0) #40, !dbg !1038
  unreachable, !dbg !1038

28:                                               ; preds = %10, %14
  tail call void @usage(i32 noundef 1) #42, !dbg !1039
  unreachable, !dbg !1039

29:                                               ; preds = %10, %14
  %30 = phi i1 [ true, %14 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata ptr %22, metadata !1018, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1016, metadata !DIExpression()), !dbg !1021
  %31 = load i32, ptr @optind, align 4, !dbg !1040, !tbaa !862
  %32 = icmp slt i32 %31, %0, !dbg !1042
  br i1 %32, label %35, label %33, !dbg !1043

33:                                               ; preds = %29
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1044
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %34) #38, !dbg !1044
  tail call void @usage(i32 noundef 1) #42, !dbg !1046
  unreachable, !dbg !1046

35:                                               ; preds = %29
  %36 = add nsw i32 %31, 2
  %37 = icmp sge i32 %36, %0
  %38 = select i1 %11, i1 true, i1 %37, !dbg !1047
  br i1 %38, label %47, label %39, !dbg !1047

39:                                               ; preds = %35
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1049
  %41 = load i32, ptr @optind, align 4, !dbg !1049, !tbaa !862
  %42 = add nsw i32 %41, 2, !dbg !1049
  %43 = sext i32 %42 to i64, !dbg !1049
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43, !dbg !1049
  %45 = load ptr, ptr %44, align 8, !dbg !1049, !tbaa !795
  %46 = tail call ptr @quote(ptr noundef %45) #38, !dbg !1049
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40, ptr noundef %46) #38, !dbg !1049
  tail call void @usage(i32 noundef 1) #42, !dbg !1051
  unreachable, !dbg !1051

47:                                               ; preds = %35
  br i1 %11, label %48, label %56, !dbg !1052

48:                                               ; preds = %47, %48
  %49 = phi i32 [ %54, %48 ], [ %31, %47 ]
  %50 = sext i32 %49 to i64, !dbg !1053
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50, !dbg !1053
  %52 = load ptr, ptr %51, align 8, !dbg !1053, !tbaa !795
  tail call fastcc void @perform_basename(ptr noundef %52, ptr noundef %22, i1 noundef %30), !dbg !1058
  %53 = load i32, ptr @optind, align 4, !dbg !1059, !tbaa !862
  %54 = add nsw i32 %53, 1, !dbg !1059
  store i32 %54, ptr @optind, align 4, !dbg !1059, !tbaa !862
  %55 = icmp slt i32 %54, %0, !dbg !1060
  br i1 %55, label %48, label %68, !dbg !1061, !llvm.loop !1062

56:                                               ; preds = %47
  %57 = sext i32 %31 to i64, !dbg !1064
  %58 = getelementptr inbounds ptr, ptr %1, i64 %57, !dbg !1064
  %59 = load ptr, ptr %58, align 8, !dbg !1064, !tbaa !795
  %60 = icmp eq i32 %36, %0, !dbg !1065
  br i1 %60, label %61, label %66, !dbg !1066

61:                                               ; preds = %56
  %62 = add nsw i32 %31, 1, !dbg !1067
  %63 = sext i32 %62 to i64, !dbg !1068
  %64 = getelementptr inbounds ptr, ptr %1, i64 %63, !dbg !1068
  %65 = load ptr, ptr %64, align 8, !dbg !1068, !tbaa !795
  br label %66, !dbg !1066

66:                                               ; preds = %56, %61
  %67 = phi ptr [ %65, %61 ], [ null, %56 ], !dbg !1066
  tail call fastcc void @perform_basename(ptr noundef %59, ptr noundef %67, i1 noundef %30), !dbg !1069
  br label %68

68:                                               ; preds = %48, %66
  ret i32 0, !dbg !1070
}

; Function Attrs: nounwind
declare !dbg !1071 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1074 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1075 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1078 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @perform_basename(ptr noundef %0, ptr noundef readonly %1, i1 noundef %2) unnamed_addr #10 !dbg !1084 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1088, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %1, metadata !1089, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i1 %2, metadata !1090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1092
  %4 = tail call noalias nonnull ptr @base_name(ptr noundef %0) #38, !dbg !1093
  call void @llvm.dbg.value(metadata ptr %4, metadata !1091, metadata !DIExpression()), !dbg !1092
  %5 = tail call i1 @strip_trailing_slashes(ptr noundef nonnull %4) #38, !dbg !1094
  %6 = icmp eq ptr %1, null, !dbg !1095
  br i1 %6, label %29, label %7, !dbg !1097

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !dbg !1098, !tbaa !871
  %9 = icmp eq i8 %8, 47, !dbg !1098
  br i1 %9, label %29, label %10, !dbg !1099

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %4, metadata !1100, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %1, metadata !1105, metadata !DIExpression()), !dbg !1108
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !1110
  %12 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %12, metadata !1106, metadata !DIExpression()), !dbg !1108
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39, !dbg !1112
  %14 = getelementptr inbounds i8, ptr %1, i64 %13, !dbg !1113
  call void @llvm.dbg.value(metadata ptr %14, metadata !1107, metadata !DIExpression()), !dbg !1108
  br label %15, !dbg !1114

15:                                               ; preds = %21, %10
  %16 = phi ptr [ %12, %10 ], [ %22, %21 ], !dbg !1108
  %17 = phi ptr [ %14, %10 ], [ %24, %21 ], !dbg !1108
  call void @llvm.dbg.value(metadata ptr %17, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %16, metadata !1106, metadata !DIExpression()), !dbg !1108
  %18 = icmp ugt ptr %16, %4, !dbg !1115
  %19 = icmp ugt ptr %17, %1, !dbg !1116
  %20 = select i1 %18, i1 %19, i1 false, !dbg !1116
  br i1 %20, label %21, label %27, !dbg !1114

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %16, i64 -1, !dbg !1117
  call void @llvm.dbg.value(metadata ptr %22, metadata !1106, metadata !DIExpression()), !dbg !1108
  %23 = load i8, ptr %22, align 1, !dbg !1119, !tbaa !871
  %24 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %24, metadata !1107, metadata !DIExpression()), !dbg !1108
  %25 = load i8, ptr %24, align 1, !dbg !1121, !tbaa !871
  %26 = icmp eq i8 %23, %25, !dbg !1122
  br i1 %26, label %15, label %29, !dbg !1123, !llvm.loop !1124

27:                                               ; preds = %15
  br i1 %18, label %28, label %29, !dbg !1126

28:                                               ; preds = %27
  store i8 0, ptr %16, align 1, !dbg !1127, !tbaa !871
  br label %29, !dbg !1129

29:                                               ; preds = %21, %28, %27, %7, %3
  %30 = load ptr, ptr @stdout, align 8, !dbg !1130, !tbaa !795
  %31 = tail call i32 @fputs_unlocked(ptr noundef nonnull %4, ptr noundef %30), !dbg !1130
  %32 = select i1 %2, i32 0, i32 10, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %32, metadata !1132, metadata !DIExpression()), !dbg !1138
  %33 = load ptr, ptr @stdout, align 8, !dbg !1140, !tbaa !795
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1140
  %35 = load ptr, ptr %34, align 8, !dbg !1140, !tbaa !1141
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1140
  %37 = load ptr, ptr %36, align 8, !dbg !1140, !tbaa !1144
  %38 = icmp ult ptr %35, %37, !dbg !1140
  br i1 %38, label %41, label %39, !dbg !1140, !prof !1145

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %32) #38, !dbg !1140
  br label %44, !dbg !1140

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !1140
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1140
  store ptr %43, ptr %34, align 8, !dbg !1140, !tbaa !1141
  store i8 %42, ptr %35, align 1, !dbg !1140, !tbaa !871
  br label %44, !dbg !1140

44:                                               ; preds = %39, %41
  tail call void @free(ptr noundef nonnull %4) #38, !dbg !1146
  ret void, !dbg !1147
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1148 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1151 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1154 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1157 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1159, metadata !DIExpression()), !dbg !1160
  store ptr %0, ptr @file_name, align 8, !dbg !1161, !tbaa !795
  ret void, !dbg !1162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1163 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1167, metadata !DIExpression()), !dbg !1168
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1169, !tbaa !1170
  ret void, !dbg !1172
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1173 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !795
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1179
  %3 = icmp eq i32 %2, 0, !dbg !1180
  br i1 %3, label %22, label %4, !dbg !1181

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1182, !tbaa !1170, !range !1183, !noundef !804
  %6 = icmp eq i8 %5, 0, !dbg !1182
  br i1 %6, label %11, label %7, !dbg !1184

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1185
  %9 = load i32, ptr %8, align 4, !dbg !1185, !tbaa !862
  %10 = icmp eq i32 %9, 32, !dbg !1186
  br i1 %10, label %22, label %11, !dbg !1187

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #38, !dbg !1188
  call void @llvm.dbg.value(metadata ptr %12, metadata !1175, metadata !DIExpression()), !dbg !1189
  %13 = load ptr, ptr @file_name, align 8, !dbg !1190, !tbaa !795
  %14 = icmp eq ptr %13, null, !dbg !1190
  %15 = tail call ptr @__errno_location() #41, !dbg !1192
  %16 = load i32, ptr %15, align 4, !dbg !1192, !tbaa !862
  br i1 %14, label %19, label %17, !dbg !1193

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1194
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #38, !dbg !1194
  br label %20, !dbg !1194

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #38, !dbg !1195
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1196, !tbaa !862
  tail call void @_exit(i32 noundef %21) #40, !dbg !1197
  unreachable, !dbg !1197

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1198, !tbaa !795
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1200
  %25 = icmp eq i32 %24, 0, !dbg !1201
  br i1 %25, label %28, label %26, !dbg !1202

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1203, !tbaa !862
  tail call void @_exit(i32 noundef %27) #40, !dbg !1204
  unreachable, !dbg !1204

28:                                               ; preds = %22
  ret void, !dbg !1205
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1206 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1210 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @base_name(ptr noundef %0) local_unnamed_addr #10 !dbg !1212 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1214, metadata !DIExpression()), !dbg !1219
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %2, metadata !1215, metadata !DIExpression()), !dbg !1219
  %3 = load i8, ptr %2, align 1, !dbg !1221, !tbaa !871
  %4 = icmp eq i8 %3, 0, !dbg !1221
  br i1 %4, label %12, label %5, !dbg !1223

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(ptr noundef nonnull %2) #39, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %6, metadata !1216, metadata !DIExpression()), !dbg !1219
  %7 = getelementptr inbounds i8, ptr %2, i64 %6, !dbg !1226
  %8 = load i8, ptr %7, align 1, !dbg !1226, !tbaa !871
  %9 = icmp eq i8 %8, 47, !dbg !1226
  %10 = zext i1 %9 to i64
  %11 = add nsw i64 %6, %10, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %11, metadata !1216, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1219
  br label %14, !dbg !1228

12:                                               ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1215, metadata !DIExpression()), !dbg !1219
  %13 = tail call i64 @base_len(ptr noundef %0) #39, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %13, metadata !1216, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1219
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i64 [ %11, %5 ], [ %13, %12 ], !dbg !1231
  %16 = phi ptr [ %2, %5 ], [ %0, %12 ], !dbg !1219
  call void @llvm.dbg.value(metadata ptr %16, metadata !1215, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %15, metadata !1216, metadata !DIExpression()), !dbg !1219
  %17 = add nsw i64 %15, 1, !dbg !1232
  %18 = tail call noalias nonnull ptr @ximalloc(i64 noundef %17) #43, !dbg !1233
  call void @llvm.dbg.value(metadata ptr %18, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %18, metadata !1234, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %16, metadata !1241, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i64 %15, metadata !1242, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %18, ptr noundef nonnull align 1 %16, i64 noundef %15, i1 noundef false) #38, !dbg !1245
  %19 = getelementptr inbounds i8, ptr %18, i64 %15, !dbg !1246
  store i8 0, ptr %19, align 1, !dbg !1247, !tbaa !871
  ret ptr %18, !dbg !1248
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #15 !dbg !1249 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1253, metadata !DIExpression()), !dbg !1257
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %2, metadata !1254, metadata !DIExpression()), !dbg !1257
  %3 = load i8, ptr %2, align 1, !dbg !1259, !tbaa !871
  %4 = icmp eq i8 %3, 0, !dbg !1259
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %5, metadata !1254, metadata !DIExpression()), !dbg !1257
  %6 = tail call i64 @base_len(ptr noundef %5) #39, !dbg !1262
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %7, metadata !1255, metadata !DIExpression()), !dbg !1257
  %8 = load i8, ptr %7, align 1, !dbg !1264, !tbaa !871
  %9 = icmp ne i8 %8, 0, !dbg !1265
  call void @llvm.dbg.value(metadata i1 %9, metadata !1256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1257
  store i8 0, ptr %7, align 1, !dbg !1266, !tbaa !871
  ret i1 %9, !dbg !1267
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1268 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1272, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %1, metadata !1273, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata ptr %2, metadata !1274, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1275, metadata !DIExpression()), !dbg !1277
  tail call fastcc void @flush_stdout(), !dbg !1278
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1279, !tbaa !795
  %7 = icmp eq ptr %6, null, !dbg !1279
  br i1 %7, label %9, label %8, !dbg !1281

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1282
  br label %13, !dbg !1282

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1283, !tbaa !795
  %11 = tail call ptr @getprogname() #39, !dbg !1283
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %11) #38, !dbg !1283
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1285, !tbaa.struct !1286
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1285
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1285
  ret void, !dbg !1287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1288 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 1, metadata !1292, metadata !DIExpression()), !dbg !1295
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1298
  %2 = icmp slt i32 %1, 0, !dbg !1299
  br i1 %2, label %6, label %3, !dbg !1300

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1301, !tbaa !795
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1301
  br label %6, !dbg !1301

6:                                                ; preds = %3, %0
  ret void, !dbg !1302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1303 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %1, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %2, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1308, metadata !DIExpression()), !dbg !1310
  %7 = load ptr, ptr @stderr, align 8, !dbg !1311, !tbaa !795
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1312, !noalias !1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %7, metadata !1352, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %2, metadata !1353, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1354, metadata !DIExpression()), !dbg !1362
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1312, !noalias !1356
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1363, !tbaa !862
  %10 = add i32 %9, 1, !dbg !1363
  store i32 %10, ptr @error_message_count, align 4, !dbg !1363, !tbaa !862
  %11 = icmp eq i32 %1, 0, !dbg !1364
  br i1 %11, label %21, label %12, !dbg !1366

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1367, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1371, metadata !DIExpression()), !dbg !1378
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1379
  call void @llvm.dbg.value(metadata ptr %13, metadata !1370, metadata !DIExpression()), !dbg !1375
  %14 = icmp eq ptr %13, null, !dbg !1380
  br i1 %14, label %15, label %17, !dbg !1382

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #38, !dbg !1383
  call void @llvm.dbg.value(metadata ptr %16, metadata !1370, metadata !DIExpression()), !dbg !1375
  br label %17, !dbg !1384

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1375
  call void @llvm.dbg.value(metadata ptr %18, metadata !1370, metadata !DIExpression()), !dbg !1375
  %19 = load ptr, ptr @stderr, align 8, !dbg !1385, !tbaa !795
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %18) #38, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1386
  br label %21, !dbg !1387

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1388, !tbaa !795
  call void @llvm.dbg.value(metadata i32 10, metadata !1389, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata ptr %22, metadata !1394, metadata !DIExpression()), !dbg !1395
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1397
  %24 = load ptr, ptr %23, align 8, !dbg !1397, !tbaa !1141
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1397
  %26 = load ptr, ptr %25, align 8, !dbg !1397, !tbaa !1144
  %27 = icmp ult ptr %24, %26, !dbg !1397
  br i1 %27, label %30, label %28, !dbg !1397, !prof !1145

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1397
  br label %32, !dbg !1397

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1397
  store ptr %31, ptr %23, align 8, !dbg !1397, !tbaa !1141
  store i8 10, ptr %24, align 1, !dbg !1397, !tbaa !871
  br label %32, !dbg !1397

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1398, !tbaa !795
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1398
  %35 = icmp eq i32 %0, 0, !dbg !1399
  br i1 %35, label %37, label %36, !dbg !1401

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1402
  unreachable, !dbg !1402

37:                                               ; preds = %32
  ret void, !dbg !1403
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #17

declare !dbg !1404 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1407 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1410 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1413 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1417 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1421, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %1, metadata !1422, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata ptr %2, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.va_start(ptr nonnull %4), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1429, !tbaa.struct !1286
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1429
  call void @llvm.va_end(ptr nonnull %4), !dbg !1430
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1431
  ret void, !dbg !1431
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !378 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !395, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %1, metadata !396, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %3, metadata !398, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %5, metadata !400, metadata !DIExpression()), !dbg !1433
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1434, !tbaa !862
  %9 = icmp eq i32 %8, 0, !dbg !1434
  br i1 %9, label %24, label %10, !dbg !1436

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1437, !tbaa !862
  %12 = icmp eq i32 %11, %3, !dbg !1440
  br i1 %12, label %13, label %23, !dbg !1441

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1442, !tbaa !795
  %15 = icmp eq ptr %14, %2, !dbg !1443
  br i1 %15, label %37, label %16, !dbg !1444

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1445
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1446
  br i1 %19, label %20, label %23, !dbg !1446

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1447
  %22 = icmp eq i32 %21, 0, !dbg !1448
  br i1 %22, label %37, label %23, !dbg !1449

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1450, !tbaa !795
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1451, !tbaa !862
  br label %24, !dbg !1452

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1453
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1454, !tbaa !795
  %26 = icmp eq ptr %25, null, !dbg !1454
  br i1 %26, label %28, label %27, !dbg !1456

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1457
  br label %32, !dbg !1457

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1458, !tbaa !795
  %30 = tail call ptr @getprogname() #39, !dbg !1458
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %30) #38, !dbg !1458
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1460, !tbaa !795
  %34 = icmp eq ptr %2, null, !dbg !1460
  %35 = select i1 %34, ptr @.str.3.41, ptr @.str.2.42, !dbg !1460
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1460
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1461, !tbaa.struct !1286
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1461
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1461
  br label %37, !dbg !1462

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1462
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1463 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1467, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %1, metadata !1468, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %2, metadata !1469, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %3, metadata !1470, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %4, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1474
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1472, metadata !DIExpression()), !dbg !1475
  call void @llvm.va_start(ptr nonnull %6), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1477, !tbaa.struct !1286
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1477
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1477
  call void @llvm.va_end(ptr nonnull %6), !dbg !1478
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1479
  ret void, !dbg !1479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1480 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1483, !tbaa !795
  ret ptr %1, !dbg !1484
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1487, metadata !DIExpression()), !dbg !1490
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %2, metadata !1488, metadata !DIExpression()), !dbg !1490
  %3 = icmp eq ptr %2, null, !dbg !1492
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1492
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1492
  call void @llvm.dbg.value(metadata ptr %5, metadata !1489, metadata !DIExpression()), !dbg !1490
  %6 = ptrtoint ptr %5 to i64, !dbg !1493
  %7 = ptrtoint ptr %0 to i64, !dbg !1493
  %8 = sub i64 %6, %7, !dbg !1493
  %9 = icmp sgt i64 %8, 6, !dbg !1495
  br i1 %9, label %10, label %19, !dbg !1496

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %11, metadata !1498, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1503, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 7, metadata !1504, metadata !DIExpression()), !dbg !1505
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !1507
  %13 = icmp eq i32 %12, 0, !dbg !1508
  br i1 %13, label %14, label %19, !dbg !1509

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1487, metadata !DIExpression()), !dbg !1490
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #39, !dbg !1510
  %16 = icmp eq i32 %15, 0, !dbg !1513
  %17 = select i1 %16, i64 3, i64 0, !dbg !1514
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1514
  br label %19, !dbg !1514

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1490
  call void @llvm.dbg.value(metadata ptr %21, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata ptr %20, metadata !1487, metadata !DIExpression()), !dbg !1490
  store ptr %20, ptr @program_name, align 8, !dbg !1515, !tbaa !795
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1516, !tbaa !795
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1517, !tbaa !795
  ret void, !dbg !1518
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1519 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !437 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !444, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %1, metadata !445, metadata !DIExpression()), !dbg !1520
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %5, metadata !446, metadata !DIExpression()), !dbg !1520
  %6 = icmp eq ptr %5, %0, !dbg !1522
  br i1 %6, label %7, label %14, !dbg !1524

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %4, metadata !452, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 8, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i64 0, ptr %4, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %3, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !1520
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1547
  %9 = icmp eq i64 %8, 2, !dbg !1549
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !447, metadata !DIExpression()), !dbg !1520
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1550
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1551
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1520
  ret ptr %15, !dbg !1551
}

; Function Attrs: nounwind
declare !dbg !1552 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1558 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1563, metadata !DIExpression()), !dbg !1566
  %2 = tail call ptr @__errno_location() #41, !dbg !1567
  %3 = load i32, ptr %2, align 4, !dbg !1567, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %3, metadata !1564, metadata !DIExpression()), !dbg !1566
  %4 = icmp eq ptr %0, null, !dbg !1568
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1568
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1569
  call void @llvm.dbg.value(metadata ptr %6, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 %3, ptr %2, align 4, !dbg !1570, !tbaa !862
  ret ptr %6, !dbg !1571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1578, metadata !DIExpression()), !dbg !1579
  %2 = icmp eq ptr %0, null, !dbg !1580
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1580
  %4 = load i32, ptr %3, align 8, !dbg !1581, !tbaa !1582
  ret i32 %4, !dbg !1584
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1585 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1589, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %1, metadata !1590, metadata !DIExpression()), !dbg !1591
  %3 = icmp eq ptr %0, null, !dbg !1592
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1592
  store i32 %1, ptr %4, align 8, !dbg !1593, !tbaa !1582
  ret void, !dbg !1594
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1599, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %1, metadata !1600, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %2, metadata !1601, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %1, metadata !1602, metadata !DIExpression()), !dbg !1607
  %4 = icmp eq ptr %0, null, !dbg !1608
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1608
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1609
  %7 = lshr i8 %1, 5, !dbg !1610
  %8 = zext i8 %7 to i64, !dbg !1610
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %9, metadata !1603, metadata !DIExpression()), !dbg !1607
  %10 = and i8 %1, 31, !dbg !1612
  %11 = zext i8 %10 to i32, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %11, metadata !1605, metadata !DIExpression()), !dbg !1607
  %12 = load i32, ptr %9, align 4, !dbg !1613, !tbaa !862
  %13 = lshr i32 %12, %11, !dbg !1614
  %14 = and i32 %13, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %14, metadata !1606, metadata !DIExpression()), !dbg !1607
  %15 = xor i32 %13, %2, !dbg !1616
  %16 = and i32 %15, 1, !dbg !1616
  %17 = shl nuw i32 %16, %11, !dbg !1617
  %18 = xor i32 %17, %12, !dbg !1618
  store i32 %18, ptr %9, align 4, !dbg !1618, !tbaa !862
  ret i32 %14, !dbg !1619
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1620 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1624, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %1, metadata !1625, metadata !DIExpression()), !dbg !1627
  %3 = icmp eq ptr %0, null, !dbg !1628
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1630
  call void @llvm.dbg.value(metadata ptr %4, metadata !1624, metadata !DIExpression()), !dbg !1627
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1631
  %6 = load i32, ptr %5, align 4, !dbg !1631, !tbaa !1632
  call void @llvm.dbg.value(metadata i32 %6, metadata !1626, metadata !DIExpression()), !dbg !1627
  store i32 %1, ptr %5, align 4, !dbg !1633, !tbaa !1632
  ret i32 %6, !dbg !1634
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1639, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata ptr %1, metadata !1640, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1642
  %4 = icmp eq ptr %0, null, !dbg !1643
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %5, metadata !1639, metadata !DIExpression()), !dbg !1642
  store i32 10, ptr %5, align 8, !dbg !1646, !tbaa !1582
  %6 = icmp ne ptr %1, null, !dbg !1647
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1649
  br i1 %8, label %10, label %9, !dbg !1649

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1650
  unreachable, !dbg !1650

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1651
  store ptr %1, ptr %11, align 8, !dbg !1652, !tbaa !1653
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1654
  store ptr %2, ptr %12, align 8, !dbg !1655, !tbaa !1656
  ret void, !dbg !1657
}

; Function Attrs: noreturn nounwind
declare !dbg !1658 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1663, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %1, metadata !1664, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata ptr %2, metadata !1665, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %3, metadata !1666, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata ptr %4, metadata !1667, metadata !DIExpression()), !dbg !1671
  %6 = icmp eq ptr %4, null, !dbg !1672
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %7, metadata !1668, metadata !DIExpression()), !dbg !1671
  %8 = tail call ptr @__errno_location() #41, !dbg !1673
  %9 = load i32, ptr %8, align 4, !dbg !1673, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %9, metadata !1669, metadata !DIExpression()), !dbg !1671
  %10 = load i32, ptr %7, align 8, !dbg !1674, !tbaa !1582
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1675
  %12 = load i32, ptr %11, align 4, !dbg !1675, !tbaa !1632
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1676
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1677
  %15 = load ptr, ptr %14, align 8, !dbg !1677, !tbaa !1653
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1678
  %17 = load ptr, ptr %16, align 8, !dbg !1678, !tbaa !1656
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1679
  call void @llvm.dbg.value(metadata i64 %18, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i32 %9, ptr %8, align 4, !dbg !1680, !tbaa !862
  ret i64 %18, !dbg !1681
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1682 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1688, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %1, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %2, metadata !1690, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %3, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %4, metadata !1692, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %5, metadata !1693, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %6, metadata !1694, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %7, metadata !1695, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %8, metadata !1696, metadata !DIExpression()), !dbg !1750
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1751
  %17 = icmp eq i64 %16, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i1 %17, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr null, metadata !1700, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1701, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %5, metadata !1703, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1750
  %18 = and i32 %5, 2, !dbg !1753
  %19 = icmp ne i32 %18, 0, !dbg !1753
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1753

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1754
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1755
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1756
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %34, metadata !1701, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %33, metadata !1700, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %32, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %31, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %30, metadata !1696, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %29, metadata !1695, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %28, metadata !1692, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.label(metadata !1743), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1750
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
  ], !dbg !1758

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 5, metadata !1692, metadata !DIExpression()), !dbg !1750
  br label %102, !dbg !1759

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 5, metadata !1692, metadata !DIExpression()), !dbg !1750
  br i1 %36, label %102, label %42, !dbg !1759

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1760
  br i1 %43, label %102, label %44, !dbg !1764

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1760, !tbaa !871
  br label %102, !dbg !1760

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !550, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %28, metadata !551, metadata !DIExpression()), !dbg !1765
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #38, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %46, metadata !552, metadata !DIExpression()), !dbg !1765
  %47 = icmp eq ptr %46, @.str.11.73, !dbg !1770
  br i1 %47, label %48, label %57, !dbg !1772

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1773
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1774
  call void @llvm.dbg.declare(metadata ptr %13, metadata !554, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr %13, metadata !1776, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata ptr %13, metadata !1784, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 8, metadata !1788, metadata !DIExpression()), !dbg !1789
  store i64 0, ptr %13, align 8, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %12, metadata !553, metadata !DIExpression(DW_OP_deref)), !dbg !1765
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1792
  %50 = icmp eq i64 %49, 3, !dbg !1794
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !553, metadata !DIExpression()), !dbg !1765
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1795
  %54 = icmp eq i32 %28, 9, !dbg !1795
  %55 = select i1 %54, ptr @.str.10.75, ptr @.str.12.76, !dbg !1795
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1796
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1796
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1765
  call void @llvm.dbg.value(metadata ptr %58, metadata !1695, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !550, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 %28, metadata !551, metadata !DIExpression()), !dbg !1797
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #38, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %59, metadata !552, metadata !DIExpression()), !dbg !1797
  %60 = icmp eq ptr %59, @.str.12.76, !dbg !1800
  br i1 %60, label %61, label %70, !dbg !1801

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1802
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %11, metadata !554, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %11, metadata !1776, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %11, metadata !1784, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 8, metadata !1788, metadata !DIExpression()), !dbg !1807
  store i64 0, ptr %11, align 8, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %10, metadata !553, metadata !DIExpression(DW_OP_deref)), !dbg !1797
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1810
  %63 = icmp eq i64 %62, 3, !dbg !1811
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !553, metadata !DIExpression()), !dbg !1797
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1812
  %67 = icmp eq i32 %28, 9, !dbg !1812
  %68 = select i1 %67, ptr @.str.10.75, ptr @.str.12.76, !dbg !1812
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1813
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1813
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1696, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %71, metadata !1695, metadata !DIExpression()), !dbg !1750
  br i1 %36, label %88, label %73, !dbg !1814

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1707, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1750
  %74 = load i8, ptr %71, align 1, !dbg !1816, !tbaa !871
  %75 = icmp eq i8 %74, 0, !dbg !1818
  br i1 %75, label %88, label %76, !dbg !1818

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1707, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 %79, metadata !1698, metadata !DIExpression()), !dbg !1750
  %80 = icmp ult i64 %79, %39, !dbg !1819
  br i1 %80, label %81, label %83, !dbg !1822

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1819
  store i8 %77, ptr %82, align 1, !dbg !1819, !tbaa !871
  br label %83, !dbg !1819

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %84, metadata !1698, metadata !DIExpression()), !dbg !1750
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %85, metadata !1707, metadata !DIExpression()), !dbg !1815
  %86 = load i8, ptr %85, align 1, !dbg !1816, !tbaa !871
  %87 = icmp eq i8 %86, 0, !dbg !1818
  br i1 %87, label %88, label %76, !dbg !1818, !llvm.loop !1824

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1826
  call void @llvm.dbg.value(metadata i64 %89, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %72, metadata !1700, metadata !DIExpression()), !dbg !1750
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %90, metadata !1701, metadata !DIExpression()), !dbg !1750
  br label %102, !dbg !1828

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1702, metadata !DIExpression()), !dbg !1750
  br label %93, !dbg !1829

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1750
  br i1 %36, label %102, label %96, !dbg !1830

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 2, metadata !1692, metadata !DIExpression()), !dbg !1750
  br label %102, !dbg !1831

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 2, metadata !1692, metadata !DIExpression()), !dbg !1750
  br i1 %36, label %102, label %96, !dbg !1831

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1832
  br i1 %98, label %102, label %99, !dbg !1836

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1832, !tbaa !871
  br label %102, !dbg !1832

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1750
  br label %102, !dbg !1837

101:                                              ; preds = %27
  call void @abort() #40, !dbg !1838
  unreachable, !dbg !1838

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1826
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.75, %42 ], [ @.str.10.75, %44 ], [ @.str.10.75, %41 ], [ %33, %27 ], [ @.str.12.76, %96 ], [ @.str.12.76, %99 ], [ @.str.12.76, %95 ], [ @.str.10.75, %40 ], [ @.str.12.76, %93 ], [ @.str.12.76, %92 ], !dbg !1750
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1750
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %108, metadata !1701, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %107, metadata !1700, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %106, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %105, metadata !1696, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %104, metadata !1695, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %103, metadata !1692, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1839
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
  br label %122, !dbg !1840

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1826
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1754
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1841
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %129, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %125, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %124, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %123, metadata !1691, metadata !DIExpression()), !dbg !1750
  %131 = icmp eq i64 %123, -1, !dbg !1842
  br i1 %131, label %132, label %136, !dbg !1843

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1844
  %134 = load i8, ptr %133, align 1, !dbg !1844, !tbaa !871
  %135 = icmp eq i8 %134, 0, !dbg !1845
  br i1 %135, label %579, label %138, !dbg !1846

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1847
  br i1 %137, label %579, label %138, !dbg !1846

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1848
  br i1 %114, label %139, label %152, !dbg !1849

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1851
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1852
  br i1 %141, label %142, label %144, !dbg !1852

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %143, metadata !1691, metadata !DIExpression()), !dbg !1750
  br label %144, !dbg !1854

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1854
  call void @llvm.dbg.value(metadata i64 %145, metadata !1691, metadata !DIExpression()), !dbg !1750
  %146 = icmp ugt i64 %140, %145, !dbg !1855
  br i1 %146, label %152, label %147, !dbg !1856

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %148, metadata !1858, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %107, metadata !1861, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %108, metadata !1862, metadata !DIExpression()), !dbg !1863
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1865
  %150 = icmp eq i32 %149, 0, !dbg !1866
  %151 = and i1 %150, %110, !dbg !1867
  br i1 %151, label %630, label %152, !dbg !1867

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %153, metadata !1691, metadata !DIExpression()), !dbg !1750
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1868
  %156 = load i8, ptr %155, align 1, !dbg !1868, !tbaa !871
  call void @llvm.dbg.value(metadata i8 %156, metadata !1719, metadata !DIExpression()), !dbg !1848
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
  ], !dbg !1869

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1870

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1871

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1848
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1875
  br i1 %160, label %177, label %161, !dbg !1875

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1877
  br i1 %162, label %163, label %165, !dbg !1881

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1877
  store i8 39, ptr %164, align 1, !dbg !1877, !tbaa !871
  br label %165, !dbg !1877

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %166, metadata !1698, metadata !DIExpression()), !dbg !1750
  %167 = icmp ult i64 %166, %130, !dbg !1882
  br i1 %167, label %168, label %170, !dbg !1885

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1882
  store i8 36, ptr %169, align 1, !dbg !1882, !tbaa !871
  br label %170, !dbg !1882

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %171, metadata !1698, metadata !DIExpression()), !dbg !1750
  %172 = icmp ult i64 %171, %130, !dbg !1886
  br i1 %172, label %173, label %175, !dbg !1889

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1886
  store i8 39, ptr %174, align 1, !dbg !1886, !tbaa !871
  br label %175, !dbg !1886

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %176, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %177, !dbg !1890

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1750
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %178, metadata !1698, metadata !DIExpression()), !dbg !1750
  %180 = icmp ult i64 %178, %130, !dbg !1891
  br i1 %180, label %181, label %183, !dbg !1894

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1891
  store i8 92, ptr %182, align 1, !dbg !1891, !tbaa !871
  br label %183, !dbg !1891

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %184, metadata !1698, metadata !DIExpression()), !dbg !1750
  br i1 %111, label %185, label %482, !dbg !1895

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1897
  %187 = icmp ult i64 %186, %153, !dbg !1898
  br i1 %187, label %188, label %439, !dbg !1899

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1900
  %190 = load i8, ptr %189, align 1, !dbg !1900, !tbaa !871
  %191 = add i8 %190, -48, !dbg !1901
  %192 = icmp ult i8 %191, 10, !dbg !1901
  br i1 %192, label %193, label %439, !dbg !1901

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1902
  br i1 %194, label %195, label %197, !dbg !1906

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1902
  store i8 48, ptr %196, align 1, !dbg !1902, !tbaa !871
  br label %197, !dbg !1902

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %198, metadata !1698, metadata !DIExpression()), !dbg !1750
  %199 = icmp ult i64 %198, %130, !dbg !1907
  br i1 %199, label %200, label %202, !dbg !1910

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1907
  store i8 48, ptr %201, align 1, !dbg !1907, !tbaa !871
  br label %202, !dbg !1907

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %203, metadata !1698, metadata !DIExpression()), !dbg !1750
  br label %439, !dbg !1911

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1912

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1913

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1914

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1916

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1918
  %210 = icmp ult i64 %209, %153, !dbg !1919
  br i1 %210, label %211, label %439, !dbg !1920

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1921
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1922
  %214 = load i8, ptr %213, align 1, !dbg !1922, !tbaa !871
  %215 = icmp eq i8 %214, 63, !dbg !1923
  br i1 %215, label %216, label %439, !dbg !1924

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1925
  %218 = load i8, ptr %217, align 1, !dbg !1925, !tbaa !871
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
  ], !dbg !1926

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1927

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %209, metadata !1712, metadata !DIExpression()), !dbg !1839
  %221 = icmp ult i64 %124, %130, !dbg !1929
  br i1 %221, label %222, label %224, !dbg !1932

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1929
  store i8 63, ptr %223, align 1, !dbg !1929, !tbaa !871
  br label %224, !dbg !1929

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %225, metadata !1698, metadata !DIExpression()), !dbg !1750
  %226 = icmp ult i64 %225, %130, !dbg !1933
  br i1 %226, label %227, label %229, !dbg !1936

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1933
  store i8 34, ptr %228, align 1, !dbg !1933, !tbaa !871
  br label %229, !dbg !1933

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %230, metadata !1698, metadata !DIExpression()), !dbg !1750
  %231 = icmp ult i64 %230, %130, !dbg !1937
  br i1 %231, label %232, label %234, !dbg !1940

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1937
  store i8 34, ptr %233, align 1, !dbg !1937, !tbaa !871
  br label %234, !dbg !1937

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %235, metadata !1698, metadata !DIExpression()), !dbg !1750
  %236 = icmp ult i64 %235, %130, !dbg !1941
  br i1 %236, label %237, label %239, !dbg !1944

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1941
  store i8 63, ptr %238, align 1, !dbg !1941, !tbaa !871
  br label %239, !dbg !1941

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %240, metadata !1698, metadata !DIExpression()), !dbg !1750
  br label %439, !dbg !1945

241:                                              ; preds = %152
  br label %251, !dbg !1946

242:                                              ; preds = %152
  br label %251, !dbg !1947

243:                                              ; preds = %152
  br label %249, !dbg !1948

244:                                              ; preds = %152
  br label %249, !dbg !1949

245:                                              ; preds = %152
  br label %251, !dbg !1950

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1951

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1952

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1955

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1957
  call void @llvm.dbg.label(metadata !1744), !dbg !1958
  br i1 %119, label %621, label %251, !dbg !1959

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1957
  call void @llvm.dbg.label(metadata !1746), !dbg !1961
  br i1 %109, label %493, label %450, !dbg !1962

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1963

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1964, !tbaa !871
  %256 = icmp eq i8 %255, 0, !dbg !1966
  br i1 %256, label %257, label %439, !dbg !1967

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1968
  br i1 %258, label %259, label %439, !dbg !1970

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1848
  br label %260, !dbg !1971

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1718, metadata !DIExpression()), !dbg !1848
  br i1 %116, label %262, label %439, !dbg !1972

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1974

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1848
  br i1 %116, label %264, label %439, !dbg !1975

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1976

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1979
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1981
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1981
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %270, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %269, metadata !1699, metadata !DIExpression()), !dbg !1750
  %271 = icmp ult i64 %124, %270, !dbg !1982
  br i1 %271, label %272, label %274, !dbg !1985

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1982
  store i8 39, ptr %273, align 1, !dbg !1982, !tbaa !871
  br label %274, !dbg !1982

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %275, metadata !1698, metadata !DIExpression()), !dbg !1750
  %276 = icmp ult i64 %275, %270, !dbg !1986
  br i1 %276, label %277, label %279, !dbg !1989

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1986
  store i8 92, ptr %278, align 1, !dbg !1986, !tbaa !871
  br label %279, !dbg !1986

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %280, metadata !1698, metadata !DIExpression()), !dbg !1750
  %281 = icmp ult i64 %280, %270, !dbg !1990
  br i1 %281, label %282, label %284, !dbg !1993

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1990
  store i8 39, ptr %283, align 1, !dbg !1990, !tbaa !871
  br label %284, !dbg !1990

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %285, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %439, !dbg !1994

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1995

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1720, metadata !DIExpression()), !dbg !1996
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !1997
  %289 = load ptr, ptr %288, align 8, !dbg !1997, !tbaa !795
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1997
  %292 = load i16, ptr %291, align 2, !dbg !1997, !tbaa !903
  %293 = and i16 %292, 16384, !dbg !1997
  %294 = icmp ne i16 %293, 0, !dbg !1999
  call void @llvm.dbg.value(metadata i1 %294, metadata !1723, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1996
  br label %337, !dbg !2000

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1724, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata ptr %14, metadata !1776, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata ptr %14, metadata !1784, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 8, metadata !1788, metadata !DIExpression()), !dbg !2005
  store i64 0, ptr %14, align 8, !dbg !2007
  call void @llvm.dbg.value(metadata i64 0, metadata !1720, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 1, metadata !1723, metadata !DIExpression()), !dbg !1996
  %296 = icmp eq i64 %153, -1, !dbg !2008
  br i1 %296, label %297, label %299, !dbg !2010

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %298, metadata !1691, metadata !DIExpression()), !dbg !1750
  br label %299, !dbg !2012

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1848
  call void @llvm.dbg.value(metadata i64 %300, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2013
  %301 = sub i64 %300, %129, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %15, metadata !1727, metadata !DIExpression(DW_OP_deref)), !dbg !2015
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %302, metadata !1731, metadata !DIExpression()), !dbg !2015
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2017

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1720, metadata !DIExpression()), !dbg !1996
  %304 = icmp ugt i64 %300, %129, !dbg !2018
  br i1 %304, label %306, label %332, !dbg !2020

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1996
  br label %332, !dbg !2021

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1720, metadata !DIExpression()), !dbg !1996
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2023
  %310 = load i8, ptr %309, align 1, !dbg !2023, !tbaa !871
  %311 = icmp eq i8 %310, 0, !dbg !2020
  br i1 %311, label %332, label %312, !dbg !2024

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %313, metadata !1720, metadata !DIExpression()), !dbg !1996
  %314 = add i64 %313, %129, !dbg !2026
  %315 = icmp eq i64 %313, %301, !dbg !2018
  br i1 %315, label %332, label %306, !dbg !2020, !llvm.loop !2027

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2028
  %319 = and i1 %318, %110, !dbg !2028
  call void @llvm.dbg.value(metadata i64 1, metadata !1732, metadata !DIExpression()), !dbg !2029
  br i1 %319, label %320, label %328, !dbg !2028

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1732, metadata !DIExpression()), !dbg !2029
  %322 = add i64 %321, %129, !dbg !2030
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2032
  %324 = load i8, ptr %323, align 1, !dbg !2032, !tbaa !871
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2033

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %326, metadata !1732, metadata !DIExpression()), !dbg !2029
  %327 = icmp eq i64 %326, %302, !dbg !2035
  br i1 %327, label %328, label %320, !dbg !2036, !llvm.loop !2037

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2039, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %329, metadata !1727, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %329, metadata !2041, metadata !DIExpression()), !dbg !2049
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2051
  %331 = icmp ne i32 %330, 0, !dbg !2052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %302, metadata !1720, metadata !DIExpression()), !dbg !1996
  br label %332, !dbg !2053

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %333, metadata !1720, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2055
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 0, metadata !1720, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2055
  call void @llvm.dbg.label(metadata !1749), !dbg !2056
  %336 = select i1 %109, i32 4, i32 2, !dbg !2057
  br label %626, !dbg !2057

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1848
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2059
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %339, metadata !1720, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %338, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i1 %340, metadata !1718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1848
  %341 = icmp ult i64 %339, 2, !dbg !2060
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2061
  br i1 %343, label %439, label %344, !dbg !2061

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %345, metadata !1740, metadata !DIExpression()), !dbg !2063
  br label %346, !dbg !2064

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1750
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1839
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2065
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1848
  call void @llvm.dbg.value(metadata i8 %352, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %351, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %349, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %347, metadata !1698, metadata !DIExpression()), !dbg !1750
  br i1 %342, label %397, label %353, !dbg !2066

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2071

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1848
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2074
  br i1 %355, label %372, label %356, !dbg !2074

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2076
  br i1 %357, label %358, label %360, !dbg !2080

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2076
  store i8 39, ptr %359, align 1, !dbg !2076, !tbaa !871
  br label %360, !dbg !2076

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %361, metadata !1698, metadata !DIExpression()), !dbg !1750
  %362 = icmp ult i64 %361, %130, !dbg !2081
  br i1 %362, label %363, label %365, !dbg !2084

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2081
  store i8 36, ptr %364, align 1, !dbg !2081, !tbaa !871
  br label %365, !dbg !2081

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %366, metadata !1698, metadata !DIExpression()), !dbg !1750
  %367 = icmp ult i64 %366, %130, !dbg !2085
  br i1 %367, label %368, label %370, !dbg !2088

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2085
  store i8 39, ptr %369, align 1, !dbg !2085, !tbaa !871
  br label %370, !dbg !2085

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %371, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %372, !dbg !2089

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1750
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %373, metadata !1698, metadata !DIExpression()), !dbg !1750
  %375 = icmp ult i64 %373, %130, !dbg !2090
  br i1 %375, label %376, label %378, !dbg !2093

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2090
  store i8 92, ptr %377, align 1, !dbg !2090, !tbaa !871
  br label %378, !dbg !2090

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %379, metadata !1698, metadata !DIExpression()), !dbg !1750
  %380 = icmp ult i64 %379, %130, !dbg !2094
  br i1 %380, label %381, label %385, !dbg !2097

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2094
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2094
  store i8 %383, ptr %384, align 1, !dbg !2094, !tbaa !871
  br label %385, !dbg !2094

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %386, metadata !1698, metadata !DIExpression()), !dbg !1750
  %387 = icmp ult i64 %386, %130, !dbg !2098
  br i1 %387, label %388, label %393, !dbg !2101

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2098
  %391 = or i8 %390, 48, !dbg !2098
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2098
  store i8 %391, ptr %392, align 1, !dbg !2098, !tbaa !871
  br label %393, !dbg !2098

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %394, metadata !1698, metadata !DIExpression()), !dbg !1750
  %395 = and i8 %352, 7, !dbg !2102
  %396 = or i8 %395, 48, !dbg !2103
  call void @llvm.dbg.value(metadata i8 %396, metadata !1719, metadata !DIExpression()), !dbg !1848
  br label %404, !dbg !2104

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2105

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2106
  br i1 %399, label %400, label %402, !dbg !2111

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2106
  store i8 92, ptr %401, align 1, !dbg !2106, !tbaa !871
  br label %402, !dbg !2106

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %403, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1848
  br label %404, !dbg !2112

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1750
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1848
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1848
  call void @llvm.dbg.value(metadata i8 %409, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %408, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %405, metadata !1698, metadata !DIExpression()), !dbg !1750
  %410 = add i64 %349, 1, !dbg !2113
  %411 = icmp ugt i64 %345, %410, !dbg !2115
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2116

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2117
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2117
  br i1 %415, label %416, label %427, !dbg !2117

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2120
  br i1 %417, label %418, label %420, !dbg !2124

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2120
  store i8 39, ptr %419, align 1, !dbg !2120, !tbaa !871
  br label %420, !dbg !2120

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %421, metadata !1698, metadata !DIExpression()), !dbg !1750
  %422 = icmp ult i64 %421, %130, !dbg !2125
  br i1 %422, label %423, label %425, !dbg !2128

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2125
  store i8 39, ptr %424, align 1, !dbg !2125, !tbaa !871
  br label %425, !dbg !2125

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %426, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %427, !dbg !2129

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2130
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %428, metadata !1698, metadata !DIExpression()), !dbg !1750
  %430 = icmp ult i64 %428, %130, !dbg !2131
  br i1 %430, label %431, label %433, !dbg !2134

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2131
  store i8 %409, ptr %432, align 1, !dbg !2131, !tbaa !871
  br label %433, !dbg !2131

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %434, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %410, metadata !1712, metadata !DIExpression()), !dbg !1839
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2135
  %436 = load i8, ptr %435, align 1, !dbg !2135, !tbaa !871
  call void @llvm.dbg.value(metadata i8 %436, metadata !1719, metadata !DIExpression()), !dbg !1848
  br label %346, !dbg !2136, !llvm.loop !2137

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i1 %340, metadata !1718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %408, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %349, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %405, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %338, metadata !1691, metadata !DIExpression()), !dbg !1750
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2140
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1750
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1754
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1839
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1848
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 %448, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1718, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %445, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %442, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %441, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %440, metadata !1691, metadata !DIExpression()), !dbg !1750
  br i1 %112, label %461, label %450, !dbg !2141

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
  br i1 %121, label %462, label %482, !dbg !2143

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2144

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
  %473 = lshr i8 %464, 5, !dbg !2145
  %474 = zext i8 %473 to i64, !dbg !2145
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2146
  %476 = load i32, ptr %475, align 4, !dbg !2146, !tbaa !862
  %477 = and i8 %464, 31, !dbg !2147
  %478 = zext i8 %477 to i32, !dbg !2147
  %479 = shl nuw i32 1, %478, !dbg !2148
  %480 = and i32 %476, %479, !dbg !2148
  %481 = icmp eq i32 %480, 0, !dbg !2148
  br i1 %481, label %482, label %493, !dbg !2149

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
  br i1 %154, label %493, label %529, !dbg !2150

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2140
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1750
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1754
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2151
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1848
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 %501, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1718, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %499, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %496, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %495, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %494, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.label(metadata !1747), !dbg !2152
  br i1 %110, label %621, label %503, !dbg !2153

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1848
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2155
  br i1 %504, label %521, label %505, !dbg !2155

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2157
  br i1 %506, label %507, label %509, !dbg !2161

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2157
  store i8 39, ptr %508, align 1, !dbg !2157, !tbaa !871
  br label %509, !dbg !2157

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %510, metadata !1698, metadata !DIExpression()), !dbg !1750
  %511 = icmp ult i64 %510, %502, !dbg !2162
  br i1 %511, label %512, label %514, !dbg !2165

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2162
  store i8 36, ptr %513, align 1, !dbg !2162, !tbaa !871
  br label %514, !dbg !2162

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %515, metadata !1698, metadata !DIExpression()), !dbg !1750
  %516 = icmp ult i64 %515, %502, !dbg !2166
  br i1 %516, label %517, label %519, !dbg !2169

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2166
  store i8 39, ptr %518, align 1, !dbg !2166, !tbaa !871
  br label %519, !dbg !2166

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %520, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %521, !dbg !2170

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1848
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %522, metadata !1698, metadata !DIExpression()), !dbg !1750
  %524 = icmp ult i64 %522, %502, !dbg !2171
  br i1 %524, label %525, label %527, !dbg !2174

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2171
  store i8 92, ptr %526, align 1, !dbg !2171, !tbaa !871
  br label %527, !dbg !2171

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %502, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 %501, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1718, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %499, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %496, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %528, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %494, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.label(metadata !1748), !dbg !2175
  br label %553, !dbg !2176

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2140
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1750
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1754
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2151
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2179
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 %538, metadata !1719, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1718, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %535, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %532, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %531, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %530, metadata !1691, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.label(metadata !1748), !dbg !2175
  %540 = xor i1 %534, true, !dbg !2176
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2176
  br i1 %541, label %553, label %542, !dbg !2176

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2180
  br i1 %543, label %544, label %546, !dbg !2184

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2180
  store i8 39, ptr %545, align 1, !dbg !2180, !tbaa !871
  br label %546, !dbg !2180

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %547, metadata !1698, metadata !DIExpression()), !dbg !1750
  %548 = icmp ult i64 %547, %539, !dbg !2185
  br i1 %548, label %549, label %551, !dbg !2188

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2185
  store i8 39, ptr %550, align 1, !dbg !2185, !tbaa !871
  br label %551, !dbg !2185

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %552, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1750
  br label %553, !dbg !2189

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1848
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %561, metadata !1698, metadata !DIExpression()), !dbg !1750
  %563 = icmp ult i64 %561, %554, !dbg !2190
  br i1 %563, label %564, label %566, !dbg !2193

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2190
  store i8 %555, ptr %565, align 1, !dbg !2190, !tbaa !871
  br label %566, !dbg !2190

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %567, metadata !1698, metadata !DIExpression()), !dbg !1750
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2194
  call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1750
  br label %569, !dbg !2195

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2140
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1750
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1754
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2151
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %576, metadata !1712, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 poison, metadata !1706, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %572, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %571, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %570, metadata !1691, metadata !DIExpression()), !dbg !1750
  %578 = add i64 %576, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %578, metadata !1712, metadata !DIExpression()), !dbg !1839
  br label %122, !dbg !2197, !llvm.loop !2198

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1689, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 poison, metadata !1704, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %125, metadata !1699, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %124, metadata !1698, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %123, metadata !1691, metadata !DIExpression()), !dbg !1750
  %580 = icmp ne i64 %124, 0, !dbg !2200
  %581 = xor i1 %110, true, !dbg !2202
  %582 = or i1 %580, %581, !dbg !2202
  %583 = or i1 %582, %111, !dbg !2202
  br i1 %583, label %584, label %621, !dbg !2202

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2203
  %586 = xor i1 %126, true, !dbg !2203
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2203
  br i1 %587, label %595, label %588, !dbg !2203

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2205

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2207
  br label %636, !dbg !2209

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2210
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2212
  br i1 %594, label %27, label %595, !dbg !2212

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2213
  %598 = or i1 %597, %596, !dbg !2215
  br i1 %598, label %614, label %599, !dbg !2215

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1700, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %124, metadata !1698, metadata !DIExpression()), !dbg !1750
  %600 = load i8, ptr %107, align 1, !dbg !2216, !tbaa !871
  %601 = icmp eq i8 %600, 0, !dbg !2219
  br i1 %601, label %614, label %602, !dbg !2219

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1700, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %605, metadata !1698, metadata !DIExpression()), !dbg !1750
  %606 = icmp ult i64 %605, %130, !dbg !2220
  br i1 %606, label %607, label %609, !dbg !2223

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2220
  store i8 %603, ptr %608, align 1, !dbg !2220, !tbaa !871
  br label %609, !dbg !2220

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %610, metadata !1698, metadata !DIExpression()), !dbg !1750
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2224
  call void @llvm.dbg.value(metadata ptr %611, metadata !1700, metadata !DIExpression()), !dbg !1750
  %612 = load i8, ptr %611, align 1, !dbg !2216, !tbaa !871
  %613 = icmp eq i8 %612, 0, !dbg !2219
  br i1 %613, label %614, label %602, !dbg !2219, !llvm.loop !2225

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1826
  call void @llvm.dbg.value(metadata i64 %615, metadata !1698, metadata !DIExpression()), !dbg !1750
  %616 = icmp ult i64 %615, %130, !dbg !2227
  br i1 %616, label %617, label %636, !dbg !2229

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2230
  store i8 0, ptr %618, align 1, !dbg !2231, !tbaa !871
  br label %636, !dbg !2230

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1749), !dbg !2056
  %620 = icmp eq i32 %103, 2, !dbg !2232
  br i1 %620, label %626, label %630, !dbg !2057

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1749), !dbg !2056
  %624 = icmp eq i32 %103, 2, !dbg !2232
  %625 = select i1 %109, i32 4, i32 2, !dbg !2057
  br i1 %624, label %626, label %630, !dbg !2057

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2057

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1692, metadata !DIExpression()), !dbg !1750
  %634 = and i32 %5, -3, !dbg !2233
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2234
  br label %636, !dbg !2235

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2236
}

; Function Attrs: nounwind
declare !dbg !2237 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2240 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2242 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %1, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %2, metadata !2248, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %0, metadata !2250, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2255, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr null, metadata !2256, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %2, metadata !2257, metadata !DIExpression()), !dbg !2263
  %4 = icmp eq ptr %2, null, !dbg !2265
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %5, metadata !2258, metadata !DIExpression()), !dbg !2263
  %6 = tail call ptr @__errno_location() #41, !dbg !2266
  %7 = load i32, ptr %6, align 4, !dbg !2266, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %7, metadata !2259, metadata !DIExpression()), !dbg !2263
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2267
  %9 = load i32, ptr %8, align 4, !dbg !2267, !tbaa !1632
  %10 = or i32 %9, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %10, metadata !2260, metadata !DIExpression()), !dbg !2263
  %11 = load i32, ptr %5, align 8, !dbg !2269, !tbaa !1582
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2270
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2271
  %14 = load ptr, ptr %13, align 8, !dbg !2271, !tbaa !1653
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2272
  %16 = load ptr, ptr %15, align 8, !dbg !2272, !tbaa !1656
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2273
  %18 = add i64 %17, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %18, metadata !2261, metadata !DIExpression()), !dbg !2263
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2275
  call void @llvm.dbg.value(metadata ptr %19, metadata !2262, metadata !DIExpression()), !dbg !2263
  %20 = load i32, ptr %5, align 8, !dbg !2276, !tbaa !1582
  %21 = load ptr, ptr %13, align 8, !dbg !2277, !tbaa !1653
  %22 = load ptr, ptr %15, align 8, !dbg !2278, !tbaa !1656
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2279
  store i32 %7, ptr %6, align 4, !dbg !2280, !tbaa !862
  ret ptr %19, !dbg !2281
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %1, metadata !2255, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %3, metadata !2257, metadata !DIExpression()), !dbg !2282
  %5 = icmp eq ptr %3, null, !dbg !2283
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2283
  call void @llvm.dbg.value(metadata ptr %6, metadata !2258, metadata !DIExpression()), !dbg !2282
  %7 = tail call ptr @__errno_location() #41, !dbg !2284
  %8 = load i32, ptr %7, align 4, !dbg !2284, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %8, metadata !2259, metadata !DIExpression()), !dbg !2282
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2285
  %10 = load i32, ptr %9, align 4, !dbg !2285, !tbaa !1632
  %11 = icmp eq ptr %2, null, !dbg !2286
  %12 = zext i1 %11 to i32, !dbg !2286
  %13 = or i32 %10, %12, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %13, metadata !2260, metadata !DIExpression()), !dbg !2282
  %14 = load i32, ptr %6, align 8, !dbg !2288, !tbaa !1582
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2289
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2290
  %17 = load ptr, ptr %16, align 8, !dbg !2290, !tbaa !1653
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2291
  %19 = load ptr, ptr %18, align 8, !dbg !2291, !tbaa !1656
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2292
  %21 = add i64 %20, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %21, metadata !2261, metadata !DIExpression()), !dbg !2282
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2294
  call void @llvm.dbg.value(metadata ptr %22, metadata !2262, metadata !DIExpression()), !dbg !2282
  %23 = load i32, ptr %6, align 8, !dbg !2295, !tbaa !1582
  %24 = load ptr, ptr %16, align 8, !dbg !2296, !tbaa !1653
  %25 = load ptr, ptr %18, align 8, !dbg !2297, !tbaa !1656
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2298
  store i32 %8, ptr %7, align 4, !dbg !2299, !tbaa !862
  br i1 %11, label %28, label %27, !dbg !2300

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2301, !tbaa !2303
  br label %28, !dbg !2304

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2305
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2306 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2311, !tbaa !795
  call void @llvm.dbg.value(metadata ptr %1, metadata !2308, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 1, metadata !2309, metadata !DIExpression()), !dbg !2313
  %2 = load i32, ptr @nslots, align 4, !tbaa !862
  call void @llvm.dbg.value(metadata i32 1, metadata !2309, metadata !DIExpression()), !dbg !2313
  %3 = icmp sgt i32 %2, 1, !dbg !2314
  br i1 %3, label %4, label %6, !dbg !2316

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2314
  br label %10, !dbg !2316

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2317
  %8 = load ptr, ptr %7, align 8, !dbg !2317, !tbaa !2319
  %9 = icmp eq ptr %8, @slot0, !dbg !2321
  br i1 %9, label %17, label %16, !dbg !2322

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2309, metadata !DIExpression()), !dbg !2313
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2323
  %13 = load ptr, ptr %12, align 8, !dbg !2323, !tbaa !2319
  tail call void @free(ptr noundef %13) #38, !dbg !2324
  %14 = add nuw nsw i64 %11, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %14, metadata !2309, metadata !DIExpression()), !dbg !2313
  %15 = icmp eq i64 %14, %5, !dbg !2314
  br i1 %15, label %6, label %10, !dbg !2316, !llvm.loop !2326

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2328
  store i64 256, ptr @slotvec0, align 8, !dbg !2330, !tbaa !2331
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2332, !tbaa !2319
  br label %17, !dbg !2333

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2334
  br i1 %18, label %20, label %19, !dbg !2336

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2337
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2339, !tbaa !795
  br label %20, !dbg !2340

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2341, !tbaa !862
  ret void, !dbg !2342
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %1, metadata !2346, metadata !DIExpression()), !dbg !2347
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2348
  ret ptr %3, !dbg !2349
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2350 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %1, metadata !2355, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %2, metadata !2356, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %3, metadata !2357, metadata !DIExpression()), !dbg !2370
  %6 = tail call ptr @__errno_location() #41, !dbg !2371
  %7 = load i32, ptr %6, align 4, !dbg !2371, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %7, metadata !2358, metadata !DIExpression()), !dbg !2370
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2372, !tbaa !795
  call void @llvm.dbg.value(metadata ptr %8, metadata !2359, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2360, metadata !DIExpression()), !dbg !2370
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2373
  br i1 %9, label %10, label %11, !dbg !2373

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2375
  unreachable, !dbg !2375

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2376, !tbaa !862
  %13 = icmp sgt i32 %12, %0, !dbg !2377
  br i1 %13, label %32, label %14, !dbg !2378

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2379
  call void @llvm.dbg.value(metadata i1 %15, metadata !2361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2380
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2381
  %16 = sext i32 %12 to i64, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %16, metadata !2364, metadata !DIExpression()), !dbg !2380
  store i64 %16, ptr %5, align 8, !dbg !2383, !tbaa !2303
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2384
  %18 = add nuw nsw i32 %0, 1, !dbg !2385
  %19 = sub i32 %18, %12, !dbg !2386
  %20 = sext i32 %19 to i64, !dbg !2387
  call void @llvm.dbg.value(metadata ptr %5, metadata !2364, metadata !DIExpression(DW_OP_deref)), !dbg !2380
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %21, metadata !2359, metadata !DIExpression()), !dbg !2370
  store ptr %21, ptr @slotvec, align 8, !dbg !2389, !tbaa !795
  br i1 %15, label %22, label %23, !dbg !2390

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2391, !tbaa.struct !2393
  br label %23, !dbg !2394

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2395, !tbaa !862
  %25 = sext i32 %24 to i64, !dbg !2396
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2396
  %27 = load i64, ptr %5, align 8, !dbg !2397, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %27, metadata !2364, metadata !DIExpression()), !dbg !2380
  %28 = sub nsw i64 %27, %25, !dbg !2398
  %29 = shl i64 %28, 4, !dbg !2399
  call void @llvm.dbg.value(metadata ptr %26, metadata !1784, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 %29, metadata !1788, metadata !DIExpression()), !dbg !2400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2402
  %30 = load i64, ptr %5, align 8, !dbg !2403, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %30, metadata !2364, metadata !DIExpression()), !dbg !2380
  %31 = trunc i64 %30 to i32, !dbg !2403
  store i32 %31, ptr @nslots, align 4, !dbg !2404, !tbaa !862
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2405
  br label %32, !dbg !2406

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2370
  call void @llvm.dbg.value(metadata ptr %33, metadata !2359, metadata !DIExpression()), !dbg !2370
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2407
  %36 = load i64, ptr %35, align 8, !dbg !2408, !tbaa !2331
  call void @llvm.dbg.value(metadata i64 %36, metadata !2365, metadata !DIExpression()), !dbg !2409
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2410
  %38 = load ptr, ptr %37, align 8, !dbg !2410, !tbaa !2319
  call void @llvm.dbg.value(metadata ptr %38, metadata !2367, metadata !DIExpression()), !dbg !2409
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2411
  %40 = load i32, ptr %39, align 4, !dbg !2411, !tbaa !1632
  %41 = or i32 %40, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %41, metadata !2368, metadata !DIExpression()), !dbg !2409
  %42 = load i32, ptr %3, align 8, !dbg !2413, !tbaa !1582
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2414
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2415
  %45 = load ptr, ptr %44, align 8, !dbg !2415, !tbaa !1653
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2416
  %47 = load ptr, ptr %46, align 8, !dbg !2416, !tbaa !1656
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2417
  call void @llvm.dbg.value(metadata i64 %48, metadata !2369, metadata !DIExpression()), !dbg !2409
  %49 = icmp ugt i64 %36, %48, !dbg !2418
  br i1 %49, label %60, label %50, !dbg !2420

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %51, metadata !2365, metadata !DIExpression()), !dbg !2409
  store i64 %51, ptr %35, align 8, !dbg !2423, !tbaa !2331
  %52 = icmp eq ptr %38, @slot0, !dbg !2424
  br i1 %52, label %54, label %53, !dbg !2426

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2427
  br label %54, !dbg !2427

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2428
  call void @llvm.dbg.value(metadata ptr %55, metadata !2367, metadata !DIExpression()), !dbg !2409
  store ptr %55, ptr %37, align 8, !dbg !2429, !tbaa !2319
  %56 = load i32, ptr %3, align 8, !dbg !2430, !tbaa !1582
  %57 = load ptr, ptr %44, align 8, !dbg !2431, !tbaa !1653
  %58 = load ptr, ptr %46, align 8, !dbg !2432, !tbaa !1656
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2433
  br label %60, !dbg !2434

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2409
  call void @llvm.dbg.value(metadata ptr %61, metadata !2367, metadata !DIExpression()), !dbg !2409
  store i32 %7, ptr %6, align 4, !dbg !2435, !tbaa !862
  ret ptr %61, !dbg !2436
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %2, metadata !2443, metadata !DIExpression()), !dbg !2444
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2445
  ret ptr %4, !dbg !2446
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2447 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata ptr %0, metadata !2346, metadata !DIExpression()), !dbg !2451
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2453
  ret ptr %2, !dbg !2454
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2455 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %1, metadata !2460, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2441, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %1, metadata !2443, metadata !DIExpression()), !dbg !2462
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2464
  ret ptr %3, !dbg !2465
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2466 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %1, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %2, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2473, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2486, metadata !DIExpression()), !dbg !2489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2489, !alias.scope !2477
  %5 = icmp eq i32 %1, 10, !dbg !2490
  br i1 %5, label %6, label %7, !dbg !2492

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2493, !noalias !2477
  unreachable, !dbg !2493

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2494, !tbaa !1582, !alias.scope !2477
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2495
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2496
  ret ptr %8, !dbg !2497
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2498 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %1, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %2, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %3, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2506, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510), !dbg !2513
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2486, metadata !DIExpression()), !dbg !2516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2516, !alias.scope !2510
  %6 = icmp eq i32 %1, 10, !dbg !2517
  br i1 %6, label %7, label %8, !dbg !2518

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2519, !noalias !2510
  unreachable, !dbg !2519

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2520, !tbaa !1582, !alias.scope !2510
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2521
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2522
  ret ptr %9, !dbg !2523
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2524 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %1, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 0, metadata !2470, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i32 %0, metadata !2471, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata ptr %1, metadata !2472, metadata !DIExpression()), !dbg !2531
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2533
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2473, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2486, metadata !DIExpression()), !dbg !2541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2541, !alias.scope !2535
  %4 = icmp eq i32 %0, 10, !dbg !2542
  br i1 %4, label %5, label %6, !dbg !2543

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2544, !noalias !2535
  unreachable, !dbg !2544

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2545, !tbaa !1582, !alias.scope !2535
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2546
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2547
  ret ptr %7, !dbg !2548
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2549 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata ptr %1, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i64 %2, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 0, metadata !2502, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %1, metadata !2504, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %2, metadata !2505, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2506, metadata !DIExpression()), !dbg !2560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2486, metadata !DIExpression()), !dbg !2567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2567, !alias.scope !2561
  %5 = icmp eq i32 %0, 10, !dbg !2568
  br i1 %5, label %6, label %7, !dbg !2569

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2570, !noalias !2561
  unreachable, !dbg !2570

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2571, !tbaa !1582, !alias.scope !2561
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2572
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2573
  ret ptr %8, !dbg !2574
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2575 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 %2, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2586, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %4, metadata !1599, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %2, metadata !1600, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %2, metadata !1602, metadata !DIExpression()), !dbg !2588
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2590
  %6 = lshr i8 %2, 5, !dbg !2591
  %7 = zext i8 %6 to i64, !dbg !2591
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2592
  call void @llvm.dbg.value(metadata ptr %8, metadata !1603, metadata !DIExpression()), !dbg !2588
  %9 = and i8 %2, 31, !dbg !2593
  %10 = zext i8 %9 to i32, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %10, metadata !1605, metadata !DIExpression()), !dbg !2588
  %11 = load i32, ptr %8, align 4, !dbg !2594, !tbaa !862
  %12 = lshr i32 %11, %10, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %12, metadata !1606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2588
  %13 = and i32 %12, 1, !dbg !2596
  %14 = xor i32 %13, 1, !dbg !2596
  %15 = shl nuw i32 %14, %10, !dbg !2597
  %16 = xor i32 %15, %11, !dbg !2598
  store i32 %16, ptr %8, align 4, !dbg !2598, !tbaa !862
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2600
  ret ptr %17, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2602 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 %1, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 -1, metadata !2580, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 %1, metadata !2581, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2582, metadata !DIExpression()), !dbg !2612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2613, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %3, metadata !1599, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 %1, metadata !1600, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 %1, metadata !1602, metadata !DIExpression()), !dbg !2614
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2616
  %5 = lshr i8 %1, 5, !dbg !2617
  %6 = zext i8 %5 to i64, !dbg !2617
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2618
  call void @llvm.dbg.value(metadata ptr %7, metadata !1603, metadata !DIExpression()), !dbg !2614
  %8 = and i8 %1, 31, !dbg !2619
  %9 = zext i8 %8 to i32, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %9, metadata !1605, metadata !DIExpression()), !dbg !2614
  %10 = load i32, ptr %7, align 4, !dbg !2620, !tbaa !862
  %11 = lshr i32 %10, %9, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %11, metadata !1606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2614
  %12 = and i32 %11, 1, !dbg !2622
  %13 = xor i32 %12, 1, !dbg !2622
  %14 = shl nuw i32 %13, %9, !dbg !2623
  %15 = xor i32 %14, %10, !dbg !2624
  store i32 %15, ptr %7, align 4, !dbg !2624, !tbaa !862
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2625
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2626
  ret ptr %16, !dbg !2627
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2628 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %0, metadata !2606, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 58, metadata !2607, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 -1, metadata !2580, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 58, metadata !2581, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2638, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %2, metadata !1599, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()), !dbg !2639
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %3, metadata !1603, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()), !dbg !2639
  %4 = load i32, ptr %3, align 4, !dbg !2642, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %4, metadata !1606, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2639
  %5 = or i32 %4, 67108864, !dbg !2643
  store i32 %5, ptr %3, align 4, !dbg !2643, !tbaa !862
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2644
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2645
  ret ptr %6, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2647 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %1, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 58, metadata !2581, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2582, metadata !DIExpression()), !dbg !2655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2656, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %3, metadata !1599, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()), !dbg !2657
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %4, metadata !1603, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()), !dbg !2657
  %5 = load i32, ptr %4, align 4, !dbg !2660, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %5, metadata !1606, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2657
  %6 = or i32 %5, 67108864, !dbg !2661
  store i32 %6, ptr %4, align 4, !dbg !2661, !tbaa !862
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2663
  ret ptr %7, !dbg !2664
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2665 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2486, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %0, metadata !2667, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1, metadata !2668, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2669, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2670, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2676
  %5 = icmp eq i32 %1, 10, !dbg !2677
  br i1 %5, label %6, label %7, !dbg !2678

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2679, !noalias !2680
  unreachable, !dbg !2679

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2486, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2676
  store i32 %1, ptr %4, align 8, !dbg !2683, !tbaa.struct !2587
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2683
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %4, metadata !1599, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()), !dbg !2684
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2686
  call void @llvm.dbg.value(metadata ptr %9, metadata !1603, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()), !dbg !2684
  %10 = load i32, ptr %9, align 4, !dbg !2687, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %10, metadata !1606, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2684
  %11 = or i32 %10, 67108864, !dbg !2688
  store i32 %11, ptr %9, align 4, !dbg !2688, !tbaa !862
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2689
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2690
  ret ptr %12, !dbg !2691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2692 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %1, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %2, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %3, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %0, metadata !2701, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %1, metadata !2706, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %3, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2715, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %5, metadata !1639, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %1, metadata !1640, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %5, metadata !1639, metadata !DIExpression()), !dbg !2716
  store i32 10, ptr %5, align 8, !dbg !2718, !tbaa !1582
  %6 = icmp ne ptr %1, null, !dbg !2719
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2720
  br i1 %8, label %10, label %9, !dbg !2720

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2721
  unreachable, !dbg !2721

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2722
  store ptr %1, ptr %11, align 8, !dbg !2723, !tbaa !1653
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2724
  store ptr %2, ptr %12, align 8, !dbg !2725, !tbaa !1656
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2726
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2727
  ret ptr %13, !dbg !2728
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2702 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2701, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %1, metadata !2706, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %3, metadata !2708, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %4, metadata !2709, metadata !DIExpression()), !dbg !2729
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2730
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2710, metadata !DIExpression()), !dbg !2731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2732, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %6, metadata !1639, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %1, metadata !1640, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %6, metadata !1639, metadata !DIExpression()), !dbg !2733
  store i32 10, ptr %6, align 8, !dbg !2735, !tbaa !1582
  %7 = icmp ne ptr %1, null, !dbg !2736
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2737
  br i1 %9, label %11, label %10, !dbg !2737

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2738
  unreachable, !dbg !2738

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2739
  store ptr %1, ptr %12, align 8, !dbg !2740, !tbaa !1653
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2741
  store ptr %2, ptr %13, align 8, !dbg !2742, !tbaa !1656
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2743
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2744
  ret ptr %14, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2746 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %2, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2696, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %2, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2706, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %2, metadata !2708, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2756
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2710, metadata !DIExpression()), !dbg !2759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2760, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %4, metadata !1639, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %0, metadata !1640, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %1, metadata !1641, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %4, metadata !1639, metadata !DIExpression()), !dbg !2761
  store i32 10, ptr %4, align 8, !dbg !2763, !tbaa !1582
  %5 = icmp ne ptr %0, null, !dbg !2764
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2765
  br i1 %7, label %9, label %8, !dbg !2765

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2766
  unreachable, !dbg !2766

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2767
  store ptr %0, ptr %10, align 8, !dbg !2768, !tbaa !1653
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2769
  store ptr %1, ptr %11, align 8, !dbg !2770, !tbaa !1656
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2771
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2772
  ret ptr %12, !dbg !2773
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2774 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %1, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %2, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %3, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %0, metadata !2706, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %2, metadata !2708, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %3, metadata !2709, metadata !DIExpression()), !dbg !2783
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2785
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2710, metadata !DIExpression()), !dbg !2786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2787, !tbaa.struct !2587
  call void @llvm.dbg.value(metadata ptr %5, metadata !1639, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %0, metadata !1640, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %1, metadata !1641, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %5, metadata !1639, metadata !DIExpression()), !dbg !2788
  store i32 10, ptr %5, align 8, !dbg !2790, !tbaa !1582
  %6 = icmp ne ptr %0, null, !dbg !2791
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2792
  br i1 %8, label %10, label %9, !dbg !2792

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2793
  unreachable, !dbg !2793

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2794
  store ptr %0, ptr %11, align 8, !dbg !2795, !tbaa !1653
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2796
  store ptr %1, ptr %12, align 8, !dbg !2797, !tbaa !1656
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2798
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2799
  ret ptr %13, !dbg !2800
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %1, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %2, metadata !2807, metadata !DIExpression()), !dbg !2808
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2809
  ret ptr %4, !dbg !2810
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2811 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %1, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %1, metadata !2807, metadata !DIExpression()), !dbg !2818
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2820
  ret ptr %3, !dbg !2821
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2822 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %1, metadata !2806, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 -1, metadata !2807, metadata !DIExpression()), !dbg !2829
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2831
  ret ptr %3, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2826, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr %0, metadata !2827, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 -1, metadata !2807, metadata !DIExpression()), !dbg !2841
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2843
  ret ptr %2, !dbg !2844
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2845 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %2, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %3, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %5, metadata !2889, metadata !DIExpression()), !dbg !2890
  %7 = icmp eq ptr %1, null, !dbg !2891
  br i1 %7, label %10, label %8, !dbg !2893

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2894
  br label %12, !dbg !2894

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #38, !dbg !2895
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #38, !dbg !2896
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2896
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2897
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #38, !dbg !2898
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #38, !dbg !2898
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2899
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
  ], !dbg !2900

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #38, !dbg !2901
  %21 = load ptr, ptr %4, align 8, !dbg !2901, !tbaa !795
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2901
  br label %147, !dbg !2903

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #38, !dbg !2904
  %25 = load ptr, ptr %4, align 8, !dbg !2904, !tbaa !795
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2904
  %27 = load ptr, ptr %26, align 8, !dbg !2904, !tbaa !795
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2904
  br label %147, !dbg !2905

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #38, !dbg !2906
  %31 = load ptr, ptr %4, align 8, !dbg !2906, !tbaa !795
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2906
  %33 = load ptr, ptr %32, align 8, !dbg !2906, !tbaa !795
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2906
  %35 = load ptr, ptr %34, align 8, !dbg !2906, !tbaa !795
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2906
  br label %147, !dbg !2907

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #38, !dbg !2908
  %39 = load ptr, ptr %4, align 8, !dbg !2908, !tbaa !795
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2908
  %41 = load ptr, ptr %40, align 8, !dbg !2908, !tbaa !795
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2908
  %43 = load ptr, ptr %42, align 8, !dbg !2908, !tbaa !795
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2908
  %45 = load ptr, ptr %44, align 8, !dbg !2908, !tbaa !795
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2908
  br label %147, !dbg !2909

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #38, !dbg !2910
  %49 = load ptr, ptr %4, align 8, !dbg !2910, !tbaa !795
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2910
  %51 = load ptr, ptr %50, align 8, !dbg !2910, !tbaa !795
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2910
  %53 = load ptr, ptr %52, align 8, !dbg !2910, !tbaa !795
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2910
  %55 = load ptr, ptr %54, align 8, !dbg !2910, !tbaa !795
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2910
  %57 = load ptr, ptr %56, align 8, !dbg !2910, !tbaa !795
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2910
  br label %147, !dbg !2911

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #38, !dbg !2912
  %61 = load ptr, ptr %4, align 8, !dbg !2912, !tbaa !795
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2912
  %63 = load ptr, ptr %62, align 8, !dbg !2912, !tbaa !795
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2912
  %65 = load ptr, ptr %64, align 8, !dbg !2912, !tbaa !795
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2912
  %67 = load ptr, ptr %66, align 8, !dbg !2912, !tbaa !795
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2912
  %69 = load ptr, ptr %68, align 8, !dbg !2912, !tbaa !795
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2912
  %71 = load ptr, ptr %70, align 8, !dbg !2912, !tbaa !795
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2912
  br label %147, !dbg !2913

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #38, !dbg !2914
  %75 = load ptr, ptr %4, align 8, !dbg !2914, !tbaa !795
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2914
  %77 = load ptr, ptr %76, align 8, !dbg !2914, !tbaa !795
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2914
  %79 = load ptr, ptr %78, align 8, !dbg !2914, !tbaa !795
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2914
  %81 = load ptr, ptr %80, align 8, !dbg !2914, !tbaa !795
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2914
  %83 = load ptr, ptr %82, align 8, !dbg !2914, !tbaa !795
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2914
  %85 = load ptr, ptr %84, align 8, !dbg !2914, !tbaa !795
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2914
  %87 = load ptr, ptr %86, align 8, !dbg !2914, !tbaa !795
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2914
  br label %147, !dbg !2915

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #38, !dbg !2916
  %91 = load ptr, ptr %4, align 8, !dbg !2916, !tbaa !795
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2916
  %93 = load ptr, ptr %92, align 8, !dbg !2916, !tbaa !795
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2916
  %95 = load ptr, ptr %94, align 8, !dbg !2916, !tbaa !795
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2916
  %97 = load ptr, ptr %96, align 8, !dbg !2916, !tbaa !795
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2916
  %99 = load ptr, ptr %98, align 8, !dbg !2916, !tbaa !795
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2916
  %101 = load ptr, ptr %100, align 8, !dbg !2916, !tbaa !795
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2916
  %103 = load ptr, ptr %102, align 8, !dbg !2916, !tbaa !795
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2916
  %105 = load ptr, ptr %104, align 8, !dbg !2916, !tbaa !795
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2916
  br label %147, !dbg !2917

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #38, !dbg !2918
  %109 = load ptr, ptr %4, align 8, !dbg !2918, !tbaa !795
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2918
  %111 = load ptr, ptr %110, align 8, !dbg !2918, !tbaa !795
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2918
  %113 = load ptr, ptr %112, align 8, !dbg !2918, !tbaa !795
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2918
  %115 = load ptr, ptr %114, align 8, !dbg !2918, !tbaa !795
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2918
  %117 = load ptr, ptr %116, align 8, !dbg !2918, !tbaa !795
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2918
  %119 = load ptr, ptr %118, align 8, !dbg !2918, !tbaa !795
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2918
  %121 = load ptr, ptr %120, align 8, !dbg !2918, !tbaa !795
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2918
  %123 = load ptr, ptr %122, align 8, !dbg !2918, !tbaa !795
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2918
  %125 = load ptr, ptr %124, align 8, !dbg !2918, !tbaa !795
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2918
  br label %147, !dbg !2919

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #38, !dbg !2920
  %129 = load ptr, ptr %4, align 8, !dbg !2920, !tbaa !795
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2920
  %131 = load ptr, ptr %130, align 8, !dbg !2920, !tbaa !795
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2920
  %133 = load ptr, ptr %132, align 8, !dbg !2920, !tbaa !795
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2920
  %135 = load ptr, ptr %134, align 8, !dbg !2920, !tbaa !795
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2920
  %137 = load ptr, ptr %136, align 8, !dbg !2920, !tbaa !795
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2920
  %139 = load ptr, ptr %138, align 8, !dbg !2920, !tbaa !795
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2920
  %141 = load ptr, ptr %140, align 8, !dbg !2920, !tbaa !795
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2920
  %143 = load ptr, ptr %142, align 8, !dbg !2920, !tbaa !795
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2920
  %145 = load ptr, ptr %144, align 8, !dbg !2920, !tbaa !795
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2920
  br label %147, !dbg !2921

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2922
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %1, metadata !2928, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %2, metadata !2929, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %3, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 0, metadata !2932, metadata !DIExpression()), !dbg !2933
  br label %6, !dbg !2934

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2936
  call void @llvm.dbg.value(metadata i64 %7, metadata !2932, metadata !DIExpression()), !dbg !2933
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2937
  %9 = load ptr, ptr %8, align 8, !dbg !2937, !tbaa !795
  %10 = icmp eq ptr %9, null, !dbg !2939
  %11 = add i64 %7, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %11, metadata !2932, metadata !DIExpression()), !dbg !2933
  br i1 %10, label %12, label %6, !dbg !2939, !llvm.loop !2941

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2943
  ret void, !dbg !2944
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2945 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2960, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %1, metadata !2961, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2964, metadata !DIExpression()), !dbg !2969
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !2970
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2966, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 0, metadata !2965, metadata !DIExpression()), !dbg !2968
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2965, metadata !DIExpression()), !dbg !2968
  %10 = icmp sgt i32 %9, -1, !dbg !2972
  br i1 %10, label %18, label %11, !dbg !2972

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2972
  store i32 %12, ptr %7, align 8, !dbg !2972
  %13 = icmp ult i32 %9, -7, !dbg !2972
  br i1 %13, label %14, label %18, !dbg !2972

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2972
  %16 = sext i32 %9 to i64, !dbg !2972
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2972
  br label %22, !dbg !2972

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2972
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2972
  store ptr %21, ptr %4, align 8, !dbg !2972
  br label %22, !dbg !2972

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2972
  %25 = load ptr, ptr %24, align 8, !dbg !2972
  store ptr %25, ptr %6, align 8, !dbg !2975, !tbaa !795
  %26 = icmp eq ptr %25, null, !dbg !2976
  br i1 %26, label %197, label %27, !dbg !2977

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 1, metadata !2965, metadata !DIExpression()), !dbg !2968
  %28 = icmp sgt i32 %23, -1, !dbg !2972
  br i1 %28, label %36, label %29, !dbg !2972

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2972
  store i32 %30, ptr %7, align 8, !dbg !2972
  %31 = icmp ult i32 %23, -7, !dbg !2972
  br i1 %31, label %32, label %36, !dbg !2972

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2972
  %34 = sext i32 %23 to i64, !dbg !2972
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2972
  br label %40, !dbg !2972

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2972
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2972
  store ptr %39, ptr %4, align 8, !dbg !2972
  br label %40, !dbg !2972

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2972
  %43 = load ptr, ptr %42, align 8, !dbg !2972
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2978
  store ptr %43, ptr %44, align 8, !dbg !2975, !tbaa !795
  %45 = icmp eq ptr %43, null, !dbg !2976
  br i1 %45, label %197, label %46, !dbg !2977

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 2, metadata !2965, metadata !DIExpression()), !dbg !2968
  %47 = icmp sgt i32 %41, -1, !dbg !2972
  br i1 %47, label %55, label %48, !dbg !2972

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2972
  store i32 %49, ptr %7, align 8, !dbg !2972
  %50 = icmp ult i32 %41, -7, !dbg !2972
  br i1 %50, label %51, label %55, !dbg !2972

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2972
  %53 = sext i32 %41 to i64, !dbg !2972
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2972
  br label %59, !dbg !2972

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2972
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2972
  store ptr %58, ptr %4, align 8, !dbg !2972
  br label %59, !dbg !2972

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2972
  %62 = load ptr, ptr %61, align 8, !dbg !2972
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2978
  store ptr %62, ptr %63, align 8, !dbg !2975, !tbaa !795
  %64 = icmp eq ptr %62, null, !dbg !2976
  br i1 %64, label %197, label %65, !dbg !2977

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 3, metadata !2965, metadata !DIExpression()), !dbg !2968
  %66 = icmp sgt i32 %60, -1, !dbg !2972
  br i1 %66, label %74, label %67, !dbg !2972

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2972
  store i32 %68, ptr %7, align 8, !dbg !2972
  %69 = icmp ult i32 %60, -7, !dbg !2972
  br i1 %69, label %70, label %74, !dbg !2972

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2972
  %72 = sext i32 %60 to i64, !dbg !2972
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2972
  br label %78, !dbg !2972

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2972
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2972
  store ptr %77, ptr %4, align 8, !dbg !2972
  br label %78, !dbg !2972

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2972
  %81 = load ptr, ptr %80, align 8, !dbg !2972
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2978
  store ptr %81, ptr %82, align 8, !dbg !2975, !tbaa !795
  %83 = icmp eq ptr %81, null, !dbg !2976
  br i1 %83, label %197, label %84, !dbg !2977

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 4, metadata !2965, metadata !DIExpression()), !dbg !2968
  %85 = icmp sgt i32 %79, -1, !dbg !2972
  br i1 %85, label %93, label %86, !dbg !2972

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2972
  store i32 %87, ptr %7, align 8, !dbg !2972
  %88 = icmp ult i32 %79, -7, !dbg !2972
  br i1 %88, label %89, label %93, !dbg !2972

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2972
  %91 = sext i32 %79 to i64, !dbg !2972
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2972
  br label %97, !dbg !2972

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2972
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2972
  store ptr %96, ptr %4, align 8, !dbg !2972
  br label %97, !dbg !2972

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2972
  %100 = load ptr, ptr %99, align 8, !dbg !2972
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2978
  store ptr %100, ptr %101, align 8, !dbg !2975, !tbaa !795
  %102 = icmp eq ptr %100, null, !dbg !2976
  br i1 %102, label %197, label %103, !dbg !2977

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 5, metadata !2965, metadata !DIExpression()), !dbg !2968
  %104 = icmp sgt i32 %98, -1, !dbg !2972
  br i1 %104, label %112, label %105, !dbg !2972

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2972
  store i32 %106, ptr %7, align 8, !dbg !2972
  %107 = icmp ult i32 %98, -7, !dbg !2972
  br i1 %107, label %108, label %112, !dbg !2972

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2972
  %110 = sext i32 %98 to i64, !dbg !2972
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2972
  br label %116, !dbg !2972

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2972
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2972
  store ptr %115, ptr %4, align 8, !dbg !2972
  br label %116, !dbg !2972

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2972
  %119 = load ptr, ptr %118, align 8, !dbg !2972
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2978
  store ptr %119, ptr %120, align 8, !dbg !2975, !tbaa !795
  %121 = icmp eq ptr %119, null, !dbg !2976
  br i1 %121, label %197, label %122, !dbg !2977

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 6, metadata !2965, metadata !DIExpression()), !dbg !2968
  %123 = icmp sgt i32 %117, -1, !dbg !2972
  br i1 %123, label %131, label %124, !dbg !2972

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2972
  store i32 %125, ptr %7, align 8, !dbg !2972
  %126 = icmp ult i32 %117, -7, !dbg !2972
  br i1 %126, label %127, label %131, !dbg !2972

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2972
  %129 = sext i32 %117 to i64, !dbg !2972
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2972
  br label %135, !dbg !2972

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2972
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2972
  store ptr %134, ptr %4, align 8, !dbg !2972
  br label %135, !dbg !2972

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2972
  %138 = load ptr, ptr %137, align 8, !dbg !2972
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2978
  store ptr %138, ptr %139, align 8, !dbg !2975, !tbaa !795
  %140 = icmp eq ptr %138, null, !dbg !2976
  br i1 %140, label %197, label %141, !dbg !2977

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 7, metadata !2965, metadata !DIExpression()), !dbg !2968
  %142 = icmp sgt i32 %136, -1, !dbg !2972
  br i1 %142, label %150, label %143, !dbg !2972

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2972
  store i32 %144, ptr %7, align 8, !dbg !2972
  %145 = icmp ult i32 %136, -7, !dbg !2972
  br i1 %145, label %146, label %150, !dbg !2972

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2972
  %148 = sext i32 %136 to i64, !dbg !2972
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2972
  br label %154, !dbg !2972

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2972
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2972
  store ptr %153, ptr %4, align 8, !dbg !2972
  br label %154, !dbg !2972

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2972
  %157 = load ptr, ptr %156, align 8, !dbg !2972
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2978
  store ptr %157, ptr %158, align 8, !dbg !2975, !tbaa !795
  %159 = icmp eq ptr %157, null, !dbg !2976
  br i1 %159, label %197, label %160, !dbg !2977

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 8, metadata !2965, metadata !DIExpression()), !dbg !2968
  %161 = icmp sgt i32 %155, -1, !dbg !2972
  br i1 %161, label %169, label %162, !dbg !2972

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2972
  store i32 %163, ptr %7, align 8, !dbg !2972
  %164 = icmp ult i32 %155, -7, !dbg !2972
  br i1 %164, label %165, label %169, !dbg !2972

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2972
  %167 = sext i32 %155 to i64, !dbg !2972
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2972
  br label %173, !dbg !2972

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2972
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2972
  store ptr %172, ptr %4, align 8, !dbg !2972
  br label %173, !dbg !2972

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2972
  %176 = load ptr, ptr %175, align 8, !dbg !2972
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2978
  store ptr %176, ptr %177, align 8, !dbg !2975, !tbaa !795
  %178 = icmp eq ptr %176, null, !dbg !2976
  br i1 %178, label %197, label %179, !dbg !2977

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 9, metadata !2965, metadata !DIExpression()), !dbg !2968
  %180 = icmp sgt i32 %174, -1, !dbg !2972
  br i1 %180, label %188, label %181, !dbg !2972

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2972
  store i32 %182, ptr %7, align 8, !dbg !2972
  %183 = icmp ult i32 %174, -7, !dbg !2972
  br i1 %183, label %184, label %188, !dbg !2972

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2972
  %186 = sext i32 %174 to i64, !dbg !2972
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2972
  br label %191, !dbg !2972

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2972
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2972
  store ptr %190, ptr %4, align 8, !dbg !2972
  br label %191, !dbg !2972

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2972
  %193 = load ptr, ptr %192, align 8, !dbg !2972
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2978
  store ptr %193, ptr %194, align 8, !dbg !2975, !tbaa !795
  %195 = icmp eq ptr %193, null, !dbg !2976
  %196 = select i1 %195, i64 9, i64 10, !dbg !2977
  br label %197, !dbg !2977

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2979
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2980
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !2981
  ret void, !dbg !2981
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2982 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2992
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2990, metadata !DIExpression()), !dbg !2993
  call void @llvm.va_start(ptr nonnull %5), !dbg !2994
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2995, !tbaa.struct !1286
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2995
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2995
  call void @llvm.va_end(ptr nonnull %5), !dbg !2996
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2997
  ret void, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2998 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2999, !tbaa !795
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !2999
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #38, !dbg !3000
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #38, !dbg !3000
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #38, !dbg !3001
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21.106) #38, !dbg !3001
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22.107, i32 noundef 5) #38, !dbg !3002
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.108) #38, !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %2, metadata !3017, metadata !DIExpression()), !dbg !3018
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %4, metadata !3021, metadata !DIExpression()), !dbg !3026
  %5 = icmp eq ptr %4, null, !dbg !3028
  br i1 %5, label %6, label %7, !dbg !3030

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3031
  unreachable, !dbg !3031

7:                                                ; preds = %3
  ret ptr %4, !dbg !3032
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3014 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %2, metadata !3017, metadata !DIExpression()), !dbg !3033
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3034
  call void @llvm.dbg.value(metadata ptr %4, metadata !3021, metadata !DIExpression()), !dbg !3035
  %5 = icmp eq ptr %4, null, !dbg !3037
  br i1 %5, label %6, label %7, !dbg !3038

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3039
  unreachable, !dbg !3039

7:                                                ; preds = %3
  ret ptr %4, !dbg !3040
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3041 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3048
  %3 = icmp eq ptr %2, null, !dbg !3050
  br i1 %3, label %4, label %5, !dbg !3051

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3052
  unreachable, !dbg !3052

5:                                                ; preds = %1
  ret ptr %2, !dbg !3053
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3054 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %0, metadata !3061, metadata !DIExpression()), !dbg !3065
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3068
  %3 = icmp eq ptr %2, null, !dbg !3070
  br i1 %3, label %4, label %5, !dbg !3071

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3072
  unreachable, !dbg !3072

5:                                                ; preds = %1
  ret ptr %2, !dbg !3073
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3074 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %0, metadata !3045, metadata !DIExpression()), !dbg !3080
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3083
  %3 = icmp eq ptr %2, null, !dbg !3085
  br i1 %3, label %4, label %5, !dbg !3086

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3087
  unreachable, !dbg !3087

5:                                                ; preds = %1
  ret ptr %2, !dbg !3088
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3101
  %3 = icmp eq i64 %1, 0, !dbg !3103
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3103
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %5, metadata !3021, metadata !DIExpression()), !dbg !3105
  %6 = icmp eq ptr %5, null, !dbg !3107
  br i1 %6, label %7, label %8, !dbg !3108

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3109
  unreachable, !dbg !3109

8:                                                ; preds = %2
  ret ptr %5, !dbg !3110
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3111 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3112 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3125
  %3 = icmp eq i64 %1, 0, !dbg !3127
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3127
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %5, metadata !3021, metadata !DIExpression()), !dbg !3129
  %6 = icmp eq ptr %5, null, !dbg !3131
  br i1 %6, label %7, label %8, !dbg !3132

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3133
  unreachable, !dbg !3133

8:                                                ; preds = %2
  ret ptr %5, !dbg !3134
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3135 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %2, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3148
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %4, metadata !3021, metadata !DIExpression()), !dbg !3151
  %5 = icmp eq ptr %4, null, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3154

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3155
  unreachable, !dbg !3155

7:                                                ; preds = %3
  ret ptr %4, !dbg !3156
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr null, metadata !3013, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3164
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3166
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3167
  %4 = icmp eq ptr %3, null, !dbg !3169
  br i1 %4, label %5, label %6, !dbg !3170

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3171
  unreachable, !dbg !3171

6:                                                ; preds = %2
  ret ptr %3, !dbg !3172
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3173 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr null, metadata !3139, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !3141, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr null, metadata !3143, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3182
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3184
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3185
  %4 = icmp eq ptr %3, null, !dbg !3187
  br i1 %4, label %5, label %6, !dbg !3188

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3189
  unreachable, !dbg !3189

6:                                                ; preds = %2
  ret ptr %3, !dbg !3190
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3191 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %0, metadata !730, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %1, metadata !731, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()), !dbg !3198
  %3 = load i64, ptr %1, align 8, !dbg !3200, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %3, metadata !733, metadata !DIExpression()), !dbg !3198
  %4 = icmp eq ptr %0, null, !dbg !3201
  br i1 %4, label %5, label %8, !dbg !3203

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3204
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3207
  br label %15, !dbg !3207

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3208
  %10 = add nuw i64 %9, 1, !dbg !3208
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3208
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3208
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %13, metadata !733, metadata !DIExpression()), !dbg !3198
  br i1 %12, label %14, label %15, !dbg !3211

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3212
  unreachable, !dbg !3212

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3198
  call void @llvm.dbg.value(metadata i64 %16, metadata !733, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %16, metadata !3016, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 1, metadata !3017, metadata !DIExpression()), !dbg !3213
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %17, metadata !3021, metadata !DIExpression()), !dbg !3216
  %18 = icmp eq ptr %17, null, !dbg !3218
  br i1 %18, label %19, label %20, !dbg !3219

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3220
  unreachable, !dbg !3220

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !730, metadata !DIExpression()), !dbg !3198
  store i64 %16, ptr %1, align 8, !dbg !3221, !tbaa !2303
  ret ptr %17, !dbg !3222
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !730, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %1, metadata !731, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !732, metadata !DIExpression()), !dbg !3223
  %4 = load i64, ptr %1, align 8, !dbg !3224, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %4, metadata !733, metadata !DIExpression()), !dbg !3223
  %5 = icmp eq ptr %0, null, !dbg !3225
  br i1 %5, label %6, label %13, !dbg !3226

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3227
  br i1 %7, label %8, label %20, !dbg !3228

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %9, metadata !733, metadata !DIExpression()), !dbg !3223
  %10 = icmp ugt i64 %2, 128, !dbg !3231
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %12, metadata !733, metadata !DIExpression()), !dbg !3223
  br label %20, !dbg !3233

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3234
  %15 = add nuw i64 %14, 1, !dbg !3234
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3234
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3234
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %18, metadata !733, metadata !DIExpression()), !dbg !3223
  br i1 %17, label %19, label %20, !dbg !3235

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3236
  unreachable, !dbg !3236

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3223
  call void @llvm.dbg.value(metadata i64 %21, metadata !733, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %21, metadata !3016, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %2, metadata !3017, metadata !DIExpression()), !dbg !3237
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3239
  call void @llvm.dbg.value(metadata ptr %22, metadata !3021, metadata !DIExpression()), !dbg !3240
  %23 = icmp eq ptr %22, null, !dbg !3242
  br i1 %23, label %24, label %25, !dbg !3243

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3244
  unreachable, !dbg !3244

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !730, metadata !DIExpression()), !dbg !3223
  store i64 %21, ptr %1, align 8, !dbg !3245, !tbaa !2303
  ret ptr %22, !dbg !3246
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %3, metadata !748, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %4, metadata !749, metadata !DIExpression()), !dbg !3247
  %6 = load i64, ptr %1, align 8, !dbg !3248, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %6, metadata !750, metadata !DIExpression()), !dbg !3247
  %7 = ashr i64 %6, 1, !dbg !3249
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3249
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3249
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %10, metadata !751, metadata !DIExpression()), !dbg !3247
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %11, metadata !751, metadata !DIExpression()), !dbg !3247
  %12 = icmp sgt i64 %3, -1, !dbg !3252
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3254
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %15, metadata !751, metadata !DIExpression()), !dbg !3247
  %16 = icmp slt i64 %4, 0, !dbg !3255
  br i1 %16, label %17, label %30, !dbg !3255

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3255
  br i1 %18, label %19, label %24, !dbg !3255

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3255
  %21 = udiv i64 9223372036854775807, %20, !dbg !3255
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3255
  br i1 %23, label %46, label %43, !dbg !3255

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3255
  br i1 %25, label %43, label %26, !dbg !3255

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3255
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3255
  %29 = icmp ult i64 %28, %15, !dbg !3255
  br i1 %29, label %46, label %43, !dbg !3255

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3255
  br i1 %31, label %43, label %32, !dbg !3255

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3255
  br i1 %33, label %34, label %40, !dbg !3255

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3255
  br i1 %35, label %43, label %36, !dbg !3255

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3255
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3255
  %39 = icmp ult i64 %38, %4, !dbg !3255
  br i1 %39, label %46, label %43, !dbg !3255

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3255
  br i1 %42, label %46, label %43, !dbg !3255

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !752, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  %44 = mul i64 %15, %4, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %44, metadata !752, metadata !DIExpression()), !dbg !3247
  %45 = icmp slt i64 %44, 128, !dbg !3255
  br i1 %45, label %46, label %52, !dbg !3255

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !753, metadata !DIExpression()), !dbg !3247
  %48 = sdiv i64 %47, %4, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %48, metadata !751, metadata !DIExpression()), !dbg !3247
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %51, metadata !752, metadata !DIExpression()), !dbg !3247
  br label %52, !dbg !3260

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3247
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3247
  call void @llvm.dbg.value(metadata i64 %54, metadata !752, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %53, metadata !751, metadata !DIExpression()), !dbg !3247
  %55 = icmp eq ptr %0, null, !dbg !3261
  br i1 %55, label %56, label %57, !dbg !3263

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3264, !tbaa !2303
  br label %57, !dbg !3265

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3266
  %59 = icmp slt i64 %58, %2, !dbg !3268
  br i1 %59, label %60, label %97, !dbg !3269

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3270
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3270
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %63, metadata !751, metadata !DIExpression()), !dbg !3247
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3271
  br i1 %66, label %96, label %67, !dbg !3271

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3272

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3272
  br i1 %69, label %70, label %75, !dbg !3272

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3272
  %72 = udiv i64 9223372036854775807, %71, !dbg !3272
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3272
  br i1 %74, label %96, label %94, !dbg !3272

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3272
  br i1 %76, label %94, label %77, !dbg !3272

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3272
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3272
  %80 = icmp ult i64 %79, %63, !dbg !3272
  br i1 %80, label %96, label %94, !dbg !3272

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3272
  br i1 %82, label %94, label %83, !dbg !3272

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3272
  br i1 %84, label %85, label %91, !dbg !3272

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3272
  br i1 %86, label %94, label %87, !dbg !3272

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3272
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3272
  %90 = icmp ult i64 %89, %4, !dbg !3272
  br i1 %90, label %96, label %94, !dbg !3272

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3272
  br i1 %93, label %96, label %94, !dbg !3272

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !752, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  %95 = mul i64 %63, %4, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %95, metadata !752, metadata !DIExpression()), !dbg !3247
  br label %97, !dbg !3273

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !3274
  unreachable, !dbg !3274

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3247
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3247
  call void @llvm.dbg.value(metadata i64 %99, metadata !752, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %98, metadata !751, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %99, metadata !3094, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %99, metadata !3100, metadata !DIExpression()), !dbg !3277
  %100 = icmp eq i64 %99, 0, !dbg !3279
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3279
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %102, metadata !3021, metadata !DIExpression()), !dbg !3281
  %103 = icmp eq ptr %102, null, !dbg !3283
  br i1 %103, label %104, label %105, !dbg !3284

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !3285
  unreachable, !dbg !3285

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !745, metadata !DIExpression()), !dbg !3247
  store i64 %98, ptr %1, align 8, !dbg !3286, !tbaa !2303
  ret ptr %102, !dbg !3287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3288 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3298
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3299
  %3 = icmp eq ptr %2, null, !dbg !3301
  br i1 %3, label %4, label %5, !dbg !3302

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3303
  unreachable, !dbg !3303

5:                                                ; preds = %1
  ret ptr %2, !dbg !3304
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3305 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3293 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3306
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3308
  %4 = icmp eq ptr %3, null, !dbg !3310
  br i1 %4, label %5, label %6, !dbg !3311

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3312
  unreachable, !dbg !3312

6:                                                ; preds = %2
  ret ptr %3, !dbg !3313
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3314 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %0, metadata !3318, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 1, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 1, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 1, metadata !3327, metadata !DIExpression()), !dbg !3328
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3330
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3331
  %3 = icmp eq ptr %2, null, !dbg !3333
  br i1 %3, label %4, label %5, !dbg !3334

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3335
  unreachable, !dbg !3335

5:                                                ; preds = %1
  ret ptr %2, !dbg !3336
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3319 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3318, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3321, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3338
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3341
  %4 = icmp eq ptr %3, null, !dbg !3343
  br i1 %4, label %5, label %6, !dbg !3344

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3345
  unreachable, !dbg !3345

6:                                                ; preds = %2
  ret ptr %3, !dbg !3346
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3347 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3354
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3357
  %4 = icmp eq ptr %3, null, !dbg !3359
  br i1 %4, label %5, label %6, !dbg !3360

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3361
  unreachable, !dbg !3361

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3362, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3369
  ret ptr %3, !dbg !3370
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3371 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3380
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3382
  call void @llvm.dbg.value(metadata ptr %3, metadata !3021, metadata !DIExpression()), !dbg !3383
  %4 = icmp eq ptr %3, null, !dbg !3385
  br i1 %4, label %5, label %6, !dbg !3386

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3387
  unreachable, !dbg !3387

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3362, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3390
  ret ptr %3, !dbg !3391
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3392 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3399
  %3 = add nsw i64 %1, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3059, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %3, metadata !3061, metadata !DIExpression()), !dbg !3403
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3405
  call void @llvm.dbg.value(metadata ptr %4, metadata !3021, metadata !DIExpression()), !dbg !3406
  %5 = icmp eq ptr %4, null, !dbg !3408
  br i1 %5, label %6, label %7, !dbg !3409

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3410
  unreachable, !dbg !3410

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3398, metadata !DIExpression()), !dbg !3399
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3411
  store i8 0, ptr %8, align 1, !dbg !3412, !tbaa !871
  call void @llvm.dbg.value(metadata ptr %4, metadata !3362, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3415
  ret ptr %4, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3421
  %3 = add i64 %2, 1, !dbg !3422
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %3, metadata !3352, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %3, metadata !3045, metadata !DIExpression()), !dbg !3425
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %4, metadata !3021, metadata !DIExpression()), !dbg !3428
  %5 = icmp eq ptr %4, null, !dbg !3430
  br i1 %5, label %6, label %7, !dbg !3431

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3432
  unreachable, !dbg !3432

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3362, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %3, metadata !3366, metadata !DIExpression()), !dbg !3433
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3435
  ret ptr %4, !dbg !3436
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3437 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3442, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %1, metadata !3439, metadata !DIExpression()), !dbg !3443
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.121, ptr noundef nonnull @.str.2.122, i32 noundef 5) #38, !dbg !3442
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef %2) #38, !dbg !3442
  %3 = icmp eq i32 %1, 0, !dbg !3442
  tail call void @llvm.assume(i1 %3), !dbg !3442
  tail call void @abort() #40, !dbg !3444
  unreachable, !dbg !3444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3445 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3452
  br label %2, !dbg !3453

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3452
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3452
  %4 = load i8, ptr %3, align 1, !dbg !3454, !tbaa !871
  %5 = icmp eq i8 %4, 47, !dbg !3454
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3455
  call void @llvm.dbg.value(metadata ptr %6, metadata !3448, metadata !DIExpression()), !dbg !3452
  br i1 %5, label %2, label %7, !dbg !3453, !llvm.loop !3456

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3457
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !3459
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !3460
  call void @llvm.dbg.value(metadata ptr %11, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 poison, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %9, metadata !3448, metadata !DIExpression()), !dbg !3452
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3462

12:                                               ; preds = %7
  ret ptr %9, !dbg !3463

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3464
  br label %15, !dbg !3464

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3452
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %16, metadata !3448, metadata !DIExpression()), !dbg !3452
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %18, metadata !3450, metadata !DIExpression()), !dbg !3461
  %19 = load i8, ptr %18, align 1, !dbg !3457, !tbaa !871
  br label %7, !dbg !3468, !llvm.loop !3469
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #35 !dbg !3471 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !3476, metadata !DIExpression()), !dbg !3478
  %3 = icmp ne i64 %2, 0, !dbg !3481
  %4 = zext i1 %3 to i64, !dbg !3481
  br label %5, !dbg !3481

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3482
  call void @llvm.dbg.value(metadata i64 %6, metadata !3476, metadata !DIExpression()), !dbg !3478
  %7 = icmp ugt i64 %6, 1, !dbg !3483
  br i1 %7, label %8, label %13, !dbg !3485

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3486
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3486
  %11 = load i8, ptr %10, align 1, !dbg !3486, !tbaa !871
  %12 = icmp eq i8 %11, 47, !dbg !3486
  br i1 %12, label %5, label %13, !dbg !3487, !llvm.loop !3488

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3482
  call void @llvm.dbg.value(metadata i64 0, metadata !3477, metadata !DIExpression()), !dbg !3478
  ret i64 %14, !dbg !3490
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3491 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3534
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3535
  call void @llvm.dbg.value(metadata i1 poison, metadata !3530, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3534
  call void @llvm.dbg.value(metadata ptr %0, metadata !3536, metadata !DIExpression()), !dbg !3539
  %3 = load i32, ptr %0, align 8, !dbg !3541, !tbaa !3542
  %4 = and i32 %3, 32, !dbg !3543
  %5 = icmp eq i32 %4, 0, !dbg !3543
  call void @llvm.dbg.value(metadata i1 %5, metadata !3532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3534
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3544
  %7 = icmp eq i32 %6, 0, !dbg !3545
  call void @llvm.dbg.value(metadata i1 %7, metadata !3533, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3534
  br i1 %5, label %8, label %18, !dbg !3546

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3548
  call void @llvm.dbg.value(metadata i1 %9, metadata !3530, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3534
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3549
  %11 = xor i1 %7, true, !dbg !3549
  %12 = sext i1 %11 to i32, !dbg !3549
  br i1 %10, label %21, label %13, !dbg !3549

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3550
  %15 = load i32, ptr %14, align 4, !dbg !3550, !tbaa !862
  %16 = icmp ne i32 %15, 9, !dbg !3551
  %17 = sext i1 %16 to i32, !dbg !3552
  br label %21, !dbg !3552

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3553

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3555
  store i32 0, ptr %20, align 4, !dbg !3557, !tbaa !862
  br label %21, !dbg !3555

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3534
  ret i32 %22, !dbg !3558
}

; Function Attrs: nounwind
declare !dbg !3559 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3563 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3605
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %2, metadata !3603, metadata !DIExpression()), !dbg !3605
  %3 = icmp slt i32 %2, 0, !dbg !3607
  br i1 %3, label %4, label %6, !dbg !3609

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3610
  br label %24, !dbg !3611

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3612
  %8 = icmp eq i32 %7, 0, !dbg !3612
  br i1 %8, label %13, label %9, !dbg !3614

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3615
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3616
  %12 = icmp eq i64 %11, -1, !dbg !3617
  br i1 %12, label %16, label %13, !dbg !3618

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3619
  %15 = icmp eq i32 %14, 0, !dbg !3619
  br i1 %15, label %16, label %18, !dbg !3620

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3604, metadata !DIExpression()), !dbg !3605
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3621
  call void @llvm.dbg.value(metadata i32 %17, metadata !3604, metadata !DIExpression()), !dbg !3605
  br label %24, !dbg !3622

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3623
  %20 = load i32, ptr %19, align 4, !dbg !3623, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %20, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3604, metadata !DIExpression()), !dbg !3605
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3621
  call void @llvm.dbg.value(metadata i32 %21, metadata !3604, metadata !DIExpression()), !dbg !3605
  %22 = icmp eq i32 %20, 0, !dbg !3624
  br i1 %22, label %24, label %23, !dbg !3622

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3626, !tbaa !862
  call void @llvm.dbg.value(metadata i32 -1, metadata !3604, metadata !DIExpression()), !dbg !3605
  br label %24, !dbg !3628

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3605
  ret i32 %25, !dbg !3629
}

; Function Attrs: nofree nounwind
declare !dbg !3630 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3631 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3632 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3633 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3636 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3674, metadata !DIExpression()), !dbg !3675
  %2 = icmp eq ptr %0, null, !dbg !3676
  br i1 %2, label %6, label %3, !dbg !3678

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3679
  %5 = icmp eq i32 %4, 0, !dbg !3679
  br i1 %5, label %6, label %8, !dbg !3680

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3681
  br label %16, !dbg !3682

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3688
  %9 = load i32, ptr %0, align 8, !dbg !3690, !tbaa !3542
  %10 = and i32 %9, 256, !dbg !3692
  %11 = icmp eq i32 %10, 0, !dbg !3692
  br i1 %11, label %14, label %12, !dbg !3693

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3694
  br label %14, !dbg !3694

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3695
  br label %16, !dbg !3696

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3675
  ret i32 %17, !dbg !3697
}

; Function Attrs: nofree nounwind
declare !dbg !3698 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %2, metadata !3740, metadata !DIExpression()), !dbg !3744
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3745
  %5 = load ptr, ptr %4, align 8, !dbg !3745, !tbaa !3746
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3747
  %7 = load ptr, ptr %6, align 8, !dbg !3747, !tbaa !3748
  %8 = icmp eq ptr %5, %7, !dbg !3749
  br i1 %8, label %9, label %27, !dbg !3750

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3751
  %11 = load ptr, ptr %10, align 8, !dbg !3751, !tbaa !1141
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3752
  %13 = load ptr, ptr %12, align 8, !dbg !3752, !tbaa !3753
  %14 = icmp eq ptr %11, %13, !dbg !3754
  br i1 %14, label %15, label %27, !dbg !3755

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3756
  %17 = load ptr, ptr %16, align 8, !dbg !3756, !tbaa !3757
  %18 = icmp eq ptr %17, null, !dbg !3758
  br i1 %18, label %19, label %27, !dbg !3759

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3760
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %21, metadata !3741, metadata !DIExpression()), !dbg !3762
  %22 = icmp eq i64 %21, -1, !dbg !3763
  br i1 %22, label %29, label %23, !dbg !3765

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3766, !tbaa !3542
  %25 = and i32 %24, -17, !dbg !3766
  store i32 %25, ptr %0, align 8, !dbg !3766, !tbaa !3542
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3767
  store i64 %21, ptr %26, align 8, !dbg !3768, !tbaa !3769
  br label %29, !dbg !3770

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3771
  br label %29, !dbg !3772

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3744
  ret i32 %30, !dbg !3773
}

; Function Attrs: nofree nounwind
declare !dbg !3774 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3777 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3782, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %1, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %2, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %3, metadata !3785, metadata !DIExpression()), !dbg !3787
  %5 = icmp eq ptr %1, null, !dbg !3788
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3790
  %7 = select i1 %5, ptr @.str.138, ptr %1, !dbg !3790
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %8, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %7, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %6, metadata !3782, metadata !DIExpression()), !dbg !3787
  %9 = icmp eq ptr %3, null, !dbg !3791
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3793
  call void @llvm.dbg.value(metadata ptr %10, metadata !3785, metadata !DIExpression()), !dbg !3787
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %11, metadata !3786, metadata !DIExpression()), !dbg !3787
  %12 = icmp ult i64 %11, -3, !dbg !3795
  br i1 %12, label %13, label %17, !dbg !3797

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3798
  %15 = icmp eq i32 %14, 0, !dbg !3798
  br i1 %15, label %16, label %29, !dbg !3799

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3800, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr %10, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 0, metadata !3810, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 8, metadata !3811, metadata !DIExpression()), !dbg !3812
  store i64 0, ptr %10, align 1, !dbg !3814
  br label %29, !dbg !3815

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3816
  br i1 %18, label %19, label %20, !dbg !3818

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3819
  unreachable, !dbg !3819

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3820

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !3822
  br i1 %23, label %29, label %24, !dbg !3823

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3824
  br i1 %25, label %29, label %26, !dbg !3827

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3828, !tbaa !871
  %28 = zext i8 %27 to i32, !dbg !3829
  store i32 %28, ptr %6, align 4, !dbg !3830, !tbaa !862
  br label %29, !dbg !3831

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3787
  ret i64 %30, !dbg !3832
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3833 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !3839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3841, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %2, metadata !3843, metadata !DIExpression()), !dbg !3845
  %4 = icmp eq i64 %2, 0, !dbg !3846
  br i1 %4, label %8, label %5, !dbg !3846

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3846
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3846
  br i1 %7, label %13, label %8, !dbg !3846

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3844, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3845
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3844, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3845
  %9 = mul i64 %2, %1, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %9, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %0, metadata !3848, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %9, metadata !3851, metadata !DIExpression()), !dbg !3852
  %10 = icmp eq i64 %9, 0, !dbg !3854
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3854
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !3855
  br label %15, !dbg !3856

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3844, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3845
  %14 = tail call ptr @__errno_location() #41, !dbg !3857
  store i32 12, ptr %14, align 4, !dbg !3859, !tbaa !862
  br label %15, !dbg !3860

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3845
  ret ptr %16, !dbg !3861
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3862 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3866, metadata !DIExpression()), !dbg !3871
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3872
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3867, metadata !DIExpression()), !dbg !3873
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3874
  %4 = icmp eq i32 %3, 0, !dbg !3874
  br i1 %4, label %5, label %12, !dbg !3876

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3877, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !3880, metadata !DIExpression()), !dbg !3881
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.143, i64 2), !dbg !3884
  %7 = icmp eq i32 %6, 0, !dbg !3885
  br i1 %7, label %11, label %8, !dbg !3886

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3877, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr @.str.1.144, metadata !3880, metadata !DIExpression()), !dbg !3887
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.144, i64 6), !dbg !3889
  %10 = icmp eq i32 %9, 0, !dbg !3890
  br i1 %10, label %11, label %12, !dbg !3891

11:                                               ; preds = %8, %5
  br label %12, !dbg !3892

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3871
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3893
  ret i1 %13, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata ptr %1, metadata !3899, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %2, metadata !3900, metadata !DIExpression()), !dbg !3901
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3902
  ret i32 %4, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3909
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3910
  ret ptr %2, !dbg !3911
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3916
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3917
  call void @llvm.dbg.value(metadata ptr %2, metadata !3915, metadata !DIExpression()), !dbg !3916
  ret ptr %2, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr %1, metadata !3922, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3929
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3931
  call void @llvm.dbg.value(metadata ptr %4, metadata !3915, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata ptr %4, metadata !3924, metadata !DIExpression()), !dbg !3928
  %5 = icmp eq ptr %4, null, !dbg !3932
  br i1 %5, label %6, label %9, !dbg !3933

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3934
  br i1 %7, label %19, label %8, !dbg !3937

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3938, !tbaa !871
  br label %19, !dbg !3939

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %10, metadata !3925, metadata !DIExpression()), !dbg !3941
  %11 = icmp ult i64 %10, %2, !dbg !3942
  br i1 %11, label %12, label %14, !dbg !3944

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %1, metadata !3947, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %13, metadata !3951, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !3954
  br label %19, !dbg !3955

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3956
  br i1 %15, label %19, label %16, !dbg !3959

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %1, metadata !3947, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %17, metadata !3951, metadata !DIExpression()), !dbg !3962
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !3964
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3965
  store i8 0, ptr %18, align 1, !dbg !3966, !tbaa !871
  br label %19, !dbg !3967

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3968
  ret i32 %20, !dbg !3969
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !351, !355, !708, !710, !370, !674, !712, !427, !441, !492, !714, !666, !721, !755, !757, !759, !761, !763, !765, !690, !767, !770, !772, !774}
!llvm.ident = !{!776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776}
!llvm.module.flags = !{!777, !778, !779, !780, !781, !782, !783}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "477d3cd1850fe551cd0c5a9952f88312")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!80 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!81 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!158 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !161)
!160 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!339 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !422, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!100, !107}
!373 = !{!374, !376, !401, !403, !405, !407, !368, !409, !411, !413, !415, !420}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !216, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !105, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !394)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !78, !78, !105, !84, !105, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !383)
!382 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 14, baseType: !385)
!384 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !386, baseType: !387)
!386 = !DIFile(filename: "lib/error.c", directory: "/src")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !387, file: !386, baseType: !100, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !387, file: !386, baseType: !100, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !387, file: !386, baseType: !100, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !387, file: !386, baseType: !78, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !387, file: !386, baseType: !78, size: 32, offset: 224)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !78)
!396 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !78)
!397 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !105)
!398 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !84)
!399 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !105)
!400 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !84, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !223, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !255, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !230, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !84, isLocal: false, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !78, isLocal: false, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !250, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 21)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !216, isLocal: true, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "program_name", scope: !427, file: !428, line: 31, type: !105, isLocal: false, isDefinition: true)
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !429, globals: !430, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!429 = !{!99}
!430 = !{!425, !431, !433}
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !428, line: 46, type: !255, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !428, line: 49, type: !223, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "utf07FF", scope: !437, file: !438, line: 46, type: !465, isLocal: true, isDefinition: true)
!437 = distinct !DISubprogram(name: "proper_name_lite", scope: !438, file: !438, line: 38, type: !439, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !443)
!438 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!439 = !DISubroutineType(types: !440)
!440 = !{!105, !105, !105}
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !442, splitDebugInlining: false, nameTableKind: None)
!442 = !{!435}
!443 = !{!444, !445, !446, !447, !452}
!444 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !437, file: !438, line: 38, type: !105)
!445 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !437, file: !438, line: 38, type: !105)
!446 = !DILocalVariable(name: "translation", scope: !437, file: !438, line: 40, type: !105)
!447 = !DILocalVariable(name: "w", scope: !437, file: !438, line: 47, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !449, line: 37, baseType: !450)
!449 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !183, line: 57, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !183, line: 42, baseType: !84)
!452 = !DILocalVariable(name: "mbs", scope: !437, file: !438, line: 48, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !455)
!454 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !457)
!456 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !457, file: !456, line: 15, baseType: !78, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !457, file: !456, line: 20, baseType: !461, size: 32, offset: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !456, line: 16, size: 32, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !461, file: !456, line: 18, baseType: !84, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !461, file: !456, line: 19, baseType: !223, size: 32)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16, elements: !231)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !468, line: 78, type: !255, isLocal: true, isDefinition: true)
!468 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !468, line: 79, type: !69, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !468, line: 80, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 13)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !468, line: 81, type: !473, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !468, line: 82, type: !205, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !468, line: 83, type: !230, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !468, line: 84, type: !255, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !468, line: 85, type: !250, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !468, line: 86, type: !250, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !468, line: 87, type: !255, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !492, file: !468, line: 76, type: !578, isLocal: false, isDefinition: true)
!492 = distinct !DICompileUnit(language: DW_LANG_C11, file: !468, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !493, retainedTypes: !513, globals: !514, splitDebugInlining: false, nameTableKind: None)
!493 = !{!494, !508, !82}
!494 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !495, line: 42, baseType: !84, size: 32, elements: !496)
!495 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!497 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!498 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!499 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!500 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!501 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!502 = !DIEnumerator(name: "c_quoting_style", value: 5)
!503 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!504 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!505 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!506 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!507 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!508 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !495, line: 254, baseType: !84, size: 32, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!511 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!512 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!513 = !{!78, !101, !102}
!514 = !{!466, !469, !471, !476, !478, !480, !482, !484, !486, !488, !490, !515, !519, !529, !531, !536, !538, !540, !542, !544, !567, !574, !576}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !492, file: !468, line: 92, type: !517, isLocal: false, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 320, elements: !60)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !492, file: !468, line: 1040, type: !521, isLocal: false, isDefinition: true)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !468, line: 56, size: 448, elements: !522)
!522 = !{!523, !524, !525, !527, !528}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !521, file: !468, line: 59, baseType: !494, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !468, line: 62, baseType: !78, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !521, file: !468, line: 66, baseType: !526, size: 256, offset: 64)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !521, file: !468, line: 69, baseType: !105, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !521, file: !468, line: 72, baseType: !105, size: 64, offset: 384)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !492, file: !468, line: 107, type: !521, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "slot0", scope: !492, file: !468, line: 831, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 256)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !468, line: 321, type: !230, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !468, line: 357, type: !230, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !468, line: 358, type: !230, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !468, line: 199, type: !250, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "quote", scope: !546, file: !468, line: 228, type: !565, isLocal: true, isDefinition: true)
!546 = distinct !DISubprogram(name: "gettext_quote", scope: !468, file: !468, line: 197, type: !547, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!105, !105, !494}
!549 = !{!550, !551, !552, !553, !554}
!550 = !DILocalVariable(name: "msgid", arg: 1, scope: !546, file: !468, line: 197, type: !105)
!551 = !DILocalVariable(name: "s", arg: 2, scope: !546, file: !468, line: 197, type: !494)
!552 = !DILocalVariable(name: "translation", scope: !546, file: !468, line: 199, type: !105)
!553 = !DILocalVariable(name: "w", scope: !546, file: !468, line: 229, type: !448)
!554 = !DILocalVariable(name: "mbs", scope: !546, file: !468, line: 230, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !557, file: !456, line: 15, baseType: !78, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !557, file: !456, line: 20, baseType: !561, size: 32, offset: 32)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !456, line: 16, size: 32, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !561, file: !456, line: 18, baseType: !84, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !561, file: !456, line: 19, baseType: !223, size: 32)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !566)
!566 = !{!232, !225}
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "slotvec", scope: !492, file: !468, line: 834, type: !569, isLocal: true, isDefinition: true)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !468, line: 823, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !570, file: !468, line: 825, baseType: !102, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !570, file: !468, line: 826, baseType: !99, size: 64, offset: 64)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "nslots", scope: !492, file: !468, line: 832, type: !78, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "slotvec0", scope: !492, file: !468, line: 833, type: !570, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 704, elements: !580)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!580 = !{!581}
!581 = !DISubrange(count: 11)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !584, line: 67, type: !323, isLocal: true, isDefinition: true)
!584 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !584, line: 69, type: !250, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !584, line: 83, type: !250, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !584, line: 83, type: !223, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !584, line: 85, type: !230, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !584, line: 88, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 171)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !584, line: 88, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 34)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !584, line: 105, type: !116, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !584, line: 109, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 23)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !584, line: 113, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 28)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !584, line: 120, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 32)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !584, line: 127, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 36)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !584, line: 134, type: !274, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !584, line: 142, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 44)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !584, line: 150, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 48)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !584, line: 159, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 52)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !584, line: 170, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 60)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !584, line: 248, type: !205, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !584, line: 248, type: !299, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !584, line: 254, type: !205, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !584, line: 254, type: !111, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !584, line: 254, type: !274, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !584, line: 259, type: !3, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !584, line: 259, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 29)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !666, file: !667, line: 26, type: !669, isLocal: false, isDefinition: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!668 = !{!664}
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 376, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 47)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "exit_failure", scope: !674, file: !675, line: 24, type: !677, isLocal: false, isDefinition: true)
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !676, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!676 = !{!672}
!677 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !239, isLocal: true, isDefinition: true)
!680 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !250, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !680, line: 34, type: !123, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !687, line: 108, type: !54, isLocal: true, isDefinition: true)
!687 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "internal_state", scope: !690, file: !687, line: 97, type: !693, isLocal: true, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !691, globals: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !{!100, !102, !107}
!692 = !{!685, !688}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !695, file: !456, line: 15, baseType: !78, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !695, file: !456, line: 20, baseType: !699, size: 32, offset: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !456, line: 16, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !699, file: !456, line: 18, baseType: !84, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !699, file: !456, line: 19, baseType: !223, size: 32)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !705, line: 35, type: !230, isLocal: true, isDefinition: true)
!705 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !705, line: 35, type: !69, isLocal: true, isDefinition: true)
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !584, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !715, retainedTypes: !719, globals: !720, splitDebugInlining: false, nameTableKind: None)
!715 = !{!716}
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !584, line: 40, baseType: !84, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!719 = !{!100}
!720 = !{!582, !585, !587, !589, !591, !593, !598, !603, !605, !610, !615, !620, !625, !627, !632, !637, !642, !647, !649, !651, !653, !655, !657, !659}
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !754, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!723 = !{!724, !736}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !725, file: !722, line: 188, baseType: !84, size: 32, elements: !734)
!725 = distinct !DISubprogram(name: "x2nrealloc", scope: !722, file: !722, line: 176, type: !726, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !729)
!726 = !DISubroutineType(types: !727)
!727 = !{!100, !100, !728, !102}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "p", arg: 1, scope: !725, file: !722, line: 176, type: !100)
!731 = !DILocalVariable(name: "pn", arg: 2, scope: !725, file: !722, line: 176, type: !728)
!732 = !DILocalVariable(name: "s", arg: 3, scope: !725, file: !722, line: 176, type: !102)
!733 = !DILocalVariable(name: "n", scope: !725, file: !722, line: 178, type: !102)
!734 = !{!735}
!735 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !737, file: !722, line: 228, baseType: !84, size: 32, elements: !734)
!737 = distinct !DISubprogram(name: "xpalloc", scope: !722, file: !722, line: 223, type: !738, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !744)
!738 = !DISubroutineType(types: !739)
!739 = !{!100, !100, !740, !741, !743, !741}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !742, line: 130, baseType: !743)
!742 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !103, line: 35, baseType: !184)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753}
!745 = !DILocalVariable(name: "pa", arg: 1, scope: !737, file: !722, line: 223, type: !100)
!746 = !DILocalVariable(name: "pn", arg: 2, scope: !737, file: !722, line: 223, type: !740)
!747 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !737, file: !722, line: 223, type: !741)
!748 = !DILocalVariable(name: "n_max", arg: 4, scope: !737, file: !722, line: 223, type: !743)
!749 = !DILocalVariable(name: "s", arg: 5, scope: !737, file: !722, line: 223, type: !741)
!750 = !DILocalVariable(name: "n0", scope: !737, file: !722, line: 230, type: !741)
!751 = !DILocalVariable(name: "n", scope: !737, file: !722, line: 237, type: !741)
!752 = !DILocalVariable(name: "nbytes", scope: !737, file: !722, line: 248, type: !741)
!753 = !DILocalVariable(name: "adjusted_nbytes", scope: !737, file: !722, line: 252, type: !741)
!754 = !{!99, !100, !143, !184, !104}
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!756 = !{!678, !681, !683}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !429, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!769 = !{!143, !104, !100}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !771, splitDebugInlining: false, nameTableKind: None)
!771 = !{!703, !706}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!776 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!777 = !{i32 7, !"Dwarf Version", i32 5}
!778 = !{i32 2, !"Debug Info Version", i32 3}
!779 = !{i32 1, !"wchar_size", i32 4}
!780 = !{i32 8, !"PIC Level", i32 2}
!781 = !{i32 7, !"PIE Level", i32 2}
!782 = !{i32 7, !"uwtable", i32 2}
!783 = !{i32 7, !"frame-pointer", i32 1}
!784 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 41, type: !785, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !78}
!787 = !{!788}
!788 = !DILocalVariable(name: "status", arg: 1, scope: !784, file: !2, line: 41, type: !78)
!789 = !DILocation(line: 0, scope: !784)
!790 = !DILocation(line: 43, column: 14, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !2, line: 43, column: 7)
!792 = !DILocation(line: 43, column: 7, scope: !784)
!793 = !DILocation(line: 44, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !2, line: 44, column: 5)
!795 = !{!796, !796, i64 0}
!796 = !{!"any pointer", !797, i64 0}
!797 = !{!"omnipotent char", !798, i64 0}
!798 = !{!"Simple C/C++ TBAA"}
!799 = !DILocation(line: 47, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !791, file: !2, line: 46, column: 5)
!801 = !DILocation(line: 52, column: 7, scope: !800)
!802 = !DILocation(line: 736, column: 3, scope: !803, inlinedAt: !805)
!803 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !423, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !804)
!804 = !{}
!805 = distinct !DILocation(line: 57, column: 7, scope: !800)
!806 = !DILocation(line: 59, column: 7, scope: !800)
!807 = !DILocation(line: 63, column: 7, scope: !800)
!808 = !DILocation(line: 67, column: 7, scope: !800)
!809 = !DILocation(line: 71, column: 7, scope: !800)
!810 = !DILocation(line: 72, column: 7, scope: !800)
!811 = !DILocation(line: 73, column: 7, scope: !800)
!812 = !DILocalVariable(name: "program", arg: 1, scope: !813, file: !77, line: 836, type: !105)
!813 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !814, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !105}
!816 = !{!812, !817, !824, !825, !827, !828}
!817 = !DILocalVariable(name: "infomap", scope: !813, file: !77, line: 838, type: !818)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 896, elements: !251)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !813, file: !77, line: 838, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !820, file: !77, line: 838, baseType: !105, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !820, file: !77, line: 838, baseType: !105, size: 64, offset: 64)
!824 = !DILocalVariable(name: "node", scope: !813, file: !77, line: 848, type: !105)
!825 = !DILocalVariable(name: "map_prog", scope: !813, file: !77, line: 849, type: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!827 = !DILocalVariable(name: "lc_messages", scope: !813, file: !77, line: 861, type: !105)
!828 = !DILocalVariable(name: "url_program", scope: !813, file: !77, line: 874, type: !105)
!829 = !DILocation(line: 0, scope: !813, inlinedAt: !830)
!830 = distinct !DILocation(line: 82, column: 7, scope: !800)
!831 = !DILocation(line: 857, column: 3, scope: !813, inlinedAt: !830)
!832 = !DILocation(line: 861, column: 29, scope: !813, inlinedAt: !830)
!833 = !DILocation(line: 862, column: 7, scope: !834, inlinedAt: !830)
!834 = distinct !DILexicalBlock(scope: !813, file: !77, line: 862, column: 7)
!835 = !DILocation(line: 862, column: 19, scope: !834, inlinedAt: !830)
!836 = !DILocation(line: 862, column: 22, scope: !834, inlinedAt: !830)
!837 = !DILocation(line: 862, column: 7, scope: !813, inlinedAt: !830)
!838 = !DILocation(line: 868, column: 7, scope: !839, inlinedAt: !830)
!839 = distinct !DILexicalBlock(scope: !834, file: !77, line: 863, column: 5)
!840 = !DILocation(line: 870, column: 5, scope: !839, inlinedAt: !830)
!841 = !DILocation(line: 875, column: 3, scope: !813, inlinedAt: !830)
!842 = !DILocation(line: 877, column: 3, scope: !813, inlinedAt: !830)
!843 = !DILocation(line: 84, column: 3, scope: !784)
!844 = !DISubprogram(name: "dcgettext", scope: !845, file: !845, line: 51, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!845 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!846 = !DISubroutineType(types: !847)
!847 = !{!99, !105, !105, !78}
!848 = !DISubprogram(name: "__fprintf_chk", scope: !849, file: !849, line: 93, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!849 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!850 = !DISubroutineType(types: !851)
!851 = !{!78, !852, !78, !853, null}
!852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!853 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!854 = !DISubprogram(name: "__printf_chk", scope: !849, file: !849, line: 95, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!855 = !DISubroutineType(types: !856)
!856 = !{!78, !78, !853, null}
!857 = !DISubprogram(name: "fputs_unlocked", scope: !382, file: !382, line: 691, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!858 = !DISubroutineType(types: !859)
!859 = !{!78, !853, !852}
!860 = !DILocation(line: 0, scope: !133)
!861 = !DILocation(line: 581, column: 7, scope: !141)
!862 = !{!863, !863, i64 0}
!863 = !{!"int", !797, i64 0}
!864 = !DILocation(line: 581, column: 19, scope: !141)
!865 = !DILocation(line: 581, column: 7, scope: !133)
!866 = !DILocation(line: 585, column: 26, scope: !140)
!867 = !DILocation(line: 0, scope: !140)
!868 = !DILocation(line: 586, column: 23, scope: !140)
!869 = !DILocation(line: 586, column: 28, scope: !140)
!870 = !DILocation(line: 586, column: 32, scope: !140)
!871 = !{!797, !797, i64 0}
!872 = !DILocation(line: 586, column: 38, scope: !140)
!873 = !DILocalVariable(name: "__s1", arg: 1, scope: !874, file: !875, line: 1359, type: !105)
!874 = distinct !DISubprogram(name: "streq", scope: !875, file: !875, line: 1359, type: !876, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !878)
!875 = !DIFile(filename: "./lib/string.h", directory: "/src")
!876 = !DISubroutineType(types: !877)
!877 = !{!143, !105, !105}
!878 = !{!873, !879}
!879 = !DILocalVariable(name: "__s2", arg: 2, scope: !874, file: !875, line: 1359, type: !105)
!880 = !DILocation(line: 0, scope: !874, inlinedAt: !881)
!881 = distinct !DILocation(line: 586, column: 41, scope: !140)
!882 = !DILocation(line: 1361, column: 11, scope: !874, inlinedAt: !881)
!883 = !DILocation(line: 1361, column: 10, scope: !874, inlinedAt: !881)
!884 = !DILocation(line: 586, column: 19, scope: !140)
!885 = !DILocation(line: 587, column: 5, scope: !140)
!886 = !DILocation(line: 588, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !133, file: !77, line: 588, column: 7)
!888 = !DILocation(line: 588, column: 7, scope: !133)
!889 = !DILocation(line: 590, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !77, line: 589, column: 5)
!891 = !DILocation(line: 591, column: 7, scope: !890)
!892 = !DILocation(line: 595, column: 37, scope: !133)
!893 = !DILocation(line: 595, column: 35, scope: !133)
!894 = !DILocation(line: 596, column: 29, scope: !133)
!895 = !DILocation(line: 597, column: 8, scope: !149)
!896 = !DILocation(line: 597, column: 7, scope: !133)
!897 = !DILocation(line: 604, column: 24, scope: !148)
!898 = !DILocation(line: 604, column: 12, scope: !149)
!899 = !DILocation(line: 0, scope: !147)
!900 = !DILocation(line: 610, column: 16, scope: !147)
!901 = !DILocation(line: 610, column: 7, scope: !147)
!902 = !DILocation(line: 611, column: 21, scope: !147)
!903 = !{!904, !904, i64 0}
!904 = !{!"short", !797, i64 0}
!905 = !DILocation(line: 611, column: 19, scope: !147)
!906 = !DILocation(line: 611, column: 16, scope: !147)
!907 = !DILocation(line: 610, column: 30, scope: !147)
!908 = distinct !{!908, !901, !902, !909}
!909 = !{!"llvm.loop.mustprogress"}
!910 = !DILocation(line: 612, column: 18, scope: !911)
!911 = distinct !DILexicalBlock(scope: !147, file: !77, line: 612, column: 11)
!912 = !DILocation(line: 612, column: 11, scope: !147)
!913 = !DILocation(line: 620, column: 23, scope: !133)
!914 = !DILocation(line: 625, column: 39, scope: !133)
!915 = !DILocation(line: 626, column: 3, scope: !133)
!916 = !DILocation(line: 626, column: 10, scope: !133)
!917 = !DILocation(line: 626, column: 21, scope: !133)
!918 = !DILocation(line: 628, column: 44, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !77, line: 628, column: 11)
!920 = distinct !DILexicalBlock(scope: !133, file: !77, line: 627, column: 5)
!921 = !DILocation(line: 628, column: 32, scope: !919)
!922 = !DILocation(line: 628, column: 49, scope: !919)
!923 = !DILocation(line: 628, column: 11, scope: !920)
!924 = !DILocation(line: 630, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !77, line: 630, column: 11)
!926 = !DILocation(line: 630, column: 11, scope: !920)
!927 = !DILocation(line: 632, column: 26, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !77, line: 632, column: 15)
!929 = distinct !DILexicalBlock(scope: !925, file: !77, line: 631, column: 9)
!930 = !DILocation(line: 632, column: 34, scope: !928)
!931 = !DILocation(line: 632, column: 37, scope: !928)
!932 = !DILocation(line: 632, column: 15, scope: !929)
!933 = !DILocation(line: 640, column: 16, scope: !920)
!934 = distinct !{!934, !915, !935, !909}
!935 = !DILocation(line: 641, column: 5, scope: !133)
!936 = !DILocation(line: 644, column: 3, scope: !133)
!937 = !DILocation(line: 0, scope: !874, inlinedAt: !938)
!938 = distinct !DILocation(line: 648, column: 31, scope: !133)
!939 = !DILocation(line: 0, scope: !874, inlinedAt: !940)
!940 = distinct !DILocation(line: 649, column: 31, scope: !133)
!941 = !DILocation(line: 0, scope: !874, inlinedAt: !942)
!942 = distinct !DILocation(line: 650, column: 31, scope: !133)
!943 = !DILocation(line: 0, scope: !874, inlinedAt: !944)
!944 = distinct !DILocation(line: 651, column: 31, scope: !133)
!945 = !DILocation(line: 0, scope: !874, inlinedAt: !946)
!946 = distinct !DILocation(line: 652, column: 31, scope: !133)
!947 = !DILocation(line: 0, scope: !874, inlinedAt: !948)
!948 = distinct !DILocation(line: 653, column: 31, scope: !133)
!949 = !DILocation(line: 0, scope: !874, inlinedAt: !950)
!950 = distinct !DILocation(line: 654, column: 31, scope: !133)
!951 = !DILocation(line: 0, scope: !874, inlinedAt: !952)
!952 = distinct !DILocation(line: 655, column: 31, scope: !133)
!953 = !DILocation(line: 0, scope: !874, inlinedAt: !954)
!954 = distinct !DILocation(line: 656, column: 31, scope: !133)
!955 = !DILocation(line: 0, scope: !874, inlinedAt: !956)
!956 = distinct !DILocation(line: 657, column: 31, scope: !133)
!957 = !DILocation(line: 663, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !133, file: !77, line: 663, column: 7)
!959 = !DILocation(line: 664, column: 7, scope: !958)
!960 = !DILocation(line: 664, column: 10, scope: !958)
!961 = !DILocation(line: 663, column: 7, scope: !133)
!962 = !DILocation(line: 669, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !77, line: 665, column: 5)
!964 = !DILocation(line: 671, column: 5, scope: !963)
!965 = !DILocation(line: 676, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !77, line: 673, column: 5)
!967 = !DILocation(line: 679, column: 3, scope: !133)
!968 = !DILocation(line: 683, column: 3, scope: !133)
!969 = !DILocation(line: 686, column: 3, scope: !133)
!970 = !DILocation(line: 688, column: 3, scope: !133)
!971 = !DILocation(line: 691, column: 3, scope: !133)
!972 = !DILocation(line: 695, column: 3, scope: !133)
!973 = !DILocation(line: 696, column: 1, scope: !133)
!974 = !DISubprogram(name: "setlocale", scope: !975, file: !975, line: 122, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!975 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!976 = !DISubroutineType(types: !977)
!977 = !{!99, !78, !105}
!978 = !DISubprogram(name: "strncmp", scope: !979, file: !979, line: 159, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!979 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!980 = !DISubroutineType(types: !981)
!981 = !{!78, !105, !105, !102}
!982 = !DISubprogram(name: "exit", scope: !983, file: !983, line: 624, type: !785, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!983 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!984 = !DISubprogram(name: "getenv", scope: !983, file: !983, line: 641, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!985 = !DISubroutineType(types: !986)
!986 = !{!99, !105}
!987 = !DISubprogram(name: "strcmp", scope: !979, file: !979, line: 156, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!988 = !DISubroutineType(types: !989)
!989 = !{!78, !105, !105}
!990 = !DISubprogram(name: "strspn", scope: !979, file: !979, line: 297, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!991 = !DISubroutineType(types: !992)
!992 = !{!104, !105, !105}
!993 = !DISubprogram(name: "strchr", scope: !979, file: !979, line: 246, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!994 = !DISubroutineType(types: !995)
!995 = !{!99, !105, !78}
!996 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!997 = !DISubroutineType(types: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1002 = !DISubprogram(name: "strcspn", scope: !979, file: !979, line: 293, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1003 = !DISubprogram(name: "fwrite_unlocked", scope: !382, file: !382, line: 704, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!102, !1006, !102, !102, !852}
!1006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1009 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 127, type: !1010, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1013)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!78, !78, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019}
!1014 = !DILocalVariable(name: "argc", arg: 1, scope: !1009, file: !2, line: 127, type: !78)
!1015 = !DILocalVariable(name: "argv", arg: 2, scope: !1009, file: !2, line: 127, type: !1012)
!1016 = !DILocalVariable(name: "multiple_names", scope: !1009, file: !2, line: 129, type: !143)
!1017 = !DILocalVariable(name: "use_nuls", scope: !1009, file: !2, line: 130, type: !143)
!1018 = !DILocalVariable(name: "suffix", scope: !1009, file: !2, line: 131, type: !105)
!1019 = !DILocalVariable(name: "c", scope: !1020, file: !2, line: 143, type: !78)
!1020 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 142, column: 5)
!1021 = !DILocation(line: 0, scope: !1009)
!1022 = !DILocation(line: 134, column: 21, scope: !1009)
!1023 = !DILocation(line: 134, column: 3, scope: !1009)
!1024 = !DILocation(line: 135, column: 3, scope: !1009)
!1025 = !DILocation(line: 136, column: 3, scope: !1009)
!1026 = !DILocation(line: 137, column: 3, scope: !1009)
!1027 = !DILocation(line: 139, column: 3, scope: !1009)
!1028 = !DILocation(line: 141, column: 3, scope: !1009)
!1029 = !DILocation(line: 145, column: 11, scope: !1020)
!1030 = !DILocation(line: 143, column: 15, scope: !1020)
!1031 = !DILocation(line: 0, scope: !1020)
!1032 = distinct !{!1032, !1033}
!1033 = !{!"llvm.loop.peeled.count", i32 1}
!1034 = !DILocation(line: 151, column: 20, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 149, column: 9)
!1036 = !DILocation(line: 151, column: 11, scope: !1035)
!1037 = !DILocation(line: 163, column: 9, scope: !1035)
!1038 = !DILocation(line: 164, column: 9, scope: !1035)
!1039 = !DILocation(line: 167, column: 11, scope: !1035)
!1040 = !DILocation(line: 171, column: 14, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 171, column: 7)
!1042 = !DILocation(line: 171, column: 12, scope: !1041)
!1043 = !DILocation(line: 171, column: 7, scope: !1009)
!1044 = !DILocation(line: 173, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 172, column: 5)
!1046 = !DILocation(line: 174, column: 7, scope: !1045)
!1047 = !DILocation(line: 177, column: 23, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 177, column: 7)
!1049 = !DILocation(line: 179, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 178, column: 5)
!1051 = !DILocation(line: 180, column: 7, scope: !1050)
!1052 = !DILocation(line: 183, column: 7, scope: !1009)
!1053 = !DILocation(line: 186, column: 27, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 185, column: 7)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 185, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 184, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 183, column: 7)
!1058 = !DILocation(line: 186, column: 9, scope: !1054)
!1059 = !DILocation(line: 185, column: 35, scope: !1054)
!1060 = !DILocation(line: 185, column: 21, scope: !1054)
!1061 = !DILocation(line: 185, column: 7, scope: !1055)
!1062 = distinct !{!1062, !1061, !1063, !909}
!1063 = !DILocation(line: 186, column: 57, scope: !1055)
!1064 = !DILocation(line: 189, column: 23, scope: !1057)
!1065 = !DILocation(line: 190, column: 34, scope: !1057)
!1066 = !DILocation(line: 190, column: 23, scope: !1057)
!1067 = !DILocation(line: 190, column: 56, scope: !1057)
!1068 = !DILocation(line: 190, column: 44, scope: !1057)
!1069 = !DILocation(line: 189, column: 5, scope: !1057)
!1070 = !DILocation(line: 194, column: 1, scope: !1009)
!1071 = !DISubprogram(name: "bindtextdomain", scope: !845, file: !845, line: 86, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!99, !105, !105}
!1074 = !DISubprogram(name: "textdomain", scope: !845, file: !845, line: 82, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1075 = !DISubprogram(name: "atexit", scope: !983, file: !983, line: 602, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!78, !422}
!1078 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!78, !78, !1081, !105, !1083, !344}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1084 = distinct !DISubprogram(name: "perform_basename", scope: !2, file: !2, line: 107, type: !1085, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !105, !105, !143}
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DILocalVariable(name: "string", arg: 1, scope: !1084, file: !2, line: 107, type: !105)
!1089 = !DILocalVariable(name: "suffix", arg: 2, scope: !1084, file: !2, line: 107, type: !105)
!1090 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !1084, file: !2, line: 107, type: !143)
!1091 = !DILocalVariable(name: "name", scope: !1084, file: !2, line: 109, type: !99)
!1092 = !DILocation(line: 0, scope: !1084)
!1093 = !DILocation(line: 109, column: 16, scope: !1084)
!1094 = !DILocation(line: 110, column: 3, scope: !1084)
!1095 = !DILocation(line: 118, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 118, column: 7)
!1097 = !DILocation(line: 118, column: 14, scope: !1096)
!1098 = !DILocation(line: 118, column: 17, scope: !1096)
!1099 = !DILocation(line: 118, column: 46, scope: !1096)
!1100 = !DILocalVariable(name: "name", arg: 1, scope: !1101, file: !2, line: 91, type: !99)
!1101 = distinct !DISubprogram(name: "remove_suffix", scope: !2, file: !2, line: 91, type: !1102, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !99, !105}
!1104 = !{!1100, !1105, !1106, !1107}
!1105 = !DILocalVariable(name: "suffix", arg: 2, scope: !1101, file: !2, line: 91, type: !105)
!1106 = !DILocalVariable(name: "np", scope: !1101, file: !2, line: 93, type: !99)
!1107 = !DILocalVariable(name: "sp", scope: !1101, file: !2, line: 94, type: !105)
!1108 = !DILocation(line: 0, scope: !1101, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 119, column: 5, scope: !1096)
!1110 = !DILocation(line: 93, column: 21, scope: !1101, inlinedAt: !1109)
!1111 = !DILocation(line: 93, column: 19, scope: !1101, inlinedAt: !1109)
!1112 = !DILocation(line: 94, column: 29, scope: !1101, inlinedAt: !1109)
!1113 = !DILocation(line: 94, column: 27, scope: !1101, inlinedAt: !1109)
!1114 = !DILocation(line: 96, column: 3, scope: !1101, inlinedAt: !1109)
!1115 = !DILocation(line: 96, column: 13, scope: !1101, inlinedAt: !1109)
!1116 = !DILocation(line: 96, column: 20, scope: !1101, inlinedAt: !1109)
!1117 = !DILocation(line: 97, column: 10, scope: !1118, inlinedAt: !1109)
!1118 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 97, column: 9)
!1119 = !DILocation(line: 97, column: 9, scope: !1118, inlinedAt: !1109)
!1120 = !DILocation(line: 97, column: 19, scope: !1118, inlinedAt: !1109)
!1121 = !DILocation(line: 97, column: 18, scope: !1118, inlinedAt: !1109)
!1122 = !DILocation(line: 97, column: 15, scope: !1118, inlinedAt: !1109)
!1123 = !DILocation(line: 97, column: 9, scope: !1101, inlinedAt: !1109)
!1124 = distinct !{!1124, !1114, !1125, !909}
!1125 = !DILocation(line: 98, column: 7, scope: !1101, inlinedAt: !1109)
!1126 = !DILocation(line: 99, column: 7, scope: !1101, inlinedAt: !1109)
!1127 = !DILocation(line: 100, column: 9, scope: !1128, inlinedAt: !1109)
!1128 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 99, column: 7)
!1129 = !DILocation(line: 100, column: 5, scope: !1128, inlinedAt: !1109)
!1130 = !DILocation(line: 121, column: 3, scope: !1084)
!1131 = !DILocation(line: 122, column: 3, scope: !1084)
!1132 = !DILocalVariable(name: "__c", arg: 1, scope: !1133, file: !1134, line: 108, type: !78)
!1133 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1134, file: !1134, line: 108, type: !1135, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1137)
!1134 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!78, !78}
!1137 = !{!1132}
!1138 = !DILocation(line: 0, scope: !1133, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 122, column: 3, scope: !1084)
!1140 = !DILocation(line: 110, column: 10, scope: !1133, inlinedAt: !1139)
!1141 = !{!1142, !796, i64 40}
!1142 = !{!"_IO_FILE", !863, i64 0, !796, i64 8, !796, i64 16, !796, i64 24, !796, i64 32, !796, i64 40, !796, i64 48, !796, i64 56, !796, i64 64, !796, i64 72, !796, i64 80, !796, i64 88, !796, i64 96, !796, i64 104, !863, i64 112, !863, i64 116, !1143, i64 120, !904, i64 128, !797, i64 130, !797, i64 131, !796, i64 136, !1143, i64 144, !796, i64 152, !796, i64 160, !796, i64 168, !796, i64 176, !1143, i64 184, !863, i64 192, !797, i64 196}
!1143 = !{!"long", !797, i64 0}
!1144 = !{!1142, !796, i64 48}
!1145 = !{!"branch_weights", i32 2000, i32 1}
!1146 = !DILocation(line: 123, column: 3, scope: !1084)
!1147 = !DILocation(line: 124, column: 1, scope: !1084)
!1148 = !DISubprogram(name: "strlen", scope: !979, file: !979, line: 407, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!104, !105}
!1151 = !DISubprogram(name: "__overflow", scope: !382, file: !382, line: 886, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!78, !156, !78}
!1154 = !DISubprogram(name: "free", scope: !983, file: !983, line: 555, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !100}
!1157 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !814, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1158)
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "file", arg: 1, scope: !1157, file: !356, line: 50, type: !105)
!1160 = !DILocation(line: 0, scope: !1157)
!1161 = !DILocation(line: 52, column: 13, scope: !1157)
!1162 = !DILocation(line: 53, column: 1, scope: !1157)
!1163 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1164, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !143}
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "ignore", arg: 1, scope: !1163, file: !356, line: 87, type: !143)
!1168 = !DILocation(line: 0, scope: !1163)
!1169 = !DILocation(line: 89, column: 16, scope: !1163)
!1170 = !{!1171, !1171, i64 0}
!1171 = !{!"_Bool", !797, i64 0}
!1172 = !DILocation(line: 90, column: 1, scope: !1163)
!1173 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !423, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1174)
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "write_error", scope: !1176, file: !356, line: 121, type: !105)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !356, line: 120, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !356, line: 118, column: 7)
!1178 = !DILocation(line: 118, column: 21, scope: !1177)
!1179 = !DILocation(line: 118, column: 7, scope: !1177)
!1180 = !DILocation(line: 118, column: 29, scope: !1177)
!1181 = !DILocation(line: 119, column: 7, scope: !1177)
!1182 = !DILocation(line: 119, column: 12, scope: !1177)
!1183 = !{i8 0, i8 2}
!1184 = !DILocation(line: 119, column: 25, scope: !1177)
!1185 = !DILocation(line: 119, column: 28, scope: !1177)
!1186 = !DILocation(line: 119, column: 34, scope: !1177)
!1187 = !DILocation(line: 118, column: 7, scope: !1173)
!1188 = !DILocation(line: 121, column: 33, scope: !1176)
!1189 = !DILocation(line: 0, scope: !1176)
!1190 = !DILocation(line: 122, column: 11, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1176, file: !356, line: 122, column: 11)
!1192 = !DILocation(line: 0, scope: !1191)
!1193 = !DILocation(line: 122, column: 11, scope: !1176)
!1194 = !DILocation(line: 123, column: 9, scope: !1191)
!1195 = !DILocation(line: 126, column: 9, scope: !1191)
!1196 = !DILocation(line: 128, column: 14, scope: !1176)
!1197 = !DILocation(line: 128, column: 7, scope: !1176)
!1198 = !DILocation(line: 133, column: 42, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1173, file: !356, line: 133, column: 7)
!1200 = !DILocation(line: 133, column: 28, scope: !1199)
!1201 = !DILocation(line: 133, column: 50, scope: !1199)
!1202 = !DILocation(line: 133, column: 7, scope: !1173)
!1203 = !DILocation(line: 134, column: 12, scope: !1199)
!1204 = !DILocation(line: 134, column: 5, scope: !1199)
!1205 = !DILocation(line: 135, column: 1, scope: !1173)
!1206 = !DISubprogram(name: "__errno_location", scope: !1207, file: !1207, line: 37, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1207 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!344}
!1210 = !DISubprogram(name: "_exit", scope: !1211, file: !1211, line: 624, type: !785, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1211 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1212 = distinct !DISubprogram(name: "base_name", scope: !709, file: !709, line: 27, type: !985, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DILocalVariable(name: "name", arg: 1, scope: !1212, file: !709, line: 27, type: !105)
!1215 = !DILocalVariable(name: "base", scope: !1212, file: !709, line: 29, type: !105)
!1216 = !DILocalVariable(name: "length", scope: !1212, file: !709, line: 30, type: !741)
!1217 = !DILocalVariable(name: "dotslash_len", scope: !1212, file: !709, line: 31, type: !78)
!1218 = !DILocalVariable(name: "p", scope: !1212, file: !709, line: 53, type: !99)
!1219 = !DILocation(line: 0, scope: !1212)
!1220 = !DILocation(line: 29, column: 22, scope: !1212)
!1221 = !DILocation(line: 32, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !709, line: 32, column: 7)
!1223 = !DILocation(line: 32, column: 7, scope: !1212)
!1224 = !DILocation(line: 34, column: 16, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !709, line: 33, column: 5)
!1226 = !DILocation(line: 37, column: 17, scope: !1225)
!1227 = !DILocation(line: 37, column: 14, scope: !1225)
!1228 = !DILocation(line: 43, column: 5, scope: !1225)
!1229 = !DILocation(line: 49, column: 16, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !709, line: 45, column: 5)
!1231 = !DILocation(line: 0, scope: !1222)
!1232 = !DILocation(line: 53, column: 45, scope: !1212)
!1233 = !DILocation(line: 53, column: 13, scope: !1212)
!1234 = !DILocalVariable(name: "__dest", arg: 1, scope: !1235, file: !1236, line: 26, type: !1239)
!1235 = distinct !DISubprogram(name: "memcpy", scope: !1236, file: !1236, line: 26, type: !1237, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1240)
!1236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!100, !1239, !1006, !102}
!1239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1240 = !{!1234, !1241, !1242}
!1241 = !DILocalVariable(name: "__src", arg: 2, scope: !1235, file: !1236, line: 26, type: !1006)
!1242 = !DILocalVariable(name: "__len", arg: 3, scope: !1235, file: !1236, line: 26, type: !102)
!1243 = !DILocation(line: 0, scope: !1235, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 61, column: 3, scope: !1212)
!1245 = !DILocation(line: 29, column: 10, scope: !1235, inlinedAt: !1244)
!1246 = !DILocation(line: 62, column: 3, scope: !1212)
!1247 = !DILocation(line: 62, column: 28, scope: !1212)
!1248 = !DILocation(line: 63, column: 3, scope: !1212)
!1249 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !711, file: !711, line: 31, type: !1250, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!143, !99}
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "file", arg: 1, scope: !1249, file: !711, line: 31, type: !99)
!1254 = !DILocalVariable(name: "base", scope: !1249, file: !711, line: 33, type: !99)
!1255 = !DILocalVariable(name: "base_lim", scope: !1249, file: !711, line: 39, type: !99)
!1256 = !DILocalVariable(name: "had_slash", scope: !1249, file: !711, line: 40, type: !143)
!1257 = !DILocation(line: 0, scope: !1249)
!1258 = !DILocation(line: 33, column: 16, scope: !1249)
!1259 = !DILocation(line: 37, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1249, file: !711, line: 37, column: 7)
!1261 = !DILocation(line: 37, column: 7, scope: !1249)
!1262 = !DILocation(line: 39, column: 27, scope: !1249)
!1263 = !DILocation(line: 39, column: 25, scope: !1249)
!1264 = !DILocation(line: 40, column: 21, scope: !1249)
!1265 = !DILocation(line: 40, column: 31, scope: !1249)
!1266 = !DILocation(line: 41, column: 13, scope: !1249)
!1267 = !DILocation(line: 42, column: 3, scope: !1249)
!1268 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1269, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !78, !78, !105, !381}
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DILocalVariable(name: "status", arg: 1, scope: !1268, file: !371, line: 251, type: !78)
!1273 = !DILocalVariable(name: "errnum", arg: 2, scope: !1268, file: !371, line: 251, type: !78)
!1274 = !DILocalVariable(name: "message", arg: 3, scope: !1268, file: !371, line: 251, type: !105)
!1275 = !DILocalVariable(name: "args", arg: 4, scope: !1268, file: !371, line: 251, type: !381)
!1276 = !DILocation(line: 0, scope: !1268)
!1277 = !DILocation(line: 251, column: 1, scope: !1268)
!1278 = !DILocation(line: 261, column: 3, scope: !1268)
!1279 = !DILocation(line: 265, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1268, file: !371, line: 265, column: 7)
!1281 = !DILocation(line: 265, column: 7, scope: !1268)
!1282 = !DILocation(line: 266, column: 5, scope: !1280)
!1283 = !DILocation(line: 272, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !371, line: 268, column: 5)
!1285 = !DILocation(line: 276, column: 3, scope: !1268)
!1286 = !{i64 0, i64 8, !795, i64 8, i64 8, !795, i64 16, i64 8, !795, i64 24, i64 4, !862, i64 28, i64 4, !862}
!1287 = !DILocation(line: 282, column: 1, scope: !1268)
!1288 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !423, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "stdout_fd", scope: !1288, file: !371, line: 166, type: !78)
!1291 = !DILocation(line: 0, scope: !1288)
!1292 = !DILocalVariable(name: "fd", arg: 1, scope: !1293, file: !371, line: 145, type: !78)
!1293 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1135, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1294)
!1294 = !{!1292}
!1295 = !DILocation(line: 0, scope: !1293, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 182, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !371, line: 182, column: 7)
!1298 = !DILocation(line: 157, column: 15, scope: !1293, inlinedAt: !1296)
!1299 = !DILocation(line: 157, column: 12, scope: !1293, inlinedAt: !1296)
!1300 = !DILocation(line: 182, column: 7, scope: !1288)
!1301 = !DILocation(line: 184, column: 5, scope: !1297)
!1302 = !DILocation(line: 185, column: 1, scope: !1288)
!1303 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1269, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1304)
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "status", arg: 1, scope: !1303, file: !371, line: 219, type: !78)
!1306 = !DILocalVariable(name: "errnum", arg: 2, scope: !1303, file: !371, line: 219, type: !78)
!1307 = !DILocalVariable(name: "message", arg: 3, scope: !1303, file: !371, line: 219, type: !105)
!1308 = !DILocalVariable(name: "args", arg: 4, scope: !1303, file: !371, line: 219, type: !381)
!1309 = !DILocation(line: 0, scope: !1303)
!1310 = !DILocation(line: 219, column: 1, scope: !1303)
!1311 = !DILocation(line: 229, column: 13, scope: !1303)
!1312 = !DILocation(line: 135, column: 10, scope: !1313, inlinedAt: !1355)
!1313 = distinct !DISubprogram(name: "vfprintf", scope: !849, file: !849, line: 132, type: !1314, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1351)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!78, !1316, !853, !383}
!1316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1319, file: !160, line: 51, baseType: !78, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1319, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1319, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1319, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1319, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1319, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1319, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1319, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1319, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1319, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1319, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1319, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1319, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1319, file: !160, line: 70, baseType: !1335, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1319, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1319, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1319, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1319, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1319, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1319, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1319, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1319, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1319, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1319, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1319, file: !160, line: 93, baseType: !1335, size: 64, offset: 1344)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1319, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1319, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1319, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1319, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!1351 = !{!1352, !1353, !1354}
!1352 = !DILocalVariable(name: "__stream", arg: 1, scope: !1313, file: !849, line: 132, type: !1316)
!1353 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1313, file: !849, line: 133, type: !853)
!1354 = !DILocalVariable(name: "__ap", arg: 3, scope: !1313, file: !849, line: 133, type: !383)
!1355 = distinct !DILocation(line: 229, column: 3, scope: !1303)
!1356 = !{!1357, !1359}
!1357 = distinct !{!1357, !1358, !"vfprintf.inline: argument 0"}
!1358 = distinct !{!1358, !"vfprintf.inline"}
!1359 = distinct !{!1359, !1358, !"vfprintf.inline: argument 1"}
!1360 = !DILocation(line: 229, column: 3, scope: !1303)
!1361 = !DILocation(line: 0, scope: !1313, inlinedAt: !1355)
!1362 = !DILocation(line: 133, column: 49, scope: !1313, inlinedAt: !1355)
!1363 = !DILocation(line: 232, column: 3, scope: !1303)
!1364 = !DILocation(line: 233, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 233, column: 7)
!1366 = !DILocation(line: 233, column: 7, scope: !1303)
!1367 = !DILocalVariable(name: "errnum", arg: 1, scope: !1368, file: !371, line: 188, type: !78)
!1368 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !785, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1369)
!1369 = !{!1367, !1370, !1371}
!1370 = !DILocalVariable(name: "s", scope: !1368, file: !371, line: 190, type: !105)
!1371 = !DILocalVariable(name: "errbuf", scope: !1368, file: !371, line: 193, type: !1372)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 1024)
!1375 = !DILocation(line: 0, scope: !1368, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 234, column: 5, scope: !1365)
!1377 = !DILocation(line: 193, column: 3, scope: !1368, inlinedAt: !1376)
!1378 = !DILocation(line: 193, column: 8, scope: !1368, inlinedAt: !1376)
!1379 = !DILocation(line: 195, column: 7, scope: !1368, inlinedAt: !1376)
!1380 = !DILocation(line: 207, column: 9, scope: !1381, inlinedAt: !1376)
!1381 = distinct !DILexicalBlock(scope: !1368, file: !371, line: 207, column: 7)
!1382 = !DILocation(line: 207, column: 7, scope: !1368, inlinedAt: !1376)
!1383 = !DILocation(line: 208, column: 9, scope: !1381, inlinedAt: !1376)
!1384 = !DILocation(line: 208, column: 5, scope: !1381, inlinedAt: !1376)
!1385 = !DILocation(line: 214, column: 3, scope: !1368, inlinedAt: !1376)
!1386 = !DILocation(line: 216, column: 1, scope: !1368, inlinedAt: !1376)
!1387 = !DILocation(line: 234, column: 5, scope: !1365)
!1388 = !DILocation(line: 238, column: 3, scope: !1303)
!1389 = !DILocalVariable(name: "__c", arg: 1, scope: !1390, file: !1134, line: 101, type: !78)
!1390 = distinct !DISubprogram(name: "putc_unlocked", scope: !1134, file: !1134, line: 101, type: !1391, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!78, !78, !1317}
!1393 = !{!1389, !1394}
!1394 = !DILocalVariable(name: "__stream", arg: 2, scope: !1390, file: !1134, line: 101, type: !1317)
!1395 = !DILocation(line: 0, scope: !1390, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 238, column: 3, scope: !1303)
!1397 = !DILocation(line: 103, column: 10, scope: !1390, inlinedAt: !1396)
!1398 = !DILocation(line: 240, column: 3, scope: !1303)
!1399 = !DILocation(line: 241, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 241, column: 7)
!1401 = !DILocation(line: 241, column: 7, scope: !1303)
!1402 = !DILocation(line: 242, column: 5, scope: !1400)
!1403 = !DILocation(line: 243, column: 1, scope: !1303)
!1404 = !DISubprogram(name: "__vfprintf_chk", scope: !849, file: !849, line: 96, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!78, !1316, !78, !853, !383}
!1407 = !DISubprogram(name: "strerror_r", scope: !979, file: !979, line: 444, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!99, !78, !99, !102}
!1410 = !DISubprogram(name: "fflush_unlocked", scope: !382, file: !382, line: 239, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!78, !1317}
!1413 = !DISubprogram(name: "fcntl", scope: !1414, file: !1414, line: 149, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1414 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!78, !78, !78, null}
!1417 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1418, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !78, !78, !105, null}
!1420 = !{!1421, !1422, !1423, !1424}
!1421 = !DILocalVariable(name: "status", arg: 1, scope: !1417, file: !371, line: 285, type: !78)
!1422 = !DILocalVariable(name: "errnum", arg: 2, scope: !1417, file: !371, line: 285, type: !78)
!1423 = !DILocalVariable(name: "message", arg: 3, scope: !1417, file: !371, line: 285, type: !105)
!1424 = !DILocalVariable(name: "ap", scope: !1417, file: !371, line: 287, type: !381)
!1425 = !DILocation(line: 0, scope: !1417)
!1426 = !DILocation(line: 287, column: 3, scope: !1417)
!1427 = !DILocation(line: 287, column: 11, scope: !1417)
!1428 = !DILocation(line: 288, column: 3, scope: !1417)
!1429 = !DILocation(line: 289, column: 3, scope: !1417)
!1430 = !DILocation(line: 290, column: 3, scope: !1417)
!1431 = !DILocation(line: 291, column: 1, scope: !1417)
!1432 = !DILocation(line: 0, scope: !378)
!1433 = !DILocation(line: 298, column: 1, scope: !378)
!1434 = !DILocation(line: 302, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1436 = !DILocation(line: 302, column: 7, scope: !378)
!1437 = !DILocation(line: 307, column: 11, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !371, line: 307, column: 11)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !371, line: 303, column: 5)
!1440 = !DILocation(line: 307, column: 27, scope: !1438)
!1441 = !DILocation(line: 308, column: 11, scope: !1438)
!1442 = !DILocation(line: 308, column: 28, scope: !1438)
!1443 = !DILocation(line: 308, column: 25, scope: !1438)
!1444 = !DILocation(line: 309, column: 15, scope: !1438)
!1445 = !DILocation(line: 309, column: 33, scope: !1438)
!1446 = !DILocation(line: 310, column: 19, scope: !1438)
!1447 = !DILocation(line: 311, column: 22, scope: !1438)
!1448 = !DILocation(line: 311, column: 56, scope: !1438)
!1449 = !DILocation(line: 307, column: 11, scope: !1439)
!1450 = !DILocation(line: 316, column: 21, scope: !1439)
!1451 = !DILocation(line: 317, column: 23, scope: !1439)
!1452 = !DILocation(line: 318, column: 5, scope: !1439)
!1453 = !DILocation(line: 327, column: 3, scope: !378)
!1454 = !DILocation(line: 331, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1456 = !DILocation(line: 331, column: 7, scope: !378)
!1457 = !DILocation(line: 332, column: 5, scope: !1455)
!1458 = !DILocation(line: 338, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !371, line: 334, column: 5)
!1460 = !DILocation(line: 346, column: 3, scope: !378)
!1461 = !DILocation(line: 350, column: 3, scope: !378)
!1462 = !DILocation(line: 356, column: 1, scope: !378)
!1463 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1464, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !78, !78, !105, !84, !105, null}
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472}
!1467 = !DILocalVariable(name: "status", arg: 1, scope: !1463, file: !371, line: 359, type: !78)
!1468 = !DILocalVariable(name: "errnum", arg: 2, scope: !1463, file: !371, line: 359, type: !78)
!1469 = !DILocalVariable(name: "file_name", arg: 3, scope: !1463, file: !371, line: 359, type: !105)
!1470 = !DILocalVariable(name: "line_number", arg: 4, scope: !1463, file: !371, line: 360, type: !84)
!1471 = !DILocalVariable(name: "message", arg: 5, scope: !1463, file: !371, line: 360, type: !105)
!1472 = !DILocalVariable(name: "ap", scope: !1463, file: !371, line: 362, type: !381)
!1473 = !DILocation(line: 0, scope: !1463)
!1474 = !DILocation(line: 362, column: 3, scope: !1463)
!1475 = !DILocation(line: 362, column: 11, scope: !1463)
!1476 = !DILocation(line: 363, column: 3, scope: !1463)
!1477 = !DILocation(line: 364, column: 3, scope: !1463)
!1478 = !DILocation(line: 366, column: 3, scope: !1463)
!1479 = !DILocation(line: 367, column: 1, scope: !1463)
!1480 = distinct !DISubprogram(name: "getprogname", scope: !713, file: !713, line: 54, type: !1481, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !804)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!105}
!1483 = !DILocation(line: 58, column: 10, scope: !1480)
!1484 = !DILocation(line: 58, column: 3, scope: !1480)
!1485 = distinct !DISubprogram(name: "set_program_name", scope: !428, file: !428, line: 37, type: !814, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DILocalVariable(name: "argv0", arg: 1, scope: !1485, file: !428, line: 37, type: !105)
!1488 = !DILocalVariable(name: "slash", scope: !1485, file: !428, line: 44, type: !105)
!1489 = !DILocalVariable(name: "base", scope: !1485, file: !428, line: 45, type: !105)
!1490 = !DILocation(line: 0, scope: !1485)
!1491 = !DILocation(line: 44, column: 23, scope: !1485)
!1492 = !DILocation(line: 45, column: 22, scope: !1485)
!1493 = !DILocation(line: 46, column: 17, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !428, line: 46, column: 7)
!1495 = !DILocation(line: 46, column: 9, scope: !1494)
!1496 = !DILocation(line: 46, column: 25, scope: !1494)
!1497 = !DILocation(line: 46, column: 40, scope: !1494)
!1498 = !DILocalVariable(name: "__s1", arg: 1, scope: !1499, file: !875, line: 974, type: !1007)
!1499 = distinct !DISubprogram(name: "memeq", scope: !875, file: !875, line: 974, type: !1500, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!143, !1007, !1007, !102}
!1502 = !{!1498, !1503, !1504}
!1503 = !DILocalVariable(name: "__s2", arg: 2, scope: !1499, file: !875, line: 974, type: !1007)
!1504 = !DILocalVariable(name: "__n", arg: 3, scope: !1499, file: !875, line: 974, type: !102)
!1505 = !DILocation(line: 0, scope: !1499, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 46, column: 28, scope: !1494)
!1507 = !DILocation(line: 976, column: 11, scope: !1499, inlinedAt: !1506)
!1508 = !DILocation(line: 976, column: 10, scope: !1499, inlinedAt: !1506)
!1509 = !DILocation(line: 46, column: 7, scope: !1485)
!1510 = !DILocation(line: 49, column: 11, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !428, line: 49, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1494, file: !428, line: 47, column: 5)
!1513 = !DILocation(line: 49, column: 36, scope: !1511)
!1514 = !DILocation(line: 49, column: 11, scope: !1512)
!1515 = !DILocation(line: 65, column: 16, scope: !1485)
!1516 = !DILocation(line: 71, column: 27, scope: !1485)
!1517 = !DILocation(line: 74, column: 33, scope: !1485)
!1518 = !DILocation(line: 76, column: 1, scope: !1485)
!1519 = !DISubprogram(name: "strrchr", scope: !979, file: !979, line: 273, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1520 = !DILocation(line: 0, scope: !437)
!1521 = !DILocation(line: 40, column: 29, scope: !437)
!1522 = !DILocation(line: 41, column: 19, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !437, file: !438, line: 41, column: 7)
!1524 = !DILocation(line: 41, column: 7, scope: !437)
!1525 = !DILocation(line: 47, column: 3, scope: !437)
!1526 = !DILocation(line: 48, column: 3, scope: !437)
!1527 = !DILocation(line: 48, column: 13, scope: !437)
!1528 = !DILocalVariable(name: "ps", arg: 1, scope: !1529, file: !1530, line: 1135, type: !1533)
!1529 = distinct !DISubprogram(name: "mbszero", scope: !1530, file: !1530, line: 1135, type: !1531, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1534)
!1530 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1534 = !{!1528}
!1535 = !DILocation(line: 0, scope: !1529, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 48, column: 18, scope: !437)
!1537 = !DILocalVariable(name: "__dest", arg: 1, scope: !1538, file: !1236, line: 57, type: !100)
!1538 = distinct !DISubprogram(name: "memset", scope: !1236, file: !1236, line: 57, type: !1539, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!100, !100, !78, !102}
!1541 = !{!1537, !1542, !1543}
!1542 = !DILocalVariable(name: "__ch", arg: 2, scope: !1538, file: !1236, line: 57, type: !78)
!1543 = !DILocalVariable(name: "__len", arg: 3, scope: !1538, file: !1236, line: 57, type: !102)
!1544 = !DILocation(line: 0, scope: !1538, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 1137, column: 3, scope: !1529, inlinedAt: !1536)
!1546 = !DILocation(line: 59, column: 10, scope: !1538, inlinedAt: !1545)
!1547 = !DILocation(line: 49, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !437, file: !438, line: 49, column: 7)
!1549 = !DILocation(line: 49, column: 39, scope: !1548)
!1550 = !DILocation(line: 49, column: 44, scope: !1548)
!1551 = !DILocation(line: 54, column: 1, scope: !437)
!1552 = !DISubprogram(name: "mbrtoc32", scope: !449, file: !449, line: 57, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!102, !1555, !853, !102, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1533)
!1558 = distinct !DISubprogram(name: "clone_quoting_options", scope: !468, file: !468, line: 113, type: !1559, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1562)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1561, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1562 = !{!1563, !1564, !1565}
!1563 = !DILocalVariable(name: "o", arg: 1, scope: !1558, file: !468, line: 113, type: !1561)
!1564 = !DILocalVariable(name: "saved_errno", scope: !1558, file: !468, line: 115, type: !78)
!1565 = !DILocalVariable(name: "p", scope: !1558, file: !468, line: 116, type: !1561)
!1566 = !DILocation(line: 0, scope: !1558)
!1567 = !DILocation(line: 115, column: 21, scope: !1558)
!1568 = !DILocation(line: 116, column: 40, scope: !1558)
!1569 = !DILocation(line: 116, column: 31, scope: !1558)
!1570 = !DILocation(line: 118, column: 9, scope: !1558)
!1571 = !DILocation(line: 119, column: 3, scope: !1558)
!1572 = distinct !DISubprogram(name: "get_quoting_style", scope: !468, file: !468, line: 124, type: !1573, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1577)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!494, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!1577 = !{!1578}
!1578 = !DILocalVariable(name: "o", arg: 1, scope: !1572, file: !468, line: 124, type: !1575)
!1579 = !DILocation(line: 0, scope: !1572)
!1580 = !DILocation(line: 126, column: 11, scope: !1572)
!1581 = !DILocation(line: 126, column: 46, scope: !1572)
!1582 = !{!1583, !797, i64 0}
!1583 = !{!"quoting_options", !797, i64 0, !863, i64 4, !797, i64 8, !796, i64 40, !796, i64 48}
!1584 = !DILocation(line: 126, column: 3, scope: !1572)
!1585 = distinct !DISubprogram(name: "set_quoting_style", scope: !468, file: !468, line: 132, type: !1586, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1561, !494}
!1588 = !{!1589, !1590}
!1589 = !DILocalVariable(name: "o", arg: 1, scope: !1585, file: !468, line: 132, type: !1561)
!1590 = !DILocalVariable(name: "s", arg: 2, scope: !1585, file: !468, line: 132, type: !494)
!1591 = !DILocation(line: 0, scope: !1585)
!1592 = !DILocation(line: 134, column: 4, scope: !1585)
!1593 = !DILocation(line: 134, column: 45, scope: !1585)
!1594 = !DILocation(line: 135, column: 1, scope: !1585)
!1595 = distinct !DISubprogram(name: "set_char_quoting", scope: !468, file: !468, line: 143, type: !1596, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!78, !1561, !4, !78}
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1605, !1606}
!1599 = !DILocalVariable(name: "o", arg: 1, scope: !1595, file: !468, line: 143, type: !1561)
!1600 = !DILocalVariable(name: "c", arg: 2, scope: !1595, file: !468, line: 143, type: !4)
!1601 = !DILocalVariable(name: "i", arg: 3, scope: !1595, file: !468, line: 143, type: !78)
!1602 = !DILocalVariable(name: "uc", scope: !1595, file: !468, line: 145, type: !107)
!1603 = !DILocalVariable(name: "p", scope: !1595, file: !468, line: 146, type: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1605 = !DILocalVariable(name: "shift", scope: !1595, file: !468, line: 148, type: !78)
!1606 = !DILocalVariable(name: "r", scope: !1595, file: !468, line: 149, type: !84)
!1607 = !DILocation(line: 0, scope: !1595)
!1608 = !DILocation(line: 147, column: 6, scope: !1595)
!1609 = !DILocation(line: 147, column: 41, scope: !1595)
!1610 = !DILocation(line: 147, column: 62, scope: !1595)
!1611 = !DILocation(line: 147, column: 57, scope: !1595)
!1612 = !DILocation(line: 148, column: 15, scope: !1595)
!1613 = !DILocation(line: 149, column: 21, scope: !1595)
!1614 = !DILocation(line: 149, column: 24, scope: !1595)
!1615 = !DILocation(line: 149, column: 34, scope: !1595)
!1616 = !DILocation(line: 150, column: 19, scope: !1595)
!1617 = !DILocation(line: 150, column: 24, scope: !1595)
!1618 = !DILocation(line: 150, column: 6, scope: !1595)
!1619 = !DILocation(line: 151, column: 3, scope: !1595)
!1620 = distinct !DISubprogram(name: "set_quoting_flags", scope: !468, file: !468, line: 159, type: !1621, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!78, !1561, !78}
!1623 = !{!1624, !1625, !1626}
!1624 = !DILocalVariable(name: "o", arg: 1, scope: !1620, file: !468, line: 159, type: !1561)
!1625 = !DILocalVariable(name: "i", arg: 2, scope: !1620, file: !468, line: 159, type: !78)
!1626 = !DILocalVariable(name: "r", scope: !1620, file: !468, line: 163, type: !78)
!1627 = !DILocation(line: 0, scope: !1620)
!1628 = !DILocation(line: 161, column: 8, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1620, file: !468, line: 161, column: 7)
!1630 = !DILocation(line: 161, column: 7, scope: !1620)
!1631 = !DILocation(line: 163, column: 14, scope: !1620)
!1632 = !{!1583, !863, i64 4}
!1633 = !DILocation(line: 164, column: 12, scope: !1620)
!1634 = !DILocation(line: 165, column: 3, scope: !1620)
!1635 = distinct !DISubprogram(name: "set_custom_quoting", scope: !468, file: !468, line: 169, type: !1636, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1561, !105, !105}
!1638 = !{!1639, !1640, !1641}
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1635, file: !468, line: 169, type: !1561)
!1640 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1635, file: !468, line: 170, type: !105)
!1641 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1635, file: !468, line: 170, type: !105)
!1642 = !DILocation(line: 0, scope: !1635)
!1643 = !DILocation(line: 172, column: 8, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !468, line: 172, column: 7)
!1645 = !DILocation(line: 172, column: 7, scope: !1635)
!1646 = !DILocation(line: 174, column: 12, scope: !1635)
!1647 = !DILocation(line: 175, column: 8, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1635, file: !468, line: 175, column: 7)
!1649 = !DILocation(line: 175, column: 19, scope: !1648)
!1650 = !DILocation(line: 176, column: 5, scope: !1648)
!1651 = !DILocation(line: 177, column: 6, scope: !1635)
!1652 = !DILocation(line: 177, column: 17, scope: !1635)
!1653 = !{!1583, !796, i64 40}
!1654 = !DILocation(line: 178, column: 6, scope: !1635)
!1655 = !DILocation(line: 178, column: 18, scope: !1635)
!1656 = !{!1583, !796, i64 48}
!1657 = !DILocation(line: 179, column: 1, scope: !1635)
!1658 = !DISubprogram(name: "abort", scope: !983, file: !983, line: 598, type: !423, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1659 = distinct !DISubprogram(name: "quotearg_buffer", scope: !468, file: !468, line: 774, type: !1660, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!102, !99, !102, !105, !102, !1575}
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1663 = !DILocalVariable(name: "buffer", arg: 1, scope: !1659, file: !468, line: 774, type: !99)
!1664 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1659, file: !468, line: 774, type: !102)
!1665 = !DILocalVariable(name: "arg", arg: 3, scope: !1659, file: !468, line: 775, type: !105)
!1666 = !DILocalVariable(name: "argsize", arg: 4, scope: !1659, file: !468, line: 775, type: !102)
!1667 = !DILocalVariable(name: "o", arg: 5, scope: !1659, file: !468, line: 776, type: !1575)
!1668 = !DILocalVariable(name: "p", scope: !1659, file: !468, line: 778, type: !1575)
!1669 = !DILocalVariable(name: "saved_errno", scope: !1659, file: !468, line: 779, type: !78)
!1670 = !DILocalVariable(name: "r", scope: !1659, file: !468, line: 780, type: !102)
!1671 = !DILocation(line: 0, scope: !1659)
!1672 = !DILocation(line: 778, column: 37, scope: !1659)
!1673 = !DILocation(line: 779, column: 21, scope: !1659)
!1674 = !DILocation(line: 781, column: 43, scope: !1659)
!1675 = !DILocation(line: 781, column: 53, scope: !1659)
!1676 = !DILocation(line: 781, column: 63, scope: !1659)
!1677 = !DILocation(line: 782, column: 43, scope: !1659)
!1678 = !DILocation(line: 782, column: 58, scope: !1659)
!1679 = !DILocation(line: 780, column: 14, scope: !1659)
!1680 = !DILocation(line: 783, column: 9, scope: !1659)
!1681 = !DILocation(line: 784, column: 3, scope: !1659)
!1682 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !468, file: !468, line: 251, type: !1683, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1687)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!102, !99, !102, !105, !102, !494, !78, !1685, !105, !105}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1712, !1714, !1717, !1718, !1719, !1720, !1723, !1724, !1727, !1731, !1732, !1740, !1743, !1744, !1746, !1747, !1748, !1749}
!1688 = !DILocalVariable(name: "buffer", arg: 1, scope: !1682, file: !468, line: 251, type: !99)
!1689 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1682, file: !468, line: 251, type: !102)
!1690 = !DILocalVariable(name: "arg", arg: 3, scope: !1682, file: !468, line: 252, type: !105)
!1691 = !DILocalVariable(name: "argsize", arg: 4, scope: !1682, file: !468, line: 252, type: !102)
!1692 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1682, file: !468, line: 253, type: !494)
!1693 = !DILocalVariable(name: "flags", arg: 6, scope: !1682, file: !468, line: 253, type: !78)
!1694 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1682, file: !468, line: 254, type: !1685)
!1695 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1682, file: !468, line: 255, type: !105)
!1696 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1682, file: !468, line: 256, type: !105)
!1697 = !DILocalVariable(name: "unibyte_locale", scope: !1682, file: !468, line: 258, type: !143)
!1698 = !DILocalVariable(name: "len", scope: !1682, file: !468, line: 260, type: !102)
!1699 = !DILocalVariable(name: "orig_buffersize", scope: !1682, file: !468, line: 261, type: !102)
!1700 = !DILocalVariable(name: "quote_string", scope: !1682, file: !468, line: 262, type: !105)
!1701 = !DILocalVariable(name: "quote_string_len", scope: !1682, file: !468, line: 263, type: !102)
!1702 = !DILocalVariable(name: "backslash_escapes", scope: !1682, file: !468, line: 264, type: !143)
!1703 = !DILocalVariable(name: "elide_outer_quotes", scope: !1682, file: !468, line: 265, type: !143)
!1704 = !DILocalVariable(name: "encountered_single_quote", scope: !1682, file: !468, line: 266, type: !143)
!1705 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1682, file: !468, line: 267, type: !143)
!1706 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1682, file: !468, line: 309, type: !143)
!1707 = !DILocalVariable(name: "lq", scope: !1708, file: !468, line: 361, type: !105)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !468, line: 361, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !468, line: 360, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !468, line: 333, column: 7)
!1711 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 312, column: 5)
!1712 = !DILocalVariable(name: "i", scope: !1713, file: !468, line: 395, type: !102)
!1713 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 395, column: 3)
!1714 = !DILocalVariable(name: "is_right_quote", scope: !1715, file: !468, line: 397, type: !143)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !468, line: 396, column: 5)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !468, line: 395, column: 3)
!1717 = !DILocalVariable(name: "escaping", scope: !1715, file: !468, line: 398, type: !143)
!1718 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1715, file: !468, line: 399, type: !143)
!1719 = !DILocalVariable(name: "c", scope: !1715, file: !468, line: 417, type: !107)
!1720 = !DILocalVariable(name: "m", scope: !1721, file: !468, line: 598, type: !102)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 596, column: 11)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 419, column: 9)
!1723 = !DILocalVariable(name: "printable", scope: !1721, file: !468, line: 600, type: !143)
!1724 = !DILocalVariable(name: "mbs", scope: !1725, file: !468, line: 609, type: !555)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !468, line: 608, column: 15)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !468, line: 602, column: 17)
!1727 = !DILocalVariable(name: "w", scope: !1728, file: !468, line: 618, type: !448)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !468, line: 617, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !468, line: 616, column: 17)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !468, line: 616, column: 17)
!1731 = !DILocalVariable(name: "bytes", scope: !1728, file: !468, line: 619, type: !102)
!1732 = !DILocalVariable(name: "j", scope: !1733, file: !468, line: 648, type: !102)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !468, line: 648, column: 29)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !468, line: 647, column: 27)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !468, line: 645, column: 29)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !468, line: 636, column: 23)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !468, line: 628, column: 30)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !468, line: 623, column: 30)
!1739 = distinct !DILexicalBlock(scope: !1728, file: !468, line: 621, column: 25)
!1740 = !DILocalVariable(name: "ilim", scope: !1741, file: !468, line: 674, type: !102)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !468, line: 671, column: 15)
!1742 = distinct !DILexicalBlock(scope: !1721, file: !468, line: 670, column: 17)
!1743 = !DILabel(scope: !1682, name: "process_input", file: !468, line: 308)
!1744 = !DILabel(scope: !1745, name: "c_and_shell_escape", file: !468, line: 502)
!1745 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 478, column: 9)
!1746 = !DILabel(scope: !1745, name: "c_escape", file: !468, line: 507)
!1747 = !DILabel(scope: !1715, name: "store_escape", file: !468, line: 709)
!1748 = !DILabel(scope: !1715, name: "store_c", file: !468, line: 712)
!1749 = !DILabel(scope: !1682, name: "force_outer_quoting_style", file: !468, line: 753)
!1750 = !DILocation(line: 0, scope: !1682)
!1751 = !DILocation(line: 258, column: 25, scope: !1682)
!1752 = !DILocation(line: 258, column: 36, scope: !1682)
!1753 = !DILocation(line: 267, column: 3, scope: !1682)
!1754 = !DILocation(line: 261, column: 10, scope: !1682)
!1755 = !DILocation(line: 262, column: 15, scope: !1682)
!1756 = !DILocation(line: 263, column: 10, scope: !1682)
!1757 = !DILocation(line: 308, column: 2, scope: !1682)
!1758 = !DILocation(line: 311, column: 3, scope: !1682)
!1759 = !DILocation(line: 318, column: 11, scope: !1711)
!1760 = !DILocation(line: 319, column: 9, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !468, line: 319, column: 9)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !468, line: 319, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1711, file: !468, line: 318, column: 11)
!1764 = !DILocation(line: 319, column: 9, scope: !1762)
!1765 = !DILocation(line: 0, scope: !546, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 357, column: 26, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !468, line: 335, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1710, file: !468, line: 334, column: 13)
!1769 = !DILocation(line: 199, column: 29, scope: !546, inlinedAt: !1766)
!1770 = !DILocation(line: 201, column: 19, scope: !1771, inlinedAt: !1766)
!1771 = distinct !DILexicalBlock(scope: !546, file: !468, line: 201, column: 7)
!1772 = !DILocation(line: 201, column: 7, scope: !546, inlinedAt: !1766)
!1773 = !DILocation(line: 229, column: 3, scope: !546, inlinedAt: !1766)
!1774 = !DILocation(line: 230, column: 3, scope: !546, inlinedAt: !1766)
!1775 = !DILocation(line: 230, column: 13, scope: !546, inlinedAt: !1766)
!1776 = !DILocalVariable(name: "ps", arg: 1, scope: !1777, file: !1530, line: 1135, type: !1780)
!1777 = distinct !DISubprogram(name: "mbszero", scope: !1530, file: !1530, line: 1135, type: !1778, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1781)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!1781 = !{!1776}
!1782 = !DILocation(line: 0, scope: !1777, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 230, column: 18, scope: !546, inlinedAt: !1766)
!1784 = !DILocalVariable(name: "__dest", arg: 1, scope: !1785, file: !1236, line: 57, type: !100)
!1785 = distinct !DISubprogram(name: "memset", scope: !1236, file: !1236, line: 57, type: !1539, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1786)
!1786 = !{!1784, !1787, !1788}
!1787 = !DILocalVariable(name: "__ch", arg: 2, scope: !1785, file: !1236, line: 57, type: !78)
!1788 = !DILocalVariable(name: "__len", arg: 3, scope: !1785, file: !1236, line: 57, type: !102)
!1789 = !DILocation(line: 0, scope: !1785, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 1137, column: 3, scope: !1777, inlinedAt: !1783)
!1791 = !DILocation(line: 59, column: 10, scope: !1785, inlinedAt: !1790)
!1792 = !DILocation(line: 231, column: 7, scope: !1793, inlinedAt: !1766)
!1793 = distinct !DILexicalBlock(scope: !546, file: !468, line: 231, column: 7)
!1794 = !DILocation(line: 231, column: 40, scope: !1793, inlinedAt: !1766)
!1795 = !DILocation(line: 231, column: 45, scope: !1793, inlinedAt: !1766)
!1796 = !DILocation(line: 235, column: 1, scope: !546, inlinedAt: !1766)
!1797 = !DILocation(line: 0, scope: !546, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 358, column: 27, scope: !1767)
!1799 = !DILocation(line: 199, column: 29, scope: !546, inlinedAt: !1798)
!1800 = !DILocation(line: 201, column: 19, scope: !1771, inlinedAt: !1798)
!1801 = !DILocation(line: 201, column: 7, scope: !546, inlinedAt: !1798)
!1802 = !DILocation(line: 229, column: 3, scope: !546, inlinedAt: !1798)
!1803 = !DILocation(line: 230, column: 3, scope: !546, inlinedAt: !1798)
!1804 = !DILocation(line: 230, column: 13, scope: !546, inlinedAt: !1798)
!1805 = !DILocation(line: 0, scope: !1777, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 230, column: 18, scope: !546, inlinedAt: !1798)
!1807 = !DILocation(line: 0, scope: !1785, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 1137, column: 3, scope: !1777, inlinedAt: !1806)
!1809 = !DILocation(line: 59, column: 10, scope: !1785, inlinedAt: !1808)
!1810 = !DILocation(line: 231, column: 7, scope: !1793, inlinedAt: !1798)
!1811 = !DILocation(line: 231, column: 40, scope: !1793, inlinedAt: !1798)
!1812 = !DILocation(line: 231, column: 45, scope: !1793, inlinedAt: !1798)
!1813 = !DILocation(line: 235, column: 1, scope: !546, inlinedAt: !1798)
!1814 = !DILocation(line: 360, column: 13, scope: !1710)
!1815 = !DILocation(line: 0, scope: !1708)
!1816 = !DILocation(line: 361, column: 45, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1708, file: !468, line: 361, column: 11)
!1818 = !DILocation(line: 361, column: 11, scope: !1708)
!1819 = !DILocation(line: 362, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !468, line: 362, column: 13)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !468, line: 362, column: 13)
!1822 = !DILocation(line: 362, column: 13, scope: !1821)
!1823 = !DILocation(line: 361, column: 52, scope: !1817)
!1824 = distinct !{!1824, !1818, !1825, !909}
!1825 = !DILocation(line: 362, column: 13, scope: !1708)
!1826 = !DILocation(line: 260, column: 10, scope: !1682)
!1827 = !DILocation(line: 365, column: 28, scope: !1710)
!1828 = !DILocation(line: 367, column: 7, scope: !1711)
!1829 = !DILocation(line: 370, column: 7, scope: !1711)
!1830 = !DILocation(line: 376, column: 11, scope: !1711)
!1831 = !DILocation(line: 381, column: 11, scope: !1711)
!1832 = !DILocation(line: 382, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !468, line: 382, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !468, line: 382, column: 9)
!1835 = distinct !DILexicalBlock(scope: !1711, file: !468, line: 381, column: 11)
!1836 = !DILocation(line: 382, column: 9, scope: !1834)
!1837 = !DILocation(line: 389, column: 7, scope: !1711)
!1838 = !DILocation(line: 392, column: 7, scope: !1711)
!1839 = !DILocation(line: 0, scope: !1713)
!1840 = !DILocation(line: 395, column: 8, scope: !1713)
!1841 = !DILocation(line: 395, scope: !1713)
!1842 = !DILocation(line: 395, column: 34, scope: !1716)
!1843 = !DILocation(line: 395, column: 26, scope: !1716)
!1844 = !DILocation(line: 395, column: 48, scope: !1716)
!1845 = !DILocation(line: 395, column: 55, scope: !1716)
!1846 = !DILocation(line: 395, column: 3, scope: !1713)
!1847 = !DILocation(line: 395, column: 67, scope: !1716)
!1848 = !DILocation(line: 0, scope: !1715)
!1849 = !DILocation(line: 402, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 401, column: 11)
!1851 = !DILocation(line: 404, column: 17, scope: !1850)
!1852 = !DILocation(line: 405, column: 39, scope: !1850)
!1853 = !DILocation(line: 409, column: 32, scope: !1850)
!1854 = !DILocation(line: 405, column: 19, scope: !1850)
!1855 = !DILocation(line: 405, column: 15, scope: !1850)
!1856 = !DILocation(line: 410, column: 11, scope: !1850)
!1857 = !DILocation(line: 410, column: 25, scope: !1850)
!1858 = !DILocalVariable(name: "__s1", arg: 1, scope: !1859, file: !875, line: 974, type: !1007)
!1859 = distinct !DISubprogram(name: "memeq", scope: !875, file: !875, line: 974, type: !1500, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1860)
!1860 = !{!1858, !1861, !1862}
!1861 = !DILocalVariable(name: "__s2", arg: 2, scope: !1859, file: !875, line: 974, type: !1007)
!1862 = !DILocalVariable(name: "__n", arg: 3, scope: !1859, file: !875, line: 974, type: !102)
!1863 = !DILocation(line: 0, scope: !1859, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 410, column: 14, scope: !1850)
!1865 = !DILocation(line: 976, column: 11, scope: !1859, inlinedAt: !1864)
!1866 = !DILocation(line: 976, column: 10, scope: !1859, inlinedAt: !1864)
!1867 = !DILocation(line: 401, column: 11, scope: !1715)
!1868 = !DILocation(line: 417, column: 25, scope: !1715)
!1869 = !DILocation(line: 418, column: 7, scope: !1715)
!1870 = !DILocation(line: 421, column: 15, scope: !1722)
!1871 = !DILocation(line: 423, column: 15, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !468, line: 423, column: 15)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !468, line: 422, column: 13)
!1874 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 421, column: 15)
!1875 = !DILocation(line: 423, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !468, line: 423, column: 15)
!1877 = !DILocation(line: 423, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !468, line: 423, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !468, line: 423, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !468, line: 423, column: 15)
!1881 = !DILocation(line: 423, column: 15, scope: !1879)
!1882 = !DILocation(line: 423, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !468, line: 423, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !468, line: 423, column: 15)
!1885 = !DILocation(line: 423, column: 15, scope: !1884)
!1886 = !DILocation(line: 423, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !468, line: 423, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !468, line: 423, column: 15)
!1889 = !DILocation(line: 423, column: 15, scope: !1888)
!1890 = !DILocation(line: 423, column: 15, scope: !1880)
!1891 = !DILocation(line: 423, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !468, line: 423, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1872, file: !468, line: 423, column: 15)
!1894 = !DILocation(line: 423, column: 15, scope: !1893)
!1895 = !DILocation(line: 431, column: 19, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1873, file: !468, line: 430, column: 19)
!1897 = !DILocation(line: 431, column: 24, scope: !1896)
!1898 = !DILocation(line: 431, column: 28, scope: !1896)
!1899 = !DILocation(line: 431, column: 38, scope: !1896)
!1900 = !DILocation(line: 431, column: 48, scope: !1896)
!1901 = !DILocation(line: 431, column: 59, scope: !1896)
!1902 = !DILocation(line: 433, column: 19, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !468, line: 433, column: 19)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !468, line: 433, column: 19)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !468, line: 432, column: 17)
!1906 = !DILocation(line: 433, column: 19, scope: !1904)
!1907 = !DILocation(line: 434, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !468, line: 434, column: 19)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !468, line: 434, column: 19)
!1910 = !DILocation(line: 434, column: 19, scope: !1909)
!1911 = !DILocation(line: 435, column: 17, scope: !1905)
!1912 = !DILocation(line: 442, column: 20, scope: !1874)
!1913 = !DILocation(line: 447, column: 11, scope: !1722)
!1914 = !DILocation(line: 450, column: 19, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 448, column: 13)
!1916 = !DILocation(line: 456, column: 19, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1915, file: !468, line: 455, column: 19)
!1918 = !DILocation(line: 456, column: 24, scope: !1917)
!1919 = !DILocation(line: 456, column: 28, scope: !1917)
!1920 = !DILocation(line: 456, column: 38, scope: !1917)
!1921 = !DILocation(line: 456, column: 47, scope: !1917)
!1922 = !DILocation(line: 456, column: 41, scope: !1917)
!1923 = !DILocation(line: 456, column: 52, scope: !1917)
!1924 = !DILocation(line: 455, column: 19, scope: !1915)
!1925 = !DILocation(line: 457, column: 25, scope: !1917)
!1926 = !DILocation(line: 457, column: 17, scope: !1917)
!1927 = !DILocation(line: 464, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1917, file: !468, line: 458, column: 19)
!1929 = !DILocation(line: 468, column: 21, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !468, line: 468, column: 21)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !468, line: 468, column: 21)
!1932 = !DILocation(line: 468, column: 21, scope: !1931)
!1933 = !DILocation(line: 469, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !468, line: 469, column: 21)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !468, line: 469, column: 21)
!1936 = !DILocation(line: 469, column: 21, scope: !1935)
!1937 = !DILocation(line: 470, column: 21, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !468, line: 470, column: 21)
!1939 = distinct !DILexicalBlock(scope: !1928, file: !468, line: 470, column: 21)
!1940 = !DILocation(line: 470, column: 21, scope: !1939)
!1941 = !DILocation(line: 471, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !468, line: 471, column: 21)
!1943 = distinct !DILexicalBlock(scope: !1928, file: !468, line: 471, column: 21)
!1944 = !DILocation(line: 471, column: 21, scope: !1943)
!1945 = !DILocation(line: 472, column: 21, scope: !1928)
!1946 = !DILocation(line: 482, column: 33, scope: !1745)
!1947 = !DILocation(line: 483, column: 33, scope: !1745)
!1948 = !DILocation(line: 485, column: 33, scope: !1745)
!1949 = !DILocation(line: 486, column: 33, scope: !1745)
!1950 = !DILocation(line: 487, column: 33, scope: !1745)
!1951 = !DILocation(line: 490, column: 17, scope: !1745)
!1952 = !DILocation(line: 492, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !468, line: 491, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1745, file: !468, line: 490, column: 17)
!1955 = !DILocation(line: 499, column: 35, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1745, file: !468, line: 499, column: 17)
!1957 = !DILocation(line: 0, scope: !1745)
!1958 = !DILocation(line: 502, column: 11, scope: !1745)
!1959 = !DILocation(line: 504, column: 17, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1745, file: !468, line: 503, column: 17)
!1961 = !DILocation(line: 507, column: 11, scope: !1745)
!1962 = !DILocation(line: 508, column: 17, scope: !1745)
!1963 = !DILocation(line: 517, column: 15, scope: !1722)
!1964 = !DILocation(line: 517, column: 40, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 517, column: 15)
!1966 = !DILocation(line: 517, column: 47, scope: !1965)
!1967 = !DILocation(line: 517, column: 18, scope: !1965)
!1968 = !DILocation(line: 521, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 521, column: 15)
!1970 = !DILocation(line: 521, column: 15, scope: !1722)
!1971 = !DILocation(line: 525, column: 11, scope: !1722)
!1972 = !DILocation(line: 537, column: 15, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 536, column: 15)
!1974 = !DILocation(line: 536, column: 15, scope: !1722)
!1975 = !DILocation(line: 544, column: 15, scope: !1722)
!1976 = !DILocation(line: 546, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !468, line: 545, column: 13)
!1978 = distinct !DILexicalBlock(scope: !1722, file: !468, line: 544, column: 15)
!1979 = !DILocation(line: 549, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !468, line: 549, column: 19)
!1981 = !DILocation(line: 549, column: 30, scope: !1980)
!1982 = !DILocation(line: 558, column: 15, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !468, line: 558, column: 15)
!1984 = distinct !DILexicalBlock(scope: !1977, file: !468, line: 558, column: 15)
!1985 = !DILocation(line: 558, column: 15, scope: !1984)
!1986 = !DILocation(line: 559, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !468, line: 559, column: 15)
!1988 = distinct !DILexicalBlock(scope: !1977, file: !468, line: 559, column: 15)
!1989 = !DILocation(line: 559, column: 15, scope: !1988)
!1990 = !DILocation(line: 560, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !468, line: 560, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1977, file: !468, line: 560, column: 15)
!1993 = !DILocation(line: 560, column: 15, scope: !1992)
!1994 = !DILocation(line: 562, column: 13, scope: !1977)
!1995 = !DILocation(line: 602, column: 17, scope: !1721)
!1996 = !DILocation(line: 0, scope: !1721)
!1997 = !DILocation(line: 605, column: 29, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1726, file: !468, line: 603, column: 15)
!1999 = !DILocation(line: 605, column: 41, scope: !1998)
!2000 = !DILocation(line: 606, column: 15, scope: !1998)
!2001 = !DILocation(line: 609, column: 17, scope: !1725)
!2002 = !DILocation(line: 609, column: 27, scope: !1725)
!2003 = !DILocation(line: 0, scope: !1777, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 609, column: 32, scope: !1725)
!2005 = !DILocation(line: 0, scope: !1785, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 1137, column: 3, scope: !1777, inlinedAt: !2004)
!2007 = !DILocation(line: 59, column: 10, scope: !1785, inlinedAt: !2006)
!2008 = !DILocation(line: 613, column: 29, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1725, file: !468, line: 613, column: 21)
!2010 = !DILocation(line: 613, column: 21, scope: !1725)
!2011 = !DILocation(line: 614, column: 29, scope: !2009)
!2012 = !DILocation(line: 614, column: 19, scope: !2009)
!2013 = !DILocation(line: 618, column: 21, scope: !1728)
!2014 = !DILocation(line: 620, column: 54, scope: !1728)
!2015 = !DILocation(line: 0, scope: !1728)
!2016 = !DILocation(line: 619, column: 36, scope: !1728)
!2017 = !DILocation(line: 621, column: 25, scope: !1728)
!2018 = !DILocation(line: 631, column: 38, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1737, file: !468, line: 629, column: 23)
!2020 = !DILocation(line: 631, column: 48, scope: !2019)
!2021 = !DILocation(line: 626, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1738, file: !468, line: 624, column: 23)
!2023 = !DILocation(line: 631, column: 51, scope: !2019)
!2024 = !DILocation(line: 631, column: 25, scope: !2019)
!2025 = !DILocation(line: 632, column: 28, scope: !2019)
!2026 = !DILocation(line: 631, column: 34, scope: !2019)
!2027 = distinct !{!2027, !2024, !2025, !909}
!2028 = !DILocation(line: 646, column: 29, scope: !1735)
!2029 = !DILocation(line: 0, scope: !1733)
!2030 = !DILocation(line: 649, column: 49, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1733, file: !468, line: 648, column: 29)
!2032 = !DILocation(line: 649, column: 39, scope: !2031)
!2033 = !DILocation(line: 649, column: 31, scope: !2031)
!2034 = !DILocation(line: 648, column: 60, scope: !2031)
!2035 = !DILocation(line: 648, column: 50, scope: !2031)
!2036 = !DILocation(line: 648, column: 29, scope: !1733)
!2037 = distinct !{!2037, !2036, !2038, !909}
!2038 = !DILocation(line: 654, column: 33, scope: !1733)
!2039 = !DILocation(line: 657, column: 43, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1736, file: !468, line: 657, column: 29)
!2041 = !DILocalVariable(name: "wc", arg: 1, scope: !2042, file: !2043, line: 865, type: !2046)
!2042 = distinct !DISubprogram(name: "c32isprint", scope: !2043, file: !2043, line: 865, type: !2044, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2048)
!2043 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!78, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2047, line: 20, baseType: !84)
!2047 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2048 = !{!2041}
!2049 = !DILocation(line: 0, scope: !2042, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 657, column: 31, scope: !2040)
!2051 = !DILocation(line: 871, column: 10, scope: !2042, inlinedAt: !2050)
!2052 = !DILocation(line: 657, column: 31, scope: !2040)
!2053 = !DILocation(line: 664, column: 23, scope: !1728)
!2054 = !DILocation(line: 665, column: 19, scope: !1729)
!2055 = !DILocation(line: 666, column: 15, scope: !1726)
!2056 = !DILocation(line: 753, column: 2, scope: !1682)
!2057 = !DILocation(line: 756, column: 51, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 756, column: 7)
!2059 = !DILocation(line: 0, scope: !1726)
!2060 = !DILocation(line: 670, column: 19, scope: !1742)
!2061 = !DILocation(line: 670, column: 23, scope: !1742)
!2062 = !DILocation(line: 674, column: 33, scope: !1741)
!2063 = !DILocation(line: 0, scope: !1741)
!2064 = !DILocation(line: 676, column: 17, scope: !1741)
!2065 = !DILocation(line: 398, column: 12, scope: !1715)
!2066 = !DILocation(line: 678, column: 43, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !468, line: 678, column: 25)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !468, line: 677, column: 19)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !468, line: 676, column: 17)
!2070 = distinct !DILexicalBlock(scope: !1741, file: !468, line: 676, column: 17)
!2071 = !DILocation(line: 680, column: 25, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !468, line: 680, column: 25)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !468, line: 679, column: 23)
!2074 = !DILocation(line: 680, column: 25, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !468, line: 680, column: 25)
!2076 = !DILocation(line: 680, column: 25, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !468, line: 680, column: 25)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !468, line: 680, column: 25)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !468, line: 680, column: 25)
!2080 = !DILocation(line: 680, column: 25, scope: !2078)
!2081 = !DILocation(line: 680, column: 25, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !468, line: 680, column: 25)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !468, line: 680, column: 25)
!2084 = !DILocation(line: 680, column: 25, scope: !2083)
!2085 = !DILocation(line: 680, column: 25, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !468, line: 680, column: 25)
!2087 = distinct !DILexicalBlock(scope: !2079, file: !468, line: 680, column: 25)
!2088 = !DILocation(line: 680, column: 25, scope: !2087)
!2089 = !DILocation(line: 680, column: 25, scope: !2079)
!2090 = !DILocation(line: 680, column: 25, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !468, line: 680, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2072, file: !468, line: 680, column: 25)
!2093 = !DILocation(line: 680, column: 25, scope: !2092)
!2094 = !DILocation(line: 681, column: 25, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !468, line: 681, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2073, file: !468, line: 681, column: 25)
!2097 = !DILocation(line: 681, column: 25, scope: !2096)
!2098 = !DILocation(line: 682, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !468, line: 682, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2073, file: !468, line: 682, column: 25)
!2101 = !DILocation(line: 682, column: 25, scope: !2100)
!2102 = !DILocation(line: 683, column: 38, scope: !2073)
!2103 = !DILocation(line: 683, column: 33, scope: !2073)
!2104 = !DILocation(line: 684, column: 23, scope: !2073)
!2105 = !DILocation(line: 685, column: 30, scope: !2067)
!2106 = !DILocation(line: 687, column: 25, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !468, line: 687, column: 25)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !468, line: 687, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !468, line: 686, column: 23)
!2110 = distinct !DILexicalBlock(scope: !2067, file: !468, line: 685, column: 30)
!2111 = !DILocation(line: 687, column: 25, scope: !2108)
!2112 = !DILocation(line: 689, column: 23, scope: !2109)
!2113 = !DILocation(line: 690, column: 35, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2068, file: !468, line: 690, column: 25)
!2115 = !DILocation(line: 690, column: 30, scope: !2114)
!2116 = !DILocation(line: 690, column: 25, scope: !2068)
!2117 = !DILocation(line: 692, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !468, line: 692, column: 21)
!2119 = distinct !DILexicalBlock(scope: !2068, file: !468, line: 692, column: 21)
!2120 = !DILocation(line: 692, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !468, line: 692, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !468, line: 692, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !468, line: 692, column: 21)
!2124 = !DILocation(line: 692, column: 21, scope: !2122)
!2125 = !DILocation(line: 692, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !468, line: 692, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !468, line: 692, column: 21)
!2128 = !DILocation(line: 692, column: 21, scope: !2127)
!2129 = !DILocation(line: 692, column: 21, scope: !2123)
!2130 = !DILocation(line: 0, scope: !2068)
!2131 = !DILocation(line: 693, column: 21, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !468, line: 693, column: 21)
!2133 = distinct !DILexicalBlock(scope: !2068, file: !468, line: 693, column: 21)
!2134 = !DILocation(line: 693, column: 21, scope: !2133)
!2135 = !DILocation(line: 694, column: 25, scope: !2068)
!2136 = !DILocation(line: 676, column: 17, scope: !2069)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 676, column: 17, scope: !2070)
!2139 = !DILocation(line: 695, column: 19, scope: !2070)
!2140 = !DILocation(line: 409, column: 30, scope: !1850)
!2141 = !DILocation(line: 702, column: 34, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 702, column: 11)
!2143 = !DILocation(line: 704, column: 14, scope: !2142)
!2144 = !DILocation(line: 705, column: 14, scope: !2142)
!2145 = !DILocation(line: 705, column: 35, scope: !2142)
!2146 = !DILocation(line: 705, column: 17, scope: !2142)
!2147 = !DILocation(line: 705, column: 47, scope: !2142)
!2148 = !DILocation(line: 705, column: 65, scope: !2142)
!2149 = !DILocation(line: 706, column: 11, scope: !2142)
!2150 = !DILocation(line: 702, column: 11, scope: !1715)
!2151 = !DILocation(line: 395, column: 15, scope: !1713)
!2152 = !DILocation(line: 709, column: 5, scope: !1715)
!2153 = !DILocation(line: 710, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 710, column: 7)
!2155 = !DILocation(line: 710, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2154, file: !468, line: 710, column: 7)
!2157 = !DILocation(line: 710, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !468, line: 710, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !468, line: 710, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !468, line: 710, column: 7)
!2161 = !DILocation(line: 710, column: 7, scope: !2159)
!2162 = !DILocation(line: 710, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !468, line: 710, column: 7)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !468, line: 710, column: 7)
!2165 = !DILocation(line: 710, column: 7, scope: !2164)
!2166 = !DILocation(line: 710, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !468, line: 710, column: 7)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !468, line: 710, column: 7)
!2169 = !DILocation(line: 710, column: 7, scope: !2168)
!2170 = !DILocation(line: 710, column: 7, scope: !2160)
!2171 = !DILocation(line: 710, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !468, line: 710, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2154, file: !468, line: 710, column: 7)
!2174 = !DILocation(line: 710, column: 7, scope: !2173)
!2175 = !DILocation(line: 712, column: 5, scope: !1715)
!2176 = !DILocation(line: 713, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !468, line: 713, column: 7)
!2178 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 713, column: 7)
!2179 = !DILocation(line: 417, column: 21, scope: !1715)
!2180 = !DILocation(line: 713, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !468, line: 713, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !468, line: 713, column: 7)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !468, line: 713, column: 7)
!2184 = !DILocation(line: 713, column: 7, scope: !2182)
!2185 = !DILocation(line: 713, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !468, line: 713, column: 7)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !468, line: 713, column: 7)
!2188 = !DILocation(line: 713, column: 7, scope: !2187)
!2189 = !DILocation(line: 713, column: 7, scope: !2183)
!2190 = !DILocation(line: 714, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !468, line: 714, column: 7)
!2192 = distinct !DILexicalBlock(scope: !1715, file: !468, line: 714, column: 7)
!2193 = !DILocation(line: 714, column: 7, scope: !2192)
!2194 = !DILocation(line: 716, column: 11, scope: !1715)
!2195 = !DILocation(line: 718, column: 5, scope: !1716)
!2196 = !DILocation(line: 395, column: 82, scope: !1716)
!2197 = !DILocation(line: 395, column: 3, scope: !1716)
!2198 = distinct !{!2198, !1846, !2199, !909}
!2199 = !DILocation(line: 718, column: 5, scope: !1713)
!2200 = !DILocation(line: 720, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 720, column: 7)
!2202 = !DILocation(line: 720, column: 16, scope: !2201)
!2203 = !DILocation(line: 728, column: 51, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 728, column: 7)
!2205 = !DILocation(line: 731, column: 11, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !468, line: 730, column: 5)
!2207 = !DILocation(line: 732, column: 16, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2206, file: !468, line: 731, column: 11)
!2209 = !DILocation(line: 732, column: 9, scope: !2208)
!2210 = !DILocation(line: 736, column: 18, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !468, line: 736, column: 16)
!2212 = !DILocation(line: 736, column: 29, scope: !2211)
!2213 = !DILocation(line: 745, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 745, column: 7)
!2215 = !DILocation(line: 745, column: 20, scope: !2214)
!2216 = !DILocation(line: 746, column: 12, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !468, line: 746, column: 5)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !468, line: 746, column: 5)
!2219 = !DILocation(line: 746, column: 5, scope: !2218)
!2220 = !DILocation(line: 747, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !468, line: 747, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !468, line: 747, column: 7)
!2223 = !DILocation(line: 747, column: 7, scope: !2222)
!2224 = !DILocation(line: 746, column: 39, scope: !2217)
!2225 = distinct !{!2225, !2219, !2226, !909}
!2226 = !DILocation(line: 747, column: 7, scope: !2218)
!2227 = !DILocation(line: 749, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1682, file: !468, line: 749, column: 7)
!2229 = !DILocation(line: 749, column: 7, scope: !1682)
!2230 = !DILocation(line: 750, column: 5, scope: !2228)
!2231 = !DILocation(line: 750, column: 17, scope: !2228)
!2232 = !DILocation(line: 756, column: 21, scope: !2058)
!2233 = !DILocation(line: 760, column: 42, scope: !1682)
!2234 = !DILocation(line: 758, column: 10, scope: !1682)
!2235 = !DILocation(line: 758, column: 3, scope: !1682)
!2236 = !DILocation(line: 762, column: 1, scope: !1682)
!2237 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !983, file: !983, line: 98, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!102}
!2240 = !DISubprogram(name: "iswprint", scope: !2241, file: !2241, line: 120, type: !2044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2242 = distinct !DISubprogram(name: "quotearg_alloc", scope: !468, file: !468, line: 788, type: !2243, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!99, !105, !102, !1575}
!2245 = !{!2246, !2247, !2248}
!2246 = !DILocalVariable(name: "arg", arg: 1, scope: !2242, file: !468, line: 788, type: !105)
!2247 = !DILocalVariable(name: "argsize", arg: 2, scope: !2242, file: !468, line: 788, type: !102)
!2248 = !DILocalVariable(name: "o", arg: 3, scope: !2242, file: !468, line: 789, type: !1575)
!2249 = !DILocation(line: 0, scope: !2242)
!2250 = !DILocalVariable(name: "arg", arg: 1, scope: !2251, file: !468, line: 801, type: !105)
!2251 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !468, file: !468, line: 801, type: !2252, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!99, !105, !102, !728, !1575}
!2254 = !{!2250, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2255 = !DILocalVariable(name: "argsize", arg: 2, scope: !2251, file: !468, line: 801, type: !102)
!2256 = !DILocalVariable(name: "size", arg: 3, scope: !2251, file: !468, line: 801, type: !728)
!2257 = !DILocalVariable(name: "o", arg: 4, scope: !2251, file: !468, line: 802, type: !1575)
!2258 = !DILocalVariable(name: "p", scope: !2251, file: !468, line: 804, type: !1575)
!2259 = !DILocalVariable(name: "saved_errno", scope: !2251, file: !468, line: 805, type: !78)
!2260 = !DILocalVariable(name: "flags", scope: !2251, file: !468, line: 807, type: !78)
!2261 = !DILocalVariable(name: "bufsize", scope: !2251, file: !468, line: 808, type: !102)
!2262 = !DILocalVariable(name: "buf", scope: !2251, file: !468, line: 812, type: !99)
!2263 = !DILocation(line: 0, scope: !2251, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 791, column: 10, scope: !2242)
!2265 = !DILocation(line: 804, column: 37, scope: !2251, inlinedAt: !2264)
!2266 = !DILocation(line: 805, column: 21, scope: !2251, inlinedAt: !2264)
!2267 = !DILocation(line: 807, column: 18, scope: !2251, inlinedAt: !2264)
!2268 = !DILocation(line: 807, column: 24, scope: !2251, inlinedAt: !2264)
!2269 = !DILocation(line: 808, column: 72, scope: !2251, inlinedAt: !2264)
!2270 = !DILocation(line: 809, column: 56, scope: !2251, inlinedAt: !2264)
!2271 = !DILocation(line: 810, column: 49, scope: !2251, inlinedAt: !2264)
!2272 = !DILocation(line: 811, column: 49, scope: !2251, inlinedAt: !2264)
!2273 = !DILocation(line: 808, column: 20, scope: !2251, inlinedAt: !2264)
!2274 = !DILocation(line: 811, column: 62, scope: !2251, inlinedAt: !2264)
!2275 = !DILocation(line: 812, column: 15, scope: !2251, inlinedAt: !2264)
!2276 = !DILocation(line: 813, column: 60, scope: !2251, inlinedAt: !2264)
!2277 = !DILocation(line: 815, column: 32, scope: !2251, inlinedAt: !2264)
!2278 = !DILocation(line: 815, column: 47, scope: !2251, inlinedAt: !2264)
!2279 = !DILocation(line: 813, column: 3, scope: !2251, inlinedAt: !2264)
!2280 = !DILocation(line: 816, column: 9, scope: !2251, inlinedAt: !2264)
!2281 = !DILocation(line: 791, column: 3, scope: !2242)
!2282 = !DILocation(line: 0, scope: !2251)
!2283 = !DILocation(line: 804, column: 37, scope: !2251)
!2284 = !DILocation(line: 805, column: 21, scope: !2251)
!2285 = !DILocation(line: 807, column: 18, scope: !2251)
!2286 = !DILocation(line: 807, column: 27, scope: !2251)
!2287 = !DILocation(line: 807, column: 24, scope: !2251)
!2288 = !DILocation(line: 808, column: 72, scope: !2251)
!2289 = !DILocation(line: 809, column: 56, scope: !2251)
!2290 = !DILocation(line: 810, column: 49, scope: !2251)
!2291 = !DILocation(line: 811, column: 49, scope: !2251)
!2292 = !DILocation(line: 808, column: 20, scope: !2251)
!2293 = !DILocation(line: 811, column: 62, scope: !2251)
!2294 = !DILocation(line: 812, column: 15, scope: !2251)
!2295 = !DILocation(line: 813, column: 60, scope: !2251)
!2296 = !DILocation(line: 815, column: 32, scope: !2251)
!2297 = !DILocation(line: 815, column: 47, scope: !2251)
!2298 = !DILocation(line: 813, column: 3, scope: !2251)
!2299 = !DILocation(line: 816, column: 9, scope: !2251)
!2300 = !DILocation(line: 817, column: 7, scope: !2251)
!2301 = !DILocation(line: 818, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2251, file: !468, line: 817, column: 7)
!2303 = !{!1143, !1143, i64 0}
!2304 = !DILocation(line: 818, column: 5, scope: !2302)
!2305 = !DILocation(line: 819, column: 3, scope: !2251)
!2306 = distinct !DISubprogram(name: "quotearg_free", scope: !468, file: !468, line: 837, type: !423, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "sv", scope: !2306, file: !468, line: 839, type: !569)
!2309 = !DILocalVariable(name: "i", scope: !2310, file: !468, line: 840, type: !78)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !468, line: 840, column: 3)
!2311 = !DILocation(line: 839, column: 24, scope: !2306)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 0, scope: !2310)
!2314 = !DILocation(line: 840, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !468, line: 840, column: 3)
!2316 = !DILocation(line: 840, column: 3, scope: !2310)
!2317 = !DILocation(line: 842, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2306, file: !468, line: 842, column: 7)
!2319 = !{!2320, !796, i64 8}
!2320 = !{!"slotvec", !1143, i64 0, !796, i64 8}
!2321 = !DILocation(line: 842, column: 17, scope: !2318)
!2322 = !DILocation(line: 842, column: 7, scope: !2306)
!2323 = !DILocation(line: 841, column: 17, scope: !2315)
!2324 = !DILocation(line: 841, column: 5, scope: !2315)
!2325 = !DILocation(line: 840, column: 32, scope: !2315)
!2326 = distinct !{!2326, !2316, !2327, !909}
!2327 = !DILocation(line: 841, column: 20, scope: !2310)
!2328 = !DILocation(line: 844, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2318, file: !468, line: 843, column: 5)
!2330 = !DILocation(line: 845, column: 21, scope: !2329)
!2331 = !{!2320, !1143, i64 0}
!2332 = !DILocation(line: 846, column: 20, scope: !2329)
!2333 = !DILocation(line: 847, column: 5, scope: !2329)
!2334 = !DILocation(line: 848, column: 10, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2306, file: !468, line: 848, column: 7)
!2336 = !DILocation(line: 848, column: 7, scope: !2306)
!2337 = !DILocation(line: 850, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !468, line: 849, column: 5)
!2339 = !DILocation(line: 851, column: 15, scope: !2338)
!2340 = !DILocation(line: 852, column: 5, scope: !2338)
!2341 = !DILocation(line: 853, column: 10, scope: !2306)
!2342 = !DILocation(line: 854, column: 1, scope: !2306)
!2343 = distinct !DISubprogram(name: "quotearg_n", scope: !468, file: !468, line: 919, type: !976, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2344)
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "n", arg: 1, scope: !2343, file: !468, line: 919, type: !78)
!2346 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !468, line: 919, type: !105)
!2347 = !DILocation(line: 0, scope: !2343)
!2348 = !DILocation(line: 921, column: 10, scope: !2343)
!2349 = !DILocation(line: 921, column: 3, scope: !2343)
!2350 = distinct !DISubprogram(name: "quotearg_n_options", scope: !468, file: !468, line: 866, type: !2351, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!99, !78, !105, !102, !1575}
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2364, !2365, !2367, !2368, !2369}
!2354 = !DILocalVariable(name: "n", arg: 1, scope: !2350, file: !468, line: 866, type: !78)
!2355 = !DILocalVariable(name: "arg", arg: 2, scope: !2350, file: !468, line: 866, type: !105)
!2356 = !DILocalVariable(name: "argsize", arg: 3, scope: !2350, file: !468, line: 866, type: !102)
!2357 = !DILocalVariable(name: "options", arg: 4, scope: !2350, file: !468, line: 867, type: !1575)
!2358 = !DILocalVariable(name: "saved_errno", scope: !2350, file: !468, line: 869, type: !78)
!2359 = !DILocalVariable(name: "sv", scope: !2350, file: !468, line: 871, type: !569)
!2360 = !DILocalVariable(name: "nslots_max", scope: !2350, file: !468, line: 873, type: !78)
!2361 = !DILocalVariable(name: "preallocated", scope: !2362, file: !468, line: 879, type: !143)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !468, line: 878, column: 5)
!2363 = distinct !DILexicalBlock(scope: !2350, file: !468, line: 877, column: 7)
!2364 = !DILocalVariable(name: "new_nslots", scope: !2362, file: !468, line: 880, type: !741)
!2365 = !DILocalVariable(name: "size", scope: !2366, file: !468, line: 891, type: !102)
!2366 = distinct !DILexicalBlock(scope: !2350, file: !468, line: 890, column: 3)
!2367 = !DILocalVariable(name: "val", scope: !2366, file: !468, line: 892, type: !99)
!2368 = !DILocalVariable(name: "flags", scope: !2366, file: !468, line: 894, type: !78)
!2369 = !DILocalVariable(name: "qsize", scope: !2366, file: !468, line: 895, type: !102)
!2370 = !DILocation(line: 0, scope: !2350)
!2371 = !DILocation(line: 869, column: 21, scope: !2350)
!2372 = !DILocation(line: 871, column: 24, scope: !2350)
!2373 = !DILocation(line: 874, column: 17, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2350, file: !468, line: 874, column: 7)
!2375 = !DILocation(line: 875, column: 5, scope: !2374)
!2376 = !DILocation(line: 877, column: 7, scope: !2363)
!2377 = !DILocation(line: 877, column: 14, scope: !2363)
!2378 = !DILocation(line: 877, column: 7, scope: !2350)
!2379 = !DILocation(line: 879, column: 31, scope: !2362)
!2380 = !DILocation(line: 0, scope: !2362)
!2381 = !DILocation(line: 880, column: 7, scope: !2362)
!2382 = !DILocation(line: 880, column: 26, scope: !2362)
!2383 = !DILocation(line: 880, column: 13, scope: !2362)
!2384 = !DILocation(line: 882, column: 31, scope: !2362)
!2385 = !DILocation(line: 883, column: 33, scope: !2362)
!2386 = !DILocation(line: 883, column: 42, scope: !2362)
!2387 = !DILocation(line: 883, column: 31, scope: !2362)
!2388 = !DILocation(line: 882, column: 22, scope: !2362)
!2389 = !DILocation(line: 882, column: 15, scope: !2362)
!2390 = !DILocation(line: 884, column: 11, scope: !2362)
!2391 = !DILocation(line: 885, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2362, file: !468, line: 884, column: 11)
!2393 = !{i64 0, i64 8, !2303, i64 8, i64 8, !795}
!2394 = !DILocation(line: 885, column: 9, scope: !2392)
!2395 = !DILocation(line: 886, column: 20, scope: !2362)
!2396 = !DILocation(line: 886, column: 18, scope: !2362)
!2397 = !DILocation(line: 886, column: 32, scope: !2362)
!2398 = !DILocation(line: 886, column: 43, scope: !2362)
!2399 = !DILocation(line: 886, column: 53, scope: !2362)
!2400 = !DILocation(line: 0, scope: !1785, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 886, column: 7, scope: !2362)
!2402 = !DILocation(line: 59, column: 10, scope: !1785, inlinedAt: !2401)
!2403 = !DILocation(line: 887, column: 16, scope: !2362)
!2404 = !DILocation(line: 887, column: 14, scope: !2362)
!2405 = !DILocation(line: 888, column: 5, scope: !2363)
!2406 = !DILocation(line: 888, column: 5, scope: !2362)
!2407 = !DILocation(line: 891, column: 19, scope: !2366)
!2408 = !DILocation(line: 891, column: 25, scope: !2366)
!2409 = !DILocation(line: 0, scope: !2366)
!2410 = !DILocation(line: 892, column: 23, scope: !2366)
!2411 = !DILocation(line: 894, column: 26, scope: !2366)
!2412 = !DILocation(line: 894, column: 32, scope: !2366)
!2413 = !DILocation(line: 896, column: 55, scope: !2366)
!2414 = !DILocation(line: 897, column: 55, scope: !2366)
!2415 = !DILocation(line: 898, column: 55, scope: !2366)
!2416 = !DILocation(line: 899, column: 55, scope: !2366)
!2417 = !DILocation(line: 895, column: 20, scope: !2366)
!2418 = !DILocation(line: 901, column: 14, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2366, file: !468, line: 901, column: 9)
!2420 = !DILocation(line: 901, column: 9, scope: !2366)
!2421 = !DILocation(line: 903, column: 35, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !468, line: 902, column: 7)
!2423 = !DILocation(line: 903, column: 20, scope: !2422)
!2424 = !DILocation(line: 904, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !468, line: 904, column: 13)
!2426 = !DILocation(line: 904, column: 13, scope: !2422)
!2427 = !DILocation(line: 905, column: 11, scope: !2425)
!2428 = !DILocation(line: 906, column: 27, scope: !2422)
!2429 = !DILocation(line: 906, column: 19, scope: !2422)
!2430 = !DILocation(line: 907, column: 69, scope: !2422)
!2431 = !DILocation(line: 909, column: 44, scope: !2422)
!2432 = !DILocation(line: 910, column: 44, scope: !2422)
!2433 = !DILocation(line: 907, column: 9, scope: !2422)
!2434 = !DILocation(line: 911, column: 7, scope: !2422)
!2435 = !DILocation(line: 913, column: 11, scope: !2366)
!2436 = !DILocation(line: 914, column: 5, scope: !2366)
!2437 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !468, file: !468, line: 925, type: !2438, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!99, !78, !105, !102}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "n", arg: 1, scope: !2437, file: !468, line: 925, type: !78)
!2442 = !DILocalVariable(name: "arg", arg: 2, scope: !2437, file: !468, line: 925, type: !105)
!2443 = !DILocalVariable(name: "argsize", arg: 3, scope: !2437, file: !468, line: 925, type: !102)
!2444 = !DILocation(line: 0, scope: !2437)
!2445 = !DILocation(line: 927, column: 10, scope: !2437)
!2446 = !DILocation(line: 927, column: 3, scope: !2437)
!2447 = distinct !DISubprogram(name: "quotearg", scope: !468, file: !468, line: 931, type: !985, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2448)
!2448 = !{!2449}
!2449 = !DILocalVariable(name: "arg", arg: 1, scope: !2447, file: !468, line: 931, type: !105)
!2450 = !DILocation(line: 0, scope: !2447)
!2451 = !DILocation(line: 0, scope: !2343, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 933, column: 10, scope: !2447)
!2453 = !DILocation(line: 921, column: 10, scope: !2343, inlinedAt: !2452)
!2454 = !DILocation(line: 933, column: 3, scope: !2447)
!2455 = distinct !DISubprogram(name: "quotearg_mem", scope: !468, file: !468, line: 937, type: !2456, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!99, !105, !102}
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "arg", arg: 1, scope: !2455, file: !468, line: 937, type: !105)
!2460 = !DILocalVariable(name: "argsize", arg: 2, scope: !2455, file: !468, line: 937, type: !102)
!2461 = !DILocation(line: 0, scope: !2455)
!2462 = !DILocation(line: 0, scope: !2437, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 939, column: 10, scope: !2455)
!2464 = !DILocation(line: 927, column: 10, scope: !2437, inlinedAt: !2463)
!2465 = !DILocation(line: 939, column: 3, scope: !2455)
!2466 = distinct !DISubprogram(name: "quotearg_n_style", scope: !468, file: !468, line: 943, type: !2467, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!99, !78, !494, !105}
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "n", arg: 1, scope: !2466, file: !468, line: 943, type: !78)
!2471 = !DILocalVariable(name: "s", arg: 2, scope: !2466, file: !468, line: 943, type: !494)
!2472 = !DILocalVariable(name: "arg", arg: 3, scope: !2466, file: !468, line: 943, type: !105)
!2473 = !DILocalVariable(name: "o", scope: !2466, file: !468, line: 945, type: !1576)
!2474 = !DILocation(line: 0, scope: !2466)
!2475 = !DILocation(line: 945, column: 3, scope: !2466)
!2476 = !DILocation(line: 945, column: 32, scope: !2466)
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"quoting_options_from_style: argument 0"}
!2479 = distinct !{!2479, !"quoting_options_from_style"}
!2480 = !DILocation(line: 945, column: 36, scope: !2466)
!2481 = !DILocalVariable(name: "style", arg: 1, scope: !2482, file: !468, line: 183, type: !494)
!2482 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !468, file: !468, line: 183, type: !2483, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!521, !494}
!2485 = !{!2481, !2486}
!2486 = !DILocalVariable(name: "o", scope: !2482, file: !468, line: 185, type: !521)
!2487 = !DILocation(line: 0, scope: !2482, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 945, column: 36, scope: !2466)
!2489 = !DILocation(line: 185, column: 26, scope: !2482, inlinedAt: !2488)
!2490 = !DILocation(line: 186, column: 13, scope: !2491, inlinedAt: !2488)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !468, line: 186, column: 7)
!2492 = !DILocation(line: 186, column: 7, scope: !2482, inlinedAt: !2488)
!2493 = !DILocation(line: 187, column: 5, scope: !2491, inlinedAt: !2488)
!2494 = !DILocation(line: 188, column: 11, scope: !2482, inlinedAt: !2488)
!2495 = !DILocation(line: 946, column: 10, scope: !2466)
!2496 = !DILocation(line: 947, column: 1, scope: !2466)
!2497 = !DILocation(line: 946, column: 3, scope: !2466)
!2498 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !468, file: !468, line: 950, type: !2499, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!99, !78, !494, !105, !102}
!2501 = !{!2502, !2503, !2504, !2505, !2506}
!2502 = !DILocalVariable(name: "n", arg: 1, scope: !2498, file: !468, line: 950, type: !78)
!2503 = !DILocalVariable(name: "s", arg: 2, scope: !2498, file: !468, line: 950, type: !494)
!2504 = !DILocalVariable(name: "arg", arg: 3, scope: !2498, file: !468, line: 951, type: !105)
!2505 = !DILocalVariable(name: "argsize", arg: 4, scope: !2498, file: !468, line: 951, type: !102)
!2506 = !DILocalVariable(name: "o", scope: !2498, file: !468, line: 953, type: !1576)
!2507 = !DILocation(line: 0, scope: !2498)
!2508 = !DILocation(line: 953, column: 3, scope: !2498)
!2509 = !DILocation(line: 953, column: 32, scope: !2498)
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"quoting_options_from_style: argument 0"}
!2512 = distinct !{!2512, !"quoting_options_from_style"}
!2513 = !DILocation(line: 953, column: 36, scope: !2498)
!2514 = !DILocation(line: 0, scope: !2482, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 953, column: 36, scope: !2498)
!2516 = !DILocation(line: 185, column: 26, scope: !2482, inlinedAt: !2515)
!2517 = !DILocation(line: 186, column: 13, scope: !2491, inlinedAt: !2515)
!2518 = !DILocation(line: 186, column: 7, scope: !2482, inlinedAt: !2515)
!2519 = !DILocation(line: 187, column: 5, scope: !2491, inlinedAt: !2515)
!2520 = !DILocation(line: 188, column: 11, scope: !2482, inlinedAt: !2515)
!2521 = !DILocation(line: 954, column: 10, scope: !2498)
!2522 = !DILocation(line: 955, column: 1, scope: !2498)
!2523 = !DILocation(line: 954, column: 3, scope: !2498)
!2524 = distinct !DISubprogram(name: "quotearg_style", scope: !468, file: !468, line: 958, type: !2525, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!99, !494, !105}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "s", arg: 1, scope: !2524, file: !468, line: 958, type: !494)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !468, line: 958, type: !105)
!2530 = !DILocation(line: 0, scope: !2524)
!2531 = !DILocation(line: 0, scope: !2466, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 960, column: 10, scope: !2524)
!2533 = !DILocation(line: 945, column: 3, scope: !2466, inlinedAt: !2532)
!2534 = !DILocation(line: 945, column: 32, scope: !2466, inlinedAt: !2532)
!2535 = !{!2536}
!2536 = distinct !{!2536, !2537, !"quoting_options_from_style: argument 0"}
!2537 = distinct !{!2537, !"quoting_options_from_style"}
!2538 = !DILocation(line: 945, column: 36, scope: !2466, inlinedAt: !2532)
!2539 = !DILocation(line: 0, scope: !2482, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 945, column: 36, scope: !2466, inlinedAt: !2532)
!2541 = !DILocation(line: 185, column: 26, scope: !2482, inlinedAt: !2540)
!2542 = !DILocation(line: 186, column: 13, scope: !2491, inlinedAt: !2540)
!2543 = !DILocation(line: 186, column: 7, scope: !2482, inlinedAt: !2540)
!2544 = !DILocation(line: 187, column: 5, scope: !2491, inlinedAt: !2540)
!2545 = !DILocation(line: 188, column: 11, scope: !2482, inlinedAt: !2540)
!2546 = !DILocation(line: 946, column: 10, scope: !2466, inlinedAt: !2532)
!2547 = !DILocation(line: 947, column: 1, scope: !2466, inlinedAt: !2532)
!2548 = !DILocation(line: 960, column: 3, scope: !2524)
!2549 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !468, file: !468, line: 964, type: !2550, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!99, !494, !105, !102}
!2552 = !{!2553, !2554, !2555}
!2553 = !DILocalVariable(name: "s", arg: 1, scope: !2549, file: !468, line: 964, type: !494)
!2554 = !DILocalVariable(name: "arg", arg: 2, scope: !2549, file: !468, line: 964, type: !105)
!2555 = !DILocalVariable(name: "argsize", arg: 3, scope: !2549, file: !468, line: 964, type: !102)
!2556 = !DILocation(line: 0, scope: !2549)
!2557 = !DILocation(line: 0, scope: !2498, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 966, column: 10, scope: !2549)
!2559 = !DILocation(line: 953, column: 3, scope: !2498, inlinedAt: !2558)
!2560 = !DILocation(line: 953, column: 32, scope: !2498, inlinedAt: !2558)
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"quoting_options_from_style: argument 0"}
!2563 = distinct !{!2563, !"quoting_options_from_style"}
!2564 = !DILocation(line: 953, column: 36, scope: !2498, inlinedAt: !2558)
!2565 = !DILocation(line: 0, scope: !2482, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 953, column: 36, scope: !2498, inlinedAt: !2558)
!2567 = !DILocation(line: 185, column: 26, scope: !2482, inlinedAt: !2566)
!2568 = !DILocation(line: 186, column: 13, scope: !2491, inlinedAt: !2566)
!2569 = !DILocation(line: 186, column: 7, scope: !2482, inlinedAt: !2566)
!2570 = !DILocation(line: 187, column: 5, scope: !2491, inlinedAt: !2566)
!2571 = !DILocation(line: 188, column: 11, scope: !2482, inlinedAt: !2566)
!2572 = !DILocation(line: 954, column: 10, scope: !2498, inlinedAt: !2558)
!2573 = !DILocation(line: 955, column: 1, scope: !2498, inlinedAt: !2558)
!2574 = !DILocation(line: 966, column: 3, scope: !2549)
!2575 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !468, file: !468, line: 970, type: !2576, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!99, !105, !102, !4}
!2578 = !{!2579, !2580, !2581, !2582}
!2579 = !DILocalVariable(name: "arg", arg: 1, scope: !2575, file: !468, line: 970, type: !105)
!2580 = !DILocalVariable(name: "argsize", arg: 2, scope: !2575, file: !468, line: 970, type: !102)
!2581 = !DILocalVariable(name: "ch", arg: 3, scope: !2575, file: !468, line: 970, type: !4)
!2582 = !DILocalVariable(name: "options", scope: !2575, file: !468, line: 972, type: !521)
!2583 = !DILocation(line: 0, scope: !2575)
!2584 = !DILocation(line: 972, column: 3, scope: !2575)
!2585 = !DILocation(line: 972, column: 26, scope: !2575)
!2586 = !DILocation(line: 973, column: 13, scope: !2575)
!2587 = !{i64 0, i64 4, !871, i64 4, i64 4, !862, i64 8, i64 32, !871, i64 40, i64 8, !795, i64 48, i64 8, !795}
!2588 = !DILocation(line: 0, scope: !1595, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 974, column: 3, scope: !2575)
!2590 = !DILocation(line: 147, column: 41, scope: !1595, inlinedAt: !2589)
!2591 = !DILocation(line: 147, column: 62, scope: !1595, inlinedAt: !2589)
!2592 = !DILocation(line: 147, column: 57, scope: !1595, inlinedAt: !2589)
!2593 = !DILocation(line: 148, column: 15, scope: !1595, inlinedAt: !2589)
!2594 = !DILocation(line: 149, column: 21, scope: !1595, inlinedAt: !2589)
!2595 = !DILocation(line: 149, column: 24, scope: !1595, inlinedAt: !2589)
!2596 = !DILocation(line: 150, column: 19, scope: !1595, inlinedAt: !2589)
!2597 = !DILocation(line: 150, column: 24, scope: !1595, inlinedAt: !2589)
!2598 = !DILocation(line: 150, column: 6, scope: !1595, inlinedAt: !2589)
!2599 = !DILocation(line: 975, column: 10, scope: !2575)
!2600 = !DILocation(line: 976, column: 1, scope: !2575)
!2601 = !DILocation(line: 975, column: 3, scope: !2575)
!2602 = distinct !DISubprogram(name: "quotearg_char", scope: !468, file: !468, line: 979, type: !2603, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!99, !105, !4}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "arg", arg: 1, scope: !2602, file: !468, line: 979, type: !105)
!2607 = !DILocalVariable(name: "ch", arg: 2, scope: !2602, file: !468, line: 979, type: !4)
!2608 = !DILocation(line: 0, scope: !2602)
!2609 = !DILocation(line: 0, scope: !2575, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 981, column: 10, scope: !2602)
!2611 = !DILocation(line: 972, column: 3, scope: !2575, inlinedAt: !2610)
!2612 = !DILocation(line: 972, column: 26, scope: !2575, inlinedAt: !2610)
!2613 = !DILocation(line: 973, column: 13, scope: !2575, inlinedAt: !2610)
!2614 = !DILocation(line: 0, scope: !1595, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 974, column: 3, scope: !2575, inlinedAt: !2610)
!2616 = !DILocation(line: 147, column: 41, scope: !1595, inlinedAt: !2615)
!2617 = !DILocation(line: 147, column: 62, scope: !1595, inlinedAt: !2615)
!2618 = !DILocation(line: 147, column: 57, scope: !1595, inlinedAt: !2615)
!2619 = !DILocation(line: 148, column: 15, scope: !1595, inlinedAt: !2615)
!2620 = !DILocation(line: 149, column: 21, scope: !1595, inlinedAt: !2615)
!2621 = !DILocation(line: 149, column: 24, scope: !1595, inlinedAt: !2615)
!2622 = !DILocation(line: 150, column: 19, scope: !1595, inlinedAt: !2615)
!2623 = !DILocation(line: 150, column: 24, scope: !1595, inlinedAt: !2615)
!2624 = !DILocation(line: 150, column: 6, scope: !1595, inlinedAt: !2615)
!2625 = !DILocation(line: 975, column: 10, scope: !2575, inlinedAt: !2610)
!2626 = !DILocation(line: 976, column: 1, scope: !2575, inlinedAt: !2610)
!2627 = !DILocation(line: 981, column: 3, scope: !2602)
!2628 = distinct !DISubprogram(name: "quotearg_colon", scope: !468, file: !468, line: 985, type: !985, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2629)
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2628, file: !468, line: 985, type: !105)
!2631 = !DILocation(line: 0, scope: !2628)
!2632 = !DILocation(line: 0, scope: !2602, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 987, column: 10, scope: !2628)
!2634 = !DILocation(line: 0, scope: !2575, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 981, column: 10, scope: !2602, inlinedAt: !2633)
!2636 = !DILocation(line: 972, column: 3, scope: !2575, inlinedAt: !2635)
!2637 = !DILocation(line: 972, column: 26, scope: !2575, inlinedAt: !2635)
!2638 = !DILocation(line: 973, column: 13, scope: !2575, inlinedAt: !2635)
!2639 = !DILocation(line: 0, scope: !1595, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 974, column: 3, scope: !2575, inlinedAt: !2635)
!2641 = !DILocation(line: 147, column: 57, scope: !1595, inlinedAt: !2640)
!2642 = !DILocation(line: 149, column: 21, scope: !1595, inlinedAt: !2640)
!2643 = !DILocation(line: 150, column: 6, scope: !1595, inlinedAt: !2640)
!2644 = !DILocation(line: 975, column: 10, scope: !2575, inlinedAt: !2635)
!2645 = !DILocation(line: 976, column: 1, scope: !2575, inlinedAt: !2635)
!2646 = !DILocation(line: 987, column: 3, scope: !2628)
!2647 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !468, file: !468, line: 991, type: !2456, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2648)
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "arg", arg: 1, scope: !2647, file: !468, line: 991, type: !105)
!2650 = !DILocalVariable(name: "argsize", arg: 2, scope: !2647, file: !468, line: 991, type: !102)
!2651 = !DILocation(line: 0, scope: !2647)
!2652 = !DILocation(line: 0, scope: !2575, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 993, column: 10, scope: !2647)
!2654 = !DILocation(line: 972, column: 3, scope: !2575, inlinedAt: !2653)
!2655 = !DILocation(line: 972, column: 26, scope: !2575, inlinedAt: !2653)
!2656 = !DILocation(line: 973, column: 13, scope: !2575, inlinedAt: !2653)
!2657 = !DILocation(line: 0, scope: !1595, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 974, column: 3, scope: !2575, inlinedAt: !2653)
!2659 = !DILocation(line: 147, column: 57, scope: !1595, inlinedAt: !2658)
!2660 = !DILocation(line: 149, column: 21, scope: !1595, inlinedAt: !2658)
!2661 = !DILocation(line: 150, column: 6, scope: !1595, inlinedAt: !2658)
!2662 = !DILocation(line: 975, column: 10, scope: !2575, inlinedAt: !2653)
!2663 = !DILocation(line: 976, column: 1, scope: !2575, inlinedAt: !2653)
!2664 = !DILocation(line: 993, column: 3, scope: !2647)
!2665 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !468, file: !468, line: 997, type: !2467, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2666)
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DILocalVariable(name: "n", arg: 1, scope: !2665, file: !468, line: 997, type: !78)
!2668 = !DILocalVariable(name: "s", arg: 2, scope: !2665, file: !468, line: 997, type: !494)
!2669 = !DILocalVariable(name: "arg", arg: 3, scope: !2665, file: !468, line: 997, type: !105)
!2670 = !DILocalVariable(name: "options", scope: !2665, file: !468, line: 999, type: !521)
!2671 = !DILocation(line: 185, column: 26, scope: !2482, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1000, column: 13, scope: !2665)
!2673 = !DILocation(line: 0, scope: !2665)
!2674 = !DILocation(line: 999, column: 3, scope: !2665)
!2675 = !DILocation(line: 999, column: 26, scope: !2665)
!2676 = !DILocation(line: 0, scope: !2482, inlinedAt: !2672)
!2677 = !DILocation(line: 186, column: 13, scope: !2491, inlinedAt: !2672)
!2678 = !DILocation(line: 186, column: 7, scope: !2482, inlinedAt: !2672)
!2679 = !DILocation(line: 187, column: 5, scope: !2491, inlinedAt: !2672)
!2680 = !{!2681}
!2681 = distinct !{!2681, !2682, !"quoting_options_from_style: argument 0"}
!2682 = distinct !{!2682, !"quoting_options_from_style"}
!2683 = !DILocation(line: 1000, column: 13, scope: !2665)
!2684 = !DILocation(line: 0, scope: !1595, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1001, column: 3, scope: !2665)
!2686 = !DILocation(line: 147, column: 57, scope: !1595, inlinedAt: !2685)
!2687 = !DILocation(line: 149, column: 21, scope: !1595, inlinedAt: !2685)
!2688 = !DILocation(line: 150, column: 6, scope: !1595, inlinedAt: !2685)
!2689 = !DILocation(line: 1002, column: 10, scope: !2665)
!2690 = !DILocation(line: 1003, column: 1, scope: !2665)
!2691 = !DILocation(line: 1002, column: 3, scope: !2665)
!2692 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !468, file: !468, line: 1006, type: !2693, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!99, !78, !105, !105, !105}
!2695 = !{!2696, !2697, !2698, !2699}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2692, file: !468, line: 1006, type: !78)
!2697 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2692, file: !468, line: 1006, type: !105)
!2698 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2692, file: !468, line: 1007, type: !105)
!2699 = !DILocalVariable(name: "arg", arg: 4, scope: !2692, file: !468, line: 1007, type: !105)
!2700 = !DILocation(line: 0, scope: !2692)
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !468, line: 1014, type: !78)
!2702 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !468, file: !468, line: 1014, type: !2703, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!99, !78, !105, !105, !105, !102}
!2705 = !{!2701, !2706, !2707, !2708, !2709, !2710}
!2706 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2702, file: !468, line: 1014, type: !105)
!2707 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2702, file: !468, line: 1015, type: !105)
!2708 = !DILocalVariable(name: "arg", arg: 4, scope: !2702, file: !468, line: 1016, type: !105)
!2709 = !DILocalVariable(name: "argsize", arg: 5, scope: !2702, file: !468, line: 1016, type: !102)
!2710 = !DILocalVariable(name: "o", scope: !2702, file: !468, line: 1018, type: !521)
!2711 = !DILocation(line: 0, scope: !2702, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1009, column: 10, scope: !2692)
!2713 = !DILocation(line: 1018, column: 3, scope: !2702, inlinedAt: !2712)
!2714 = !DILocation(line: 1018, column: 26, scope: !2702, inlinedAt: !2712)
!2715 = !DILocation(line: 1018, column: 30, scope: !2702, inlinedAt: !2712)
!2716 = !DILocation(line: 0, scope: !1635, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1019, column: 3, scope: !2702, inlinedAt: !2712)
!2718 = !DILocation(line: 174, column: 12, scope: !1635, inlinedAt: !2717)
!2719 = !DILocation(line: 175, column: 8, scope: !1648, inlinedAt: !2717)
!2720 = !DILocation(line: 175, column: 19, scope: !1648, inlinedAt: !2717)
!2721 = !DILocation(line: 176, column: 5, scope: !1648, inlinedAt: !2717)
!2722 = !DILocation(line: 177, column: 6, scope: !1635, inlinedAt: !2717)
!2723 = !DILocation(line: 177, column: 17, scope: !1635, inlinedAt: !2717)
!2724 = !DILocation(line: 178, column: 6, scope: !1635, inlinedAt: !2717)
!2725 = !DILocation(line: 178, column: 18, scope: !1635, inlinedAt: !2717)
!2726 = !DILocation(line: 1020, column: 10, scope: !2702, inlinedAt: !2712)
!2727 = !DILocation(line: 1021, column: 1, scope: !2702, inlinedAt: !2712)
!2728 = !DILocation(line: 1009, column: 3, scope: !2692)
!2729 = !DILocation(line: 0, scope: !2702)
!2730 = !DILocation(line: 1018, column: 3, scope: !2702)
!2731 = !DILocation(line: 1018, column: 26, scope: !2702)
!2732 = !DILocation(line: 1018, column: 30, scope: !2702)
!2733 = !DILocation(line: 0, scope: !1635, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1019, column: 3, scope: !2702)
!2735 = !DILocation(line: 174, column: 12, scope: !1635, inlinedAt: !2734)
!2736 = !DILocation(line: 175, column: 8, scope: !1648, inlinedAt: !2734)
!2737 = !DILocation(line: 175, column: 19, scope: !1648, inlinedAt: !2734)
!2738 = !DILocation(line: 176, column: 5, scope: !1648, inlinedAt: !2734)
!2739 = !DILocation(line: 177, column: 6, scope: !1635, inlinedAt: !2734)
!2740 = !DILocation(line: 177, column: 17, scope: !1635, inlinedAt: !2734)
!2741 = !DILocation(line: 178, column: 6, scope: !1635, inlinedAt: !2734)
!2742 = !DILocation(line: 178, column: 18, scope: !1635, inlinedAt: !2734)
!2743 = !DILocation(line: 1020, column: 10, scope: !2702)
!2744 = !DILocation(line: 1021, column: 1, scope: !2702)
!2745 = !DILocation(line: 1020, column: 3, scope: !2702)
!2746 = distinct !DISubprogram(name: "quotearg_custom", scope: !468, file: !468, line: 1024, type: !2747, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!99, !105, !105, !105}
!2749 = !{!2750, !2751, !2752}
!2750 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2746, file: !468, line: 1024, type: !105)
!2751 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2746, file: !468, line: 1024, type: !105)
!2752 = !DILocalVariable(name: "arg", arg: 3, scope: !2746, file: !468, line: 1025, type: !105)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 0, scope: !2692, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1027, column: 10, scope: !2746)
!2756 = !DILocation(line: 0, scope: !2702, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1009, column: 10, scope: !2692, inlinedAt: !2755)
!2758 = !DILocation(line: 1018, column: 3, scope: !2702, inlinedAt: !2757)
!2759 = !DILocation(line: 1018, column: 26, scope: !2702, inlinedAt: !2757)
!2760 = !DILocation(line: 1018, column: 30, scope: !2702, inlinedAt: !2757)
!2761 = !DILocation(line: 0, scope: !1635, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1019, column: 3, scope: !2702, inlinedAt: !2757)
!2763 = !DILocation(line: 174, column: 12, scope: !1635, inlinedAt: !2762)
!2764 = !DILocation(line: 175, column: 8, scope: !1648, inlinedAt: !2762)
!2765 = !DILocation(line: 175, column: 19, scope: !1648, inlinedAt: !2762)
!2766 = !DILocation(line: 176, column: 5, scope: !1648, inlinedAt: !2762)
!2767 = !DILocation(line: 177, column: 6, scope: !1635, inlinedAt: !2762)
!2768 = !DILocation(line: 177, column: 17, scope: !1635, inlinedAt: !2762)
!2769 = !DILocation(line: 178, column: 6, scope: !1635, inlinedAt: !2762)
!2770 = !DILocation(line: 178, column: 18, scope: !1635, inlinedAt: !2762)
!2771 = !DILocation(line: 1020, column: 10, scope: !2702, inlinedAt: !2757)
!2772 = !DILocation(line: 1021, column: 1, scope: !2702, inlinedAt: !2757)
!2773 = !DILocation(line: 1027, column: 3, scope: !2746)
!2774 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !468, file: !468, line: 1031, type: !2775, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!99, !105, !105, !105, !102}
!2777 = !{!2778, !2779, !2780, !2781}
!2778 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2774, file: !468, line: 1031, type: !105)
!2779 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2774, file: !468, line: 1031, type: !105)
!2780 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !468, line: 1032, type: !105)
!2781 = !DILocalVariable(name: "argsize", arg: 4, scope: !2774, file: !468, line: 1032, type: !102)
!2782 = !DILocation(line: 0, scope: !2774)
!2783 = !DILocation(line: 0, scope: !2702, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1034, column: 10, scope: !2774)
!2785 = !DILocation(line: 1018, column: 3, scope: !2702, inlinedAt: !2784)
!2786 = !DILocation(line: 1018, column: 26, scope: !2702, inlinedAt: !2784)
!2787 = !DILocation(line: 1018, column: 30, scope: !2702, inlinedAt: !2784)
!2788 = !DILocation(line: 0, scope: !1635, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 1019, column: 3, scope: !2702, inlinedAt: !2784)
!2790 = !DILocation(line: 174, column: 12, scope: !1635, inlinedAt: !2789)
!2791 = !DILocation(line: 175, column: 8, scope: !1648, inlinedAt: !2789)
!2792 = !DILocation(line: 175, column: 19, scope: !1648, inlinedAt: !2789)
!2793 = !DILocation(line: 176, column: 5, scope: !1648, inlinedAt: !2789)
!2794 = !DILocation(line: 177, column: 6, scope: !1635, inlinedAt: !2789)
!2795 = !DILocation(line: 177, column: 17, scope: !1635, inlinedAt: !2789)
!2796 = !DILocation(line: 178, column: 6, scope: !1635, inlinedAt: !2789)
!2797 = !DILocation(line: 178, column: 18, scope: !1635, inlinedAt: !2789)
!2798 = !DILocation(line: 1020, column: 10, scope: !2702, inlinedAt: !2784)
!2799 = !DILocation(line: 1021, column: 1, scope: !2702, inlinedAt: !2784)
!2800 = !DILocation(line: 1034, column: 3, scope: !2774)
!2801 = distinct !DISubprogram(name: "quote_n_mem", scope: !468, file: !468, line: 1049, type: !2802, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!105, !78, !105, !102}
!2804 = !{!2805, !2806, !2807}
!2805 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !468, line: 1049, type: !78)
!2806 = !DILocalVariable(name: "arg", arg: 2, scope: !2801, file: !468, line: 1049, type: !105)
!2807 = !DILocalVariable(name: "argsize", arg: 3, scope: !2801, file: !468, line: 1049, type: !102)
!2808 = !DILocation(line: 0, scope: !2801)
!2809 = !DILocation(line: 1051, column: 10, scope: !2801)
!2810 = !DILocation(line: 1051, column: 3, scope: !2801)
!2811 = distinct !DISubprogram(name: "quote_mem", scope: !468, file: !468, line: 1055, type: !2812, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!105, !105, !102}
!2814 = !{!2815, !2816}
!2815 = !DILocalVariable(name: "arg", arg: 1, scope: !2811, file: !468, line: 1055, type: !105)
!2816 = !DILocalVariable(name: "argsize", arg: 2, scope: !2811, file: !468, line: 1055, type: !102)
!2817 = !DILocation(line: 0, scope: !2811)
!2818 = !DILocation(line: 0, scope: !2801, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1057, column: 10, scope: !2811)
!2820 = !DILocation(line: 1051, column: 10, scope: !2801, inlinedAt: !2819)
!2821 = !DILocation(line: 1057, column: 3, scope: !2811)
!2822 = distinct !DISubprogram(name: "quote_n", scope: !468, file: !468, line: 1061, type: !2823, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!105, !78, !105}
!2825 = !{!2826, !2827}
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !468, line: 1061, type: !78)
!2827 = !DILocalVariable(name: "arg", arg: 2, scope: !2822, file: !468, line: 1061, type: !105)
!2828 = !DILocation(line: 0, scope: !2822)
!2829 = !DILocation(line: 0, scope: !2801, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1063, column: 10, scope: !2822)
!2831 = !DILocation(line: 1051, column: 10, scope: !2801, inlinedAt: !2830)
!2832 = !DILocation(line: 1063, column: 3, scope: !2822)
!2833 = distinct !DISubprogram(name: "quote", scope: !468, file: !468, line: 1067, type: !2834, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!105, !105}
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "arg", arg: 1, scope: !2833, file: !468, line: 1067, type: !105)
!2838 = !DILocation(line: 0, scope: !2833)
!2839 = !DILocation(line: 0, scope: !2822, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1069, column: 10, scope: !2833)
!2841 = !DILocation(line: 0, scope: !2801, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1063, column: 10, scope: !2822, inlinedAt: !2840)
!2843 = !DILocation(line: 1051, column: 10, scope: !2801, inlinedAt: !2842)
!2844 = !DILocation(line: 1069, column: 3, scope: !2833)
!2845 = distinct !DISubprogram(name: "version_etc_arn", scope: !584, file: !584, line: 61, type: !2846, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !2883)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2848, !105, !105, !105, !2882, !102}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2850, file: !160, line: 51, baseType: !78, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2850, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2850, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2850, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2850, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2850, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2850, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2850, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2850, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2850, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2850, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2850, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2850, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2850, file: !160, line: 70, baseType: !2866, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2850, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2850, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2850, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2850, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2850, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2850, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2850, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2850, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2850, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2850, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2850, file: !160, line: 93, baseType: !2866, size: 64, offset: 1344)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2850, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2850, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2850, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2850, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889}
!2884 = !DILocalVariable(name: "stream", arg: 1, scope: !2845, file: !584, line: 61, type: !2848)
!2885 = !DILocalVariable(name: "command_name", arg: 2, scope: !2845, file: !584, line: 62, type: !105)
!2886 = !DILocalVariable(name: "package", arg: 3, scope: !2845, file: !584, line: 62, type: !105)
!2887 = !DILocalVariable(name: "version", arg: 4, scope: !2845, file: !584, line: 63, type: !105)
!2888 = !DILocalVariable(name: "authors", arg: 5, scope: !2845, file: !584, line: 64, type: !2882)
!2889 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2845, file: !584, line: 64, type: !102)
!2890 = !DILocation(line: 0, scope: !2845)
!2891 = !DILocation(line: 66, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2845, file: !584, line: 66, column: 7)
!2893 = !DILocation(line: 66, column: 7, scope: !2845)
!2894 = !DILocation(line: 67, column: 5, scope: !2892)
!2895 = !DILocation(line: 69, column: 5, scope: !2892)
!2896 = !DILocation(line: 83, column: 3, scope: !2845)
!2897 = !DILocation(line: 85, column: 3, scope: !2845)
!2898 = !DILocation(line: 88, column: 3, scope: !2845)
!2899 = !DILocation(line: 95, column: 3, scope: !2845)
!2900 = !DILocation(line: 97, column: 3, scope: !2845)
!2901 = !DILocation(line: 105, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2845, file: !584, line: 98, column: 5)
!2903 = !DILocation(line: 106, column: 7, scope: !2902)
!2904 = !DILocation(line: 109, column: 7, scope: !2902)
!2905 = !DILocation(line: 110, column: 7, scope: !2902)
!2906 = !DILocation(line: 113, column: 7, scope: !2902)
!2907 = !DILocation(line: 115, column: 7, scope: !2902)
!2908 = !DILocation(line: 120, column: 7, scope: !2902)
!2909 = !DILocation(line: 122, column: 7, scope: !2902)
!2910 = !DILocation(line: 127, column: 7, scope: !2902)
!2911 = !DILocation(line: 129, column: 7, scope: !2902)
!2912 = !DILocation(line: 134, column: 7, scope: !2902)
!2913 = !DILocation(line: 137, column: 7, scope: !2902)
!2914 = !DILocation(line: 142, column: 7, scope: !2902)
!2915 = !DILocation(line: 145, column: 7, scope: !2902)
!2916 = !DILocation(line: 150, column: 7, scope: !2902)
!2917 = !DILocation(line: 154, column: 7, scope: !2902)
!2918 = !DILocation(line: 159, column: 7, scope: !2902)
!2919 = !DILocation(line: 163, column: 7, scope: !2902)
!2920 = !DILocation(line: 170, column: 7, scope: !2902)
!2921 = !DILocation(line: 174, column: 7, scope: !2902)
!2922 = !DILocation(line: 176, column: 1, scope: !2845)
!2923 = distinct !DISubprogram(name: "version_etc_ar", scope: !584, file: !584, line: 183, type: !2924, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2848, !105, !105, !105, !2882}
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932}
!2927 = !DILocalVariable(name: "stream", arg: 1, scope: !2923, file: !584, line: 183, type: !2848)
!2928 = !DILocalVariable(name: "command_name", arg: 2, scope: !2923, file: !584, line: 184, type: !105)
!2929 = !DILocalVariable(name: "package", arg: 3, scope: !2923, file: !584, line: 184, type: !105)
!2930 = !DILocalVariable(name: "version", arg: 4, scope: !2923, file: !584, line: 185, type: !105)
!2931 = !DILocalVariable(name: "authors", arg: 5, scope: !2923, file: !584, line: 185, type: !2882)
!2932 = !DILocalVariable(name: "n_authors", scope: !2923, file: !584, line: 187, type: !102)
!2933 = !DILocation(line: 0, scope: !2923)
!2934 = !DILocation(line: 189, column: 8, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2923, file: !584, line: 189, column: 3)
!2936 = !DILocation(line: 189, scope: !2935)
!2937 = !DILocation(line: 189, column: 23, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !584, line: 189, column: 3)
!2939 = !DILocation(line: 189, column: 3, scope: !2935)
!2940 = !DILocation(line: 189, column: 52, scope: !2938)
!2941 = distinct !{!2941, !2939, !2942, !909}
!2942 = !DILocation(line: 190, column: 5, scope: !2935)
!2943 = !DILocation(line: 191, column: 3, scope: !2923)
!2944 = !DILocation(line: 192, column: 1, scope: !2923)
!2945 = distinct !DISubprogram(name: "version_etc_va", scope: !584, file: !584, line: 199, type: !2946, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !2959)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2848, !105, !105, !105, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !2949)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 14, baseType: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2951, baseType: !2952)
!2951 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2952, file: !2951, line: 192, baseType: !100, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2952, file: !2951, line: 192, baseType: !100, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2952, file: !2951, line: 192, baseType: !100, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2952, file: !2951, line: 192, baseType: !78, size: 32, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2952, file: !2951, line: 192, baseType: !78, size: 32, offset: 224)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DILocalVariable(name: "stream", arg: 1, scope: !2945, file: !584, line: 199, type: !2848)
!2961 = !DILocalVariable(name: "command_name", arg: 2, scope: !2945, file: !584, line: 200, type: !105)
!2962 = !DILocalVariable(name: "package", arg: 3, scope: !2945, file: !584, line: 200, type: !105)
!2963 = !DILocalVariable(name: "version", arg: 4, scope: !2945, file: !584, line: 201, type: !105)
!2964 = !DILocalVariable(name: "authors", arg: 5, scope: !2945, file: !584, line: 201, type: !2948)
!2965 = !DILocalVariable(name: "n_authors", scope: !2945, file: !584, line: 203, type: !102)
!2966 = !DILocalVariable(name: "authtab", scope: !2945, file: !584, line: 204, type: !2967)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !60)
!2968 = !DILocation(line: 0, scope: !2945)
!2969 = !DILocation(line: 201, column: 46, scope: !2945)
!2970 = !DILocation(line: 204, column: 3, scope: !2945)
!2971 = !DILocation(line: 204, column: 15, scope: !2945)
!2972 = !DILocation(line: 208, column: 35, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !584, line: 206, column: 3)
!2974 = distinct !DILexicalBlock(scope: !2945, file: !584, line: 206, column: 3)
!2975 = !DILocation(line: 208, column: 33, scope: !2973)
!2976 = !DILocation(line: 208, column: 67, scope: !2973)
!2977 = !DILocation(line: 206, column: 3, scope: !2974)
!2978 = !DILocation(line: 208, column: 14, scope: !2973)
!2979 = !DILocation(line: 0, scope: !2974)
!2980 = !DILocation(line: 211, column: 3, scope: !2945)
!2981 = !DILocation(line: 213, column: 1, scope: !2945)
!2982 = distinct !DISubprogram(name: "version_etc", scope: !584, file: !584, line: 230, type: !2983, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2848, !105, !105, !105, null}
!2985 = !{!2986, !2987, !2988, !2989, !2990}
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2982, file: !584, line: 230, type: !2848)
!2987 = !DILocalVariable(name: "command_name", arg: 2, scope: !2982, file: !584, line: 231, type: !105)
!2988 = !DILocalVariable(name: "package", arg: 3, scope: !2982, file: !584, line: 231, type: !105)
!2989 = !DILocalVariable(name: "version", arg: 4, scope: !2982, file: !584, line: 232, type: !105)
!2990 = !DILocalVariable(name: "authors", scope: !2982, file: !584, line: 234, type: !2948)
!2991 = !DILocation(line: 0, scope: !2982)
!2992 = !DILocation(line: 234, column: 3, scope: !2982)
!2993 = !DILocation(line: 234, column: 11, scope: !2982)
!2994 = !DILocation(line: 235, column: 3, scope: !2982)
!2995 = !DILocation(line: 236, column: 3, scope: !2982)
!2996 = !DILocation(line: 237, column: 3, scope: !2982)
!2997 = !DILocation(line: 238, column: 1, scope: !2982)
!2998 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !584, file: !584, line: 241, type: !423, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !804)
!2999 = !DILocation(line: 243, column: 3, scope: !2998)
!3000 = !DILocation(line: 248, column: 3, scope: !2998)
!3001 = !DILocation(line: 254, column: 3, scope: !2998)
!3002 = !DILocation(line: 259, column: 3, scope: !2998)
!3003 = !DILocation(line: 261, column: 1, scope: !2998)
!3004 = distinct !DISubprogram(name: "xnrealloc", scope: !3005, file: !3005, line: 147, type: !3006, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3008)
!3005 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!100, !100, !102, !102}
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "p", arg: 1, scope: !3004, file: !3005, line: 147, type: !100)
!3010 = !DILocalVariable(name: "n", arg: 2, scope: !3004, file: !3005, line: 147, type: !102)
!3011 = !DILocalVariable(name: "s", arg: 3, scope: !3004, file: !3005, line: 147, type: !102)
!3012 = !DILocation(line: 0, scope: !3004)
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !722, line: 83, type: !100)
!3014 = distinct !DISubprogram(name: "xreallocarray", scope: !722, file: !722, line: 83, type: !3006, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3015)
!3015 = !{!3013, !3016, !3017}
!3016 = !DILocalVariable(name: "n", arg: 2, scope: !3014, file: !722, line: 83, type: !102)
!3017 = !DILocalVariable(name: "s", arg: 3, scope: !3014, file: !722, line: 83, type: !102)
!3018 = !DILocation(line: 0, scope: !3014, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 149, column: 10, scope: !3004)
!3020 = !DILocation(line: 85, column: 25, scope: !3014, inlinedAt: !3019)
!3021 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !722, line: 37, type: !100)
!3022 = distinct !DISubprogram(name: "check_nonnull", scope: !722, file: !722, line: 37, type: !3023, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!100, !100}
!3025 = !{!3021}
!3026 = !DILocation(line: 0, scope: !3022, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 85, column: 10, scope: !3014, inlinedAt: !3019)
!3028 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3027)
!3029 = distinct !DILexicalBlock(scope: !3022, file: !722, line: 39, column: 7)
!3030 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3027)
!3031 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3027)
!3032 = !DILocation(line: 149, column: 3, scope: !3004)
!3033 = !DILocation(line: 0, scope: !3014)
!3034 = !DILocation(line: 85, column: 25, scope: !3014)
!3035 = !DILocation(line: 0, scope: !3022, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 85, column: 10, scope: !3014)
!3037 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3036)
!3038 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3036)
!3039 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3036)
!3040 = !DILocation(line: 85, column: 3, scope: !3014)
!3041 = distinct !DISubprogram(name: "xmalloc", scope: !722, file: !722, line: 47, type: !3042, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!100, !102}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "s", arg: 1, scope: !3041, file: !722, line: 47, type: !102)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocation(line: 49, column: 25, scope: !3041)
!3048 = !DILocation(line: 0, scope: !3022, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 49, column: 10, scope: !3041)
!3050 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3049)
!3053 = !DILocation(line: 49, column: 3, scope: !3041)
!3054 = !DISubprogram(name: "malloc", scope: !983, file: !983, line: 540, type: !3042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3055 = distinct !DISubprogram(name: "ximalloc", scope: !722, file: !722, line: 53, type: !3056, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!100, !741}
!3058 = !{!3059}
!3059 = !DILocalVariable(name: "s", arg: 1, scope: !3055, file: !722, line: 53, type: !741)
!3060 = !DILocation(line: 0, scope: !3055)
!3061 = !DILocalVariable(name: "s", arg: 1, scope: !3062, file: !3063, line: 55, type: !741)
!3062 = distinct !DISubprogram(name: "imalloc", scope: !3063, file: !3063, line: 55, type: !3056, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3064)
!3063 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3064 = !{!3061}
!3065 = !DILocation(line: 0, scope: !3062, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 55, column: 25, scope: !3055)
!3067 = !DILocation(line: 57, column: 26, scope: !3062, inlinedAt: !3066)
!3068 = !DILocation(line: 0, scope: !3022, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 55, column: 10, scope: !3055)
!3070 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3069)
!3071 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3069)
!3072 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3069)
!3073 = !DILocation(line: 55, column: 3, scope: !3055)
!3074 = distinct !DISubprogram(name: "xcharalloc", scope: !722, file: !722, line: 59, type: !3075, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!99, !102}
!3077 = !{!3078}
!3078 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !722, line: 59, type: !102)
!3079 = !DILocation(line: 0, scope: !3074)
!3080 = !DILocation(line: 0, scope: !3041, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 61, column: 10, scope: !3074)
!3082 = !DILocation(line: 49, column: 25, scope: !3041, inlinedAt: !3081)
!3083 = !DILocation(line: 0, scope: !3022, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 49, column: 10, scope: !3041, inlinedAt: !3081)
!3085 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3084)
!3086 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3084)
!3087 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3084)
!3088 = !DILocation(line: 61, column: 3, scope: !3074)
!3089 = distinct !DISubprogram(name: "xrealloc", scope: !722, file: !722, line: 68, type: !3090, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!100, !100, !102}
!3092 = !{!3093, !3094}
!3093 = !DILocalVariable(name: "p", arg: 1, scope: !3089, file: !722, line: 68, type: !100)
!3094 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !722, line: 68, type: !102)
!3095 = !DILocation(line: 0, scope: !3089)
!3096 = !DILocalVariable(name: "ptr", arg: 1, scope: !3097, file: !3098, line: 2057, type: !100)
!3097 = distinct !DISubprogram(name: "rpl_realloc", scope: !3098, file: !3098, line: 2057, type: !3090, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3099)
!3098 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3099 = !{!3096, !3100}
!3100 = !DILocalVariable(name: "size", arg: 2, scope: !3097, file: !3098, line: 2057, type: !102)
!3101 = !DILocation(line: 0, scope: !3097, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 70, column: 25, scope: !3089)
!3103 = !DILocation(line: 2059, column: 24, scope: !3097, inlinedAt: !3102)
!3104 = !DILocation(line: 2059, column: 10, scope: !3097, inlinedAt: !3102)
!3105 = !DILocation(line: 0, scope: !3022, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 70, column: 10, scope: !3089)
!3107 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3106)
!3108 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3106)
!3109 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3106)
!3110 = !DILocation(line: 70, column: 3, scope: !3089)
!3111 = !DISubprogram(name: "realloc", scope: !983, file: !983, line: 551, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3112 = distinct !DISubprogram(name: "xirealloc", scope: !722, file: !722, line: 74, type: !3113, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!100, !100, !741}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "p", arg: 1, scope: !3112, file: !722, line: 74, type: !100)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !722, line: 74, type: !741)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocalVariable(name: "p", arg: 1, scope: !3120, file: !3063, line: 66, type: !100)
!3120 = distinct !DISubprogram(name: "irealloc", scope: !3063, file: !3063, line: 66, type: !3113, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3121)
!3121 = !{!3119, !3122}
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3120, file: !3063, line: 66, type: !741)
!3123 = !DILocation(line: 0, scope: !3120, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 76, column: 25, scope: !3112)
!3125 = !DILocation(line: 0, scope: !3097, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 68, column: 26, scope: !3120, inlinedAt: !3124)
!3127 = !DILocation(line: 2059, column: 24, scope: !3097, inlinedAt: !3126)
!3128 = !DILocation(line: 2059, column: 10, scope: !3097, inlinedAt: !3126)
!3129 = !DILocation(line: 0, scope: !3022, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 76, column: 10, scope: !3112)
!3131 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3130)
!3132 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3130)
!3133 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3130)
!3134 = !DILocation(line: 76, column: 3, scope: !3112)
!3135 = distinct !DISubprogram(name: "xireallocarray", scope: !722, file: !722, line: 89, type: !3136, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!100, !100, !741, !741}
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "p", arg: 1, scope: !3135, file: !722, line: 89, type: !100)
!3140 = !DILocalVariable(name: "n", arg: 2, scope: !3135, file: !722, line: 89, type: !741)
!3141 = !DILocalVariable(name: "s", arg: 3, scope: !3135, file: !722, line: 89, type: !741)
!3142 = !DILocation(line: 0, scope: !3135)
!3143 = !DILocalVariable(name: "p", arg: 1, scope: !3144, file: !3063, line: 98, type: !100)
!3144 = distinct !DISubprogram(name: "ireallocarray", scope: !3063, file: !3063, line: 98, type: !3136, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3145)
!3145 = !{!3143, !3146, !3147}
!3146 = !DILocalVariable(name: "n", arg: 2, scope: !3144, file: !3063, line: 98, type: !741)
!3147 = !DILocalVariable(name: "s", arg: 3, scope: !3144, file: !3063, line: 98, type: !741)
!3148 = !DILocation(line: 0, scope: !3144, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 91, column: 25, scope: !3135)
!3150 = !DILocation(line: 101, column: 13, scope: !3144, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !3022, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 91, column: 10, scope: !3135)
!3153 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3152)
!3156 = !DILocation(line: 91, column: 3, scope: !3135)
!3157 = distinct !DISubprogram(name: "xnmalloc", scope: !722, file: !722, line: 98, type: !3158, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!100, !102, !102}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !722, line: 98, type: !102)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !722, line: 98, type: !102)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 0, scope: !3014, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 100, column: 10, scope: !3157)
!3166 = !DILocation(line: 85, column: 25, scope: !3014, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !3022, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 85, column: 10, scope: !3014, inlinedAt: !3165)
!3169 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3168)
!3170 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3168)
!3171 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3168)
!3172 = !DILocation(line: 100, column: 3, scope: !3157)
!3173 = distinct !DISubprogram(name: "xinmalloc", scope: !722, file: !722, line: 104, type: !3174, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!100, !741, !741}
!3176 = !{!3177, !3178}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !722, line: 104, type: !741)
!3178 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !722, line: 104, type: !741)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocation(line: 0, scope: !3135, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 106, column: 10, scope: !3173)
!3182 = !DILocation(line: 0, scope: !3144, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 91, column: 25, scope: !3135, inlinedAt: !3181)
!3184 = !DILocation(line: 101, column: 13, scope: !3144, inlinedAt: !3183)
!3185 = !DILocation(line: 0, scope: !3022, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 91, column: 10, scope: !3135, inlinedAt: !3181)
!3187 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3186)
!3188 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3186)
!3189 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3186)
!3190 = !DILocation(line: 106, column: 3, scope: !3173)
!3191 = distinct !DISubprogram(name: "x2realloc", scope: !722, file: !722, line: 116, type: !3192, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!100, !100, !728}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "p", arg: 1, scope: !3191, file: !722, line: 116, type: !100)
!3196 = !DILocalVariable(name: "ps", arg: 2, scope: !3191, file: !722, line: 116, type: !728)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 0, scope: !725, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 118, column: 10, scope: !3191)
!3200 = !DILocation(line: 178, column: 14, scope: !725, inlinedAt: !3199)
!3201 = !DILocation(line: 180, column: 9, scope: !3202, inlinedAt: !3199)
!3202 = distinct !DILexicalBlock(scope: !725, file: !722, line: 180, column: 7)
!3203 = !DILocation(line: 180, column: 7, scope: !725, inlinedAt: !3199)
!3204 = !DILocation(line: 182, column: 13, scope: !3205, inlinedAt: !3199)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !722, line: 182, column: 11)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !722, line: 181, column: 5)
!3207 = !DILocation(line: 182, column: 11, scope: !3206, inlinedAt: !3199)
!3208 = !DILocation(line: 197, column: 11, scope: !3209, inlinedAt: !3199)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !722, line: 197, column: 11)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !722, line: 195, column: 5)
!3211 = !DILocation(line: 197, column: 11, scope: !3210, inlinedAt: !3199)
!3212 = !DILocation(line: 198, column: 9, scope: !3209, inlinedAt: !3199)
!3213 = !DILocation(line: 0, scope: !3014, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 201, column: 7, scope: !725, inlinedAt: !3199)
!3215 = !DILocation(line: 85, column: 25, scope: !3014, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !3022, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 85, column: 10, scope: !3014, inlinedAt: !3214)
!3218 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3217)
!3219 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3217)
!3220 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3217)
!3221 = !DILocation(line: 202, column: 7, scope: !725, inlinedAt: !3199)
!3222 = !DILocation(line: 118, column: 3, scope: !3191)
!3223 = !DILocation(line: 0, scope: !725)
!3224 = !DILocation(line: 178, column: 14, scope: !725)
!3225 = !DILocation(line: 180, column: 9, scope: !3202)
!3226 = !DILocation(line: 180, column: 7, scope: !725)
!3227 = !DILocation(line: 182, column: 13, scope: !3205)
!3228 = !DILocation(line: 182, column: 11, scope: !3206)
!3229 = !DILocation(line: 190, column: 30, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3205, file: !722, line: 183, column: 9)
!3231 = !DILocation(line: 191, column: 16, scope: !3230)
!3232 = !DILocation(line: 191, column: 13, scope: !3230)
!3233 = !DILocation(line: 192, column: 9, scope: !3230)
!3234 = !DILocation(line: 197, column: 11, scope: !3209)
!3235 = !DILocation(line: 197, column: 11, scope: !3210)
!3236 = !DILocation(line: 198, column: 9, scope: !3209)
!3237 = !DILocation(line: 0, scope: !3014, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 201, column: 7, scope: !725)
!3239 = !DILocation(line: 85, column: 25, scope: !3014, inlinedAt: !3238)
!3240 = !DILocation(line: 0, scope: !3022, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 85, column: 10, scope: !3014, inlinedAt: !3238)
!3242 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3241)
!3244 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3241)
!3245 = !DILocation(line: 202, column: 7, scope: !725)
!3246 = !DILocation(line: 203, column: 3, scope: !725)
!3247 = !DILocation(line: 0, scope: !737)
!3248 = !DILocation(line: 230, column: 14, scope: !737)
!3249 = !DILocation(line: 238, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !737, file: !722, line: 238, column: 7)
!3251 = !DILocation(line: 238, column: 7, scope: !737)
!3252 = !DILocation(line: 240, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !737, file: !722, line: 240, column: 7)
!3254 = !DILocation(line: 240, column: 18, scope: !3253)
!3255 = !DILocation(line: 253, column: 8, scope: !737)
!3256 = !DILocation(line: 258, column: 27, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !722, line: 257, column: 5)
!3258 = distinct !DILexicalBlock(scope: !737, file: !722, line: 256, column: 7)
!3259 = !DILocation(line: 259, column: 32, scope: !3257)
!3260 = !DILocation(line: 260, column: 5, scope: !3257)
!3261 = !DILocation(line: 262, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !737, file: !722, line: 262, column: 7)
!3263 = !DILocation(line: 262, column: 7, scope: !737)
!3264 = !DILocation(line: 263, column: 9, scope: !3262)
!3265 = !DILocation(line: 263, column: 5, scope: !3262)
!3266 = !DILocation(line: 264, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !737, file: !722, line: 264, column: 7)
!3268 = !DILocation(line: 264, column: 14, scope: !3267)
!3269 = !DILocation(line: 265, column: 7, scope: !3267)
!3270 = !DILocation(line: 265, column: 11, scope: !3267)
!3271 = !DILocation(line: 266, column: 11, scope: !3267)
!3272 = !DILocation(line: 267, column: 14, scope: !3267)
!3273 = !DILocation(line: 264, column: 7, scope: !737)
!3274 = !DILocation(line: 268, column: 5, scope: !3267)
!3275 = !DILocation(line: 0, scope: !3089, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 269, column: 8, scope: !737)
!3277 = !DILocation(line: 0, scope: !3097, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 70, column: 25, scope: !3089, inlinedAt: !3276)
!3279 = !DILocation(line: 2059, column: 24, scope: !3097, inlinedAt: !3278)
!3280 = !DILocation(line: 2059, column: 10, scope: !3097, inlinedAt: !3278)
!3281 = !DILocation(line: 0, scope: !3022, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 70, column: 10, scope: !3089, inlinedAt: !3276)
!3283 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3282)
!3284 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3282)
!3285 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3282)
!3286 = !DILocation(line: 270, column: 7, scope: !737)
!3287 = !DILocation(line: 271, column: 3, scope: !737)
!3288 = distinct !DISubprogram(name: "xzalloc", scope: !722, file: !722, line: 279, type: !3042, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "s", arg: 1, scope: !3288, file: !722, line: 279, type: !102)
!3291 = !DILocation(line: 0, scope: !3288)
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !722, line: 294, type: !102)
!3293 = distinct !DISubprogram(name: "xcalloc", scope: !722, file: !722, line: 294, type: !3158, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3294)
!3294 = !{!3292, !3295}
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3293, file: !722, line: 294, type: !102)
!3296 = !DILocation(line: 0, scope: !3293, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 281, column: 10, scope: !3288)
!3298 = !DILocation(line: 296, column: 25, scope: !3293, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !3022, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 296, column: 10, scope: !3293, inlinedAt: !3297)
!3301 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3300)
!3302 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3300)
!3303 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3300)
!3304 = !DILocation(line: 281, column: 3, scope: !3288)
!3305 = !DISubprogram(name: "calloc", scope: !983, file: !983, line: 543, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3306 = !DILocation(line: 0, scope: !3293)
!3307 = !DILocation(line: 296, column: 25, scope: !3293)
!3308 = !DILocation(line: 0, scope: !3022, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 296, column: 10, scope: !3293)
!3310 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3309)
!3311 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3309)
!3312 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3309)
!3313 = !DILocation(line: 296, column: 3, scope: !3293)
!3314 = distinct !DISubprogram(name: "xizalloc", scope: !722, file: !722, line: 285, type: !3056, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3315)
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "s", arg: 1, scope: !3314, file: !722, line: 285, type: !741)
!3317 = !DILocation(line: 0, scope: !3314)
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3319, file: !722, line: 300, type: !741)
!3319 = distinct !DISubprogram(name: "xicalloc", scope: !722, file: !722, line: 300, type: !3174, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3320)
!3320 = !{!3318, !3321}
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3319, file: !722, line: 300, type: !741)
!3322 = !DILocation(line: 0, scope: !3319, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 287, column: 10, scope: !3314)
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !3063, line: 77, type: !741)
!3325 = distinct !DISubprogram(name: "icalloc", scope: !3063, file: !3063, line: 77, type: !3174, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3326)
!3326 = !{!3324, !3327}
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !3063, line: 77, type: !741)
!3328 = !DILocation(line: 0, scope: !3325, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 302, column: 25, scope: !3319, inlinedAt: !3323)
!3330 = !DILocation(line: 91, column: 10, scope: !3325, inlinedAt: !3329)
!3331 = !DILocation(line: 0, scope: !3022, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 302, column: 10, scope: !3319, inlinedAt: !3323)
!3333 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3332)
!3334 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3332)
!3335 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3332)
!3336 = !DILocation(line: 287, column: 3, scope: !3314)
!3337 = !DILocation(line: 0, scope: !3319)
!3338 = !DILocation(line: 0, scope: !3325, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 302, column: 25, scope: !3319)
!3340 = !DILocation(line: 91, column: 10, scope: !3325, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !3022, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 302, column: 10, scope: !3319)
!3343 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3342)
!3346 = !DILocation(line: 302, column: 3, scope: !3319)
!3347 = distinct !DISubprogram(name: "xmemdup", scope: !722, file: !722, line: 310, type: !3348, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!100, !1007, !102}
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !722, line: 310, type: !1007)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3347, file: !722, line: 310, type: !102)
!3353 = !DILocation(line: 0, scope: !3347)
!3354 = !DILocation(line: 0, scope: !3041, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 312, column: 18, scope: !3347)
!3356 = !DILocation(line: 49, column: 25, scope: !3041, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !3022, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 49, column: 10, scope: !3041, inlinedAt: !3355)
!3359 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3358)
!3362 = !DILocalVariable(name: "__dest", arg: 1, scope: !3363, file: !1236, line: 26, type: !1239)
!3363 = distinct !DISubprogram(name: "memcpy", scope: !1236, file: !1236, line: 26, type: !1237, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3364)
!3364 = !{!3362, !3365, !3366}
!3365 = !DILocalVariable(name: "__src", arg: 2, scope: !3363, file: !1236, line: 26, type: !1006)
!3366 = !DILocalVariable(name: "__len", arg: 3, scope: !3363, file: !1236, line: 26, type: !102)
!3367 = !DILocation(line: 0, scope: !3363, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 312, column: 10, scope: !3347)
!3369 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3368)
!3370 = !DILocation(line: 312, column: 3, scope: !3347)
!3371 = distinct !DISubprogram(name: "ximemdup", scope: !722, file: !722, line: 316, type: !3372, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!100, !1007, !741}
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "p", arg: 1, scope: !3371, file: !722, line: 316, type: !1007)
!3376 = !DILocalVariable(name: "s", arg: 2, scope: !3371, file: !722, line: 316, type: !741)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 0, scope: !3055, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 318, column: 18, scope: !3371)
!3380 = !DILocation(line: 0, scope: !3062, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 55, column: 25, scope: !3055, inlinedAt: !3379)
!3382 = !DILocation(line: 57, column: 26, scope: !3062, inlinedAt: !3381)
!3383 = !DILocation(line: 0, scope: !3022, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 55, column: 10, scope: !3055, inlinedAt: !3379)
!3385 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3384)
!3386 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3384)
!3387 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3384)
!3388 = !DILocation(line: 0, scope: !3363, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 318, column: 10, scope: !3371)
!3390 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3389)
!3391 = !DILocation(line: 318, column: 3, scope: !3371)
!3392 = distinct !DISubprogram(name: "ximemdup0", scope: !722, file: !722, line: 325, type: !3393, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!99, !1007, !741}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !722, line: 325, type: !1007)
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !722, line: 325, type: !741)
!3398 = !DILocalVariable(name: "result", scope: !3392, file: !722, line: 327, type: !99)
!3399 = !DILocation(line: 0, scope: !3392)
!3400 = !DILocation(line: 327, column: 30, scope: !3392)
!3401 = !DILocation(line: 0, scope: !3055, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 327, column: 18, scope: !3392)
!3403 = !DILocation(line: 0, scope: !3062, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 55, column: 25, scope: !3055, inlinedAt: !3402)
!3405 = !DILocation(line: 57, column: 26, scope: !3062, inlinedAt: !3404)
!3406 = !DILocation(line: 0, scope: !3022, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 55, column: 10, scope: !3055, inlinedAt: !3402)
!3408 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3407)
!3409 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3407)
!3410 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3407)
!3411 = !DILocation(line: 328, column: 3, scope: !3392)
!3412 = !DILocation(line: 328, column: 13, scope: !3392)
!3413 = !DILocation(line: 0, scope: !3363, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 329, column: 10, scope: !3392)
!3415 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3414)
!3416 = !DILocation(line: 329, column: 3, scope: !3392)
!3417 = distinct !DISubprogram(name: "xstrdup", scope: !722, file: !722, line: 335, type: !985, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3418)
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "string", arg: 1, scope: !3417, file: !722, line: 335, type: !105)
!3420 = !DILocation(line: 0, scope: !3417)
!3421 = !DILocation(line: 337, column: 27, scope: !3417)
!3422 = !DILocation(line: 337, column: 43, scope: !3417)
!3423 = !DILocation(line: 0, scope: !3347, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 337, column: 10, scope: !3417)
!3425 = !DILocation(line: 0, scope: !3041, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 312, column: 18, scope: !3347, inlinedAt: !3424)
!3427 = !DILocation(line: 49, column: 25, scope: !3041, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3022, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 49, column: 10, scope: !3041, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3029, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3022, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3029, inlinedAt: !3429)
!3433 = !DILocation(line: 0, scope: !3363, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 312, column: 10, scope: !3347, inlinedAt: !3424)
!3435 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3434)
!3436 = !DILocation(line: 337, column: 3, scope: !3417)
!3437 = distinct !DISubprogram(name: "xalloc_die", scope: !680, file: !680, line: 32, type: !423, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3438)
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "__errstatus", scope: !3440, file: !680, line: 34, type: !3441)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !680, line: 34, column: 3)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3442 = !DILocation(line: 34, column: 3, scope: !3440)
!3443 = !DILocation(line: 0, scope: !3440)
!3444 = !DILocation(line: 40, column: 3, scope: !3437)
!3445 = distinct !DISubprogram(name: "last_component", scope: !758, file: !758, line: 29, type: !985, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3446)
!3446 = !{!3447, !3448, !3449, !3450}
!3447 = !DILocalVariable(name: "name", arg: 1, scope: !3445, file: !758, line: 29, type: !105)
!3448 = !DILocalVariable(name: "base", scope: !3445, file: !758, line: 31, type: !105)
!3449 = !DILocalVariable(name: "last_was_slash", scope: !3445, file: !758, line: 35, type: !143)
!3450 = !DILocalVariable(name: "p", scope: !3451, file: !758, line: 36, type: !105)
!3451 = distinct !DILexicalBlock(scope: !3445, file: !758, line: 36, column: 3)
!3452 = !DILocation(line: 0, scope: !3445)
!3453 = !DILocation(line: 32, column: 3, scope: !3445)
!3454 = !DILocation(line: 32, column: 10, scope: !3445)
!3455 = !DILocation(line: 33, column: 9, scope: !3445)
!3456 = distinct !{!3456, !3453, !3455, !909}
!3457 = !DILocation(line: 36, column: 30, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3451, file: !758, line: 36, column: 3)
!3459 = !DILocation(line: 31, column: 15, scope: !3445)
!3460 = !DILocation(line: 36, scope: !3451)
!3461 = !DILocation(line: 0, scope: !3451)
!3462 = !DILocation(line: 36, column: 3, scope: !3451)
!3463 = !DILocation(line: 47, column: 3, scope: !3445)
!3464 = !DILocation(line: 40, column: 16, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !758, line: 38, column: 11)
!3466 = distinct !DILexicalBlock(scope: !3458, file: !758, line: 37, column: 5)
!3467 = !DILocation(line: 36, column: 35, scope: !3458)
!3468 = !DILocation(line: 36, column: 3, scope: !3458)
!3469 = distinct !{!3469, !3462, !3470, !909}
!3470 = !DILocation(line: 45, column: 5, scope: !3451)
!3471 = distinct !DISubprogram(name: "base_len", scope: !758, file: !758, line: 51, type: !3472, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!102, !105}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "name", arg: 1, scope: !3471, file: !758, line: 51, type: !105)
!3476 = !DILocalVariable(name: "len", scope: !3471, file: !758, line: 53, type: !102)
!3477 = !DILocalVariable(name: "prefix_len", scope: !3471, file: !758, line: 61, type: !102)
!3478 = !DILocation(line: 0, scope: !3471)
!3479 = !DILocation(line: 54, column: 14, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3471, file: !758, line: 54, column: 3)
!3481 = !DILocation(line: 54, column: 8, scope: !3480)
!3482 = !DILocation(line: 54, scope: !3480)
!3483 = !DILocation(line: 54, column: 32, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3480, file: !758, line: 54, column: 3)
!3485 = !DILocation(line: 54, column: 38, scope: !3484)
!3486 = !DILocation(line: 54, column: 41, scope: !3484)
!3487 = !DILocation(line: 54, column: 3, scope: !3480)
!3488 = distinct !{!3488, !3487, !3489, !909}
!3489 = !DILocation(line: 55, column: 5, scope: !3480)
!3490 = !DILocation(line: 66, column: 3, scope: !3471)
!3491 = distinct !DISubprogram(name: "close_stream", scope: !760, file: !760, line: 55, type: !3492, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3528)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!78, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3496, file: !160, line: 51, baseType: !78, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3496, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3496, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3496, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3496, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3496, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3496, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3496, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3496, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3496, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3496, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3496, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3496, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3496, file: !160, line: 70, baseType: !3512, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3496, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3496, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3496, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3496, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3496, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3496, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3496, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3496, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3496, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3496, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3496, file: !160, line: 93, baseType: !3512, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3496, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3496, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3496, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3496, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3528 = !{!3529, !3530, !3532, !3533}
!3529 = !DILocalVariable(name: "stream", arg: 1, scope: !3491, file: !760, line: 55, type: !3494)
!3530 = !DILocalVariable(name: "some_pending", scope: !3491, file: !760, line: 57, type: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3532 = !DILocalVariable(name: "prev_fail", scope: !3491, file: !760, line: 58, type: !3531)
!3533 = !DILocalVariable(name: "fclose_fail", scope: !3491, file: !760, line: 59, type: !3531)
!3534 = !DILocation(line: 0, scope: !3491)
!3535 = !DILocation(line: 57, column: 30, scope: !3491)
!3536 = !DILocalVariable(name: "__stream", arg: 1, scope: !3537, file: !1134, line: 135, type: !3494)
!3537 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1134, file: !1134, line: 135, type: !3492, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3538)
!3538 = !{!3536}
!3539 = !DILocation(line: 0, scope: !3537, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 58, column: 27, scope: !3491)
!3541 = !DILocation(line: 137, column: 10, scope: !3537, inlinedAt: !3540)
!3542 = !{!1142, !863, i64 0}
!3543 = !DILocation(line: 58, column: 43, scope: !3491)
!3544 = !DILocation(line: 59, column: 29, scope: !3491)
!3545 = !DILocation(line: 59, column: 45, scope: !3491)
!3546 = !DILocation(line: 69, column: 17, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3491, file: !760, line: 69, column: 7)
!3548 = !DILocation(line: 57, column: 50, scope: !3491)
!3549 = !DILocation(line: 69, column: 33, scope: !3547)
!3550 = !DILocation(line: 69, column: 53, scope: !3547)
!3551 = !DILocation(line: 69, column: 59, scope: !3547)
!3552 = !DILocation(line: 69, column: 7, scope: !3491)
!3553 = !DILocation(line: 71, column: 11, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3547, file: !760, line: 70, column: 5)
!3555 = !DILocation(line: 72, column: 9, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3554, file: !760, line: 71, column: 11)
!3557 = !DILocation(line: 72, column: 15, scope: !3556)
!3558 = !DILocation(line: 77, column: 1, scope: !3491)
!3559 = !DISubprogram(name: "__fpending", scope: !3560, file: !3560, line: 75, type: !3561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3560 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!102, !3494}
!3563 = distinct !DISubprogram(name: "rpl_fclose", scope: !762, file: !762, line: 58, type: !3564, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3600)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!78, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3568, file: !160, line: 51, baseType: !78, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3568, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3568, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3568, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3568, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3568, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3568, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3568, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3568, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3568, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3568, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3568, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3568, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3568, file: !160, line: 70, baseType: !3584, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3568, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3568, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3568, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3568, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3568, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3568, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3568, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3568, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3568, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3568, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3568, file: !160, line: 93, baseType: !3584, size: 64, offset: 1344)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3568, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3568, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3568, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3568, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3600 = !{!3601, !3602, !3603, !3604}
!3601 = !DILocalVariable(name: "fp", arg: 1, scope: !3563, file: !762, line: 58, type: !3566)
!3602 = !DILocalVariable(name: "saved_errno", scope: !3563, file: !762, line: 60, type: !78)
!3603 = !DILocalVariable(name: "fd", scope: !3563, file: !762, line: 63, type: !78)
!3604 = !DILocalVariable(name: "result", scope: !3563, file: !762, line: 74, type: !78)
!3605 = !DILocation(line: 0, scope: !3563)
!3606 = !DILocation(line: 63, column: 12, scope: !3563)
!3607 = !DILocation(line: 64, column: 10, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3563, file: !762, line: 64, column: 7)
!3609 = !DILocation(line: 64, column: 7, scope: !3563)
!3610 = !DILocation(line: 65, column: 12, scope: !3608)
!3611 = !DILocation(line: 65, column: 5, scope: !3608)
!3612 = !DILocation(line: 70, column: 9, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3563, file: !762, line: 70, column: 7)
!3614 = !DILocation(line: 70, column: 23, scope: !3613)
!3615 = !DILocation(line: 70, column: 33, scope: !3613)
!3616 = !DILocation(line: 70, column: 26, scope: !3613)
!3617 = !DILocation(line: 70, column: 59, scope: !3613)
!3618 = !DILocation(line: 71, column: 7, scope: !3613)
!3619 = !DILocation(line: 71, column: 10, scope: !3613)
!3620 = !DILocation(line: 70, column: 7, scope: !3563)
!3621 = !DILocation(line: 100, column: 12, scope: !3563)
!3622 = !DILocation(line: 105, column: 7, scope: !3563)
!3623 = !DILocation(line: 72, column: 19, scope: !3613)
!3624 = !DILocation(line: 105, column: 19, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3563, file: !762, line: 105, column: 7)
!3626 = !DILocation(line: 107, column: 13, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3625, file: !762, line: 106, column: 5)
!3628 = !DILocation(line: 109, column: 5, scope: !3627)
!3629 = !DILocation(line: 112, column: 1, scope: !3563)
!3630 = !DISubprogram(name: "fileno", scope: !382, file: !382, line: 809, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3631 = !DISubprogram(name: "fclose", scope: !382, file: !382, line: 178, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3632 = !DISubprogram(name: "__freading", scope: !3560, file: !3560, line: 51, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3633 = !DISubprogram(name: "lseek", scope: !1211, file: !1211, line: 339, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!182, !78, !182, !78}
!3636 = distinct !DISubprogram(name: "rpl_fflush", scope: !764, file: !764, line: 130, type: !3637, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3673)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!78, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3641, file: !160, line: 51, baseType: !78, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3641, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3641, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3641, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3641, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3641, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3641, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3641, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3641, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3641, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3641, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3641, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3641, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3641, file: !160, line: 70, baseType: !3657, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3641, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3641, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3641, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3641, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3641, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3641, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3641, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3641, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3641, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3641, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3641, file: !160, line: 93, baseType: !3657, size: 64, offset: 1344)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3641, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3641, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3641, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3641, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3673 = !{!3674}
!3674 = !DILocalVariable(name: "stream", arg: 1, scope: !3636, file: !764, line: 130, type: !3639)
!3675 = !DILocation(line: 0, scope: !3636)
!3676 = !DILocation(line: 151, column: 14, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3636, file: !764, line: 151, column: 7)
!3678 = !DILocation(line: 151, column: 22, scope: !3677)
!3679 = !DILocation(line: 151, column: 27, scope: !3677)
!3680 = !DILocation(line: 151, column: 7, scope: !3636)
!3681 = !DILocation(line: 152, column: 12, scope: !3677)
!3682 = !DILocation(line: 152, column: 5, scope: !3677)
!3683 = !DILocalVariable(name: "fp", arg: 1, scope: !3684, file: !764, line: 42, type: !3639)
!3684 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !764, file: !764, line: 42, type: !3685, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !3639}
!3687 = !{!3683}
!3688 = !DILocation(line: 0, scope: !3684, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 157, column: 3, scope: !3636)
!3690 = !DILocation(line: 44, column: 12, scope: !3691, inlinedAt: !3689)
!3691 = distinct !DILexicalBlock(scope: !3684, file: !764, line: 44, column: 7)
!3692 = !DILocation(line: 44, column: 19, scope: !3691, inlinedAt: !3689)
!3693 = !DILocation(line: 44, column: 7, scope: !3684, inlinedAt: !3689)
!3694 = !DILocation(line: 46, column: 5, scope: !3691, inlinedAt: !3689)
!3695 = !DILocation(line: 159, column: 10, scope: !3636)
!3696 = !DILocation(line: 159, column: 3, scope: !3636)
!3697 = !DILocation(line: 236, column: 1, scope: !3636)
!3698 = !DISubprogram(name: "fflush", scope: !382, file: !382, line: 230, type: !3637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3699 = distinct !DISubprogram(name: "rpl_fseeko", scope: !766, file: !766, line: 28, type: !3700, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3737)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!78, !3702, !3736, !78}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3704, file: !160, line: 51, baseType: !78, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3704, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3704, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3704, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3704, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3704, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3704, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3704, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3704, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3704, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3704, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3704, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3704, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3704, file: !160, line: 70, baseType: !3720, size: 64, offset: 832)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3704, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3704, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3704, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3704, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3704, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3704, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3704, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3704, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3704, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3704, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3704, file: !160, line: 93, baseType: !3720, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3704, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3704, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3704, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3704, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !382, line: 63, baseType: !182)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "fp", arg: 1, scope: !3699, file: !766, line: 28, type: !3702)
!3739 = !DILocalVariable(name: "offset", arg: 2, scope: !3699, file: !766, line: 28, type: !3736)
!3740 = !DILocalVariable(name: "whence", arg: 3, scope: !3699, file: !766, line: 28, type: !78)
!3741 = !DILocalVariable(name: "pos", scope: !3742, file: !766, line: 123, type: !3736)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !766, line: 119, column: 5)
!3743 = distinct !DILexicalBlock(scope: !3699, file: !766, line: 55, column: 7)
!3744 = !DILocation(line: 0, scope: !3699)
!3745 = !DILocation(line: 55, column: 12, scope: !3743)
!3746 = !{!1142, !796, i64 16}
!3747 = !DILocation(line: 55, column: 33, scope: !3743)
!3748 = !{!1142, !796, i64 8}
!3749 = !DILocation(line: 55, column: 25, scope: !3743)
!3750 = !DILocation(line: 56, column: 7, scope: !3743)
!3751 = !DILocation(line: 56, column: 15, scope: !3743)
!3752 = !DILocation(line: 56, column: 37, scope: !3743)
!3753 = !{!1142, !796, i64 32}
!3754 = !DILocation(line: 56, column: 29, scope: !3743)
!3755 = !DILocation(line: 57, column: 7, scope: !3743)
!3756 = !DILocation(line: 57, column: 15, scope: !3743)
!3757 = !{!1142, !796, i64 72}
!3758 = !DILocation(line: 57, column: 29, scope: !3743)
!3759 = !DILocation(line: 55, column: 7, scope: !3699)
!3760 = !DILocation(line: 123, column: 26, scope: !3742)
!3761 = !DILocation(line: 123, column: 19, scope: !3742)
!3762 = !DILocation(line: 0, scope: !3742)
!3763 = !DILocation(line: 124, column: 15, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3742, file: !766, line: 124, column: 11)
!3765 = !DILocation(line: 124, column: 11, scope: !3742)
!3766 = !DILocation(line: 135, column: 19, scope: !3742)
!3767 = !DILocation(line: 136, column: 12, scope: !3742)
!3768 = !DILocation(line: 136, column: 20, scope: !3742)
!3769 = !{!1142, !1143, i64 144}
!3770 = !DILocation(line: 167, column: 7, scope: !3742)
!3771 = !DILocation(line: 169, column: 10, scope: !3699)
!3772 = !DILocation(line: 169, column: 3, scope: !3699)
!3773 = !DILocation(line: 170, column: 1, scope: !3699)
!3774 = !DISubprogram(name: "fseeko", scope: !382, file: !382, line: 736, type: !3775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!78, !3702, !182, !78}
!3777 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !687, file: !687, line: 100, type: !3778, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3781)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!102, !1556, !105, !102, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!3781 = !{!3782, !3783, !3784, !3785, !3786}
!3782 = !DILocalVariable(name: "pwc", arg: 1, scope: !3777, file: !687, line: 100, type: !1556)
!3783 = !DILocalVariable(name: "s", arg: 2, scope: !3777, file: !687, line: 100, type: !105)
!3784 = !DILocalVariable(name: "n", arg: 3, scope: !3777, file: !687, line: 100, type: !102)
!3785 = !DILocalVariable(name: "ps", arg: 4, scope: !3777, file: !687, line: 100, type: !3780)
!3786 = !DILocalVariable(name: "ret", scope: !3777, file: !687, line: 130, type: !102)
!3787 = !DILocation(line: 0, scope: !3777)
!3788 = !DILocation(line: 105, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3777, file: !687, line: 105, column: 7)
!3790 = !DILocation(line: 105, column: 7, scope: !3777)
!3791 = !DILocation(line: 117, column: 10, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3777, file: !687, line: 117, column: 7)
!3793 = !DILocation(line: 117, column: 7, scope: !3777)
!3794 = !DILocation(line: 130, column: 16, scope: !3777)
!3795 = !DILocation(line: 135, column: 11, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3777, file: !687, line: 135, column: 7)
!3797 = !DILocation(line: 135, column: 25, scope: !3796)
!3798 = !DILocation(line: 135, column: 30, scope: !3796)
!3799 = !DILocation(line: 135, column: 7, scope: !3777)
!3800 = !DILocalVariable(name: "ps", arg: 1, scope: !3801, file: !1530, line: 1135, type: !3780)
!3801 = distinct !DISubprogram(name: "mbszero", scope: !1530, file: !1530, line: 1135, type: !3802, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3780}
!3804 = !{!3800}
!3805 = !DILocation(line: 0, scope: !3801, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 137, column: 5, scope: !3796)
!3807 = !DILocalVariable(name: "__dest", arg: 1, scope: !3808, file: !1236, line: 57, type: !100)
!3808 = distinct !DISubprogram(name: "memset", scope: !1236, file: !1236, line: 57, type: !1539, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3809)
!3809 = !{!3807, !3810, !3811}
!3810 = !DILocalVariable(name: "__ch", arg: 2, scope: !3808, file: !1236, line: 57, type: !78)
!3811 = !DILocalVariable(name: "__len", arg: 3, scope: !3808, file: !1236, line: 57, type: !102)
!3812 = !DILocation(line: 0, scope: !3808, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 1137, column: 3, scope: !3801, inlinedAt: !3806)
!3814 = !DILocation(line: 59, column: 10, scope: !3808, inlinedAt: !3813)
!3815 = !DILocation(line: 137, column: 5, scope: !3796)
!3816 = !DILocation(line: 138, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3777, file: !687, line: 138, column: 7)
!3818 = !DILocation(line: 138, column: 7, scope: !3777)
!3819 = !DILocation(line: 139, column: 5, scope: !3817)
!3820 = !DILocation(line: 143, column: 26, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3777, file: !687, line: 143, column: 7)
!3822 = !DILocation(line: 143, column: 41, scope: !3821)
!3823 = !DILocation(line: 143, column: 7, scope: !3777)
!3824 = !DILocation(line: 145, column: 15, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !687, line: 145, column: 11)
!3826 = distinct !DILexicalBlock(scope: !3821, file: !687, line: 144, column: 5)
!3827 = !DILocation(line: 145, column: 11, scope: !3826)
!3828 = !DILocation(line: 146, column: 32, scope: !3825)
!3829 = !DILocation(line: 146, column: 16, scope: !3825)
!3830 = !DILocation(line: 146, column: 14, scope: !3825)
!3831 = !DILocation(line: 146, column: 9, scope: !3825)
!3832 = !DILocation(line: 286, column: 1, scope: !3777)
!3833 = !DISubprogram(name: "mbsinit", scope: !3834, file: !3834, line: 293, type: !3835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3834 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!78, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!3839 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !768, file: !768, line: 27, type: !3006, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3840)
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = !DILocalVariable(name: "ptr", arg: 1, scope: !3839, file: !768, line: 27, type: !100)
!3842 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3839, file: !768, line: 27, type: !102)
!3843 = !DILocalVariable(name: "size", arg: 3, scope: !3839, file: !768, line: 27, type: !102)
!3844 = !DILocalVariable(name: "nbytes", scope: !3839, file: !768, line: 29, type: !102)
!3845 = !DILocation(line: 0, scope: !3839)
!3846 = !DILocation(line: 30, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3839, file: !768, line: 30, column: 7)
!3848 = !DILocalVariable(name: "ptr", arg: 1, scope: !3849, file: !3098, line: 2057, type: !100)
!3849 = distinct !DISubprogram(name: "rpl_realloc", scope: !3098, file: !3098, line: 2057, type: !3090, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3850)
!3850 = !{!3848, !3851}
!3851 = !DILocalVariable(name: "size", arg: 2, scope: !3849, file: !3098, line: 2057, type: !102)
!3852 = !DILocation(line: 0, scope: !3849, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 37, column: 10, scope: !3839)
!3854 = !DILocation(line: 2059, column: 24, scope: !3849, inlinedAt: !3853)
!3855 = !DILocation(line: 2059, column: 10, scope: !3849, inlinedAt: !3853)
!3856 = !DILocation(line: 37, column: 3, scope: !3839)
!3857 = !DILocation(line: 32, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3847, file: !768, line: 31, column: 5)
!3859 = !DILocation(line: 32, column: 13, scope: !3858)
!3860 = !DILocation(line: 33, column: 7, scope: !3858)
!3861 = !DILocation(line: 38, column: 1, scope: !3839)
!3862 = distinct !DISubprogram(name: "hard_locale", scope: !705, file: !705, line: 28, type: !3863, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!143, !78}
!3865 = !{!3866, !3867}
!3866 = !DILocalVariable(name: "category", arg: 1, scope: !3862, file: !705, line: 28, type: !78)
!3867 = !DILocalVariable(name: "locale", scope: !3862, file: !705, line: 30, type: !3868)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3869)
!3869 = !{!3870}
!3870 = !DISubrange(count: 257)
!3871 = !DILocation(line: 0, scope: !3862)
!3872 = !DILocation(line: 30, column: 3, scope: !3862)
!3873 = !DILocation(line: 30, column: 8, scope: !3862)
!3874 = !DILocation(line: 32, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3862, file: !705, line: 32, column: 7)
!3876 = !DILocation(line: 32, column: 7, scope: !3862)
!3877 = !DILocalVariable(name: "__s1", arg: 1, scope: !3878, file: !875, line: 1359, type: !105)
!3878 = distinct !DISubprogram(name: "streq", scope: !875, file: !875, line: 1359, type: !876, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3879)
!3879 = !{!3877, !3880}
!3880 = !DILocalVariable(name: "__s2", arg: 2, scope: !3878, file: !875, line: 1359, type: !105)
!3881 = !DILocation(line: 0, scope: !3878, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 35, column: 9, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3862, file: !705, line: 35, column: 7)
!3884 = !DILocation(line: 1361, column: 11, scope: !3878, inlinedAt: !3882)
!3885 = !DILocation(line: 1361, column: 10, scope: !3878, inlinedAt: !3882)
!3886 = !DILocation(line: 35, column: 29, scope: !3883)
!3887 = !DILocation(line: 0, scope: !3878, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 35, column: 32, scope: !3883)
!3889 = !DILocation(line: 1361, column: 11, scope: !3878, inlinedAt: !3888)
!3890 = !DILocation(line: 1361, column: 10, scope: !3878, inlinedAt: !3888)
!3891 = !DILocation(line: 35, column: 7, scope: !3862)
!3892 = !DILocation(line: 46, column: 3, scope: !3862)
!3893 = !DILocation(line: 47, column: 1, scope: !3862)
!3894 = distinct !DISubprogram(name: "setlocale_null_r", scope: !773, file: !773, line: 154, type: !3895, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!78, !78, !99, !102}
!3897 = !{!3898, !3899, !3900}
!3898 = !DILocalVariable(name: "category", arg: 1, scope: !3894, file: !773, line: 154, type: !78)
!3899 = !DILocalVariable(name: "buf", arg: 2, scope: !3894, file: !773, line: 154, type: !99)
!3900 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3894, file: !773, line: 154, type: !102)
!3901 = !DILocation(line: 0, scope: !3894)
!3902 = !DILocation(line: 159, column: 10, scope: !3894)
!3903 = !DILocation(line: 159, column: 3, scope: !3894)
!3904 = distinct !DISubprogram(name: "setlocale_null", scope: !773, file: !773, line: 186, type: !3905, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!105, !78}
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "category", arg: 1, scope: !3904, file: !773, line: 186, type: !78)
!3909 = !DILocation(line: 0, scope: !3904)
!3910 = !DILocation(line: 189, column: 10, scope: !3904)
!3911 = !DILocation(line: 189, column: 3, scope: !3904)
!3912 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !775, file: !775, line: 35, type: !3905, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3913)
!3913 = !{!3914, !3915}
!3914 = !DILocalVariable(name: "category", arg: 1, scope: !3912, file: !775, line: 35, type: !78)
!3915 = !DILocalVariable(name: "result", scope: !3912, file: !775, line: 37, type: !105)
!3916 = !DILocation(line: 0, scope: !3912)
!3917 = !DILocation(line: 37, column: 24, scope: !3912)
!3918 = !DILocation(line: 62, column: 3, scope: !3912)
!3919 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !775, file: !775, line: 66, type: !3895, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925}
!3921 = !DILocalVariable(name: "category", arg: 1, scope: !3919, file: !775, line: 66, type: !78)
!3922 = !DILocalVariable(name: "buf", arg: 2, scope: !3919, file: !775, line: 66, type: !99)
!3923 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3919, file: !775, line: 66, type: !102)
!3924 = !DILocalVariable(name: "result", scope: !3919, file: !775, line: 111, type: !105)
!3925 = !DILocalVariable(name: "length", scope: !3926, file: !775, line: 125, type: !102)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !775, line: 124, column: 5)
!3927 = distinct !DILexicalBlock(scope: !3919, file: !775, line: 113, column: 7)
!3928 = !DILocation(line: 0, scope: !3919)
!3929 = !DILocation(line: 0, scope: !3912, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 111, column: 24, scope: !3919)
!3931 = !DILocation(line: 37, column: 24, scope: !3912, inlinedAt: !3930)
!3932 = !DILocation(line: 113, column: 14, scope: !3927)
!3933 = !DILocation(line: 113, column: 7, scope: !3919)
!3934 = !DILocation(line: 116, column: 19, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !775, line: 116, column: 11)
!3936 = distinct !DILexicalBlock(scope: !3927, file: !775, line: 114, column: 5)
!3937 = !DILocation(line: 116, column: 11, scope: !3936)
!3938 = !DILocation(line: 120, column: 16, scope: !3935)
!3939 = !DILocation(line: 120, column: 9, scope: !3935)
!3940 = !DILocation(line: 125, column: 23, scope: !3926)
!3941 = !DILocation(line: 0, scope: !3926)
!3942 = !DILocation(line: 126, column: 18, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3926, file: !775, line: 126, column: 11)
!3944 = !DILocation(line: 126, column: 11, scope: !3926)
!3945 = !DILocation(line: 128, column: 39, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3943, file: !775, line: 127, column: 9)
!3947 = !DILocalVariable(name: "__dest", arg: 1, scope: !3948, file: !1236, line: 26, type: !1239)
!3948 = distinct !DISubprogram(name: "memcpy", scope: !1236, file: !1236, line: 26, type: !1237, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3949)
!3949 = !{!3947, !3950, !3951}
!3950 = !DILocalVariable(name: "__src", arg: 2, scope: !3948, file: !1236, line: 26, type: !1006)
!3951 = !DILocalVariable(name: "__len", arg: 3, scope: !3948, file: !1236, line: 26, type: !102)
!3952 = !DILocation(line: 0, scope: !3948, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 128, column: 11, scope: !3946)
!3954 = !DILocation(line: 29, column: 10, scope: !3948, inlinedAt: !3953)
!3955 = !DILocation(line: 129, column: 11, scope: !3946)
!3956 = !DILocation(line: 133, column: 23, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !775, line: 133, column: 15)
!3958 = distinct !DILexicalBlock(scope: !3943, file: !775, line: 132, column: 9)
!3959 = !DILocation(line: 133, column: 15, scope: !3958)
!3960 = !DILocation(line: 138, column: 44, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3957, file: !775, line: 134, column: 13)
!3962 = !DILocation(line: 0, scope: !3948, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 138, column: 15, scope: !3961)
!3964 = !DILocation(line: 29, column: 10, scope: !3948, inlinedAt: !3963)
!3965 = !DILocation(line: 139, column: 15, scope: !3961)
!3966 = !DILocation(line: 139, column: 32, scope: !3961)
!3967 = !DILocation(line: 140, column: 13, scope: !3961)
!3968 = !DILocation(line: 0, scope: !3927)
!3969 = !DILocation(line: 145, column: 1, scope: !3919)
