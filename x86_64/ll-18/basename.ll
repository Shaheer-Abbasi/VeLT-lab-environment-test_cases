; ModuleID = 'src/basename.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !405
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !395
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !397
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !399
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !401
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !403
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !407
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !409
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !414
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !419
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !425
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !427
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !429
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !460
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !463
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !465
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !470
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !472
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !474
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !476
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !478
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !480
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !482
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 16, !dbg !484
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !509
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !523
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !561
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !568
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !525
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !570
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !513
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !530
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !532
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !534
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !536
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !538
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !576
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !579
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !581
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !583
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !585
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !587
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !592
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !597
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !599
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !604
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !609
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !614
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !619
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !621
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !626
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !631
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !636
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !641
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !643
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !645
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !647
@.str.21.106 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !649
@.str.22.107 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !651
@.str.23.108 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !653
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !658
@exit_failure = dso_local global i32 1, align 4, !dbg !666
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !672
@.str.1.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.2.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !677
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !679
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !682
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !697

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !779 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !783, metadata !DIExpression()), !dbg !784
  %2 = icmp eq i32 %0, 0, !dbg !785
  br i1 %2, label %8, label %3, !dbg !787

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !788, !tbaa !790
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !788
  %6 = load ptr, ptr @program_name, align 8, !dbg !788, !tbaa !790
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !788
  br label %40, !dbg !788

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !794
  %10 = load ptr, ptr @program_name, align 8, !dbg !794, !tbaa !790
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !794
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !796
  %13 = load ptr, ptr @stdout, align 8, !dbg !796, !tbaa !790
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !796
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !797
  %16 = load ptr, ptr @stdout, align 8, !dbg !797, !tbaa !790
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !797
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !800
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !800
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !801
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !801
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !802
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !802
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !803
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !803
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !804
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !804
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !805
  %24 = load ptr, ptr @program_name, align 8, !dbg !805, !tbaa !790
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %23, ptr noundef %24, ptr noundef %24, ptr noundef %24, ptr noundef %24) #39, !dbg !805
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !806, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata !825, metadata !819, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr poison, metadata !818, metadata !DIExpression()), !dbg !823
  tail call void @emit_bug_reporting_address() #39, !dbg !826
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !827
  call void @llvm.dbg.value(metadata ptr %26, metadata !821, metadata !DIExpression()), !dbg !823
  %27 = icmp eq ptr %26, null, !dbg !828
  br i1 %27, label %35, label %28, !dbg !830

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !831
  %30 = icmp eq i32 %29, 0, !dbg !831
  br i1 %30, label %35, label %31, !dbg !832

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !833
  %33 = load ptr, ptr @stdout, align 8, !dbg !833, !tbaa !790
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !833
  br label %35, !dbg !835

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !818, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !823
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !836
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !836
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !837
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !837
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !838
  unreachable, !dbg !838
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !839 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !843 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !849 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !852 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !133 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !137, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !138, metadata !DIExpression()), !dbg !856
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !857, !tbaa !858
  %3 = icmp eq i32 %2, -1, !dbg !860
  br i1 %3, label %4, label %16, !dbg !861

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !139, metadata !DIExpression()), !dbg !863
  %6 = icmp eq ptr %5, null, !dbg !864
  br i1 %6, label %14, label %7, !dbg !865

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !866, !tbaa !867
  %9 = icmp eq i8 %8, 0, !dbg !866
  br i1 %9, label %14, label %10, !dbg !868

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !869, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !878
  %12 = icmp eq i32 %11, 0, !dbg !879
  %13 = zext i1 %12 to i32, !dbg !868
  br label %14, !dbg !868

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !880, !tbaa !858
  br label %16, !dbg !881

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !882
  %18 = icmp eq i32 %17, 0, !dbg !882
  br i1 %18, label %22, label %19, !dbg !884

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !790
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !885
  br label %124, !dbg !887

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !142, metadata !DIExpression()), !dbg !856
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !888
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !889
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !144, metadata !DIExpression()), !dbg !856
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !145, metadata !DIExpression()), !dbg !856
  %26 = icmp eq ptr %25, null, !dbg !891
  br i1 %26, label %54, label %27, !dbg !892

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !893
  br i1 %28, label %54, label %29, !dbg !894

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !146, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()), !dbg !895
  %30 = icmp ult ptr %24, %25, !dbg !896
  br i1 %30, label %31, label %54, !dbg !897

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !856
  %33 = load ptr, ptr %32, align 8, !tbaa !790
  br label %34, !dbg !897

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !146, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !150, metadata !DIExpression()), !dbg !895
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !898
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !146, metadata !DIExpression()), !dbg !895
  %38 = load i8, ptr %35, align 1, !dbg !898, !tbaa !867
  %39 = sext i8 %38 to i64, !dbg !898
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !898
  %41 = load i16, ptr %40, align 2, !dbg !898, !tbaa !899
  %42 = freeze i16 %41, !dbg !901
  %43 = lshr i16 %42, 13, !dbg !901
  %44 = and i16 %43, 1, !dbg !901
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !902
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !150, metadata !DIExpression()), !dbg !895
  %47 = icmp ult ptr %37, %25, !dbg !896
  %48 = icmp ult i64 %46, 2, !dbg !903
  %49 = select i1 %47, i1 %48, i1 false, !dbg !903
  br i1 %49, label %34, label %50, !dbg !897, !llvm.loop !904

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !906
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !908
  %53 = zext i1 %51 to i8, !dbg !908
  br label %54, !dbg !908

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !856
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !142, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !145, metadata !DIExpression()), !dbg !856
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #40, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !151, metadata !DIExpression()), !dbg !856
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !152, metadata !DIExpression()), !dbg !856
  br label %59, !dbg !911

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !856
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !142, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !152, metadata !DIExpression()), !dbg !856
  %62 = load i8, ptr %60, align 1, !dbg !912, !tbaa !867
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !913

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !914
  %65 = load i8, ptr %64, align 1, !dbg !917, !tbaa !867
  %66 = icmp eq i8 %65, 45, !dbg !918
  %67 = select i1 %66, i8 0, i8 %61, !dbg !919
  br label %68, !dbg !919

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !142, metadata !DIExpression()), !dbg !856
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !920
  %71 = load ptr, ptr %70, align 8, !dbg !920, !tbaa !790
  %72 = sext i8 %62 to i64, !dbg !920
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !920
  %74 = load i16, ptr %73, align 2, !dbg !920, !tbaa !899
  %75 = and i16 %74, 8192, !dbg !920
  %76 = icmp eq i16 %75, 0, !dbg !920
  br i1 %76, label %92, label %77, !dbg !922

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !923
  br i1 %78, label %94, label %79, !dbg !926

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !927
  %81 = load i8, ptr %80, align 1, !dbg !927, !tbaa !867
  %82 = sext i8 %81 to i64, !dbg !927
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !927
  %84 = load i16, ptr %83, align 2, !dbg !927, !tbaa !899
  %85 = and i16 %84, 8192, !dbg !927
  %86 = icmp eq i16 %85, 0, !dbg !927
  br i1 %86, label %87, label %94, !dbg !928

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !929
  %89 = icmp ne i8 %88, 0, !dbg !929
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !931
  br i1 %91, label %92, label %94, !dbg !931

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !152, metadata !DIExpression()), !dbg !856
  br label %59, !dbg !911, !llvm.loop !933

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !935
  %96 = load ptr, ptr @stdout, align 8, !dbg !935, !tbaa !790
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !825, metadata !875, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !856
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !956
  %99 = icmp eq i32 %98, 0, !dbg !956
  br i1 %99, label %103, label %100, !dbg !958

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !959
  %102 = icmp eq i32 %101, 0, !dbg !959
  br i1 %102, label %103, label %106, !dbg !960

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !961
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !961
  br label %109, !dbg !963

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !964
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !964
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !790
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !966
  %112 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !790
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %112), !dbg !967
  %114 = ptrtoint ptr %60 to i64, !dbg !968
  %115 = sub i64 %114, %95, !dbg !968
  %116 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !790
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !968
  %118 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !790
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !969
  %120 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !790
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %120), !dbg !970
  %122 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !790
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !971
  br label %124, !dbg !972

124:                                              ; preds = %109, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1008 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1013, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1015, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1016, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1017, metadata !DIExpression()), !dbg !1020
  %3 = load ptr, ptr %1, align 8, !dbg !1021, !tbaa !790
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1022
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #39, !dbg !1023
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #39, !dbg !1024
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #39, !dbg !1025
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1026
  br label %8, !dbg !1027

8:                                                ; preds = %2, %18
  %9 = phi i8 [ 0, %2 ], [ 1, %18 ]
  %10 = phi i8 [ 0, %2 ], [ %19, %18 ]
  %11 = phi ptr [ null, %2 ], [ %20, %18 ]
  br label %12, !dbg !1028

12:                                               ; preds = %8, %27
  %13 = phi i8 [ 1, %27 ], [ %9, %8 ]
  %14 = phi i8 [ %28, %27 ], [ %10, %8 ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1017, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1016, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1015, metadata !DIExpression()), !dbg !1020
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1029
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1018, metadata !DIExpression()), !dbg !1030
  switch i32 %15, label %26 [
    i32 -1, label %29
    i32 115, label %18
    i32 97, label %27
    i32 122, label %16
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1028

16:                                               ; preds = %12, %16
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1017, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1016, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1015, metadata !DIExpression()), !dbg !1020
  %17 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1029
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1018, metadata !DIExpression()), !dbg !1030
  switch i32 %17, label %26 [
    i32 -1, label %31
    i32 115, label %18
    i32 97, label %27
    i32 122, label %16
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1028, !llvm.loop !1031

18:                                               ; preds = %12, %16
  %19 = phi i8 [ 1, %16 ], [ %14, %12 ], !dbg !1033
  %20 = load ptr, ptr @optarg, align 8, !dbg !1034, !tbaa !790
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1017, metadata !DIExpression()), !dbg !1020
  br label %8, !dbg !1036

21:                                               ; preds = %12, %16
  tail call void @usage(i32 noundef 0) #43, !dbg !1037
  unreachable, !dbg !1037

22:                                               ; preds = %12, %16
  %23 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !790
  %24 = load ptr, ptr @Version, align 8, !dbg !1038, !tbaa !790
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #39, !dbg !1038
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %24, ptr noundef %25, ptr noundef null) #39, !dbg !1038
  tail call void @exit(i32 noundef 0) #41, !dbg !1038
  unreachable, !dbg !1038

26:                                               ; preds = %12, %16
  tail call void @usage(i32 noundef 1) #43, !dbg !1039
  unreachable, !dbg !1039

27:                                               ; preds = %16, %12
  %28 = phi i8 [ %14, %12 ], [ 1, %16 ], !dbg !1033
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1017, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1016, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1015, metadata !DIExpression()), !dbg !1020
  br label %12, !dbg !1040

29:                                               ; preds = %12
  %30 = icmp ne i8 %14, 0
  br label %31, !dbg !1041

31:                                               ; preds = %16, %29
  %32 = phi i1 [ %30, %29 ], [ true, %16 ], !dbg !1033
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1017, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1016, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1015, metadata !DIExpression()), !dbg !1020
  %33 = load i32, ptr @optind, align 4, !dbg !1041, !tbaa !858
  %34 = icmp slt i32 %33, %0, !dbg !1043
  br i1 %34, label %37, label %35, !dbg !1044

35:                                               ; preds = %31
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1045
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #39, !dbg !1045
  tail call void @usage(i32 noundef 1) #43, !dbg !1047
  unreachable, !dbg !1047

37:                                               ; preds = %31
  %38 = icmp eq i8 %13, 0, !dbg !1048
  %39 = add nsw i32 %33, 2
  %40 = icmp slt i32 %39, %0
  %41 = select i1 %38, i1 %40, i1 false, !dbg !1050
  br i1 %41, label %42, label %50, !dbg !1050

42:                                               ; preds = %37
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1051
  %44 = load i32, ptr @optind, align 4, !dbg !1051, !tbaa !858
  %45 = sext i32 %44 to i64, !dbg !1051
  %46 = getelementptr ptr, ptr %1, i64 %45, !dbg !1051
  %47 = getelementptr ptr, ptr %46, i64 2, !dbg !1051
  %48 = load ptr, ptr %47, align 8, !dbg !1051, !tbaa !790
  %49 = tail call ptr @quote(ptr noundef %48) #39, !dbg !1051
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %43, ptr noundef %49) #39, !dbg !1051
  tail call void @usage(i32 noundef 1) #43, !dbg !1053
  unreachable, !dbg !1053

50:                                               ; preds = %37
  br i1 %38, label %59, label %51, !dbg !1054

51:                                               ; preds = %50, %51
  %52 = phi i32 [ %57, %51 ], [ %33, %50 ]
  %53 = sext i32 %52 to i64, !dbg !1055
  %54 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1055
  %55 = load ptr, ptr %54, align 8, !dbg !1055, !tbaa !790
  tail call fastcc void @perform_basename(ptr noundef %55, ptr noundef %11, i1 noundef zeroext %32), !dbg !1060
  %56 = load i32, ptr @optind, align 4, !dbg !1061, !tbaa !858
  %57 = add nsw i32 %56, 1, !dbg !1061
  store i32 %57, ptr @optind, align 4, !dbg !1061, !tbaa !858
  %58 = icmp slt i32 %57, %0, !dbg !1062
  br i1 %58, label %51, label %69, !dbg !1063, !llvm.loop !1064

59:                                               ; preds = %50
  %60 = sext i32 %33 to i64, !dbg !1066
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !1066
  %62 = load ptr, ptr %61, align 8, !dbg !1066, !tbaa !790
  %63 = icmp eq i32 %39, %0, !dbg !1067
  br i1 %63, label %64, label %67, !dbg !1068

64:                                               ; preds = %59
  %65 = getelementptr ptr, ptr %61, i64 1, !dbg !1069
  %66 = load ptr, ptr %65, align 8, !dbg !1069, !tbaa !790
  br label %67, !dbg !1068

67:                                               ; preds = %59, %64
  %68 = phi ptr [ %66, %64 ], [ null, %59 ], !dbg !1068
  tail call fastcc void @perform_basename(ptr noundef %62, ptr noundef %68, i1 noundef zeroext %32), !dbg !1070
  br label %69

69:                                               ; preds = %51, %67
  ret i32 0, !dbg !1071
}

; Function Attrs: nounwind
declare !dbg !1072 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1075 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1076 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1079 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @perform_basename(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #10 !dbg !1085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1089, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1090, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata i1 %2, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1093
  %4 = tail call noalias nonnull ptr @base_name(ptr noundef %0) #39, !dbg !1094
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1092, metadata !DIExpression()), !dbg !1093
  %5 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef nonnull %4) #39, !dbg !1095
  %6 = icmp eq ptr %1, null, !dbg !1096
  br i1 %6, label %29, label %7, !dbg !1098

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !dbg !1099, !tbaa !867
  %9 = icmp eq i8 %8, 47, !dbg !1099
  br i1 %9, label %29, label %10, !dbg !1100

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %4, metadata !1101, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %1, metadata !1106, metadata !DIExpression()), !dbg !1109
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !1111
  %12 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1112
  call void @llvm.dbg.value(metadata ptr %12, metadata !1107, metadata !DIExpression()), !dbg !1109
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !dbg !1113
  %14 = getelementptr inbounds i8, ptr %1, i64 %13, !dbg !1114
  call void @llvm.dbg.value(metadata ptr %14, metadata !1108, metadata !DIExpression()), !dbg !1109
  br label %15, !dbg !1115

15:                                               ; preds = %21, %10
  %16 = phi ptr [ %12, %10 ], [ %22, %21 ], !dbg !1109
  %17 = phi ptr [ %14, %10 ], [ %24, %21 ], !dbg !1109
  call void @llvm.dbg.value(metadata ptr %17, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %16, metadata !1107, metadata !DIExpression()), !dbg !1109
  %18 = icmp ugt ptr %16, %4, !dbg !1116
  %19 = icmp ugt ptr %17, %1, !dbg !1117
  %20 = select i1 %18, i1 %19, i1 false, !dbg !1117
  br i1 %20, label %21, label %27, !dbg !1115

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %16, i64 -1, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %22, metadata !1107, metadata !DIExpression()), !dbg !1109
  %23 = load i8, ptr %22, align 1, !dbg !1120, !tbaa !867
  %24 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %24, metadata !1108, metadata !DIExpression()), !dbg !1109
  %25 = load i8, ptr %24, align 1, !dbg !1122, !tbaa !867
  %26 = icmp eq i8 %23, %25, !dbg !1123
  br i1 %26, label %15, label %29, !dbg !1124, !llvm.loop !1125

27:                                               ; preds = %15
  br i1 %18, label %28, label %29, !dbg !1127

28:                                               ; preds = %27
  store i8 0, ptr %16, align 1, !dbg !1128, !tbaa !867
  br label %29, !dbg !1130

29:                                               ; preds = %21, %28, %27, %7, %3
  %30 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !790
  %31 = tail call i32 @fputs_unlocked(ptr noundef nonnull %4, ptr noundef %30), !dbg !1131
  %32 = select i1 %2, i32 0, i32 10, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %32, metadata !1133, metadata !DIExpression()), !dbg !1139
  %33 = load ptr, ptr @stdout, align 8, !dbg !1141, !tbaa !790
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1141
  %35 = load ptr, ptr %34, align 8, !dbg !1141, !tbaa !1142
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1141
  %37 = load ptr, ptr %36, align 8, !dbg !1141, !tbaa !1145
  %38 = icmp ult ptr %35, %37, !dbg !1141
  br i1 %38, label %41, label %39, !dbg !1141, !prof !1146

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %32) #39, !dbg !1141
  br label %44, !dbg !1141

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !1141
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1141
  store ptr %43, ptr %34, align 8, !dbg !1141, !tbaa !1142
  store i8 %42, ptr %35, align 1, !dbg !1141, !tbaa !867
  br label %44, !dbg !1141

44:                                               ; preds = %39, %41
  tail call void @free(ptr noundef nonnull %4) #39, !dbg !1147
  ret void, !dbg !1148
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1149 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1152 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1155 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1158 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1160, metadata !DIExpression()), !dbg !1161
  store ptr %0, ptr @file_name, align 8, !dbg !1162, !tbaa !790
  ret void, !dbg !1163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1164 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1170, !tbaa !1171
  ret void, !dbg !1173
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1174 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !790
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1180
  %3 = icmp eq i32 %2, 0, !dbg !1181
  br i1 %3, label %22, label %4, !dbg !1182

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1183, !tbaa !1171, !range !1184, !noundef !825
  %6 = icmp eq i8 %5, 0, !dbg !1183
  br i1 %6, label %11, label %7, !dbg !1185

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1186
  %9 = load i32, ptr %8, align 4, !dbg !1186, !tbaa !858
  %10 = icmp eq i32 %9, 32, !dbg !1187
  br i1 %10, label %22, label %11, !dbg !1188

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #39, !dbg !1189
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1176, metadata !DIExpression()), !dbg !1190
  %13 = load ptr, ptr @file_name, align 8, !dbg !1191, !tbaa !790
  %14 = icmp eq ptr %13, null, !dbg !1191
  %15 = tail call ptr @__errno_location() #42, !dbg !1193
  %16 = load i32, ptr %15, align 4, !dbg !1193, !tbaa !858
  br i1 %14, label %19, label %17, !dbg !1194

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1195
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #39, !dbg !1195
  br label %20, !dbg !1195

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #39, !dbg !1196
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1197, !tbaa !858
  tail call void @_exit(i32 noundef %21) #41, !dbg !1198
  unreachable, !dbg !1198

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1199, !tbaa !790
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1201
  %25 = icmp eq i32 %24, 0, !dbg !1202
  br i1 %25, label %28, label %26, !dbg !1203

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1204, !tbaa !858
  tail call void @_exit(i32 noundef %27) #41, !dbg !1205
  unreachable, !dbg !1205

28:                                               ; preds = %22
  ret void, !dbg !1206
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1207 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1211 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @base_name(ptr noundef %0) local_unnamed_addr #10 !dbg !1213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1215, metadata !DIExpression()), !dbg !1220
  %2 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1216, metadata !DIExpression()), !dbg !1220
  %3 = load i8, ptr %2, align 1, !dbg !1222, !tbaa !867
  %4 = icmp eq i8 %3, 0, !dbg !1222
  br i1 %4, label %12, label %5, !dbg !1224

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(ptr noundef nonnull %2) #40, !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1217, metadata !DIExpression()), !dbg !1220
  %7 = getelementptr inbounds i8, ptr %2, i64 %6, !dbg !1227
  %8 = load i8, ptr %7, align 1, !dbg !1227, !tbaa !867
  %9 = icmp eq i8 %8, 47, !dbg !1227
  %10 = zext i1 %9 to i64
  %11 = add nsw i64 %6, %10, !dbg !1228
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1217, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1218, metadata !DIExpression()), !dbg !1220
  br label %14, !dbg !1229

12:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1216, metadata !DIExpression()), !dbg !1220
  %13 = tail call i64 @base_len(ptr noundef %0) #40, !dbg !1230
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1217, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1218, metadata !DIExpression()), !dbg !1220
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i64 [ %11, %5 ], [ %13, %12 ], !dbg !1232
  %16 = phi ptr [ %2, %5 ], [ %0, %12 ], !dbg !1220
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1216, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1218, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1217, metadata !DIExpression()), !dbg !1220
  %17 = add nsw i64 %15, 1, !dbg !1233
  %18 = tail call noalias nonnull ptr @ximalloc(i64 noundef %17) #44, !dbg !1234
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1219, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %18, metadata !1235, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %16, metadata !1242, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %15, metadata !1243, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %18, ptr noundef nonnull align 1 %16, i64 noundef %15, i1 noundef false) #39, !dbg !1246
  %19 = getelementptr inbounds i8, ptr %18, i64 %15, !dbg !1247
  store i8 0, ptr %19, align 1, !dbg !1248, !tbaa !867
  ret ptr %18, !dbg !1249
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local zeroext i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #15 !dbg !1250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1254, metadata !DIExpression()), !dbg !1258
  %2 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1258
  %3 = load i8, ptr %2, align 1, !dbg !1260, !tbaa !867
  %4 = icmp eq i8 %3, 0, !dbg !1260
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1255, metadata !DIExpression()), !dbg !1258
  %6 = tail call i64 @base_len(ptr noundef %5) #40, !dbg !1263
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1256, metadata !DIExpression()), !dbg !1258
  %8 = load i8, ptr %7, align 1, !dbg !1265, !tbaa !867
  %9 = icmp ne i8 %8, 0, !dbg !1266
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1258
  store i8 0, ptr %7, align 1, !dbg !1267, !tbaa !867
  ret i1 %9, !dbg !1268
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1269 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1274, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1275, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1276, metadata !DIExpression()), !dbg !1277
  tail call fastcc void @flush_stdout(), !dbg !1278
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1279, !tbaa !790
  %6 = icmp eq ptr %5, null, !dbg !1279
  br i1 %6, label %8, label %7, !dbg !1281

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1282
  br label %12, !dbg !1282

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1283, !tbaa !790
  %10 = tail call ptr @getprogname() #40, !dbg !1283
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %10) #39, !dbg !1283
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1285
  ret void, !dbg !1286
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1287 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 1, metadata !1291, metadata !DIExpression()), !dbg !1294
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1297
  %2 = icmp slt i32 %1, 0, !dbg !1298
  br i1 %2, label %6, label %3, !dbg !1299

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1300, !tbaa !790
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1300
  br label %6, !dbg !1300

6:                                                ; preds = %3, %0
  ret void, !dbg !1301
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1302 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1308
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1305, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1306, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1307, metadata !DIExpression()), !dbg !1309
  %6 = load ptr, ptr @stderr, align 8, !dbg !1310, !tbaa !790
  call void @llvm.dbg.value(metadata ptr %6, metadata !1311, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %2, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1353
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1355
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1356, !tbaa !858
  %9 = add i32 %8, 1, !dbg !1356
  store i32 %9, ptr @error_message_count, align 4, !dbg !1356, !tbaa !858
  %10 = icmp eq i32 %1, 0, !dbg !1357
  br i1 %10, label %20, label %11, !dbg !1359

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1360, metadata !DIExpression(), metadata !1308, metadata ptr %5, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %1, metadata !1363, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1370
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %12, metadata !1364, metadata !DIExpression()), !dbg !1368
  %13 = icmp eq ptr %12, null, !dbg !1372
  br i1 %13, label %14, label %16, !dbg !1374

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #39, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %15, metadata !1364, metadata !DIExpression()), !dbg !1368
  br label %16, !dbg !1376

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1368
  call void @llvm.dbg.value(metadata ptr %17, metadata !1364, metadata !DIExpression()), !dbg !1368
  %18 = load ptr, ptr @stderr, align 8, !dbg !1377, !tbaa !790
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %17) #39, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1378
  br label %20, !dbg !1379

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1380, !tbaa !790
  call void @llvm.dbg.value(metadata i32 10, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %21, metadata !1386, metadata !DIExpression()), !dbg !1387
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1389
  %23 = load ptr, ptr %22, align 8, !dbg !1389, !tbaa !1142
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1389
  %25 = load ptr, ptr %24, align 8, !dbg !1389, !tbaa !1145
  %26 = icmp ult ptr %23, %25, !dbg !1389
  br i1 %26, label %29, label %27, !dbg !1389, !prof !1146

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1389
  br label %31, !dbg !1389

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1389
  store ptr %30, ptr %22, align 8, !dbg !1389, !tbaa !1142
  store i8 10, ptr %23, align 1, !dbg !1389, !tbaa !867
  br label %31, !dbg !1389

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !790
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1390
  %34 = icmp eq i32 %0, 0, !dbg !1391
  br i1 %34, label %36, label %35, !dbg !1393

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1394
  unreachable, !dbg !1394

36:                                               ; preds = %31
  ret void, !dbg !1395
}

declare !dbg !1396 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: nounwind
declare !dbg !1399 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #17

declare !dbg !1402 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1405 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1409 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1416, metadata !DIExpression(), metadata !1422, metadata ptr %4, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1414, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1415, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1424
  call void @llvm.va_start(ptr nonnull %4), !dbg !1425
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1426
  call void @llvm.va_end(ptr nonnull %4), !dbg !1427
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1428
  ret void, !dbg !1428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !378 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !389, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !390, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !392, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !393, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !394, metadata !DIExpression()), !dbg !1429
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1430, !tbaa !858
  %8 = icmp eq i32 %7, 0, !dbg !1430
  br i1 %8, label %23, label %9, !dbg !1432

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1433, !tbaa !858
  %11 = icmp eq i32 %10, %3, !dbg !1436
  br i1 %11, label %12, label %22, !dbg !1437

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1438, !tbaa !790
  %14 = icmp eq ptr %13, %2, !dbg !1439
  br i1 %14, label %36, label %15, !dbg !1440

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1441
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1442
  br i1 %18, label %19, label %22, !dbg !1442

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1443
  %21 = icmp eq i32 %20, 0, !dbg !1444
  br i1 %21, label %36, label %22, !dbg !1445

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1446, !tbaa !790
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1447, !tbaa !858
  br label %23, !dbg !1448

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1449
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1450, !tbaa !790
  %25 = icmp eq ptr %24, null, !dbg !1450
  br i1 %25, label %27, label %26, !dbg !1452

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1453
  br label %31, !dbg !1453

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1454, !tbaa !790
  %29 = tail call ptr @getprogname() #40, !dbg !1454
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %29) #39, !dbg !1454
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1456, !tbaa !790
  %33 = icmp eq ptr %2, null, !dbg !1456
  %34 = select i1 %33, ptr @.str.3.41, ptr @.str.2.42, !dbg !1456
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1456
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1457
  br label %36, !dbg !1458

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1458
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1459 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1468, metadata !DIExpression(), metadata !1469, metadata ptr %6, metadata !DIExpression()), !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1463, metadata !DIExpression()), !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1470
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1465, metadata !DIExpression()), !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1466, metadata !DIExpression()), !dbg !1470
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1471
  call void @llvm.va_start(ptr nonnull %6), !dbg !1472
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1473
  call void @llvm.va_end(ptr nonnull %6), !dbg !1474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1475
  ret void, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1476 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1479, !tbaa !790
  ret ptr %1, !dbg !1480
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1483, metadata !DIExpression()), !dbg !1486
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1487
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1484, metadata !DIExpression()), !dbg !1486
  %3 = icmp eq ptr %2, null, !dbg !1488
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1488
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1488
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1485, metadata !DIExpression()), !dbg !1486
  %6 = ptrtoint ptr %5 to i64, !dbg !1489
  %7 = ptrtoint ptr %0 to i64, !dbg !1489
  %8 = sub i64 %6, %7, !dbg !1489
  %9 = icmp sgt i64 %8, 6, !dbg !1491
  br i1 %9, label %10, label %19, !dbg !1492

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %11, metadata !1494, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1499, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 7, metadata !1500, metadata !DIExpression()), !dbg !1501
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !1503
  %13 = icmp eq i32 %12, 0, !dbg !1504
  br i1 %13, label %14, label %19, !dbg !1505

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1483, metadata !DIExpression()), !dbg !1486
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #40, !dbg !1506
  %16 = icmp eq i32 %15, 0, !dbg !1509
  %17 = select i1 %16, i64 3, i64 0, !dbg !1510
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1510
  br label %19, !dbg !1510

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1486
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1485, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1483, metadata !DIExpression()), !dbg !1486
  store ptr %20, ptr @program_name, align 8, !dbg !1511, !tbaa !790
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1512, !tbaa !790
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1513, !tbaa !790
  ret void, !dbg !1514
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1515 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !431 {
  %3 = alloca i32, align 4, !DIAssignID !1516
  call void @llvm.dbg.assign(metadata i1 undef, metadata !441, metadata !DIExpression(), metadata !1516, metadata ptr %3, metadata !DIExpression()), !dbg !1517
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1518
  call void @llvm.dbg.assign(metadata i1 undef, metadata !446, metadata !DIExpression(), metadata !1518, metadata ptr %4, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !438, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !439, metadata !DIExpression()), !dbg !1517
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1519
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !440, metadata !DIExpression()), !dbg !1517
  %6 = icmp eq ptr %5, %0, !dbg !1520
  br i1 %6, label %7, label %14, !dbg !1522

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1523
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %4, metadata !1534, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 0, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 8, metadata !1540, metadata !DIExpression()), !dbg !1541
  store i64 0, ptr %4, align 8, !dbg !1543
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1544
  %9 = icmp eq i64 %8, 2, !dbg !1546
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1547
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1548
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1517
  ret ptr %15, !dbg !1548
}

; Function Attrs: nounwind
declare !dbg !1549 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1555 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1560, metadata !DIExpression()), !dbg !1563
  %2 = tail call ptr @__errno_location() #42, !dbg !1564
  %3 = load i32, ptr %2, align 4, !dbg !1564, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1561, metadata !DIExpression()), !dbg !1563
  %4 = icmp eq ptr %0, null, !dbg !1565
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1565
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1566
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i32 %3, ptr %2, align 4, !dbg !1567, !tbaa !858
  ret ptr %6, !dbg !1568
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1569 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  %2 = icmp eq ptr %0, null, !dbg !1577
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1577
  %4 = load i32, ptr %3, align 8, !dbg !1578, !tbaa !1579
  ret i32 %4, !dbg !1581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1582 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1588
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1587, metadata !DIExpression()), !dbg !1588
  %3 = icmp eq ptr %0, null, !dbg !1589
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1589
  store i32 %1, ptr %4, align 8, !dbg !1590, !tbaa !1579
  ret void, !dbg !1591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1592 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1596, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1597, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1598, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()), !dbg !1604
  %4 = icmp eq ptr %0, null, !dbg !1605
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1605
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1606
  %7 = lshr i8 %1, 5, !dbg !1607
  %8 = zext nneg i8 %7 to i64, !dbg !1607
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1608
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1600, metadata !DIExpression()), !dbg !1604
  %10 = and i8 %1, 31, !dbg !1609
  %11 = zext nneg i8 %10 to i32, !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1602, metadata !DIExpression()), !dbg !1604
  %12 = load i32, ptr %9, align 4, !dbg !1610, !tbaa !858
  %13 = lshr i32 %12, %11, !dbg !1611
  %14 = and i32 %13, 1, !dbg !1612
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1603, metadata !DIExpression()), !dbg !1604
  %15 = xor i32 %13, %2, !dbg !1613
  %16 = and i32 %15, 1, !dbg !1613
  %17 = shl nuw i32 %16, %11, !dbg !1614
  %18 = xor i32 %17, %12, !dbg !1615
  store i32 %18, ptr %9, align 4, !dbg !1615, !tbaa !858
  ret i32 %14, !dbg !1616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1617 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1622, metadata !DIExpression()), !dbg !1624
  %3 = icmp eq ptr %0, null, !dbg !1625
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1621, metadata !DIExpression()), !dbg !1624
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1628
  %6 = load i32, ptr %5, align 4, !dbg !1628, !tbaa !1629
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i32 %1, ptr %5, align 4, !dbg !1630, !tbaa !1629
  ret i32 %6, !dbg !1631
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1632 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1636, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !1639
  %4 = icmp eq ptr %0, null, !dbg !1640
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !1639
  store i32 10, ptr %5, align 8, !dbg !1643, !tbaa !1579
  %6 = icmp ne ptr %1, null, !dbg !1644
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1646
  br i1 %8, label %10, label %9, !dbg !1646

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1647
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1660, metadata !DIExpression()), !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1661, metadata !DIExpression()), !dbg !1668
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1662, metadata !DIExpression()), !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1663, metadata !DIExpression()), !dbg !1668
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1664, metadata !DIExpression()), !dbg !1668
  %6 = icmp eq ptr %4, null, !dbg !1669
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1669
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1665, metadata !DIExpression()), !dbg !1668
  %8 = tail call ptr @__errno_location() #42, !dbg !1670
  %9 = load i32, ptr %8, align 4, !dbg !1670, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1666, metadata !DIExpression()), !dbg !1668
  %10 = load i32, ptr %7, align 8, !dbg !1671, !tbaa !1579
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1672
  %12 = load i32, ptr %11, align 4, !dbg !1672, !tbaa !1629
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1673
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1674
  %15 = load ptr, ptr %14, align 8, !dbg !1674, !tbaa !1650
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1675
  %17 = load ptr, ptr %16, align 8, !dbg !1675, !tbaa !1653
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1667, metadata !DIExpression()), !dbg !1668
  store i32 %9, ptr %8, align 4, !dbg !1677, !tbaa !858
  ret i64 %18, !dbg !1678
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1679 {
  %10 = alloca i32, align 4, !DIAssignID !1747
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1748
  %12 = alloca i32, align 4, !DIAssignID !1749
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1750
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1725, metadata !DIExpression(), metadata !1751, metadata ptr %14, metadata !DIExpression()), !dbg !1752
  %15 = alloca i32, align 4, !DIAssignID !1753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1728, metadata !DIExpression(), metadata !1753, metadata ptr %15, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1685, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1688, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1689, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1690, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1691, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1692, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1693, metadata !DIExpression()), !dbg !1755
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1756
  %17 = icmp eq i64 %16, 1, !dbg !1757
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1694, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1697, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1699, metadata !DIExpression()), !dbg !1755
  %18 = trunc i32 %5 to i8, !dbg !1758
  %19 = lshr i8 %18, 1, !dbg !1758
  %20 = and i8 %19, 1, !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1702, metadata !DIExpression()), !dbg !1755
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1759

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1760
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1761
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1762
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1763
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1755
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1764
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1765
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1702, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1699, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1698, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1697, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1688, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1693, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1692, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1689, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.label(metadata !1703), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1755
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
  ], !dbg !1767

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1689, metadata !DIExpression()), !dbg !1755
  br label %114, !dbg !1768

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1689, metadata !DIExpression()), !dbg !1755
  %43 = and i8 %37, 1, !dbg !1769
  %44 = icmp eq i8 %43, 0, !dbg !1769
  br i1 %44, label %45, label %114, !dbg !1768

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1771
  br i1 %46, label %114, label %47, !dbg !1774

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1771, !tbaa !867
  br label %114, !dbg !1771

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !547, metadata !DIExpression(), metadata !1749, metadata ptr %12, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !548, metadata !DIExpression(), metadata !1750, metadata ptr %13, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !544, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 %29, metadata !545, metadata !DIExpression()), !dbg !1775
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #39, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %49, metadata !546, metadata !DIExpression()), !dbg !1775
  %50 = icmp eq ptr %49, @.str.11.73, !dbg !1780
  br i1 %50, label %51, label %60, !dbg !1782

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1783
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %13, metadata !1785, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %13, metadata !1793, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 8, metadata !1797, metadata !DIExpression()), !dbg !1798
  store i64 0, ptr %13, align 8, !dbg !1800
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1801
  %53 = icmp eq i64 %52, 3, !dbg !1803
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1804
  %57 = icmp eq i32 %29, 9, !dbg !1804
  %58 = select i1 %57, ptr @.str.10.75, ptr @.str.12.76, !dbg !1804
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1805
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1692, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !547, metadata !DIExpression(), metadata !1747, metadata ptr %10, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !548, metadata !DIExpression(), metadata !1748, metadata ptr %11, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !544, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %29, metadata !545, metadata !DIExpression()), !dbg !1806
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #39, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %62, metadata !546, metadata !DIExpression()), !dbg !1806
  %63 = icmp eq ptr %62, @.str.12.76, !dbg !1809
  br i1 %63, label %64, label %73, !dbg !1810

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1812
  call void @llvm.dbg.value(metadata ptr %11, metadata !1785, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata ptr %11, metadata !1793, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 8, metadata !1797, metadata !DIExpression()), !dbg !1815
  store i64 0, ptr %11, align 8, !dbg !1817
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1818
  %66 = icmp eq i64 %65, 3, !dbg !1819
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1820
  %70 = icmp eq i32 %29, 9, !dbg !1820
  %71 = select i1 %70, ptr @.str.10.75, ptr @.str.12.76, !dbg !1820
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1821
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1693, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1692, metadata !DIExpression()), !dbg !1755
  %76 = and i8 %37, 1, !dbg !1822
  %77 = icmp eq i8 %76, 0, !dbg !1822
  br i1 %77, label %78, label %93, !dbg !1823

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1705, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1755
  %79 = load i8, ptr %74, align 1, !dbg !1825, !tbaa !867
  %80 = icmp eq i8 %79, 0, !dbg !1827
  br i1 %80, label %93, label %81, !dbg !1827

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1705, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1695, metadata !DIExpression()), !dbg !1755
  %85 = icmp ult i64 %84, %40, !dbg !1828
  br i1 %85, label %86, label %88, !dbg !1831

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1828
  store i8 %82, ptr %87, align 1, !dbg !1828, !tbaa !867
  br label %88, !dbg !1828

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1695, metadata !DIExpression()), !dbg !1755
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1832
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1705, metadata !DIExpression()), !dbg !1824
  %91 = load i8, ptr %90, align 1, !dbg !1825, !tbaa !867
  %92 = icmp eq i8 %91, 0, !dbg !1827
  br i1 %92, label %93, label %81, !dbg !1827, !llvm.loop !1833

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1699, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1697, metadata !DIExpression()), !dbg !1755
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !1836
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1698, metadata !DIExpression()), !dbg !1755
  br label %114, !dbg !1837

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1699, metadata !DIExpression()), !dbg !1755
  br label %98, !dbg !1838

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1699, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1700, metadata !DIExpression()), !dbg !1755
  br label %98, !dbg !1839

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1763
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1699, metadata !DIExpression()), !dbg !1755
  %101 = and i8 %100, 1, !dbg !1840
  %102 = icmp eq i8 %101, 0, !dbg !1840
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1842
  br label %104, !dbg !1842

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1755
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1699, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1689, metadata !DIExpression()), !dbg !1755
  %107 = and i8 %106, 1, !dbg !1843
  %108 = icmp eq i8 %107, 0, !dbg !1843
  br i1 %108, label %109, label %114, !dbg !1845

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1846
  br i1 %110, label %114, label %111, !dbg !1849

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1846, !tbaa !867
  br label %114, !dbg !1846

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1755
  br label %114, !dbg !1850

113:                                              ; preds = %28
  call void @abort() #41, !dbg !1851
  unreachable, !dbg !1851

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1835
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.75, %45 ], [ @.str.10.75, %47 ], [ @.str.10.75, %42 ], [ %34, %28 ], [ @.str.12.76, %109 ], [ @.str.12.76, %111 ], [ @.str.12.76, %104 ], [ @.str.10.75, %41 ], !dbg !1755
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1755
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1755
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1700, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1699, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1698, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1697, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1693, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1692, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1689, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1852
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
  br label %138, !dbg !1853

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1835
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1760
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1764
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1765
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1854
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1855
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1702, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1688, metadata !DIExpression()), !dbg !1755
  %147 = icmp eq i64 %139, -1, !dbg !1856
  br i1 %147, label %148, label %152, !dbg !1857

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1858
  %150 = load i8, ptr %149, align 1, !dbg !1858, !tbaa !867
  %151 = icmp eq i8 %150, 0, !dbg !1859
  br i1 %151, label %612, label %154, !dbg !1860

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1861
  br i1 %153, label %612, label %154, !dbg !1860

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1862
  br i1 %128, label %155, label %170, !dbg !1863

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1865
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1866
  br i1 %157, label %158, label %160, !dbg !1866

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1688, metadata !DIExpression()), !dbg !1755
  br label %160, !dbg !1868

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1688, metadata !DIExpression()), !dbg !1755
  %162 = icmp ugt i64 %156, %161, !dbg !1869
  br i1 %162, label %170, label %163, !dbg !1870

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %164, metadata !1872, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata ptr %119, metadata !1875, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %120, metadata !1876, metadata !DIExpression()), !dbg !1877
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1879
  %166 = icmp ne i32 %165, 0, !dbg !1880
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1881
  %168 = xor i1 %166, true, !dbg !1881
  %169 = zext i1 %168 to i8, !dbg !1881
  br i1 %167, label %170, label %666, !dbg !1881

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1862
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1688, metadata !DIExpression()), !dbg !1755
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1882
  %175 = load i8, ptr %174, align 1, !dbg !1882, !tbaa !867
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1717, metadata !DIExpression()), !dbg !1862
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
  ], !dbg !1883

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1884

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1885

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1862
  %179 = and i8 %144, 1, !dbg !1889
  %180 = icmp eq i8 %179, 0, !dbg !1889
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1889
  br i1 %181, label %182, label %198, !dbg !1889

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1891
  br i1 %183, label %184, label %186, !dbg !1895

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1891
  store i8 39, ptr %185, align 1, !dbg !1891, !tbaa !867
  br label %186, !dbg !1891

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1695, metadata !DIExpression()), !dbg !1755
  %188 = icmp ult i64 %187, %146, !dbg !1896
  br i1 %188, label %189, label %191, !dbg !1899

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1896
  store i8 36, ptr %190, align 1, !dbg !1896, !tbaa !867
  br label %191, !dbg !1896

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1695, metadata !DIExpression()), !dbg !1755
  %193 = icmp ult i64 %192, %146, !dbg !1900
  br i1 %193, label %194, label %196, !dbg !1903

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1900
  store i8 39, ptr %195, align 1, !dbg !1900, !tbaa !867
  br label %196, !dbg !1900

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %198, !dbg !1904

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1755
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1695, metadata !DIExpression()), !dbg !1755
  %201 = icmp ult i64 %199, %146, !dbg !1905
  br i1 %201, label %202, label %204, !dbg !1908

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1905
  store i8 92, ptr %203, align 1, !dbg !1905, !tbaa !867
  br label %204, !dbg !1905

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1695, metadata !DIExpression()), !dbg !1755
  br i1 %125, label %206, label %476, !dbg !1909

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1911
  %208 = icmp ult i64 %207, %171, !dbg !1912
  br i1 %208, label %209, label %465, !dbg !1913

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1914
  %211 = load i8, ptr %210, align 1, !dbg !1914, !tbaa !867
  %212 = add i8 %211, -48, !dbg !1915
  %213 = icmp ult i8 %212, 10, !dbg !1915
  br i1 %213, label %214, label %465, !dbg !1915

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1916
  br i1 %215, label %216, label %218, !dbg !1920

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1916
  store i8 48, ptr %217, align 1, !dbg !1916, !tbaa !867
  br label %218, !dbg !1916

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1695, metadata !DIExpression()), !dbg !1755
  %220 = icmp ult i64 %219, %146, !dbg !1921
  br i1 %220, label %221, label %223, !dbg !1924

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1921
  store i8 48, ptr %222, align 1, !dbg !1921, !tbaa !867
  br label %223, !dbg !1921

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1695, metadata !DIExpression()), !dbg !1755
  br label %465, !dbg !1925

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1926

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1927

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1928

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1930

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1932
  %231 = icmp ult i64 %230, %171, !dbg !1933
  br i1 %231, label %232, label %465, !dbg !1934

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1935
  %234 = load i8, ptr %233, align 1, !dbg !1935, !tbaa !867
  %235 = icmp eq i8 %234, 63, !dbg !1936
  br i1 %235, label %236, label %465, !dbg !1937

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1938
  %238 = load i8, ptr %237, align 1, !dbg !1938, !tbaa !867
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
  ], !dbg !1939

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1940

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1710, metadata !DIExpression()), !dbg !1852
  %241 = icmp ult i64 %140, %146, !dbg !1942
  br i1 %241, label %242, label %244, !dbg !1945

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1942
  store i8 63, ptr %243, align 1, !dbg !1942, !tbaa !867
  br label %244, !dbg !1942

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1695, metadata !DIExpression()), !dbg !1755
  %246 = icmp ult i64 %245, %146, !dbg !1946
  br i1 %246, label %247, label %249, !dbg !1949

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1946
  store i8 34, ptr %248, align 1, !dbg !1946, !tbaa !867
  br label %249, !dbg !1946

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1695, metadata !DIExpression()), !dbg !1755
  %251 = icmp ult i64 %250, %146, !dbg !1950
  br i1 %251, label %252, label %254, !dbg !1953

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1950
  store i8 34, ptr %253, align 1, !dbg !1950, !tbaa !867
  br label %254, !dbg !1950

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1695, metadata !DIExpression()), !dbg !1755
  %256 = icmp ult i64 %255, %146, !dbg !1954
  br i1 %256, label %257, label %259, !dbg !1957

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1954
  store i8 63, ptr %258, align 1, !dbg !1954, !tbaa !867
  br label %259, !dbg !1954

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1695, metadata !DIExpression()), !dbg !1755
  br label %465, !dbg !1958

261:                                              ; preds = %170
  br label %272, !dbg !1959

262:                                              ; preds = %170
  br label %272, !dbg !1960

263:                                              ; preds = %170
  br label %270, !dbg !1961

264:                                              ; preds = %170
  br label %270, !dbg !1962

265:                                              ; preds = %170
  br label %272, !dbg !1963

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1964

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1965

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1968

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1970

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1971
  call void @llvm.dbg.label(metadata !1718), !dbg !1972
  br i1 %133, label %272, label %655, !dbg !1973

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1971
  call void @llvm.dbg.label(metadata !1721), !dbg !1975
  br i1 %124, label %520, label %476, !dbg !1976

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1977

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1978, !tbaa !867
  %277 = icmp eq i8 %276, 0, !dbg !1980
  br i1 %277, label %278, label %465, !dbg !1981

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1982
  br i1 %279, label %280, label %465, !dbg !1984

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1862
  br label %281, !dbg !1985

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1716, metadata !DIExpression()), !dbg !1862
  br i1 %133, label %465, label %655, !dbg !1986

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1862
  br i1 %132, label %284, label %465, !dbg !1988

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1989

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1992
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1994
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1994
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1696, metadata !DIExpression()), !dbg !1755
  %291 = icmp ult i64 %140, %290, !dbg !1995
  br i1 %291, label %292, label %294, !dbg !1998

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1995
  store i8 39, ptr %293, align 1, !dbg !1995, !tbaa !867
  br label %294, !dbg !1995

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1695, metadata !DIExpression()), !dbg !1755
  %296 = icmp ult i64 %295, %290, !dbg !1999
  br i1 %296, label %297, label %299, !dbg !2002

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1999
  store i8 92, ptr %298, align 1, !dbg !1999, !tbaa !867
  br label %299, !dbg !1999

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1695, metadata !DIExpression()), !dbg !1755
  %301 = icmp ult i64 %300, %290, !dbg !2003
  br i1 %301, label %302, label %304, !dbg !2006

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2003
  store i8 39, ptr %303, align 1, !dbg !2003, !tbaa !867
  br label %304, !dbg !2003

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %465, !dbg !2007

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2008

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1722, metadata !DIExpression()), !dbg !2009
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2010
  %309 = load ptr, ptr %308, align 8, !dbg !2010, !tbaa !790
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2010
  %312 = load i16, ptr %311, align 2, !dbg !2010, !tbaa !899
  %313 = and i16 %312, 16384, !dbg !2012
  %314 = icmp ne i16 %313, 0, !dbg !2012
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1724, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2009
  br label %355, !dbg !2013

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %14, metadata !1785, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata ptr %14, metadata !1793, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 8, metadata !1797, metadata !DIExpression()), !dbg !2017
  store i64 0, ptr %14, align 8, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1722, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !2009
  %316 = icmp eq i64 %171, -1, !dbg !2020
  br i1 %316, label %317, label %319, !dbg !2022

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1688, metadata !DIExpression()), !dbg !1755
  br label %319, !dbg !2024

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1688, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2025
  %321 = sub i64 %320, %145, !dbg !2026
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1732, metadata !DIExpression()), !dbg !1754
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2028

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1722, metadata !DIExpression()), !dbg !2009
  %324 = icmp ult i64 %145, %320, !dbg !2029
  br i1 %324, label %326, label %351, !dbg !2031

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !2009
  br label %351, !dbg !2032

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1722, metadata !DIExpression()), !dbg !2009
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2034
  %330 = load i8, ptr %329, align 1, !dbg !2034, !tbaa !867
  %331 = icmp eq i8 %330, 0, !dbg !2031
  br i1 %331, label %351, label %332, !dbg !2035

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1722, metadata !DIExpression()), !dbg !2009
  %334 = add i64 %333, %145, !dbg !2037
  %335 = icmp eq i64 %333, %321, !dbg !2029
  br i1 %335, label %351, label %326, !dbg !2031, !llvm.loop !2038

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1733, metadata !DIExpression()), !dbg !2039
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2040
  %339 = and i1 %338, %132, !dbg !2040
  br i1 %339, label %340, label %347, !dbg !2040

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1733, metadata !DIExpression()), !dbg !2039
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2041
  %343 = load i8, ptr %342, align 1, !dbg !2041, !tbaa !867
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2043

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1733, metadata !DIExpression()), !dbg !2039
  %346 = icmp eq i64 %345, %322, !dbg !2045
  br i1 %346, label %347, label %340, !dbg !2046, !llvm.loop !2047

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2049, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %348, metadata !2051, metadata !DIExpression()), !dbg !2059
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2061
  %350 = icmp ne i32 %349, 0, !dbg !2062
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1722, metadata !DIExpression()), !dbg !2009
  br label %351, !dbg !2063

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1722, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2065
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1722, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2065
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1862
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2066
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1722, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1688, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1716, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1862
  %359 = icmp ult i64 %357, 2, !dbg !2067
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2068
  br i1 %361, label %461, label %362, !dbg !2068

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1741, metadata !DIExpression()), !dbg !2070
  br label %364, !dbg !2071

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1755
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1854
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1852
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1862
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2072
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1695, metadata !DIExpression()), !dbg !1755
  br i1 %360, label %417, label %371, !dbg !2073

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2078

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1862
  %373 = and i8 %366, 1, !dbg !2081
  %374 = icmp eq i8 %373, 0, !dbg !2081
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2081
  br i1 %375, label %376, label %392, !dbg !2081

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2083
  br i1 %377, label %378, label %380, !dbg !2087

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2083
  store i8 39, ptr %379, align 1, !dbg !2083, !tbaa !867
  br label %380, !dbg !2083

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2087
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1695, metadata !DIExpression()), !dbg !1755
  %382 = icmp ult i64 %381, %146, !dbg !2088
  br i1 %382, label %383, label %385, !dbg !2091

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2088
  store i8 36, ptr %384, align 1, !dbg !2088, !tbaa !867
  br label %385, !dbg !2088

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1695, metadata !DIExpression()), !dbg !1755
  %387 = icmp ult i64 %386, %146, !dbg !2092
  br i1 %387, label %388, label %390, !dbg !2095

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2092
  store i8 39, ptr %389, align 1, !dbg !2092, !tbaa !867
  br label %390, !dbg !2092

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2095
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %392, !dbg !2096

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1755
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1695, metadata !DIExpression()), !dbg !1755
  %395 = icmp ult i64 %393, %146, !dbg !2097
  br i1 %395, label %396, label %398, !dbg !2100

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2097
  store i8 92, ptr %397, align 1, !dbg !2097, !tbaa !867
  br label %398, !dbg !2097

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1695, metadata !DIExpression()), !dbg !1755
  %400 = icmp ult i64 %399, %146, !dbg !2101
  br i1 %400, label %401, label %405, !dbg !2104

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2101
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2101
  store i8 %403, ptr %404, align 1, !dbg !2101, !tbaa !867
  br label %405, !dbg !2101

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1695, metadata !DIExpression()), !dbg !1755
  %407 = icmp ult i64 %406, %146, !dbg !2105
  br i1 %407, label %408, label %413, !dbg !2108

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2105
  %411 = or disjoint i8 %410, 48, !dbg !2105
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2105
  store i8 %411, ptr %412, align 1, !dbg !2105, !tbaa !867
  br label %413, !dbg !2105

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1695, metadata !DIExpression()), !dbg !1755
  %415 = and i8 %370, 7, !dbg !2109
  %416 = or disjoint i8 %415, 48, !dbg !2110
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1717, metadata !DIExpression()), !dbg !1862
  br label %426, !dbg !2111

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2112
  %419 = icmp eq i8 %418, 0, !dbg !2112
  br i1 %419, label %426, label %420, !dbg !2114

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2115
  br i1 %421, label %422, label %424, !dbg !2119

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2115
  store i8 92, ptr %423, align 1, !dbg !2115, !tbaa !867
  br label %424, !dbg !2115

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1862
  br label %426, !dbg !2120

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1755
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1854
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1862
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1862
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1695, metadata !DIExpression()), !dbg !1755
  %432 = add i64 %367, 1, !dbg !2121
  %433 = icmp ugt i64 %363, %432, !dbg !2123
  br i1 %433, label %434, label %463, !dbg !2124

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2125
  %436 = icmp ne i8 %435, 0, !dbg !2125
  %437 = and i8 %430, 1, !dbg !2125
  %438 = icmp eq i8 %437, 0, !dbg !2125
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2125
  br i1 %439, label %440, label %451, !dbg !2125

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2128
  br i1 %441, label %442, label %444, !dbg !2132

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2128
  store i8 39, ptr %443, align 1, !dbg !2128, !tbaa !867
  br label %444, !dbg !2128

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1695, metadata !DIExpression()), !dbg !1755
  %446 = icmp ult i64 %445, %146, !dbg !2133
  br i1 %446, label %447, label %449, !dbg !2136

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2133
  store i8 39, ptr %448, align 1, !dbg !2133, !tbaa !867
  br label %449, !dbg !2133

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %451, !dbg !2137

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2138
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1695, metadata !DIExpression()), !dbg !1755
  %454 = icmp ult i64 %452, %146, !dbg !2139
  br i1 %454, label %455, label %457, !dbg !2142

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2139
  store i8 %431, ptr %456, align 1, !dbg !2139, !tbaa !867
  br label %457, !dbg !2139

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1710, metadata !DIExpression()), !dbg !1852
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2143
  %460 = load i8, ptr %459, align 1, !dbg !2143, !tbaa !867
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1717, metadata !DIExpression()), !dbg !1862
  br label %364, !dbg !2144, !llvm.loop !2145

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1688, metadata !DIExpression()), !dbg !1755
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1688, metadata !DIExpression()), !dbg !1755
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2148
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1755
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1760
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1755
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1755
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1852
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1862
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1862
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1862
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1712, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1688, metadata !DIExpression()), !dbg !1755
  br i1 %126, label %487, label %476, !dbg !2149

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
  br i1 %137, label %488, label %509, !dbg !2151

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2152

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
  %499 = lshr i8 %490, 5, !dbg !2153
  %500 = zext nneg i8 %499 to i64, !dbg !2153
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2154
  %502 = load i32, ptr %501, align 4, !dbg !2154, !tbaa !858
  %503 = and i8 %490, 31, !dbg !2155
  %504 = zext nneg i8 %503 to i32, !dbg !2155
  %505 = shl nuw i32 1, %504, !dbg !2156
  %506 = and i32 %502, %505, !dbg !2156
  %507 = icmp eq i32 %506, 0, !dbg !2156
  %508 = and i1 %172, %507, !dbg !2157
  br i1 %508, label %558, label %520, !dbg !2157

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
  br i1 %172, label %558, label %520, !dbg !2158

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2148
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1755
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1760
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1764
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1854
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2159
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1862
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1862
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1688, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.label(metadata !1744), !dbg !2160
  br i1 %131, label %530, label %659, !dbg !2161

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1862
  %531 = and i8 %525, 1, !dbg !2163
  %532 = icmp eq i8 %531, 0, !dbg !2163
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2163
  br i1 %533, label %534, label %550, !dbg !2163

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2165
  br i1 %535, label %536, label %538, !dbg !2169

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2165
  store i8 39, ptr %537, align 1, !dbg !2165, !tbaa !867
  br label %538, !dbg !2165

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1695, metadata !DIExpression()), !dbg !1755
  %540 = icmp ult i64 %539, %529, !dbg !2170
  br i1 %540, label %541, label %543, !dbg !2173

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2170
  store i8 36, ptr %542, align 1, !dbg !2170, !tbaa !867
  br label %543, !dbg !2170

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1695, metadata !DIExpression()), !dbg !1755
  %545 = icmp ult i64 %544, %529, !dbg !2174
  br i1 %545, label %546, label %548, !dbg !2177

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2174
  store i8 39, ptr %547, align 1, !dbg !2174, !tbaa !867
  br label %548, !dbg !2174

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2177
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %550, !dbg !2178

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1862
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1695, metadata !DIExpression()), !dbg !1755
  %553 = icmp ult i64 %551, %529, !dbg !2179
  br i1 %553, label %554, label %556, !dbg !2182

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2179
  store i8 92, ptr %555, align 1, !dbg !2179, !tbaa !867
  br label %556, !dbg !2179

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1688, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.label(metadata !1745), !dbg !2183
  br label %585, !dbg !2184

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2148
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1755
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1760
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1764
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1854
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2159
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1862
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1862
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2187
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1717, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1716, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1715, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1688, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.label(metadata !1745), !dbg !2183
  %569 = and i8 %563, 1, !dbg !2184
  %570 = icmp ne i8 %569, 0, !dbg !2184
  %571 = and i8 %565, 1, !dbg !2184
  %572 = icmp eq i8 %571, 0, !dbg !2184
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2184
  br i1 %573, label %574, label %585, !dbg !2184

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2188
  br i1 %575, label %576, label %578, !dbg !2192

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2188
  store i8 39, ptr %577, align 1, !dbg !2188, !tbaa !867
  br label %578, !dbg !2188

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1695, metadata !DIExpression()), !dbg !1755
  %580 = icmp ult i64 %579, %568, !dbg !2193
  br i1 %580, label %581, label %583, !dbg !2196

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2193
  store i8 39, ptr %582, align 1, !dbg !2193, !tbaa !867
  br label %583, !dbg !2193

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1755
  br label %585, !dbg !2197

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1862
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1695, metadata !DIExpression()), !dbg !1755
  %595 = icmp ult i64 %593, %586, !dbg !2198
  br i1 %595, label %596, label %598, !dbg !2201

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2198
  store i8 %587, ptr %597, align 1, !dbg !2198, !tbaa !867
  br label %598, !dbg !2198

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1695, metadata !DIExpression()), !dbg !1755
  %600 = icmp eq i8 %588, 0, !dbg !2202
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2204
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1702, metadata !DIExpression()), !dbg !1755
  br label %602, !dbg !2205

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2148
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1755
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1760
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1764
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1765
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1854
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2159
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1710, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1704, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1702, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1688, metadata !DIExpression()), !dbg !1755
  %611 = add i64 %609, 1, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1710, metadata !DIExpression()), !dbg !1852
  br label %138, !dbg !2207, !llvm.loop !2208

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1686, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1702, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1701, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1696, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1688, metadata !DIExpression()), !dbg !1755
  %613 = icmp eq i64 %140, 0, !dbg !2210
  %614 = and i1 %132, %613, !dbg !2212
  %615 = xor i1 %614, true, !dbg !2212
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2212
  br i1 %616, label %617, label %655, !dbg !2212

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2213
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2213
  br i1 %621, label %622, label %631, !dbg !2213

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2215
  %624 = icmp eq i8 %623, 0, !dbg !2215
  br i1 %624, label %627, label %625, !dbg !2218

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2219
  br label %672, !dbg !2220

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2221
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2223
  br i1 %630, label %28, label %631, !dbg !2223

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2224
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2226
  br i1 %634, label %635, label %650, !dbg !2226

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1697, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1695, metadata !DIExpression()), !dbg !1755
  %636 = load i8, ptr %119, align 1, !dbg !2227, !tbaa !867
  %637 = icmp eq i8 %636, 0, !dbg !2230
  br i1 %637, label %650, label %638, !dbg !2230

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1697, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1695, metadata !DIExpression()), !dbg !1755
  %642 = icmp ult i64 %641, %146, !dbg !2231
  br i1 %642, label %643, label %645, !dbg !2234

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2231
  store i8 %639, ptr %644, align 1, !dbg !2231, !tbaa !867
  br label %645, !dbg !2231

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1695, metadata !DIExpression()), !dbg !1755
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2235
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1697, metadata !DIExpression()), !dbg !1755
  %648 = load i8, ptr %647, align 1, !dbg !2227, !tbaa !867
  %649 = icmp eq i8 %648, 0, !dbg !2230
  br i1 %649, label %650, label %638, !dbg !2230, !llvm.loop !2236

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1695, metadata !DIExpression()), !dbg !1755
  %652 = icmp ult i64 %651, %146, !dbg !2238
  br i1 %652, label %653, label %672, !dbg !2240

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2241
  store i8 0, ptr %654, align 1, !dbg !2242, !tbaa !867
  br label %672, !dbg !2241

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1746), !dbg !2243
  %657 = icmp eq i8 %123, 0, !dbg !2244
  %658 = select i1 %657, i32 2, i32 4, !dbg !2244
  br label %666, !dbg !2244

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1746), !dbg !2243
  %662 = icmp eq i32 %115, 2, !dbg !2246
  %663 = icmp eq i8 %123, 0, !dbg !2244
  %664 = select i1 %663, i32 2, i32 4, !dbg !2244
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2244
  br label %666, !dbg !2244

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1689, metadata !DIExpression()), !dbg !1755
  %670 = and i32 %5, -3, !dbg !2247
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2248
  br label %672, !dbg !2249

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2250
}

; Function Attrs: nounwind
declare !dbg !2251 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2254 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2256 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2260, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2261, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %0, metadata !2264, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr null, metadata !2270, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr %2, metadata !2271, metadata !DIExpression()), !dbg !2277
  %4 = icmp eq ptr %2, null, !dbg !2279
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %5, metadata !2272, metadata !DIExpression()), !dbg !2277
  %6 = tail call ptr @__errno_location() #42, !dbg !2280
  %7 = load i32, ptr %6, align 4, !dbg !2280, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %7, metadata !2273, metadata !DIExpression()), !dbg !2277
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2281
  %9 = load i32, ptr %8, align 4, !dbg !2281, !tbaa !1629
  %10 = or i32 %9, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %10, metadata !2274, metadata !DIExpression()), !dbg !2277
  %11 = load i32, ptr %5, align 8, !dbg !2283, !tbaa !1579
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2284
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2285
  %14 = load ptr, ptr %13, align 8, !dbg !2285, !tbaa !1650
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2286
  %16 = load ptr, ptr %15, align 8, !dbg !2286, !tbaa !1653
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2287
  %18 = add i64 %17, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %18, metadata !2275, metadata !DIExpression()), !dbg !2277
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %19, metadata !2276, metadata !DIExpression()), !dbg !2277
  %20 = load i32, ptr %5, align 8, !dbg !2290, !tbaa !1579
  %21 = load ptr, ptr %13, align 8, !dbg !2291, !tbaa !1650
  %22 = load ptr, ptr %15, align 8, !dbg !2292, !tbaa !1653
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2293
  store i32 %7, ptr %6, align 4, !dbg !2294, !tbaa !858
  ret ptr %19, !dbg !2295
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2265 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2264, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2270, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2271, metadata !DIExpression()), !dbg !2296
  %5 = icmp eq ptr %3, null, !dbg !2297
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2297
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2272, metadata !DIExpression()), !dbg !2296
  %7 = tail call ptr @__errno_location() #42, !dbg !2298
  %8 = load i32, ptr %7, align 4, !dbg !2298, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2273, metadata !DIExpression()), !dbg !2296
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2299
  %10 = load i32, ptr %9, align 4, !dbg !2299, !tbaa !1629
  %11 = icmp eq ptr %2, null, !dbg !2300
  %12 = zext i1 %11 to i32, !dbg !2300
  %13 = or i32 %10, %12, !dbg !2301
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2274, metadata !DIExpression()), !dbg !2296
  %14 = load i32, ptr %6, align 8, !dbg !2302, !tbaa !1579
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2303
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2304
  %17 = load ptr, ptr %16, align 8, !dbg !2304, !tbaa !1650
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2305
  %19 = load ptr, ptr %18, align 8, !dbg !2305, !tbaa !1653
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2306
  %21 = add i64 %20, 1, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2275, metadata !DIExpression()), !dbg !2296
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2308
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2276, metadata !DIExpression()), !dbg !2296
  %23 = load i32, ptr %6, align 8, !dbg !2309, !tbaa !1579
  %24 = load ptr, ptr %16, align 8, !dbg !2310, !tbaa !1650
  %25 = load ptr, ptr %18, align 8, !dbg !2311, !tbaa !1653
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2312
  store i32 %8, ptr %7, align 4, !dbg !2313, !tbaa !858
  br i1 %11, label %28, label %27, !dbg !2314

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2315, !tbaa !2317
  br label %28, !dbg !2318

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2319
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2320 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2325, !tbaa !790
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2322, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2323, metadata !DIExpression()), !dbg !2327
  %2 = load i32, ptr @nslots, align 4, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2323, metadata !DIExpression()), !dbg !2327
  %3 = icmp sgt i32 %2, 1, !dbg !2328
  br i1 %3, label %4, label %6, !dbg !2330

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2328
  br label %10, !dbg !2330

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2331
  %8 = load ptr, ptr %7, align 8, !dbg !2331, !tbaa !2333
  %9 = icmp eq ptr %8, @slot0, !dbg !2335
  br i1 %9, label %17, label %16, !dbg !2336

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2323, metadata !DIExpression()), !dbg !2327
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2337
  %13 = load ptr, ptr %12, align 8, !dbg !2337, !tbaa !2333
  tail call void @free(ptr noundef %13) #39, !dbg !2338
  %14 = add nuw nsw i64 %11, 1, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2323, metadata !DIExpression()), !dbg !2327
  %15 = icmp eq i64 %14, %5, !dbg !2328
  br i1 %15, label %6, label %10, !dbg !2330, !llvm.loop !2340

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2342
  store i64 256, ptr @slotvec0, align 8, !dbg !2344, !tbaa !2345
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2346, !tbaa !2333
  br label %17, !dbg !2347

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2348
  br i1 %18, label %20, label %19, !dbg !2350

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2351
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2353, !tbaa !790
  br label %20, !dbg !2354

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2355, !tbaa !858
  ret void, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2357 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2360, metadata !DIExpression()), !dbg !2361
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2362
  ret ptr %3, !dbg !2363
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2364 {
  %5 = alloca i64, align 8, !DIAssignID !2384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2378, metadata !DIExpression(), metadata !2384, metadata ptr %5, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2369, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2370, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2371, metadata !DIExpression()), !dbg !2386
  %6 = tail call ptr @__errno_location() #42, !dbg !2387
  %7 = load i32, ptr %6, align 4, !dbg !2387, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2372, metadata !DIExpression()), !dbg !2386
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2388, !tbaa !790
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2373, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2374, metadata !DIExpression()), !dbg !2386
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2389
  br i1 %9, label %10, label %11, !dbg !2389

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2391
  unreachable, !dbg !2391

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2392, !tbaa !858
  %13 = icmp sgt i32 %12, %0, !dbg !2393
  br i1 %13, label %32, label %14, !dbg !2394

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2395
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2375, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2396
  %16 = sext i32 %12 to i64, !dbg !2397
  store i64 %16, ptr %5, align 8, !dbg !2398, !tbaa !2317, !DIAssignID !2399
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2378, metadata !DIExpression(), metadata !2399, metadata ptr %5, metadata !DIExpression()), !dbg !2385
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2400
  %18 = add nuw nsw i32 %0, 1, !dbg !2401
  %19 = sub i32 %18, %12, !dbg !2402
  %20 = sext i32 %19 to i64, !dbg !2403
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2404
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2373, metadata !DIExpression()), !dbg !2386
  store ptr %21, ptr @slotvec, align 8, !dbg !2405, !tbaa !790
  br i1 %15, label %22, label %23, !dbg !2406

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2407, !tbaa.struct !2409
  br label %23, !dbg !2410

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2411, !tbaa !858
  %25 = sext i32 %24 to i64, !dbg !2412
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2412
  %27 = load i64, ptr %5, align 8, !dbg !2413, !tbaa !2317
  %28 = sub nsw i64 %27, %25, !dbg !2414
  %29 = shl i64 %28, 4, !dbg !2415
  call void @llvm.dbg.value(metadata ptr %26, metadata !1793, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %29, metadata !1797, metadata !DIExpression()), !dbg !2416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2418
  %30 = load i64, ptr %5, align 8, !dbg !2419, !tbaa !2317
  %31 = trunc i64 %30 to i32, !dbg !2419
  store i32 %31, ptr @nslots, align 4, !dbg !2420, !tbaa !858
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2421
  br label %32, !dbg !2422

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2373, metadata !DIExpression()), !dbg !2386
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2423
  %36 = load i64, ptr %35, align 8, !dbg !2424, !tbaa !2345
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2379, metadata !DIExpression()), !dbg !2425
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2426
  %38 = load ptr, ptr %37, align 8, !dbg !2426, !tbaa !2333
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2381, metadata !DIExpression()), !dbg !2425
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2427
  %40 = load i32, ptr %39, align 4, !dbg !2427, !tbaa !1629
  %41 = or i32 %40, 1, !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2382, metadata !DIExpression()), !dbg !2425
  %42 = load i32, ptr %3, align 8, !dbg !2429, !tbaa !1579
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2430
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2431
  %45 = load ptr, ptr %44, align 8, !dbg !2431, !tbaa !1650
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2432
  %47 = load ptr, ptr %46, align 8, !dbg !2432, !tbaa !1653
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2383, metadata !DIExpression()), !dbg !2425
  %49 = icmp ugt i64 %36, %48, !dbg !2434
  br i1 %49, label %60, label %50, !dbg !2436

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2379, metadata !DIExpression()), !dbg !2425
  store i64 %51, ptr %35, align 8, !dbg !2439, !tbaa !2345
  %52 = icmp eq ptr %38, @slot0, !dbg !2440
  br i1 %52, label %54, label %53, !dbg !2442

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2443
  br label %54, !dbg !2443

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2444
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2381, metadata !DIExpression()), !dbg !2425
  store ptr %55, ptr %37, align 8, !dbg !2445, !tbaa !2333
  %56 = load i32, ptr %3, align 8, !dbg !2446, !tbaa !1579
  %57 = load ptr, ptr %44, align 8, !dbg !2447, !tbaa !1650
  %58 = load ptr, ptr %46, align 8, !dbg !2448, !tbaa !1653
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2449
  br label %60, !dbg !2450

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2425
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2381, metadata !DIExpression()), !dbg !2425
  store i32 %7, ptr %6, align 4, !dbg !2451, !tbaa !858
  ret ptr %61, !dbg !2452
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2453 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2458, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2459, metadata !DIExpression()), !dbg !2460
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2461
  ret ptr %4, !dbg !2462
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2359, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %0, metadata !2360, metadata !DIExpression()), !dbg !2467
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2469
  ret ptr %2, !dbg !2470
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2471 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata ptr %0, metadata !2458, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2459, metadata !DIExpression()), !dbg !2478
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2480
  ret ptr %3, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2482 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2490
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2489, metadata !DIExpression(), metadata !2490, metadata ptr %4, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2486, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2487, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2493), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2505, !alias.scope !2493, !DIAssignID !2506
  call void @llvm.dbg.assign(metadata i8 0, metadata !2489, metadata !DIExpression(), metadata !2506, metadata ptr %4, metadata !DIExpression()), !dbg !2491
  %5 = icmp eq i32 %1, 10, !dbg !2507
  br i1 %5, label %6, label %7, !dbg !2509

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2510, !noalias !2493
  unreachable, !dbg !2510

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2511, !tbaa !1579, !alias.scope !2493, !DIAssignID !2512
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2512, metadata ptr %4, metadata !DIExpression()), !dbg !2491
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2513
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2514
  ret ptr %8, !dbg !2515
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2516 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2525
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2524, metadata !DIExpression(), metadata !2525, metadata ptr %5, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528), !dbg !2531
  call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !2534
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2534, !alias.scope !2528, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i8 0, metadata !2524, metadata !DIExpression(), metadata !2535, metadata ptr %5, metadata !DIExpression()), !dbg !2526
  %6 = icmp eq i32 %1, 10, !dbg !2536
  br i1 %6, label %7, label %8, !dbg !2537

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2538, !noalias !2528
  unreachable, !dbg !2538

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2539, !tbaa !1579, !alias.scope !2528, !DIAssignID !2540
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2524, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2540, metadata ptr %5, metadata !DIExpression()), !dbg !2526
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2542
  ret ptr %9, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2544 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2550
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2489, metadata !DIExpression(), metadata !2550, metadata ptr %3, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %0, metadata !2487, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %1, metadata !2488, metadata !DIExpression()), !dbg !2552
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %0, metadata !2497, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2502, metadata !DIExpression()), !dbg !2561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2561, !alias.scope !2555, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata i8 0, metadata !2489, metadata !DIExpression(), metadata !2562, metadata ptr %3, metadata !DIExpression()), !dbg !2552
  %4 = icmp eq i32 %0, 10, !dbg !2563
  br i1 %4, label %5, label %6, !dbg !2564

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2565, !noalias !2555
  unreachable, !dbg !2565

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2566, !tbaa !1579, !alias.scope !2555, !DIAssignID !2567
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2567, metadata ptr %3, metadata !DIExpression()), !dbg !2552
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2568
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2569
  ret ptr %7, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2571 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2578
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2575, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2576, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2524, metadata !DIExpression(), metadata !2578, metadata ptr %4, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 0, metadata !2520, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %1, metadata !2522, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 %2, metadata !2523, metadata !DIExpression()), !dbg !2580
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2582
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %0, metadata !2497, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !2589
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2589, !alias.scope !2583, !DIAssignID !2590
  call void @llvm.dbg.assign(metadata i8 0, metadata !2524, metadata !DIExpression(), metadata !2590, metadata ptr %4, metadata !DIExpression()), !dbg !2580
  %5 = icmp eq i32 %0, 10, !dbg !2591
  br i1 %5, label %6, label %7, !dbg !2592

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2593, !noalias !2583
  unreachable, !dbg !2593

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2594, !tbaa !1579, !alias.scope !2583, !DIAssignID !2595
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2524, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2595, metadata ptr %4, metadata !DIExpression()), !dbg !2580
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2596
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2597
  ret ptr %8, !dbg !2598
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2599 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2607, metadata ptr %4, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2610, !tbaa.struct !2611, !DIAssignID !2612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2612, metadata ptr %4, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1596, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1597, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1599, metadata !DIExpression()), !dbg !2613
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2615
  %6 = lshr i8 %2, 5, !dbg !2616
  %7 = zext nneg i8 %6 to i64, !dbg !2616
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression()), !dbg !2613
  %9 = and i8 %2, 31, !dbg !2618
  %10 = zext nneg i8 %9 to i32, !dbg !2618
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1602, metadata !DIExpression()), !dbg !2613
  %11 = load i32, ptr %8, align 4, !dbg !2619, !tbaa !858
  %12 = lshr i32 %11, %10, !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1603, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2613
  %13 = and i32 %12, 1, !dbg !2621
  %14 = xor i32 %13, 1, !dbg !2621
  %15 = shl nuw i32 %14, %10, !dbg !2622
  %16 = xor i32 %15, %11, !dbg !2623
  store i32 %16, ptr %8, align 4, !dbg !2623, !tbaa !858
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2625
  ret ptr %17, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2627 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2633
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2633, metadata ptr %3, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i64 -1, metadata !2604, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 %1, metadata !2605, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2638, !tbaa.struct !2611, !DIAssignID !2639
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2639, metadata ptr %3, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %3, metadata !1596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %1, metadata !1597, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()), !dbg !2640
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2642
  %5 = lshr i8 %1, 5, !dbg !2643
  %6 = zext nneg i8 %5 to i64, !dbg !2643
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %7, metadata !1600, metadata !DIExpression()), !dbg !2640
  %8 = and i8 %1, 31, !dbg !2645
  %9 = zext nneg i8 %8 to i32, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %9, metadata !1602, metadata !DIExpression()), !dbg !2640
  %10 = load i32, ptr %7, align 4, !dbg !2646, !tbaa !858
  %11 = lshr i32 %10, %9, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %11, metadata !1603, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2640
  %12 = and i32 %11, 1, !dbg !2648
  %13 = xor i32 %12, 1, !dbg !2648
  %14 = shl nuw i32 %13, %9, !dbg !2649
  %15 = xor i32 %14, %10, !dbg !2650
  store i32 %15, ptr %7, align 4, !dbg !2650, !tbaa !858
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2651
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2652
  ret ptr %16, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2654 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2657, metadata ptr %2, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 -1, metadata !2604, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 58, metadata !2605, metadata !DIExpression()), !dbg !2661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2664, !tbaa.struct !2611, !DIAssignID !2665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2665, metadata ptr %2, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %2, metadata !1596, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2666
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %3, metadata !1600, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2666
  %4 = load i32, ptr %3, align 4, !dbg !2669, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %4, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2666
  %5 = or i32 %4, 67108864, !dbg !2670
  store i32 %5, ptr %3, align 4, !dbg !2670, !tbaa !858
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2671
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2672
  ret ptr %6, !dbg !2673
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2674 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2678
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2678, metadata ptr %3, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 58, metadata !2605, metadata !DIExpression()), !dbg !2680
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2683, !tbaa.struct !2611, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2684, metadata ptr %3, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %3, metadata !1596, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2685
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %4, metadata !1600, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2685
  %5 = load i32, ptr %4, align 4, !dbg !2688, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %5, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2685
  %6 = or i32 %5, 67108864, !dbg !2689
  store i32 %6, ptr %4, align 4, !dbg !2689, !tbaa !858
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2691
  ret ptr %7, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2693 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2698, metadata !DIExpression(), metadata !2699, metadata ptr %4, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2502, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2695, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2502, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2704
  %5 = icmp eq i32 %1, 10, !dbg !2705
  br i1 %5, label %6, label %7, !dbg !2706

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2707, !noalias !2708
  unreachable, !dbg !2707

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2502, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2704
  store i32 %1, ptr %4, align 8, !dbg !2711, !tbaa.struct !2611, !DIAssignID !2712
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2711
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2711
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2698, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2712, metadata ptr %4, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2698, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2713, metadata ptr %8, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1596, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1597, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2714
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2716
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1600, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1602, metadata !DIExpression()), !dbg !2714
  %10 = load i32, ptr %9, align 4, !dbg !2717, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1603, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2714
  %11 = or i32 %10, 67108864, !dbg !2718
  store i32 %11, ptr %9, align 4, !dbg !2718, !tbaa !858, !DIAssignID !2719
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2698, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2719, metadata ptr %9, metadata !DIExpression()), !dbg !2700
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2720
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2721
  ret ptr %12, !dbg !2722
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2723 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2731
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2727, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2728, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2729, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2731, metadata ptr %5, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %0, metadata !2738, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %3, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 -1, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2746, !tbaa.struct !2611, !DIAssignID !2747
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2747, metadata ptr %5, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2748, metadata ptr undef, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2749
  store i32 10, ptr %5, align 8, !dbg !2751, !tbaa !1579, !DIAssignID !2752
  call void @llvm.dbg.assign(metadata i32 10, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2752, metadata ptr %5, metadata !DIExpression()), !dbg !2743
  %6 = icmp ne ptr %1, null, !dbg !2753
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2754
  br i1 %8, label %10, label %9, !dbg !2754

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2755
  unreachable, !dbg !2755

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2756
  store ptr %1, ptr %11, align 8, !dbg !2757, !tbaa !1650, !DIAssignID !2758
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2758, metadata ptr %11, metadata !DIExpression()), !dbg !2743
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2759
  store ptr %2, ptr %12, align 8, !dbg !2760, !tbaa !1653, !DIAssignID !2761
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2761, metadata ptr %12, metadata !DIExpression()), !dbg !2743
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2762
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2763
  ret ptr %13, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2734 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2765, metadata ptr %6, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2738, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2741, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2742, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2768, !tbaa.struct !2611, !DIAssignID !2769
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2769, metadata ptr %6, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2770, metadata ptr undef, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %1, metadata !1637, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !2771
  store i32 10, ptr %6, align 8, !dbg !2773, !tbaa !1579, !DIAssignID !2774
  call void @llvm.dbg.assign(metadata i32 10, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2774, metadata ptr %6, metadata !DIExpression()), !dbg !2766
  %7 = icmp ne ptr %1, null, !dbg !2775
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2776
  br i1 %9, label %11, label %10, !dbg !2776

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2777
  unreachable, !dbg !2777

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2778
  store ptr %1, ptr %12, align 8, !dbg !2779, !tbaa !1650, !DIAssignID !2780
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2780, metadata ptr %12, metadata !DIExpression()), !dbg !2766
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2781
  store ptr %2, ptr %13, align 8, !dbg !2782, !tbaa !1653, !DIAssignID !2783
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2783, metadata ptr %13, metadata !DIExpression()), !dbg !2766
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2784
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2785
  ret ptr %14, !dbg !2786
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2787 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2794
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %0, metadata !2728, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2794, metadata ptr %4, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 0, metadata !2738, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %1, metadata !2740, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 -1, metadata !2742, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2801, !tbaa.struct !2611, !DIAssignID !2802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2802, metadata ptr %4, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2803, metadata ptr undef, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !2804
  store i32 10, ptr %4, align 8, !dbg !2806, !tbaa !1579, !DIAssignID !2807
  call void @llvm.dbg.assign(metadata i32 10, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2807, metadata ptr %4, metadata !DIExpression()), !dbg !2798
  %5 = icmp ne ptr %0, null, !dbg !2808
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2809
  br i1 %7, label %9, label %8, !dbg !2809

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2810
  unreachable, !dbg !2810

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2811
  store ptr %0, ptr %10, align 8, !dbg !2812, !tbaa !1650, !DIAssignID !2813
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2813, metadata ptr %10, metadata !DIExpression()), !dbg !2798
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2814
  store ptr %1, ptr %11, align 8, !dbg !2815, !tbaa !1653, !DIAssignID !2816
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2816, metadata ptr %11, metadata !DIExpression()), !dbg !2798
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2817
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2818
  ret ptr %12, !dbg !2819
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2820 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2828
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2824, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2825, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2826, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2827, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2828, metadata ptr %5, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i32 0, metadata !2738, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %1, metadata !2740, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2830
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2833, !tbaa.struct !2611, !DIAssignID !2834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(), metadata !2834, metadata ptr %5, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2835, metadata ptr undef, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %5, metadata !1636, metadata !DIExpression()), !dbg !2836
  store i32 10, ptr %5, align 8, !dbg !2838, !tbaa !1579, !DIAssignID !2839
  call void @llvm.dbg.assign(metadata i32 10, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2839, metadata ptr %5, metadata !DIExpression()), !dbg !2830
  %6 = icmp ne ptr %0, null, !dbg !2840
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2841
  br i1 %8, label %10, label %9, !dbg !2841

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2842
  unreachable, !dbg !2842

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2843
  store ptr %0, ptr %11, align 8, !dbg !2844, !tbaa !1650, !DIAssignID !2845
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2845, metadata ptr %11, metadata !DIExpression()), !dbg !2830
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2846
  store ptr %1, ptr %12, align 8, !dbg !2847, !tbaa !1653, !DIAssignID !2848
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2848, metadata ptr %12, metadata !DIExpression()), !dbg !2830
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2850
  ret ptr %13, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2852 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2856, metadata !DIExpression()), !dbg !2859
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2857, metadata !DIExpression()), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2858, metadata !DIExpression()), !dbg !2859
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2860
  ret ptr %4, !dbg !2861
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 0, metadata !2856, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %0, metadata !2857, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()), !dbg !2869
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2871
  ret ptr %3, !dbg !2872
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2873 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2877, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %0, metadata !2856, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %1, metadata !2857, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()), !dbg !2880
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2882
  ret ptr %3, !dbg !2883
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 0, metadata !2877, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2856, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %0, metadata !2857, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()), !dbg !2892
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2894
  ret ptr %2, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2896 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2941
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2936, metadata !DIExpression()), !dbg !2941
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2941
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2938, metadata !DIExpression()), !dbg !2941
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2939, metadata !DIExpression()), !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2940, metadata !DIExpression()), !dbg !2941
  %7 = icmp eq ptr %1, null, !dbg !2942
  br i1 %7, label %10, label %8, !dbg !2944

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2945
  br label %12, !dbg !2945

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #39, !dbg !2946
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #39, !dbg !2947
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2947
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2948
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #39, !dbg !2949
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #39, !dbg !2949
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2950
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
  ], !dbg !2951

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #39, !dbg !2952
  %21 = load ptr, ptr %4, align 8, !dbg !2952, !tbaa !790
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2952
  br label %147, !dbg !2954

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #39, !dbg !2955
  %25 = load ptr, ptr %4, align 8, !dbg !2955, !tbaa !790
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2955
  %27 = load ptr, ptr %26, align 8, !dbg !2955, !tbaa !790
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2955
  br label %147, !dbg !2956

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #39, !dbg !2957
  %31 = load ptr, ptr %4, align 8, !dbg !2957, !tbaa !790
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2957
  %33 = load ptr, ptr %32, align 8, !dbg !2957, !tbaa !790
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2957
  %35 = load ptr, ptr %34, align 8, !dbg !2957, !tbaa !790
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2957
  br label %147, !dbg !2958

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #39, !dbg !2959
  %39 = load ptr, ptr %4, align 8, !dbg !2959, !tbaa !790
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2959
  %41 = load ptr, ptr %40, align 8, !dbg !2959, !tbaa !790
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2959
  %43 = load ptr, ptr %42, align 8, !dbg !2959, !tbaa !790
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2959
  %45 = load ptr, ptr %44, align 8, !dbg !2959, !tbaa !790
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2959
  br label %147, !dbg !2960

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #39, !dbg !2961
  %49 = load ptr, ptr %4, align 8, !dbg !2961, !tbaa !790
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2961
  %51 = load ptr, ptr %50, align 8, !dbg !2961, !tbaa !790
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2961
  %53 = load ptr, ptr %52, align 8, !dbg !2961, !tbaa !790
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2961
  %55 = load ptr, ptr %54, align 8, !dbg !2961, !tbaa !790
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2961
  %57 = load ptr, ptr %56, align 8, !dbg !2961, !tbaa !790
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2961
  br label %147, !dbg !2962

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #39, !dbg !2963
  %61 = load ptr, ptr %4, align 8, !dbg !2963, !tbaa !790
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2963
  %63 = load ptr, ptr %62, align 8, !dbg !2963, !tbaa !790
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2963
  %65 = load ptr, ptr %64, align 8, !dbg !2963, !tbaa !790
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2963
  %67 = load ptr, ptr %66, align 8, !dbg !2963, !tbaa !790
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2963
  %69 = load ptr, ptr %68, align 8, !dbg !2963, !tbaa !790
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2963
  %71 = load ptr, ptr %70, align 8, !dbg !2963, !tbaa !790
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2963
  br label %147, !dbg !2964

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #39, !dbg !2965
  %75 = load ptr, ptr %4, align 8, !dbg !2965, !tbaa !790
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2965
  %77 = load ptr, ptr %76, align 8, !dbg !2965, !tbaa !790
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2965
  %79 = load ptr, ptr %78, align 8, !dbg !2965, !tbaa !790
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2965
  %81 = load ptr, ptr %80, align 8, !dbg !2965, !tbaa !790
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2965
  %83 = load ptr, ptr %82, align 8, !dbg !2965, !tbaa !790
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2965
  %85 = load ptr, ptr %84, align 8, !dbg !2965, !tbaa !790
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2965
  %87 = load ptr, ptr %86, align 8, !dbg !2965, !tbaa !790
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2965
  br label %147, !dbg !2966

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #39, !dbg !2967
  %91 = load ptr, ptr %4, align 8, !dbg !2967, !tbaa !790
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2967
  %93 = load ptr, ptr %92, align 8, !dbg !2967, !tbaa !790
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2967
  %95 = load ptr, ptr %94, align 8, !dbg !2967, !tbaa !790
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2967
  %97 = load ptr, ptr %96, align 8, !dbg !2967, !tbaa !790
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2967
  %99 = load ptr, ptr %98, align 8, !dbg !2967, !tbaa !790
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2967
  %101 = load ptr, ptr %100, align 8, !dbg !2967, !tbaa !790
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2967
  %103 = load ptr, ptr %102, align 8, !dbg !2967, !tbaa !790
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2967
  %105 = load ptr, ptr %104, align 8, !dbg !2967, !tbaa !790
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2967
  br label %147, !dbg !2968

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #39, !dbg !2969
  %109 = load ptr, ptr %4, align 8, !dbg !2969, !tbaa !790
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2969
  %111 = load ptr, ptr %110, align 8, !dbg !2969, !tbaa !790
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2969
  %113 = load ptr, ptr %112, align 8, !dbg !2969, !tbaa !790
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2969
  %115 = load ptr, ptr %114, align 8, !dbg !2969, !tbaa !790
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2969
  %117 = load ptr, ptr %116, align 8, !dbg !2969, !tbaa !790
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2969
  %119 = load ptr, ptr %118, align 8, !dbg !2969, !tbaa !790
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2969
  %121 = load ptr, ptr %120, align 8, !dbg !2969, !tbaa !790
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2969
  %123 = load ptr, ptr %122, align 8, !dbg !2969, !tbaa !790
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2969
  %125 = load ptr, ptr %124, align 8, !dbg !2969, !tbaa !790
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2969
  br label %147, !dbg !2970

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #39, !dbg !2971
  %129 = load ptr, ptr %4, align 8, !dbg !2971, !tbaa !790
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2971
  %131 = load ptr, ptr %130, align 8, !dbg !2971, !tbaa !790
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2971
  %133 = load ptr, ptr %132, align 8, !dbg !2971, !tbaa !790
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2971
  %135 = load ptr, ptr %134, align 8, !dbg !2971, !tbaa !790
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2971
  %137 = load ptr, ptr %136, align 8, !dbg !2971, !tbaa !790
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2971
  %139 = load ptr, ptr %138, align 8, !dbg !2971, !tbaa !790
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2971
  %141 = load ptr, ptr %140, align 8, !dbg !2971, !tbaa !790
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2971
  %143 = load ptr, ptr %142, align 8, !dbg !2971, !tbaa !790
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2971
  %145 = load ptr, ptr %144, align 8, !dbg !2971, !tbaa !790
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2971
  br label %147, !dbg !2972

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2973
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2974 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2979, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2980, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2982, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2983, metadata !DIExpression()), !dbg !2984
  br label %6, !dbg !2985

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2983, metadata !DIExpression()), !dbg !2984
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2988
  %9 = load ptr, ptr %8, align 8, !dbg !2988, !tbaa !790
  %10 = icmp eq ptr %9, null, !dbg !2990
  %11 = add i64 %7, 1, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2983, metadata !DIExpression()), !dbg !2984
  br i1 %10, label %12, label %6, !dbg !2990, !llvm.loop !2992

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2996 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3013, metadata !DIExpression(), metadata !3015, metadata ptr %6, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3008, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3009, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3010, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3012, metadata !DIExpression()), !dbg !3016
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3012, metadata !DIExpression()), !dbg !3016
  %10 = icmp ult i32 %9, 41, !dbg !3018
  br i1 %10, label %11, label %16, !dbg !3018

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3018
  %13 = zext nneg i32 %9 to i64, !dbg !3018
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3018
  %15 = add nuw nsw i32 %9, 8, !dbg !3018
  store i32 %15, ptr %4, align 8, !dbg !3018
  br label %19, !dbg !3018

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3018
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3018
  store ptr %18, ptr %7, align 8, !dbg !3018
  br label %19, !dbg !3018

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3018
  %22 = load ptr, ptr %21, align 8, !dbg !3018
  store ptr %22, ptr %6, align 16, !dbg !3021, !tbaa !790
  %23 = icmp eq ptr %22, null, !dbg !3022
  br i1 %23, label %128, label %24, !dbg !3023

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3012, metadata !DIExpression()), !dbg !3016
  %25 = icmp ult i32 %20, 41, !dbg !3018
  br i1 %25, label %29, label %26, !dbg !3018

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3018
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3018
  store ptr %28, ptr %7, align 8, !dbg !3018
  br label %34, !dbg !3018

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3018
  %31 = zext nneg i32 %20 to i64, !dbg !3018
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3018
  %33 = add nuw nsw i32 %20, 8, !dbg !3018
  store i32 %33, ptr %4, align 8, !dbg !3018
  br label %34, !dbg !3018

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3018
  %37 = load ptr, ptr %36, align 8, !dbg !3018
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3024
  store ptr %37, ptr %38, align 8, !dbg !3021, !tbaa !790
  %39 = icmp eq ptr %37, null, !dbg !3022
  br i1 %39, label %128, label %40, !dbg !3023

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3012, metadata !DIExpression()), !dbg !3016
  %41 = icmp ult i32 %35, 41, !dbg !3018
  br i1 %41, label %45, label %42, !dbg !3018

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3018
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3018
  store ptr %44, ptr %7, align 8, !dbg !3018
  br label %50, !dbg !3018

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3018
  %47 = zext nneg i32 %35 to i64, !dbg !3018
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3018
  %49 = add nuw nsw i32 %35, 8, !dbg !3018
  store i32 %49, ptr %4, align 8, !dbg !3018
  br label %50, !dbg !3018

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3018
  %53 = load ptr, ptr %52, align 8, !dbg !3018
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3024
  store ptr %53, ptr %54, align 16, !dbg !3021, !tbaa !790
  %55 = icmp eq ptr %53, null, !dbg !3022
  br i1 %55, label %128, label %56, !dbg !3023

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3012, metadata !DIExpression()), !dbg !3016
  %57 = icmp ult i32 %51, 41, !dbg !3018
  br i1 %57, label %61, label %58, !dbg !3018

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3018
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3018
  store ptr %60, ptr %7, align 8, !dbg !3018
  br label %66, !dbg !3018

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3018
  %63 = zext nneg i32 %51 to i64, !dbg !3018
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3018
  %65 = add nuw nsw i32 %51, 8, !dbg !3018
  store i32 %65, ptr %4, align 8, !dbg !3018
  br label %66, !dbg !3018

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3018
  %69 = load ptr, ptr %68, align 8, !dbg !3018
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3024
  store ptr %69, ptr %70, align 8, !dbg !3021, !tbaa !790
  %71 = icmp eq ptr %69, null, !dbg !3022
  br i1 %71, label %128, label %72, !dbg !3023

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3012, metadata !DIExpression()), !dbg !3016
  %73 = icmp ult i32 %67, 41, !dbg !3018
  br i1 %73, label %77, label %74, !dbg !3018

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3018
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3018
  store ptr %76, ptr %7, align 8, !dbg !3018
  br label %82, !dbg !3018

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3018
  %79 = zext nneg i32 %67 to i64, !dbg !3018
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3018
  %81 = add nuw nsw i32 %67, 8, !dbg !3018
  store i32 %81, ptr %4, align 8, !dbg !3018
  br label %82, !dbg !3018

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3018
  %85 = load ptr, ptr %84, align 8, !dbg !3018
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3024
  store ptr %85, ptr %86, align 16, !dbg !3021, !tbaa !790
  %87 = icmp eq ptr %85, null, !dbg !3022
  br i1 %87, label %128, label %88, !dbg !3023

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3012, metadata !DIExpression()), !dbg !3016
  %89 = icmp ult i32 %83, 41, !dbg !3018
  br i1 %89, label %93, label %90, !dbg !3018

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3018
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3018
  store ptr %92, ptr %7, align 8, !dbg !3018
  br label %98, !dbg !3018

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3018
  %95 = zext nneg i32 %83 to i64, !dbg !3018
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3018
  %97 = add nuw nsw i32 %83, 8, !dbg !3018
  store i32 %97, ptr %4, align 8, !dbg !3018
  br label %98, !dbg !3018

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3018
  %100 = load ptr, ptr %99, align 8, !dbg !3018
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3024
  store ptr %100, ptr %101, align 8, !dbg !3021, !tbaa !790
  %102 = icmp eq ptr %100, null, !dbg !3022
  br i1 %102, label %128, label %103, !dbg !3023

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3012, metadata !DIExpression()), !dbg !3016
  %104 = load ptr, ptr %7, align 8, !dbg !3018
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3018
  store ptr %105, ptr %7, align 8, !dbg !3018
  %106 = load ptr, ptr %104, align 8, !dbg !3018
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3024
  store ptr %106, ptr %107, align 16, !dbg !3021, !tbaa !790
  %108 = icmp eq ptr %106, null, !dbg !3022
  br i1 %108, label %128, label %109, !dbg !3023

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3012, metadata !DIExpression()), !dbg !3016
  %110 = load ptr, ptr %7, align 8, !dbg !3018
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3018
  store ptr %111, ptr %7, align 8, !dbg !3018
  %112 = load ptr, ptr %110, align 8, !dbg !3018
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3024
  store ptr %112, ptr %113, align 8, !dbg !3021, !tbaa !790
  %114 = icmp eq ptr %112, null, !dbg !3022
  br i1 %114, label %128, label %115, !dbg !3023

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3012, metadata !DIExpression()), !dbg !3016
  %116 = load ptr, ptr %7, align 8, !dbg !3018
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3018
  store ptr %117, ptr %7, align 8, !dbg !3018
  %118 = load ptr, ptr %116, align 8, !dbg !3018
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3024
  store ptr %118, ptr %119, align 16, !dbg !3021, !tbaa !790
  %120 = icmp eq ptr %118, null, !dbg !3022
  br i1 %120, label %128, label %121, !dbg !3023

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3012, metadata !DIExpression()), !dbg !3016
  %122 = load ptr, ptr %7, align 8, !dbg !3018
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3018
  store ptr %123, ptr %7, align 8, !dbg !3018
  %124 = load ptr, ptr %122, align 8, !dbg !3018
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3024
  store ptr %124, ptr %125, align 8, !dbg !3021, !tbaa !790
  %126 = icmp eq ptr %124, null, !dbg !3022
  %127 = select i1 %126, i64 9, i64 10, !dbg !3023
  br label %128, !dbg !3023

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3025
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3026
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3027
  ret void, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3028 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3041
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3036, metadata !DIExpression(), metadata !3041, metadata ptr %5, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3035, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3043
  call void @llvm.va_start(ptr nonnull %5), !dbg !3044
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3045
  call void @llvm.va_end(ptr nonnull %5), !dbg !3046
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3047
  ret void, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3048 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3049, !tbaa !790
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3049
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #39, !dbg !3050
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #39, !dbg !3050
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #39, !dbg !3051
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21.106) #39, !dbg !3051
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22.107, i32 noundef 5) #39, !dbg !3052
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.108) #39, !dbg !3052
  ret void, !dbg !3053
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3054 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3068
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3076
  %5 = icmp eq ptr %4, null, !dbg !3078
  br i1 %5, label %6, label %7, !dbg !3080

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3081
  unreachable, !dbg !3081

7:                                                ; preds = %3
  ret ptr %4, !dbg !3082
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3064 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3083
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3085
  %5 = icmp eq ptr %4, null, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3088

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3089
  unreachable, !dbg !3089

7:                                                ; preds = %3
  ret ptr %4, !dbg !3090
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3091 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3095, metadata !DIExpression()), !dbg !3096
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %2, metadata !3071, metadata !DIExpression()), !dbg !3098
  %3 = icmp eq ptr %2, null, !dbg !3100
  br i1 %3, label %4, label %5, !dbg !3101

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3102
  unreachable, !dbg !3102

5:                                                ; preds = %1
  ret ptr %2, !dbg !3103
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3104 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3115
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %2, metadata !3071, metadata !DIExpression()), !dbg !3118
  %3 = icmp eq ptr %2, null, !dbg !3120
  br i1 %3, label %4, label %5, !dbg !3121

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3122
  unreachable, !dbg !3122

5:                                                ; preds = %1
  ret ptr %2, !dbg !3123
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3124 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %0, metadata !3095, metadata !DIExpression()), !dbg !3130
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %2, metadata !3071, metadata !DIExpression()), !dbg !3133
  %3 = icmp eq ptr %2, null, !dbg !3135
  br i1 %3, label %4, label %5, !dbg !3136

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3137
  unreachable, !dbg !3137

5:                                                ; preds = %1
  ret ptr %2, !dbg !3138
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3151
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3153
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3155
  %5 = icmp eq ptr %4, null, !dbg !3157
  br i1 %5, label %6, label %7, !dbg !3158

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3159
  unreachable, !dbg !3159

7:                                                ; preds = %2
  ret ptr %4, !dbg !3160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3161 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3166, metadata !DIExpression()), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3175
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3177
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3179
  %5 = icmp eq ptr %4, null, !dbg !3181
  br i1 %5, label %6, label %7, !dbg !3182

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3183
  unreachable, !dbg !3183

7:                                                ; preds = %2
  ret ptr %4, !dbg !3184
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata ptr %0, metadata !3193, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !3197, metadata !DIExpression()), !dbg !3198
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3201
  %5 = icmp eq ptr %4, null, !dbg !3203
  br i1 %5, label %6, label %7, !dbg !3204

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3205
  unreachable, !dbg !3205

7:                                                ; preds = %3
  ret ptr %4, !dbg !3206
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3207 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3211, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr null, metadata !3063, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %0, metadata !3066, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3214
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3217
  %4 = icmp eq ptr %3, null, !dbg !3219
  br i1 %4, label %5, label %6, !dbg !3220

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3221
  unreachable, !dbg !3221

6:                                                ; preds = %2
  ret ptr %3, !dbg !3222
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3223 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr null, metadata !3189, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %0, metadata !3190, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3191, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr null, metadata !3193, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %0, metadata !3196, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3232
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3235
  %4 = icmp eq ptr %3, null, !dbg !3237
  br i1 %4, label %5, label %6, !dbg !3238

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3239
  unreachable, !dbg !3239

6:                                                ; preds = %2
  ret ptr %3, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3241 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3247
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %0, metadata !722, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr %1, metadata !723, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 1, metadata !724, metadata !DIExpression()), !dbg !3248
  %3 = load i64, ptr %1, align 8, !dbg !3250, !tbaa !2317
  call void @llvm.dbg.value(metadata i64 %3, metadata !725, metadata !DIExpression()), !dbg !3248
  %4 = icmp eq ptr %0, null, !dbg !3251
  br i1 %4, label %5, label %8, !dbg !3253

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3254
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3257
  br label %15, !dbg !3257

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3258
  %10 = add nuw i64 %9, 1, !dbg !3258
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3258
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3258
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %13, metadata !725, metadata !DIExpression()), !dbg !3248
  br i1 %12, label %14, label %15, !dbg !3261

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3262
  unreachable, !dbg !3262

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3248
  call void @llvm.dbg.value(metadata i64 %16, metadata !725, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %16, metadata !3066, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 1, metadata !3067, metadata !DIExpression()), !dbg !3263
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %17, metadata !3071, metadata !DIExpression()), !dbg !3266
  %18 = icmp eq ptr %17, null, !dbg !3268
  br i1 %18, label %19, label %20, !dbg !3269

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3270
  unreachable, !dbg !3270

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !722, metadata !DIExpression()), !dbg !3248
  store i64 %16, ptr %1, align 8, !dbg !3271, !tbaa !2317
  ret ptr %17, !dbg !3272
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !717 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !722, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !723, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !724, metadata !DIExpression()), !dbg !3273
  %4 = load i64, ptr %1, align 8, !dbg !3274, !tbaa !2317
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !725, metadata !DIExpression()), !dbg !3273
  %5 = icmp eq ptr %0, null, !dbg !3275
  br i1 %5, label %6, label %13, !dbg !3276

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3277
  br i1 %7, label %8, label %20, !dbg !3278

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !725, metadata !DIExpression()), !dbg !3273
  %10 = icmp ugt i64 %2, 128, !dbg !3281
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !725, metadata !DIExpression()), !dbg !3273
  br label %20, !dbg !3283

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3284
  %15 = add nuw i64 %14, 1, !dbg !3284
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3284
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3284
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !725, metadata !DIExpression()), !dbg !3273
  br i1 %17, label %19, label %20, !dbg !3285

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3286
  unreachable, !dbg !3286

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !725, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %21, metadata !3066, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3287
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3289
  call void @llvm.dbg.value(metadata ptr %22, metadata !3071, metadata !DIExpression()), !dbg !3290
  %23 = icmp eq ptr %22, null, !dbg !3292
  br i1 %23, label %24, label %25, !dbg !3293

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3294
  unreachable, !dbg !3294

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !722, metadata !DIExpression()), !dbg !3273
  store i64 %21, ptr %1, align 8, !dbg !3295, !tbaa !2317
  ret ptr %22, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !729 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !738, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !739, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !740, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !741, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !742, metadata !DIExpression()), !dbg !3297
  %6 = load i64, ptr %1, align 8, !dbg !3298, !tbaa !2317
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !743, metadata !DIExpression()), !dbg !3297
  %7 = ashr i64 %6, 1, !dbg !3299
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3299
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3299
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !744, metadata !DIExpression()), !dbg !3297
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !744, metadata !DIExpression()), !dbg !3297
  %12 = icmp sgt i64 %3, -1, !dbg !3302
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3304
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !744, metadata !DIExpression()), !dbg !3297
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3305
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3305
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !745, metadata !DIExpression()), !dbg !3297
  %18 = icmp slt i64 %17, 128, !dbg !3305
  %19 = select i1 %18, i64 128, i64 0, !dbg !3305
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !746, metadata !DIExpression()), !dbg !3297
  %21 = icmp eq i64 %20, 0, !dbg !3306
  br i1 %21, label %26, label %22, !dbg !3308

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !744, metadata !DIExpression()), !dbg !3297
  %24 = srem i64 %20, %4, !dbg !3311
  %25 = sub nsw i64 %20, %24, !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !745, metadata !DIExpression()), !dbg !3297
  br label %26, !dbg !3313

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3297
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !745, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !744, metadata !DIExpression()), !dbg !3297
  %29 = icmp eq ptr %0, null, !dbg !3314
  br i1 %29, label %30, label %31, !dbg !3316

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3317, !tbaa !2317
  br label %31, !dbg !3318

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3319
  %33 = icmp slt i64 %32, %2, !dbg !3321
  br i1 %33, label %34, label %46, !dbg !3322

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3323
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3323
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !744, metadata !DIExpression()), !dbg !3297
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3324
  br i1 %40, label %45, label %41, !dbg !3324

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3325
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3325
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !745, metadata !DIExpression()), !dbg !3297
  br i1 %43, label %45, label %46, !dbg !3326

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !3327
  unreachable, !dbg !3327

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3297
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !745, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !744, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %48, metadata !3144, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %48, metadata !3150, metadata !DIExpression()), !dbg !3330
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3332
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %50, metadata !3071, metadata !DIExpression()), !dbg !3334
  %51 = icmp eq ptr %50, null, !dbg !3336
  br i1 %51, label %52, label %53, !dbg !3337

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !3338
  unreachable, !dbg !3338

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !738, metadata !DIExpression()), !dbg !3297
  store i64 %47, ptr %1, align 8, !dbg !3339, !tbaa !2317
  ret ptr %50, !dbg !3340
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3341 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %0, metadata !3345, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 1, metadata !3348, metadata !DIExpression()), !dbg !3349
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %2, metadata !3071, metadata !DIExpression()), !dbg !3352
  %3 = icmp eq ptr %2, null, !dbg !3354
  br i1 %3, label %4, label %5, !dbg !3355

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3356
  unreachable, !dbg !3356

5:                                                ; preds = %1
  ret ptr %2, !dbg !3357
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3358 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3346 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3345, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3359
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3360
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3361
  %4 = icmp eq ptr %3, null, !dbg !3363
  br i1 %4, label %5, label %6, !dbg !3364

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3365
  unreachable, !dbg !3365

6:                                                ; preds = %2
  ret ptr %3, !dbg !3366
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3367 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %0, metadata !3371, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 1, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 1, metadata !3380, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 1, metadata !3380, metadata !DIExpression()), !dbg !3381
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %2, metadata !3071, metadata !DIExpression()), !dbg !3384
  %3 = icmp eq ptr %2, null, !dbg !3386
  br i1 %3, label %4, label %5, !dbg !3387

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3388
  unreachable, !dbg !3388

5:                                                ; preds = %1
  ret ptr %2, !dbg !3389
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3372 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3371, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3391
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3393
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3394
  %4 = icmp eq ptr %3, null, !dbg !3396
  br i1 %4, label %5, label %6, !dbg !3397

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3398
  unreachable, !dbg !3398

6:                                                ; preds = %2
  ret ptr %3, !dbg !3399
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3400 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3404, metadata !DIExpression()), !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3405, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3407
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3409
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3410
  %4 = icmp eq ptr %3, null, !dbg !3412
  br i1 %4, label %5, label %6, !dbg !3413

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3414
  unreachable, !dbg !3414

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3422
  ret ptr %3, !dbg !3423
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3424 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3428, metadata !DIExpression()), !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3433
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3435
  call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3436
  %4 = icmp eq ptr %3, null, !dbg !3438
  br i1 %4, label %5, label %6, !dbg !3439

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3440
  unreachable, !dbg !3440

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3415, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3443
  ret ptr %3, !dbg !3444
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3445 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3449, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3452
  %3 = add nsw i64 %1, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %3, metadata !3109, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %3, metadata !3111, metadata !DIExpression()), !dbg !3456
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3459
  %5 = icmp eq ptr %4, null, !dbg !3461
  br i1 %5, label %6, label %7, !dbg !3462

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3463
  unreachable, !dbg !3463

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3451, metadata !DIExpression()), !dbg !3452
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3464
  store i8 0, ptr %8, align 1, !dbg !3465, !tbaa !867
  call void @llvm.dbg.value(metadata ptr %4, metadata !3415, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3466
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3468
  ret ptr %4, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3470 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3473
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3474
  %3 = add i64 %2, 1, !dbg !3475
  call void @llvm.dbg.value(metadata ptr %0, metadata !3404, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %3, metadata !3405, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %3, metadata !3095, metadata !DIExpression()), !dbg !3478
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %4, metadata !3071, metadata !DIExpression()), !dbg !3481
  %5 = icmp eq ptr %4, null, !dbg !3483
  br i1 %5, label %6, label %7, !dbg !3484

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3485
  unreachable, !dbg !3485

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3415, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %3, metadata !3419, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3488
  ret ptr %4, !dbg !3489
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3490 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3495, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3492, metadata !DIExpression()), !dbg !3496
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.121, ptr noundef nonnull @.str.2.122, i32 noundef 5) #39, !dbg !3495
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef %2) #39, !dbg !3495
  %3 = icmp eq i32 %1, 0, !dbg !3495
  tail call void @llvm.assume(i1 %3), !dbg !3495
  tail call void @abort() #41, !dbg !3497
  unreachable, !dbg !3497
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3500, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3505
  br label %2, !dbg !3506

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3505
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3501, metadata !DIExpression()), !dbg !3505
  %4 = load i8, ptr %3, align 1, !dbg !3507, !tbaa !867
  %5 = icmp eq i8 %4, 47, !dbg !3507
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3501, metadata !DIExpression()), !dbg !3505
  br i1 %5, label %2, label %7, !dbg !3506, !llvm.loop !3509

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3510
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3512
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3505
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3513
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3503, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3501, metadata !DIExpression()), !dbg !3505
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3515

12:                                               ; preds = %7
  ret ptr %9, !dbg !3516

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3517
  %15 = icmp eq i8 %14, 0, !dbg !3517
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3521
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3521
  br label %18, !dbg !3521

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3505
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3505
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3501, metadata !DIExpression()), !dbg !3505
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3522
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3503, metadata !DIExpression()), !dbg !3514
  %22 = load i8, ptr %21, align 1, !dbg !3510, !tbaa !867
  br label %7, !dbg !3523, !llvm.loop !3524
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3530, metadata !DIExpression()), !dbg !3533
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3531, metadata !DIExpression()), !dbg !3533
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3531, metadata !DIExpression()), !dbg !3533
  %4 = icmp ugt i64 %2, 1, !dbg !3537
  br i1 %4, label %5, label %13, !dbg !3539

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3531, metadata !DIExpression()), !dbg !3533
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3540
  %8 = load i8, ptr %7, align 1, !dbg !3540, !tbaa !867
  %9 = icmp eq i8 %8, 47, !dbg !3540
  br i1 %9, label %10, label %13, !dbg !3541

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3531, metadata !DIExpression()), !dbg !3533
  %12 = icmp ugt i64 %11, 1, !dbg !3537
  br i1 %12, label %5, label %13, !dbg !3539, !llvm.loop !3543

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3532, metadata !DIExpression()), !dbg !3533
  ret i64 %14, !dbg !3546
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3585, metadata !DIExpression()), !dbg !3590
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3586, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3590
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3595
  %3 = load i32, ptr %0, align 8, !dbg !3597, !tbaa !3598
  %4 = and i32 %3, 32, !dbg !3599
  %5 = icmp eq i32 %4, 0, !dbg !3599
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3588, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3590
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3600
  %7 = icmp eq i32 %6, 0, !dbg !3601
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3590
  br i1 %5, label %8, label %18, !dbg !3602

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3604
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3590
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3605
  %11 = xor i1 %7, true, !dbg !3605
  %12 = sext i1 %11 to i32, !dbg !3605
  br i1 %10, label %21, label %13, !dbg !3605

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3606
  %15 = load i32, ptr %14, align 4, !dbg !3606, !tbaa !858
  %16 = icmp ne i32 %15, 9, !dbg !3607
  %17 = sext i1 %16 to i32, !dbg !3608
  br label %21, !dbg !3608

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3609

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3611
  store i32 0, ptr %20, align 4, !dbg !3613, !tbaa !858
  br label %21, !dbg !3611

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3590
  ret i32 %22, !dbg !3614
}

; Function Attrs: nounwind
declare !dbg !3615 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3657, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()), !dbg !3661
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3662
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3659, metadata !DIExpression()), !dbg !3661
  %3 = icmp slt i32 %2, 0, !dbg !3663
  br i1 %3, label %4, label %6, !dbg !3665

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3666
  br label %24, !dbg !3667

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3668
  %8 = icmp eq i32 %7, 0, !dbg !3668
  br i1 %8, label %13, label %9, !dbg !3670

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3671
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3672
  %12 = icmp eq i64 %11, -1, !dbg !3673
  br i1 %12, label %16, label %13, !dbg !3674

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3675
  %15 = icmp eq i32 %14, 0, !dbg !3675
  br i1 %15, label %16, label %18, !dbg !3676

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3661
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3677
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3660, metadata !DIExpression()), !dbg !3661
  br label %24, !dbg !3678

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3679
  %20 = load i32, ptr %19, align 4, !dbg !3679, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3658, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3661
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3677
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3660, metadata !DIExpression()), !dbg !3661
  %22 = icmp eq i32 %20, 0, !dbg !3680
  br i1 %22, label %24, label %23, !dbg !3678

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3682, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3660, metadata !DIExpression()), !dbg !3661
  br label %24, !dbg !3684

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3661
  ret i32 %25, !dbg !3685
}

; Function Attrs: nofree nounwind
declare !dbg !3686 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3687 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3688 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3689 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3692 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3730, metadata !DIExpression()), !dbg !3731
  %2 = icmp eq ptr %0, null, !dbg !3732
  br i1 %2, label %6, label %3, !dbg !3734

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3735
  %5 = icmp eq i32 %4, 0, !dbg !3735
  br i1 %5, label %6, label %8, !dbg !3736

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3737
  br label %16, !dbg !3738

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3744
  %9 = load i32, ptr %0, align 8, !dbg !3746, !tbaa !3598
  %10 = and i32 %9, 256, !dbg !3748
  %11 = icmp eq i32 %10, 0, !dbg !3748
  br i1 %11, label %14, label %12, !dbg !3749

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3750
  br label %14, !dbg !3750

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3751
  br label %16, !dbg !3752

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3731
  ret i32 %17, !dbg !3753
}

; Function Attrs: nofree nounwind
declare !dbg !3754 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3794, metadata !DIExpression()), !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3795, metadata !DIExpression()), !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3796, metadata !DIExpression()), !dbg !3800
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3801
  %5 = load ptr, ptr %4, align 8, !dbg !3801, !tbaa !3802
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3803
  %7 = load ptr, ptr %6, align 8, !dbg !3803, !tbaa !3804
  %8 = icmp eq ptr %5, %7, !dbg !3805
  br i1 %8, label %9, label %27, !dbg !3806

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3807
  %11 = load ptr, ptr %10, align 8, !dbg !3807, !tbaa !1142
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3808
  %13 = load ptr, ptr %12, align 8, !dbg !3808, !tbaa !3809
  %14 = icmp eq ptr %11, %13, !dbg !3810
  br i1 %14, label %15, label %27, !dbg !3811

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3812
  %17 = load ptr, ptr %16, align 8, !dbg !3812, !tbaa !3813
  %18 = icmp eq ptr %17, null, !dbg !3814
  br i1 %18, label %19, label %27, !dbg !3815

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3816
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3797, metadata !DIExpression()), !dbg !3818
  %22 = icmp eq i64 %21, -1, !dbg !3819
  br i1 %22, label %29, label %23, !dbg !3821

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3822, !tbaa !3598
  %25 = and i32 %24, -17, !dbg !3822
  store i32 %25, ptr %0, align 8, !dbg !3822, !tbaa !3598
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3823
  store i64 %21, ptr %26, align 8, !dbg !3824, !tbaa !3825
  br label %29, !dbg !3826

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3827
  br label %29, !dbg !3828

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3800
  ret i32 %30, !dbg !3829
}

; Function Attrs: nofree nounwind
declare !dbg !3830 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3838, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3839, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3840, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3841, metadata !DIExpression()), !dbg !3843
  %5 = icmp eq ptr %1, null, !dbg !3844
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3846
  %7 = select i1 %5, ptr @.str.138, ptr %1, !dbg !3846
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3840, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3839, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3838, metadata !DIExpression()), !dbg !3843
  %9 = icmp eq ptr %3, null, !dbg !3847
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3841, metadata !DIExpression()), !dbg !3843
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3842, metadata !DIExpression()), !dbg !3843
  %12 = icmp ult i64 %11, -3, !dbg !3851
  br i1 %12, label %13, label %17, !dbg !3853

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !3854
  %15 = icmp eq i32 %14, 0, !dbg !3854
  br i1 %15, label %16, label %29, !dbg !3855

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3856, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %10, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 8, metadata !3867, metadata !DIExpression()), !dbg !3868
  store i64 0, ptr %10, align 1, !dbg !3870
  br label %29, !dbg !3871

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3872
  br i1 %18, label %19, label %20, !dbg !3874

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !3875
  unreachable, !dbg !3875

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3876

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !3878
  br i1 %23, label %29, label %24, !dbg !3879

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3880
  br i1 %25, label %29, label %26, !dbg !3883

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3884, !tbaa !867
  %28 = zext i8 %27 to i32, !dbg !3885
  store i32 %28, ptr %6, align 4, !dbg !3886, !tbaa !858
  br label %29, !dbg !3887

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3843
  ret i64 %30, !dbg !3888
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3889 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3898, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3899, metadata !DIExpression()), !dbg !3901
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3902
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3900, metadata !DIExpression()), !dbg !3901
  br i1 %5, label %6, label %8, !dbg !3904

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !3905
  store i32 12, ptr %7, align 4, !dbg !3907, !tbaa !858
  br label %12, !dbg !3908

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3900, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %9, metadata !3912, metadata !DIExpression()), !dbg !3913
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3915
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !3916
  br label %12, !dbg !3917

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3901
  ret ptr %13, !dbg !3918
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3919 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3924, metadata !DIExpression(), metadata !3928, metadata ptr %2, metadata !DIExpression()), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3929
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !3930
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !3931
  %4 = icmp eq i32 %3, 0, !dbg !3931
  br i1 %4, label %5, label %12, !dbg !3933

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3934, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata !825, metadata !3937, metadata !DIExpression()), !dbg !3938
  %6 = load i16, ptr %2, align 16, !dbg !3941
  %7 = icmp eq i16 %6, 67, !dbg !3941
  br i1 %7, label %11, label %8, !dbg !3942

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3934, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !3937, metadata !DIExpression()), !dbg !3943
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !3945
  %10 = icmp eq i32 %9, 0, !dbg !3946
  br i1 %10, label %11, label %12, !dbg !3947

11:                                               ; preds = %8, %5
  br label %12, !dbg !3948

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3929
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !3949
  ret i1 %13, !dbg !3949
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3954, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3955, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3956, metadata !DIExpression()), !dbg !3957
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !3958
  ret i32 %4, !dbg !3959
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3960 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3965
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !3966
  ret ptr %2, !dbg !3967
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3968 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3972
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3973
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !3972
  ret ptr %2, !dbg !3974
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3975 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3984
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3978, metadata !DIExpression()), !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3979, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3985
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3987
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3980, metadata !DIExpression()), !dbg !3984
  %5 = icmp eq ptr %4, null, !dbg !3988
  br i1 %5, label %6, label %9, !dbg !3989

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3990
  br i1 %7, label %19, label %8, !dbg !3993

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3994, !tbaa !867
  br label %19, !dbg !3995

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3981, metadata !DIExpression()), !dbg !3997
  %11 = icmp ult i64 %10, %2, !dbg !3998
  br i1 %11, label %12, label %14, !dbg !4000

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4001
  call void @llvm.dbg.value(metadata ptr %1, metadata !4003, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %4, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %13, metadata !4007, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4010
  br label %19, !dbg !4011

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4012
  br i1 %15, label %19, label %16, !dbg !4015

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4016
  call void @llvm.dbg.value(metadata ptr %1, metadata !4003, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %4, metadata !4006, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %17, metadata !4007, metadata !DIExpression()), !dbg !4018
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4020
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4021
  store i8 0, ptr %18, align 1, !dbg !4022, !tbaa !867
  br label %19, !dbg !4023

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4024
  ret i32 %20, !dbg !4025
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !351, !355, !700, !702, !370, !668, !704, !421, !435, !486, !706, !660, !713, !748, !750, !753, !755, !757, !759, !684, !761, !763, !767, !769}
!llvm.ident = !{!771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771, !771}
!llvm.module.flags = !{!772, !773, !774, !775, !776, !777, !778}

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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/basename.o -MD -MP -MF src/.deps/basename.Tpo -c src/basename.c -o src/.basename.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !98, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 18, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!351 = distinct !DICompileUnit(language: DW_LANG_C11, file: !348, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !352, splitDebugInlining: false, nameTableKind: None)
!352 = !{!346, !349}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "file_name", scope: !355, file: !356, line: 45, type: !105, isLocal: true, isDefinition: true)
!355 = distinct !DICompileUnit(language: DW_LANG_C11, file: !356, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !416, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!100, !107}
!373 = !{!374, !376, !395, !397, !399, !401, !368, !403, !405, !407, !409, !414}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !216, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !105, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !388)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !78, !78, !105, !84, !105, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !383)
!383 = !{!384, !385, !386, !387}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !382, file: !371, baseType: !84, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !382, file: !371, baseType: !84, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !382, file: !371, baseType: !100, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !382, file: !371, baseType: !100, size: 64, offset: 128)
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !78)
!390 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !78)
!391 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !105)
!392 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !84)
!393 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !105)
!394 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !84, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !223, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !255, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !230, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !84, isLocal: false, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !78, isLocal: false, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !250, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 21)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !216, isLocal: true, isDefinition: true)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null}
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "program_name", scope: !421, file: !422, line: 31, type: !105, isLocal: false, isDefinition: true)
!421 = distinct !DICompileUnit(language: DW_LANG_C11, file: !422, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !423, globals: !424, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!423 = !{!100, !99}
!424 = !{!419, !425, !427}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !422, line: 46, type: !255, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !422, line: 49, type: !223, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "utf07FF", scope: !431, file: !432, line: 46, type: !459, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "proper_name_lite", scope: !432, file: !432, line: 38, type: !433, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !437)
!432 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!433 = !DISubroutineType(types: !434)
!434 = !{!105, !105, !105}
!435 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !436, splitDebugInlining: false, nameTableKind: None)
!436 = !{!429}
!437 = !{!438, !439, !440, !441, !446}
!438 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !431, file: !432, line: 38, type: !105)
!439 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !431, file: !432, line: 38, type: !105)
!440 = !DILocalVariable(name: "translation", scope: !431, file: !432, line: 40, type: !105)
!441 = !DILocalVariable(name: "w", scope: !431, file: !432, line: 47, type: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !443, line: 37, baseType: !444)
!443 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !183, line: 57, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !183, line: 42, baseType: !84)
!446 = !DILocalVariable(name: "mbs", scope: !431, file: !432, line: 48, type: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !448, line: 6, baseType: !449)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !450, line: 21, baseType: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 13, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !451, file: !450, line: 15, baseType: !78, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !451, file: !450, line: 20, baseType: !455, size: 32, offset: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !450, line: 16, size: 32, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !455, file: !450, line: 18, baseType: !84, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !455, file: !450, line: 19, baseType: !223, size: 32)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16, elements: !231)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !462, line: 78, type: !255, isLocal: true, isDefinition: true)
!462 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !462, line: 79, type: !69, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !462, line: 80, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 13)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !462, line: 81, type: !467, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !462, line: 82, type: !205, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !462, line: 83, type: !230, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !462, line: 84, type: !255, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !462, line: 85, type: !250, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !462, line: 86, type: !250, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !462, line: 87, type: !255, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !486, file: !462, line: 76, type: !572, isLocal: false, isDefinition: true)
!486 = distinct !DICompileUnit(language: DW_LANG_C11, file: !462, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !487, retainedTypes: !507, globals: !508, splitDebugInlining: false, nameTableKind: None)
!487 = !{!488, !502, !82}
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !489, line: 42, baseType: !84, size: 32, elements: !490)
!489 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!491 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!492 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!493 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!494 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!495 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!496 = !DIEnumerator(name: "c_quoting_style", value: 5)
!497 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!498 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!499 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!500 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!501 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!502 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !489, line: 254, baseType: !84, size: 32, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!505 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!506 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!507 = !{!100, !78, !101, !102}
!508 = !{!460, !463, !465, !470, !472, !474, !476, !478, !480, !482, !484, !509, !513, !523, !525, !530, !532, !534, !536, !538, !561, !568, !570}
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !486, file: !462, line: 92, type: !511, isLocal: false, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 320, elements: !60)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !486, file: !462, line: 1040, type: !515, isLocal: false, isDefinition: true)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !462, line: 56, size: 448, elements: !516)
!516 = !{!517, !518, !519, !521, !522}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !515, file: !462, line: 59, baseType: !488, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !462, line: 62, baseType: !78, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !515, file: !462, line: 66, baseType: !520, size: 256, offset: 64)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !515, file: !462, line: 69, baseType: !105, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !515, file: !462, line: 72, baseType: !105, size: 64, offset: 384)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !486, file: !462, line: 107, type: !515, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "slot0", scope: !486, file: !462, line: 831, type: !527, isLocal: true, isDefinition: true)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 256)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !462, line: 321, type: !230, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !462, line: 357, type: !230, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !462, line: 358, type: !230, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !462, line: 199, type: !250, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "quote", scope: !540, file: !462, line: 228, type: !559, isLocal: true, isDefinition: true)
!540 = distinct !DISubprogram(name: "gettext_quote", scope: !462, file: !462, line: 197, type: !541, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!105, !105, !488}
!543 = !{!544, !545, !546, !547, !548}
!544 = !DILocalVariable(name: "msgid", arg: 1, scope: !540, file: !462, line: 197, type: !105)
!545 = !DILocalVariable(name: "s", arg: 2, scope: !540, file: !462, line: 197, type: !488)
!546 = !DILocalVariable(name: "translation", scope: !540, file: !462, line: 199, type: !105)
!547 = !DILocalVariable(name: "w", scope: !540, file: !462, line: 229, type: !442)
!548 = !DILocalVariable(name: "mbs", scope: !540, file: !462, line: 230, type: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !448, line: 6, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !450, line: 21, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 13, size: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !551, file: !450, line: 15, baseType: !78, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !551, file: !450, line: 20, baseType: !555, size: 32, offset: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !450, line: 16, size: 32, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !555, file: !450, line: 18, baseType: !84, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !555, file: !450, line: 19, baseType: !223, size: 32)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !560)
!560 = !{!232, !225}
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "slotvec", scope: !486, file: !462, line: 834, type: !563, isLocal: true, isDefinition: true)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !462, line: 823, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !564, file: !462, line: 825, baseType: !102, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !564, file: !462, line: 826, baseType: !99, size: 64, offset: 64)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "nslots", scope: !486, file: !462, line: 832, type: !78, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "slotvec0", scope: !486, file: !462, line: 833, type: !564, isLocal: true, isDefinition: true)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 704, elements: !574)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!574 = !{!575}
!575 = !DISubrange(count: 11)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !578, line: 67, type: !323, isLocal: true, isDefinition: true)
!578 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !578, line: 69, type: !250, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !578, line: 83, type: !250, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !578, line: 83, type: !223, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !578, line: 85, type: !230, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !578, line: 88, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 171)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !578, line: 88, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 34)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !578, line: 105, type: !116, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !578, line: 109, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 23)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !578, line: 113, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 28)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !578, line: 120, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 32)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !578, line: 127, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 36)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !578, line: 134, type: !274, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !578, line: 142, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 44)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !578, line: 150, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 48)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !578, line: 159, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 52)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !578, line: 170, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 60)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !578, line: 248, type: !205, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !578, line: 248, type: !299, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !578, line: 254, type: !205, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !578, line: 254, type: !111, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !578, line: 254, type: !274, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !578, line: 259, type: !3, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !578, line: 259, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 29)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !660, file: !661, line: 26, type: !663, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!662 = !{!658}
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 376, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 47)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "exit_failure", scope: !668, file: !669, line: 24, type: !671, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!670 = !{!666}
!671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !239, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !250, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !123, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 108, type: !54, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "internal_state", scope: !684, file: !681, line: 97, type: !687, isLocal: true, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !{!100, !102, !107}
!686 = !{!679, !682}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !448, line: 6, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !450, line: 21, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 13, size: 64, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !689, file: !450, line: 15, baseType: !78, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !689, file: !450, line: 20, baseType: !693, size: 32, offset: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !450, line: 16, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !693, file: !450, line: 18, baseType: !84, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !693, file: !450, line: 19, baseType: !223, size: 32)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !69, isLocal: true, isDefinition: true)
!699 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename.o -MD -MP -MF lib/.deps/libcoreutils_a-basename.Tpo -c lib/basename.c -o lib/.libcoreutils_a-basename.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-stripslash.o -MD -MP -MF lib/.deps/libcoreutils_a-stripslash.Tpo -c lib/stripslash.c -o lib/.libcoreutils_a-stripslash.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !578, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !707, retainedTypes: !711, globals: !712, splitDebugInlining: false, nameTableKind: None)
!707 = !{!708}
!708 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !578, line: 40, baseType: !84, size: 32, elements: !709)
!709 = !{!710}
!710 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!711 = !{!100}
!712 = !{!576, !579, !581, !583, !585, !587, !592, !597, !599, !604, !609, !614, !619, !621, !626, !631, !636, !641, !643, !645, !647, !649, !651, !653}
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !714, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !715, retainedTypes: !747, splitDebugInlining: false, nameTableKind: None)
!714 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!715 = !{!716, !728}
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !717, file: !714, line: 188, baseType: !84, size: 32, elements: !726)
!717 = distinct !DISubprogram(name: "x2nrealloc", scope: !714, file: !714, line: 176, type: !718, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !721)
!718 = !DISubroutineType(types: !719)
!719 = !{!100, !100, !720, !102}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!721 = !{!722, !723, !724, !725}
!722 = !DILocalVariable(name: "p", arg: 1, scope: !717, file: !714, line: 176, type: !100)
!723 = !DILocalVariable(name: "pn", arg: 2, scope: !717, file: !714, line: 176, type: !720)
!724 = !DILocalVariable(name: "s", arg: 3, scope: !717, file: !714, line: 176, type: !102)
!725 = !DILocalVariable(name: "n", scope: !717, file: !714, line: 178, type: !102)
!726 = !{!727}
!727 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!728 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !729, file: !714, line: 228, baseType: !84, size: 32, elements: !726)
!729 = distinct !DISubprogram(name: "xpalloc", scope: !714, file: !714, line: 223, type: !730, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !737)
!730 = !DISubroutineType(types: !731)
!731 = !{!100, !100, !732, !733, !735, !733}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !734, line: 130, baseType: !735)
!734 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !736, line: 18, baseType: !184)
!736 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746}
!738 = !DILocalVariable(name: "pa", arg: 1, scope: !729, file: !714, line: 223, type: !100)
!739 = !DILocalVariable(name: "pn", arg: 2, scope: !729, file: !714, line: 223, type: !732)
!740 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !729, file: !714, line: 223, type: !733)
!741 = !DILocalVariable(name: "n_max", arg: 4, scope: !729, file: !714, line: 223, type: !735)
!742 = !DILocalVariable(name: "s", arg: 5, scope: !729, file: !714, line: 223, type: !733)
!743 = !DILocalVariable(name: "n0", scope: !729, file: !714, line: 230, type: !733)
!744 = !DILocalVariable(name: "n", scope: !729, file: !714, line: 237, type: !733)
!745 = !DILocalVariable(name: "nbytes", scope: !729, file: !714, line: 248, type: !733)
!746 = !DILocalVariable(name: "adjusted_nbytes", scope: !729, file: !714, line: 252, type: !733)
!747 = !{!99, !100}
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !749, splitDebugInlining: false, nameTableKind: None)
!749 = !{!672, !675, !677}
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !752, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!752 = !{!99}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!764 = !{!765, !697}
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !230, isLocal: true, isDefinition: true)
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!771 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!772 = !{i32 7, !"Dwarf Version", i32 5}
!773 = !{i32 2, !"Debug Info Version", i32 3}
!774 = !{i32 1, !"wchar_size", i32 4}
!775 = !{i32 8, !"PIC Level", i32 2}
!776 = !{i32 7, !"PIE Level", i32 2}
!777 = !{i32 7, !"uwtable", i32 2}
!778 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!779 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 41, type: !780, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !78}
!782 = !{!783}
!783 = !DILocalVariable(name: "status", arg: 1, scope: !779, file: !2, line: 41, type: !78)
!784 = !DILocation(line: 0, scope: !779)
!785 = !DILocation(line: 43, column: 14, scope: !786)
!786 = distinct !DILexicalBlock(scope: !779, file: !2, line: 43, column: 7)
!787 = !DILocation(line: 43, column: 7, scope: !779)
!788 = !DILocation(line: 44, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !2, line: 44, column: 5)
!790 = !{!791, !791, i64 0}
!791 = !{!"any pointer", !792, i64 0}
!792 = !{!"omnipotent char", !793, i64 0}
!793 = !{!"Simple C/C++ TBAA"}
!794 = !DILocation(line: 47, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !786, file: !2, line: 46, column: 5)
!796 = !DILocation(line: 52, column: 7, scope: !795)
!797 = !DILocation(line: 736, column: 3, scope: !798, inlinedAt: !799)
!798 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !417, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!799 = distinct !DILocation(line: 57, column: 7, scope: !795)
!800 = !DILocation(line: 59, column: 7, scope: !795)
!801 = !DILocation(line: 63, column: 7, scope: !795)
!802 = !DILocation(line: 67, column: 7, scope: !795)
!803 = !DILocation(line: 71, column: 7, scope: !795)
!804 = !DILocation(line: 72, column: 7, scope: !795)
!805 = !DILocation(line: 73, column: 7, scope: !795)
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
!824 = distinct !DILocation(line: 82, column: 7, scope: !795)
!825 = !{}
!826 = !DILocation(line: 857, column: 3, scope: !807, inlinedAt: !824)
!827 = !DILocation(line: 861, column: 29, scope: !807, inlinedAt: !824)
!828 = !DILocation(line: 862, column: 7, scope: !829, inlinedAt: !824)
!829 = distinct !DILexicalBlock(scope: !807, file: !77, line: 862, column: 7)
!830 = !DILocation(line: 862, column: 19, scope: !829, inlinedAt: !824)
!831 = !DILocation(line: 862, column: 22, scope: !829, inlinedAt: !824)
!832 = !DILocation(line: 862, column: 7, scope: !807, inlinedAt: !824)
!833 = !DILocation(line: 868, column: 7, scope: !834, inlinedAt: !824)
!834 = distinct !DILexicalBlock(scope: !829, file: !77, line: 863, column: 5)
!835 = !DILocation(line: 870, column: 5, scope: !834, inlinedAt: !824)
!836 = !DILocation(line: 875, column: 3, scope: !807, inlinedAt: !824)
!837 = !DILocation(line: 877, column: 3, scope: !807, inlinedAt: !824)
!838 = !DILocation(line: 84, column: 3, scope: !779)
!839 = !DISubprogram(name: "dcgettext", scope: !840, file: !840, line: 51, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!840 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!841 = !DISubroutineType(types: !842)
!842 = !{!99, !105, !105, !78}
!843 = !DISubprogram(name: "__fprintf_chk", scope: !844, file: !844, line: 93, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!845 = !DISubroutineType(types: !846)
!846 = !{!78, !847, !78, !848, null}
!847 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!848 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!849 = !DISubprogram(name: "__printf_chk", scope: !844, file: !844, line: 95, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DISubroutineType(types: !851)
!851 = !{!78, !78, !848, null}
!852 = !DISubprogram(name: "fputs_unlocked", scope: !853, file: !853, line: 691, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!854 = !DISubroutineType(types: !855)
!855 = !{!78, !848, !847}
!856 = !DILocation(line: 0, scope: !133)
!857 = !DILocation(line: 581, column: 7, scope: !141)
!858 = !{!859, !859, i64 0}
!859 = !{!"int", !792, i64 0}
!860 = !DILocation(line: 581, column: 19, scope: !141)
!861 = !DILocation(line: 581, column: 7, scope: !133)
!862 = !DILocation(line: 585, column: 26, scope: !140)
!863 = !DILocation(line: 0, scope: !140)
!864 = !DILocation(line: 586, column: 23, scope: !140)
!865 = !DILocation(line: 586, column: 28, scope: !140)
!866 = !DILocation(line: 586, column: 32, scope: !140)
!867 = !{!792, !792, i64 0}
!868 = !DILocation(line: 586, column: 38, scope: !140)
!869 = !DILocalVariable(name: "__s1", arg: 1, scope: !870, file: !871, line: 1359, type: !105)
!870 = distinct !DISubprogram(name: "streq", scope: !871, file: !871, line: 1359, type: !872, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !874)
!871 = !DIFile(filename: "./lib/string.h", directory: "/src")
!872 = !DISubroutineType(types: !873)
!873 = !{!143, !105, !105}
!874 = !{!869, !875}
!875 = !DILocalVariable(name: "__s2", arg: 2, scope: !870, file: !871, line: 1359, type: !105)
!876 = !DILocation(line: 0, scope: !870, inlinedAt: !877)
!877 = distinct !DILocation(line: 586, column: 41, scope: !140)
!878 = !DILocation(line: 1361, column: 11, scope: !870, inlinedAt: !877)
!879 = !DILocation(line: 1361, column: 10, scope: !870, inlinedAt: !877)
!880 = !DILocation(line: 586, column: 19, scope: !140)
!881 = !DILocation(line: 587, column: 5, scope: !140)
!882 = !DILocation(line: 588, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !133, file: !77, line: 588, column: 7)
!884 = !DILocation(line: 588, column: 7, scope: !133)
!885 = !DILocation(line: 590, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !77, line: 589, column: 5)
!887 = !DILocation(line: 591, column: 7, scope: !886)
!888 = !DILocation(line: 595, column: 37, scope: !133)
!889 = !DILocation(line: 595, column: 35, scope: !133)
!890 = !DILocation(line: 596, column: 29, scope: !133)
!891 = !DILocation(line: 597, column: 8, scope: !149)
!892 = !DILocation(line: 597, column: 7, scope: !133)
!893 = !DILocation(line: 604, column: 24, scope: !148)
!894 = !DILocation(line: 604, column: 12, scope: !149)
!895 = !DILocation(line: 0, scope: !147)
!896 = !DILocation(line: 610, column: 16, scope: !147)
!897 = !DILocation(line: 610, column: 7, scope: !147)
!898 = !DILocation(line: 611, column: 21, scope: !147)
!899 = !{!900, !900, i64 0}
!900 = !{!"short", !792, i64 0}
!901 = !DILocation(line: 611, column: 19, scope: !147)
!902 = !DILocation(line: 611, column: 16, scope: !147)
!903 = !DILocation(line: 610, column: 30, scope: !147)
!904 = distinct !{!904, !897, !898, !905}
!905 = !{!"llvm.loop.mustprogress"}
!906 = !DILocation(line: 612, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !147, file: !77, line: 612, column: 11)
!908 = !DILocation(line: 612, column: 11, scope: !147)
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
!933 = distinct !{!933, !911, !934, !905}
!934 = !DILocation(line: 641, column: 5, scope: !133)
!935 = !DILocation(line: 644, column: 3, scope: !133)
!936 = !DILocation(line: 0, scope: !870, inlinedAt: !937)
!937 = distinct !DILocation(line: 648, column: 31, scope: !133)
!938 = !DILocation(line: 0, scope: !870, inlinedAt: !939)
!939 = distinct !DILocation(line: 649, column: 31, scope: !133)
!940 = !DILocation(line: 0, scope: !870, inlinedAt: !941)
!941 = distinct !DILocation(line: 650, column: 31, scope: !133)
!942 = !DILocation(line: 0, scope: !870, inlinedAt: !943)
!943 = distinct !DILocation(line: 651, column: 31, scope: !133)
!944 = !DILocation(line: 0, scope: !870, inlinedAt: !945)
!945 = distinct !DILocation(line: 652, column: 31, scope: !133)
!946 = !DILocation(line: 0, scope: !870, inlinedAt: !947)
!947 = distinct !DILocation(line: 653, column: 31, scope: !133)
!948 = !DILocation(line: 0, scope: !870, inlinedAt: !949)
!949 = distinct !DILocation(line: 654, column: 31, scope: !133)
!950 = !DILocation(line: 0, scope: !870, inlinedAt: !951)
!951 = distinct !DILocation(line: 655, column: 31, scope: !133)
!952 = !DILocation(line: 0, scope: !870, inlinedAt: !953)
!953 = distinct !DILocation(line: 656, column: 31, scope: !133)
!954 = !DILocation(line: 0, scope: !870, inlinedAt: !955)
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
!973 = !DISubprogram(name: "setlocale", scope: !974, file: !974, line: 122, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!975 = !DISubroutineType(types: !976)
!976 = !{!99, !78, !105}
!977 = !DISubprogram(name: "strncmp", scope: !978, file: !978, line: 159, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!979 = !DISubroutineType(types: !980)
!980 = !{!78, !105, !105, !102}
!981 = !DISubprogram(name: "exit", scope: !982, file: !982, line: 624, type: !780, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!982 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!983 = !DISubprogram(name: "getenv", scope: !982, file: !982, line: 641, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!99, !105}
!986 = !DISubprogram(name: "strcmp", scope: !978, file: !978, line: 156, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!78, !105, !105}
!989 = !DISubprogram(name: "strspn", scope: !978, file: !978, line: 297, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!104, !105, !105}
!992 = !DISubprogram(name: "strchr", scope: !978, file: !978, line: 246, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!99, !105, !78}
!995 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1001 = !DISubprogram(name: "strcspn", scope: !978, file: !978, line: 293, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubprogram(name: "fwrite_unlocked", scope: !853, file: !853, line: 704, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!102, !1005, !102, !102, !847}
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
!1028 = !DILocation(line: 145, column: 11, scope: !1019)
!1029 = !DILocation(line: 143, column: 15, scope: !1019)
!1030 = !DILocation(line: 0, scope: !1019)
!1031 = distinct !{!1031, !1032}
!1032 = !{!"llvm.loop.peeled.count", i32 1}
!1033 = !DILocation(line: 130, column: 8, scope: !1008)
!1034 = !DILocation(line: 151, column: 20, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 149, column: 9)
!1036 = !DILocation(line: 151, column: 11, scope: !1035)
!1037 = !DILocation(line: 163, column: 9, scope: !1035)
!1038 = !DILocation(line: 164, column: 9, scope: !1035)
!1039 = !DILocation(line: 167, column: 11, scope: !1035)
!1040 = !DILocation(line: 169, column: 5, scope: !1008)
!1041 = !DILocation(line: 171, column: 14, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 171, column: 7)
!1043 = !DILocation(line: 171, column: 12, scope: !1042)
!1044 = !DILocation(line: 171, column: 7, scope: !1008)
!1045 = !DILocation(line: 173, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 172, column: 5)
!1047 = !DILocation(line: 174, column: 7, scope: !1046)
!1048 = !DILocation(line: 177, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 177, column: 7)
!1050 = !DILocation(line: 177, column: 23, scope: !1049)
!1051 = !DILocation(line: 179, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 178, column: 5)
!1053 = !DILocation(line: 180, column: 7, scope: !1052)
!1054 = !DILocation(line: 183, column: 7, scope: !1008)
!1055 = !DILocation(line: 186, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 185, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 185, column: 7)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 184, column: 5)
!1059 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 183, column: 7)
!1060 = !DILocation(line: 186, column: 9, scope: !1056)
!1061 = !DILocation(line: 185, column: 35, scope: !1056)
!1062 = !DILocation(line: 185, column: 21, scope: !1056)
!1063 = !DILocation(line: 185, column: 7, scope: !1057)
!1064 = distinct !{!1064, !1063, !1065, !905}
!1065 = !DILocation(line: 186, column: 57, scope: !1057)
!1066 = !DILocation(line: 189, column: 23, scope: !1059)
!1067 = !DILocation(line: 190, column: 34, scope: !1059)
!1068 = !DILocation(line: 190, column: 23, scope: !1059)
!1069 = !DILocation(line: 190, column: 44, scope: !1059)
!1070 = !DILocation(line: 189, column: 5, scope: !1059)
!1071 = !DILocation(line: 194, column: 1, scope: !1008)
!1072 = !DISubprogram(name: "bindtextdomain", scope: !840, file: !840, line: 86, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!99, !105, !105}
!1075 = !DISubprogram(name: "textdomain", scope: !840, file: !840, line: 82, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubprogram(name: "atexit", scope: !982, file: !982, line: 602, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!78, !416}
!1079 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!78, !78, !1082, !105, !1084, !344}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1085 = distinct !DISubprogram(name: "perform_basename", scope: !2, file: !2, line: 107, type: !1086, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !105, !105, !143}
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DILocalVariable(name: "string", arg: 1, scope: !1085, file: !2, line: 107, type: !105)
!1090 = !DILocalVariable(name: "suffix", arg: 2, scope: !1085, file: !2, line: 107, type: !105)
!1091 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !1085, file: !2, line: 107, type: !143)
!1092 = !DILocalVariable(name: "name", scope: !1085, file: !2, line: 109, type: !99)
!1093 = !DILocation(line: 0, scope: !1085)
!1094 = !DILocation(line: 109, column: 16, scope: !1085)
!1095 = !DILocation(line: 110, column: 3, scope: !1085)
!1096 = !DILocation(line: 118, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 118, column: 7)
!1098 = !DILocation(line: 118, column: 14, scope: !1097)
!1099 = !DILocation(line: 118, column: 17, scope: !1097)
!1100 = !DILocation(line: 118, column: 46, scope: !1097)
!1101 = !DILocalVariable(name: "name", arg: 1, scope: !1102, file: !2, line: 91, type: !99)
!1102 = distinct !DISubprogram(name: "remove_suffix", scope: !2, file: !2, line: 91, type: !1103, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !99, !105}
!1105 = !{!1101, !1106, !1107, !1108}
!1106 = !DILocalVariable(name: "suffix", arg: 2, scope: !1102, file: !2, line: 91, type: !105)
!1107 = !DILocalVariable(name: "np", scope: !1102, file: !2, line: 93, type: !99)
!1108 = !DILocalVariable(name: "sp", scope: !1102, file: !2, line: 94, type: !105)
!1109 = !DILocation(line: 0, scope: !1102, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 119, column: 5, scope: !1097)
!1111 = !DILocation(line: 93, column: 21, scope: !1102, inlinedAt: !1110)
!1112 = !DILocation(line: 93, column: 19, scope: !1102, inlinedAt: !1110)
!1113 = !DILocation(line: 94, column: 29, scope: !1102, inlinedAt: !1110)
!1114 = !DILocation(line: 94, column: 27, scope: !1102, inlinedAt: !1110)
!1115 = !DILocation(line: 96, column: 3, scope: !1102, inlinedAt: !1110)
!1116 = !DILocation(line: 96, column: 13, scope: !1102, inlinedAt: !1110)
!1117 = !DILocation(line: 96, column: 20, scope: !1102, inlinedAt: !1110)
!1118 = !DILocation(line: 97, column: 10, scope: !1119, inlinedAt: !1110)
!1119 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 97, column: 9)
!1120 = !DILocation(line: 97, column: 9, scope: !1119, inlinedAt: !1110)
!1121 = !DILocation(line: 97, column: 19, scope: !1119, inlinedAt: !1110)
!1122 = !DILocation(line: 97, column: 18, scope: !1119, inlinedAt: !1110)
!1123 = !DILocation(line: 97, column: 15, scope: !1119, inlinedAt: !1110)
!1124 = !DILocation(line: 97, column: 9, scope: !1102, inlinedAt: !1110)
!1125 = distinct !{!1125, !1115, !1126, !905}
!1126 = !DILocation(line: 98, column: 7, scope: !1102, inlinedAt: !1110)
!1127 = !DILocation(line: 99, column: 7, scope: !1102, inlinedAt: !1110)
!1128 = !DILocation(line: 100, column: 9, scope: !1129, inlinedAt: !1110)
!1129 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 99, column: 7)
!1130 = !DILocation(line: 100, column: 5, scope: !1129, inlinedAt: !1110)
!1131 = !DILocation(line: 121, column: 3, scope: !1085)
!1132 = !DILocation(line: 122, column: 3, scope: !1085)
!1133 = !DILocalVariable(name: "__c", arg: 1, scope: !1134, file: !1135, line: 108, type: !78)
!1134 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1135, file: !1135, line: 108, type: !1136, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1138)
!1135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!78, !78}
!1138 = !{!1133}
!1139 = !DILocation(line: 0, scope: !1134, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 122, column: 3, scope: !1085)
!1141 = !DILocation(line: 110, column: 10, scope: !1134, inlinedAt: !1140)
!1142 = !{!1143, !791, i64 40}
!1143 = !{!"_IO_FILE", !859, i64 0, !791, i64 8, !791, i64 16, !791, i64 24, !791, i64 32, !791, i64 40, !791, i64 48, !791, i64 56, !791, i64 64, !791, i64 72, !791, i64 80, !791, i64 88, !791, i64 96, !791, i64 104, !859, i64 112, !859, i64 116, !1144, i64 120, !900, i64 128, !792, i64 130, !792, i64 131, !791, i64 136, !1144, i64 144, !791, i64 152, !791, i64 160, !791, i64 168, !791, i64 176, !1144, i64 184, !859, i64 192, !792, i64 196}
!1144 = !{!"long", !792, i64 0}
!1145 = !{!1143, !791, i64 48}
!1146 = !{!"branch_weights", i32 2000, i32 1}
!1147 = !DILocation(line: 123, column: 3, scope: !1085)
!1148 = !DILocation(line: 124, column: 1, scope: !1085)
!1149 = !DISubprogram(name: "strlen", scope: !978, file: !978, line: 407, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!104, !105}
!1152 = !DISubprogram(name: "__overflow", scope: !853, file: !853, line: 886, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!78, !156, !78}
!1155 = !DISubprogram(name: "free", scope: !982, file: !982, line: 555, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !100}
!1158 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !808, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1159)
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "file", arg: 1, scope: !1158, file: !356, line: 50, type: !105)
!1161 = !DILocation(line: 0, scope: !1158)
!1162 = !DILocation(line: 52, column: 13, scope: !1158)
!1163 = !DILocation(line: 53, column: 1, scope: !1158)
!1164 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1165, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !143}
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "ignore", arg: 1, scope: !1164, file: !356, line: 87, type: !143)
!1169 = !DILocation(line: 0, scope: !1164)
!1170 = !DILocation(line: 89, column: 16, scope: !1164)
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"_Bool", !792, i64 0}
!1173 = !DILocation(line: 90, column: 1, scope: !1164)
!1174 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !417, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1175)
!1175 = !{!1176}
!1176 = !DILocalVariable(name: "write_error", scope: !1177, file: !356, line: 121, type: !105)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !356, line: 120, column: 5)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !356, line: 118, column: 7)
!1179 = !DILocation(line: 118, column: 21, scope: !1178)
!1180 = !DILocation(line: 118, column: 7, scope: !1178)
!1181 = !DILocation(line: 118, column: 29, scope: !1178)
!1182 = !DILocation(line: 119, column: 7, scope: !1178)
!1183 = !DILocation(line: 119, column: 12, scope: !1178)
!1184 = !{i8 0, i8 2}
!1185 = !DILocation(line: 119, column: 25, scope: !1178)
!1186 = !DILocation(line: 119, column: 28, scope: !1178)
!1187 = !DILocation(line: 119, column: 34, scope: !1178)
!1188 = !DILocation(line: 118, column: 7, scope: !1174)
!1189 = !DILocation(line: 121, column: 33, scope: !1177)
!1190 = !DILocation(line: 0, scope: !1177)
!1191 = !DILocation(line: 122, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1177, file: !356, line: 122, column: 11)
!1193 = !DILocation(line: 0, scope: !1192)
!1194 = !DILocation(line: 122, column: 11, scope: !1177)
!1195 = !DILocation(line: 123, column: 9, scope: !1192)
!1196 = !DILocation(line: 126, column: 9, scope: !1192)
!1197 = !DILocation(line: 128, column: 14, scope: !1177)
!1198 = !DILocation(line: 128, column: 7, scope: !1177)
!1199 = !DILocation(line: 133, column: 42, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1174, file: !356, line: 133, column: 7)
!1201 = !DILocation(line: 133, column: 28, scope: !1200)
!1202 = !DILocation(line: 133, column: 50, scope: !1200)
!1203 = !DILocation(line: 133, column: 7, scope: !1174)
!1204 = !DILocation(line: 134, column: 12, scope: !1200)
!1205 = !DILocation(line: 134, column: 5, scope: !1200)
!1206 = !DILocation(line: 135, column: 1, scope: !1174)
!1207 = !DISubprogram(name: "__errno_location", scope: !1208, file: !1208, line: 37, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!344}
!1211 = !DISubprogram(name: "_exit", scope: !1212, file: !1212, line: 624, type: !780, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1212 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1213 = distinct !DISubprogram(name: "base_name", scope: !701, file: !701, line: 27, type: !984, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219}
!1215 = !DILocalVariable(name: "name", arg: 1, scope: !1213, file: !701, line: 27, type: !105)
!1216 = !DILocalVariable(name: "base", scope: !1213, file: !701, line: 29, type: !105)
!1217 = !DILocalVariable(name: "length", scope: !1213, file: !701, line: 30, type: !733)
!1218 = !DILocalVariable(name: "dotslash_len", scope: !1213, file: !701, line: 31, type: !78)
!1219 = !DILocalVariable(name: "p", scope: !1213, file: !701, line: 53, type: !99)
!1220 = !DILocation(line: 0, scope: !1213)
!1221 = !DILocation(line: 29, column: 22, scope: !1213)
!1222 = !DILocation(line: 32, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !701, line: 32, column: 7)
!1224 = !DILocation(line: 32, column: 7, scope: !1213)
!1225 = !DILocation(line: 34, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !701, line: 33, column: 5)
!1227 = !DILocation(line: 37, column: 17, scope: !1226)
!1228 = !DILocation(line: 37, column: 14, scope: !1226)
!1229 = !DILocation(line: 43, column: 5, scope: !1226)
!1230 = !DILocation(line: 49, column: 16, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !701, line: 45, column: 5)
!1232 = !DILocation(line: 0, scope: !1223)
!1233 = !DILocation(line: 53, column: 45, scope: !1213)
!1234 = !DILocation(line: 53, column: 13, scope: !1213)
!1235 = !DILocalVariable(name: "__dest", arg: 1, scope: !1236, file: !1237, line: 26, type: !1240)
!1236 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1241)
!1237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!100, !1240, !1005, !102}
!1240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1241 = !{!1235, !1242, !1243}
!1242 = !DILocalVariable(name: "__src", arg: 2, scope: !1236, file: !1237, line: 26, type: !1005)
!1243 = !DILocalVariable(name: "__len", arg: 3, scope: !1236, file: !1237, line: 26, type: !102)
!1244 = !DILocation(line: 0, scope: !1236, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 61, column: 3, scope: !1213)
!1246 = !DILocation(line: 29, column: 10, scope: !1236, inlinedAt: !1245)
!1247 = !DILocation(line: 62, column: 3, scope: !1213)
!1248 = !DILocation(line: 62, column: 28, scope: !1213)
!1249 = !DILocation(line: 63, column: 3, scope: !1213)
!1250 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !703, file: !703, line: 31, type: !1251, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!143, !99}
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DILocalVariable(name: "file", arg: 1, scope: !1250, file: !703, line: 31, type: !99)
!1255 = !DILocalVariable(name: "base", scope: !1250, file: !703, line: 33, type: !99)
!1256 = !DILocalVariable(name: "base_lim", scope: !1250, file: !703, line: 39, type: !99)
!1257 = !DILocalVariable(name: "had_slash", scope: !1250, file: !703, line: 40, type: !143)
!1258 = !DILocation(line: 0, scope: !1250)
!1259 = !DILocation(line: 33, column: 16, scope: !1250)
!1260 = !DILocation(line: 37, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !703, line: 37, column: 7)
!1262 = !DILocation(line: 37, column: 7, scope: !1250)
!1263 = !DILocation(line: 39, column: 27, scope: !1250)
!1264 = !DILocation(line: 39, column: 25, scope: !1250)
!1265 = !DILocation(line: 40, column: 21, scope: !1250)
!1266 = !DILocation(line: 40, column: 31, scope: !1250)
!1267 = !DILocation(line: 41, column: 13, scope: !1250)
!1268 = !DILocation(line: 42, column: 3, scope: !1250)
!1269 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1270, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !78, !78, !105, !381}
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DILocalVariable(name: "status", arg: 1, scope: !1269, file: !371, line: 251, type: !78)
!1274 = !DILocalVariable(name: "errnum", arg: 2, scope: !1269, file: !371, line: 251, type: !78)
!1275 = !DILocalVariable(name: "message", arg: 3, scope: !1269, file: !371, line: 251, type: !105)
!1276 = !DILocalVariable(name: "args", arg: 4, scope: !1269, file: !371, line: 251, type: !381)
!1277 = !DILocation(line: 0, scope: !1269)
!1278 = !DILocation(line: 261, column: 3, scope: !1269)
!1279 = !DILocation(line: 265, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1269, file: !371, line: 265, column: 7)
!1281 = !DILocation(line: 265, column: 7, scope: !1269)
!1282 = !DILocation(line: 266, column: 5, scope: !1280)
!1283 = !DILocation(line: 272, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !371, line: 268, column: 5)
!1285 = !DILocation(line: 276, column: 3, scope: !1269)
!1286 = !DILocation(line: 282, column: 1, scope: !1269)
!1287 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !417, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1288)
!1288 = !{!1289}
!1289 = !DILocalVariable(name: "stdout_fd", scope: !1287, file: !371, line: 166, type: !78)
!1290 = !DILocation(line: 0, scope: !1287)
!1291 = !DILocalVariable(name: "fd", arg: 1, scope: !1292, file: !371, line: 145, type: !78)
!1292 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1136, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1293)
!1293 = !{!1291}
!1294 = !DILocation(line: 0, scope: !1292, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 182, column: 25, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !371, line: 182, column: 7)
!1297 = !DILocation(line: 157, column: 15, scope: !1292, inlinedAt: !1295)
!1298 = !DILocation(line: 157, column: 12, scope: !1292, inlinedAt: !1295)
!1299 = !DILocation(line: 182, column: 7, scope: !1287)
!1300 = !DILocation(line: 184, column: 5, scope: !1296)
!1301 = !DILocation(line: 185, column: 1, scope: !1287)
!1302 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1270, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1303)
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DILocalVariable(name: "status", arg: 1, scope: !1302, file: !371, line: 219, type: !78)
!1305 = !DILocalVariable(name: "errnum", arg: 2, scope: !1302, file: !371, line: 219, type: !78)
!1306 = !DILocalVariable(name: "message", arg: 3, scope: !1302, file: !371, line: 219, type: !105)
!1307 = !DILocalVariable(name: "args", arg: 4, scope: !1302, file: !371, line: 219, type: !381)
!1308 = distinct !DIAssignID()
!1309 = !DILocation(line: 0, scope: !1302)
!1310 = !DILocation(line: 229, column: 13, scope: !1302)
!1311 = !DILocalVariable(name: "__stream", arg: 1, scope: !1312, file: !844, line: 132, type: !1315)
!1312 = distinct !DISubprogram(name: "vfprintf", scope: !844, file: !844, line: 132, type: !1313, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1350)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!78, !1315, !848, !381}
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
!1351 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1312, file: !844, line: 133, type: !848)
!1352 = !DILocalVariable(name: "__ap", arg: 3, scope: !1312, file: !844, line: 133, type: !381)
!1353 = !DILocation(line: 0, scope: !1312, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 229, column: 3, scope: !1302)
!1355 = !DILocation(line: 135, column: 10, scope: !1312, inlinedAt: !1354)
!1356 = !DILocation(line: 232, column: 3, scope: !1302)
!1357 = !DILocation(line: 233, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1302, file: !371, line: 233, column: 7)
!1359 = !DILocation(line: 233, column: 7, scope: !1302)
!1360 = !DILocalVariable(name: "errbuf", scope: !1361, file: !371, line: 193, type: !1365)
!1361 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !780, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1360}
!1363 = !DILocalVariable(name: "errnum", arg: 1, scope: !1361, file: !371, line: 188, type: !78)
!1364 = !DILocalVariable(name: "s", scope: !1361, file: !371, line: 190, type: !105)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1024)
!1368 = !DILocation(line: 0, scope: !1361, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 234, column: 5, scope: !1358)
!1370 = !DILocation(line: 193, column: 3, scope: !1361, inlinedAt: !1369)
!1371 = !DILocation(line: 195, column: 7, scope: !1361, inlinedAt: !1369)
!1372 = !DILocation(line: 207, column: 9, scope: !1373, inlinedAt: !1369)
!1373 = distinct !DILexicalBlock(scope: !1361, file: !371, line: 207, column: 7)
!1374 = !DILocation(line: 207, column: 7, scope: !1361, inlinedAt: !1369)
!1375 = !DILocation(line: 208, column: 9, scope: !1373, inlinedAt: !1369)
!1376 = !DILocation(line: 208, column: 5, scope: !1373, inlinedAt: !1369)
!1377 = !DILocation(line: 214, column: 3, scope: !1361, inlinedAt: !1369)
!1378 = !DILocation(line: 216, column: 1, scope: !1361, inlinedAt: !1369)
!1379 = !DILocation(line: 234, column: 5, scope: !1358)
!1380 = !DILocation(line: 238, column: 3, scope: !1302)
!1381 = !DILocalVariable(name: "__c", arg: 1, scope: !1382, file: !1135, line: 101, type: !78)
!1382 = distinct !DISubprogram(name: "putc_unlocked", scope: !1135, file: !1135, line: 101, type: !1383, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!78, !78, !1316}
!1385 = !{!1381, !1386}
!1386 = !DILocalVariable(name: "__stream", arg: 2, scope: !1382, file: !1135, line: 101, type: !1316)
!1387 = !DILocation(line: 0, scope: !1382, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 238, column: 3, scope: !1302)
!1389 = !DILocation(line: 103, column: 10, scope: !1382, inlinedAt: !1388)
!1390 = !DILocation(line: 240, column: 3, scope: !1302)
!1391 = !DILocation(line: 241, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1302, file: !371, line: 241, column: 7)
!1393 = !DILocation(line: 241, column: 7, scope: !1302)
!1394 = !DILocation(line: 242, column: 5, scope: !1392)
!1395 = !DILocation(line: 243, column: 1, scope: !1302)
!1396 = !DISubprogram(name: "__vfprintf_chk", scope: !844, file: !844, line: 96, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!78, !1315, !78, !848, !381}
!1399 = !DISubprogram(name: "strerror_r", scope: !978, file: !978, line: 444, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!99, !78, !99, !102}
!1402 = !DISubprogram(name: "fflush_unlocked", scope: !853, file: !853, line: 239, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!78, !1316}
!1405 = !DISubprogram(name: "fcntl", scope: !1406, file: !1406, line: 149, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!78, !78, !78, null}
!1409 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1410, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !78, !78, !105, null}
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DILocalVariable(name: "status", arg: 1, scope: !1409, file: !371, line: 285, type: !78)
!1414 = !DILocalVariable(name: "errnum", arg: 2, scope: !1409, file: !371, line: 285, type: !78)
!1415 = !DILocalVariable(name: "message", arg: 3, scope: !1409, file: !371, line: 285, type: !105)
!1416 = !DILocalVariable(name: "ap", scope: !1409, file: !371, line: 287, type: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !853, line: 52, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1419, line: 12, baseType: !1420)
!1419 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !1421)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !55)
!1422 = distinct !DIAssignID()
!1423 = !DILocation(line: 0, scope: !1409)
!1424 = !DILocation(line: 287, column: 3, scope: !1409)
!1425 = !DILocation(line: 288, column: 3, scope: !1409)
!1426 = !DILocation(line: 289, column: 3, scope: !1409)
!1427 = !DILocation(line: 290, column: 3, scope: !1409)
!1428 = !DILocation(line: 291, column: 1, scope: !1409)
!1429 = !DILocation(line: 0, scope: !378)
!1430 = !DILocation(line: 302, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1432 = !DILocation(line: 302, column: 7, scope: !378)
!1433 = !DILocation(line: 307, column: 11, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !371, line: 307, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !371, line: 303, column: 5)
!1436 = !DILocation(line: 307, column: 27, scope: !1434)
!1437 = !DILocation(line: 308, column: 11, scope: !1434)
!1438 = !DILocation(line: 308, column: 28, scope: !1434)
!1439 = !DILocation(line: 308, column: 25, scope: !1434)
!1440 = !DILocation(line: 309, column: 15, scope: !1434)
!1441 = !DILocation(line: 309, column: 33, scope: !1434)
!1442 = !DILocation(line: 310, column: 19, scope: !1434)
!1443 = !DILocation(line: 311, column: 22, scope: !1434)
!1444 = !DILocation(line: 311, column: 56, scope: !1434)
!1445 = !DILocation(line: 307, column: 11, scope: !1435)
!1446 = !DILocation(line: 316, column: 21, scope: !1435)
!1447 = !DILocation(line: 317, column: 23, scope: !1435)
!1448 = !DILocation(line: 318, column: 5, scope: !1435)
!1449 = !DILocation(line: 327, column: 3, scope: !378)
!1450 = !DILocation(line: 331, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1452 = !DILocation(line: 331, column: 7, scope: !378)
!1453 = !DILocation(line: 332, column: 5, scope: !1451)
!1454 = !DILocation(line: 338, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !371, line: 334, column: 5)
!1456 = !DILocation(line: 346, column: 3, scope: !378)
!1457 = !DILocation(line: 350, column: 3, scope: !378)
!1458 = !DILocation(line: 356, column: 1, scope: !378)
!1459 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1460, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !78, !78, !105, !84, !105, null}
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468}
!1463 = !DILocalVariable(name: "status", arg: 1, scope: !1459, file: !371, line: 359, type: !78)
!1464 = !DILocalVariable(name: "errnum", arg: 2, scope: !1459, file: !371, line: 359, type: !78)
!1465 = !DILocalVariable(name: "file_name", arg: 3, scope: !1459, file: !371, line: 359, type: !105)
!1466 = !DILocalVariable(name: "line_number", arg: 4, scope: !1459, file: !371, line: 360, type: !84)
!1467 = !DILocalVariable(name: "message", arg: 5, scope: !1459, file: !371, line: 360, type: !105)
!1468 = !DILocalVariable(name: "ap", scope: !1459, file: !371, line: 362, type: !1417)
!1469 = distinct !DIAssignID()
!1470 = !DILocation(line: 0, scope: !1459)
!1471 = !DILocation(line: 362, column: 3, scope: !1459)
!1472 = !DILocation(line: 363, column: 3, scope: !1459)
!1473 = !DILocation(line: 364, column: 3, scope: !1459)
!1474 = !DILocation(line: 366, column: 3, scope: !1459)
!1475 = !DILocation(line: 367, column: 1, scope: !1459)
!1476 = distinct !DISubprogram(name: "getprogname", scope: !705, file: !705, line: 54, type: !1477, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!105}
!1479 = !DILocation(line: 58, column: 10, scope: !1476)
!1480 = !DILocation(line: 58, column: 3, scope: !1476)
!1481 = distinct !DISubprogram(name: "set_program_name", scope: !422, file: !422, line: 37, type: !808, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DILocalVariable(name: "argv0", arg: 1, scope: !1481, file: !422, line: 37, type: !105)
!1484 = !DILocalVariable(name: "slash", scope: !1481, file: !422, line: 44, type: !105)
!1485 = !DILocalVariable(name: "base", scope: !1481, file: !422, line: 45, type: !105)
!1486 = !DILocation(line: 0, scope: !1481)
!1487 = !DILocation(line: 44, column: 23, scope: !1481)
!1488 = !DILocation(line: 45, column: 22, scope: !1481)
!1489 = !DILocation(line: 46, column: 17, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1481, file: !422, line: 46, column: 7)
!1491 = !DILocation(line: 46, column: 9, scope: !1490)
!1492 = !DILocation(line: 46, column: 25, scope: !1490)
!1493 = !DILocation(line: 46, column: 40, scope: !1490)
!1494 = !DILocalVariable(name: "__s1", arg: 1, scope: !1495, file: !871, line: 974, type: !1006)
!1495 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1496, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!143, !1006, !1006, !102}
!1498 = !{!1494, !1499, !1500}
!1499 = !DILocalVariable(name: "__s2", arg: 2, scope: !1495, file: !871, line: 974, type: !1006)
!1500 = !DILocalVariable(name: "__n", arg: 3, scope: !1495, file: !871, line: 974, type: !102)
!1501 = !DILocation(line: 0, scope: !1495, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 46, column: 28, scope: !1490)
!1503 = !DILocation(line: 976, column: 11, scope: !1495, inlinedAt: !1502)
!1504 = !DILocation(line: 976, column: 10, scope: !1495, inlinedAt: !1502)
!1505 = !DILocation(line: 46, column: 7, scope: !1481)
!1506 = !DILocation(line: 49, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !422, line: 49, column: 11)
!1508 = distinct !DILexicalBlock(scope: !1490, file: !422, line: 47, column: 5)
!1509 = !DILocation(line: 49, column: 36, scope: !1507)
!1510 = !DILocation(line: 49, column: 11, scope: !1508)
!1511 = !DILocation(line: 65, column: 16, scope: !1481)
!1512 = !DILocation(line: 71, column: 27, scope: !1481)
!1513 = !DILocation(line: 74, column: 33, scope: !1481)
!1514 = !DILocation(line: 76, column: 1, scope: !1481)
!1515 = !DISubprogram(name: "strrchr", scope: !978, file: !978, line: 273, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = distinct !DIAssignID()
!1517 = !DILocation(line: 0, scope: !431)
!1518 = distinct !DIAssignID()
!1519 = !DILocation(line: 40, column: 29, scope: !431)
!1520 = !DILocation(line: 41, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !431, file: !432, line: 41, column: 7)
!1522 = !DILocation(line: 41, column: 7, scope: !431)
!1523 = !DILocation(line: 47, column: 3, scope: !431)
!1524 = !DILocation(line: 48, column: 3, scope: !431)
!1525 = !DILocalVariable(name: "ps", arg: 1, scope: !1526, file: !1527, line: 1135, type: !1530)
!1526 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !1528, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1531)
!1527 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1531 = !{!1525}
!1532 = !DILocation(line: 0, scope: !1526, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 48, column: 18, scope: !431)
!1534 = !DILocalVariable(name: "__dest", arg: 1, scope: !1535, file: !1237, line: 57, type: !100)
!1535 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!100, !100, !78, !102}
!1538 = !{!1534, !1539, !1540}
!1539 = !DILocalVariable(name: "__ch", arg: 2, scope: !1535, file: !1237, line: 57, type: !78)
!1540 = !DILocalVariable(name: "__len", arg: 3, scope: !1535, file: !1237, line: 57, type: !102)
!1541 = !DILocation(line: 0, scope: !1535, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 1137, column: 3, scope: !1526, inlinedAt: !1533)
!1543 = !DILocation(line: 59, column: 10, scope: !1535, inlinedAt: !1542)
!1544 = !DILocation(line: 49, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !431, file: !432, line: 49, column: 7)
!1546 = !DILocation(line: 49, column: 39, scope: !1545)
!1547 = !DILocation(line: 49, column: 44, scope: !1545)
!1548 = !DILocation(line: 54, column: 1, scope: !431)
!1549 = !DISubprogram(name: "mbrtoc32", scope: !443, file: !443, line: 57, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!102, !1552, !848, !102, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1530)
!1555 = distinct !DISubprogram(name: "clone_quoting_options", scope: !462, file: !462, line: 113, type: !1556, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1559)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!1559 = !{!1560, !1561, !1562}
!1560 = !DILocalVariable(name: "o", arg: 1, scope: !1555, file: !462, line: 113, type: !1558)
!1561 = !DILocalVariable(name: "saved_errno", scope: !1555, file: !462, line: 115, type: !78)
!1562 = !DILocalVariable(name: "p", scope: !1555, file: !462, line: 116, type: !1558)
!1563 = !DILocation(line: 0, scope: !1555)
!1564 = !DILocation(line: 115, column: 21, scope: !1555)
!1565 = !DILocation(line: 116, column: 40, scope: !1555)
!1566 = !DILocation(line: 116, column: 31, scope: !1555)
!1567 = !DILocation(line: 118, column: 9, scope: !1555)
!1568 = !DILocation(line: 119, column: 3, scope: !1555)
!1569 = distinct !DISubprogram(name: "get_quoting_style", scope: !462, file: !462, line: 124, type: !1570, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1574)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!488, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "o", arg: 1, scope: !1569, file: !462, line: 124, type: !1572)
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 126, column: 11, scope: !1569)
!1578 = !DILocation(line: 126, column: 46, scope: !1569)
!1579 = !{!1580, !859, i64 0}
!1580 = !{!"quoting_options", !859, i64 0, !859, i64 4, !792, i64 8, !791, i64 40, !791, i64 48}
!1581 = !DILocation(line: 126, column: 3, scope: !1569)
!1582 = distinct !DISubprogram(name: "set_quoting_style", scope: !462, file: !462, line: 132, type: !1583, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1558, !488}
!1585 = !{!1586, !1587}
!1586 = !DILocalVariable(name: "o", arg: 1, scope: !1582, file: !462, line: 132, type: !1558)
!1587 = !DILocalVariable(name: "s", arg: 2, scope: !1582, file: !462, line: 132, type: !488)
!1588 = !DILocation(line: 0, scope: !1582)
!1589 = !DILocation(line: 134, column: 4, scope: !1582)
!1590 = !DILocation(line: 134, column: 45, scope: !1582)
!1591 = !DILocation(line: 135, column: 1, scope: !1582)
!1592 = distinct !DISubprogram(name: "set_char_quoting", scope: !462, file: !462, line: 143, type: !1593, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!78, !1558, !4, !78}
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1602, !1603}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1592, file: !462, line: 143, type: !1558)
!1597 = !DILocalVariable(name: "c", arg: 2, scope: !1592, file: !462, line: 143, type: !4)
!1598 = !DILocalVariable(name: "i", arg: 3, scope: !1592, file: !462, line: 143, type: !78)
!1599 = !DILocalVariable(name: "uc", scope: !1592, file: !462, line: 145, type: !107)
!1600 = !DILocalVariable(name: "p", scope: !1592, file: !462, line: 146, type: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1602 = !DILocalVariable(name: "shift", scope: !1592, file: !462, line: 148, type: !78)
!1603 = !DILocalVariable(name: "r", scope: !1592, file: !462, line: 149, type: !84)
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
!1617 = distinct !DISubprogram(name: "set_quoting_flags", scope: !462, file: !462, line: 159, type: !1618, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!78, !1558, !78}
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1617, file: !462, line: 159, type: !1558)
!1622 = !DILocalVariable(name: "i", arg: 2, scope: !1617, file: !462, line: 159, type: !78)
!1623 = !DILocalVariable(name: "r", scope: !1617, file: !462, line: 163, type: !78)
!1624 = !DILocation(line: 0, scope: !1617)
!1625 = !DILocation(line: 161, column: 8, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1617, file: !462, line: 161, column: 7)
!1627 = !DILocation(line: 161, column: 7, scope: !1617)
!1628 = !DILocation(line: 163, column: 14, scope: !1617)
!1629 = !{!1580, !859, i64 4}
!1630 = !DILocation(line: 164, column: 12, scope: !1617)
!1631 = !DILocation(line: 165, column: 3, scope: !1617)
!1632 = distinct !DISubprogram(name: "set_custom_quoting", scope: !462, file: !462, line: 169, type: !1633, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1558, !105, !105}
!1635 = !{!1636, !1637, !1638}
!1636 = !DILocalVariable(name: "o", arg: 1, scope: !1632, file: !462, line: 169, type: !1558)
!1637 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1632, file: !462, line: 170, type: !105)
!1638 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1632, file: !462, line: 170, type: !105)
!1639 = !DILocation(line: 0, scope: !1632)
!1640 = !DILocation(line: 172, column: 8, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1632, file: !462, line: 172, column: 7)
!1642 = !DILocation(line: 172, column: 7, scope: !1632)
!1643 = !DILocation(line: 174, column: 12, scope: !1632)
!1644 = !DILocation(line: 175, column: 8, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1632, file: !462, line: 175, column: 7)
!1646 = !DILocation(line: 175, column: 19, scope: !1645)
!1647 = !DILocation(line: 176, column: 5, scope: !1645)
!1648 = !DILocation(line: 177, column: 6, scope: !1632)
!1649 = !DILocation(line: 177, column: 17, scope: !1632)
!1650 = !{!1580, !791, i64 40}
!1651 = !DILocation(line: 178, column: 6, scope: !1632)
!1652 = !DILocation(line: 178, column: 18, scope: !1632)
!1653 = !{!1580, !791, i64 48}
!1654 = !DILocation(line: 179, column: 1, scope: !1632)
!1655 = !DISubprogram(name: "abort", scope: !982, file: !982, line: 598, type: !417, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1656 = distinct !DISubprogram(name: "quotearg_buffer", scope: !462, file: !462, line: 774, type: !1657, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!102, !99, !102, !105, !102, !1572}
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1660 = !DILocalVariable(name: "buffer", arg: 1, scope: !1656, file: !462, line: 774, type: !99)
!1661 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1656, file: !462, line: 774, type: !102)
!1662 = !DILocalVariable(name: "arg", arg: 3, scope: !1656, file: !462, line: 775, type: !105)
!1663 = !DILocalVariable(name: "argsize", arg: 4, scope: !1656, file: !462, line: 775, type: !102)
!1664 = !DILocalVariable(name: "o", arg: 5, scope: !1656, file: !462, line: 776, type: !1572)
!1665 = !DILocalVariable(name: "p", scope: !1656, file: !462, line: 778, type: !1572)
!1666 = !DILocalVariable(name: "saved_errno", scope: !1656, file: !462, line: 779, type: !78)
!1667 = !DILocalVariable(name: "r", scope: !1656, file: !462, line: 780, type: !102)
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
!1679 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !462, file: !462, line: 251, type: !1680, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1684)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!102, !99, !102, !105, !102, !488, !78, !1682, !105, !105}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1710, !1712, !1715, !1716, !1717, !1718, !1721, !1722, !1724, !1725, !1728, !1732, !1733, !1741, !1744, !1745, !1746}
!1685 = !DILocalVariable(name: "buffer", arg: 1, scope: !1679, file: !462, line: 251, type: !99)
!1686 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1679, file: !462, line: 251, type: !102)
!1687 = !DILocalVariable(name: "arg", arg: 3, scope: !1679, file: !462, line: 252, type: !105)
!1688 = !DILocalVariable(name: "argsize", arg: 4, scope: !1679, file: !462, line: 252, type: !102)
!1689 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1679, file: !462, line: 253, type: !488)
!1690 = !DILocalVariable(name: "flags", arg: 6, scope: !1679, file: !462, line: 253, type: !78)
!1691 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1679, file: !462, line: 254, type: !1682)
!1692 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1679, file: !462, line: 255, type: !105)
!1693 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1679, file: !462, line: 256, type: !105)
!1694 = !DILocalVariable(name: "unibyte_locale", scope: !1679, file: !462, line: 258, type: !143)
!1695 = !DILocalVariable(name: "len", scope: !1679, file: !462, line: 260, type: !102)
!1696 = !DILocalVariable(name: "orig_buffersize", scope: !1679, file: !462, line: 261, type: !102)
!1697 = !DILocalVariable(name: "quote_string", scope: !1679, file: !462, line: 262, type: !105)
!1698 = !DILocalVariable(name: "quote_string_len", scope: !1679, file: !462, line: 263, type: !102)
!1699 = !DILocalVariable(name: "backslash_escapes", scope: !1679, file: !462, line: 264, type: !143)
!1700 = !DILocalVariable(name: "elide_outer_quotes", scope: !1679, file: !462, line: 265, type: !143)
!1701 = !DILocalVariable(name: "encountered_single_quote", scope: !1679, file: !462, line: 266, type: !143)
!1702 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1679, file: !462, line: 267, type: !143)
!1703 = !DILabel(scope: !1679, name: "process_input", file: !462, line: 308)
!1704 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1679, file: !462, line: 309, type: !143)
!1705 = !DILocalVariable(name: "lq", scope: !1706, file: !462, line: 361, type: !105)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !462, line: 361, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !462, line: 360, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !462, line: 333, column: 7)
!1709 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 312, column: 5)
!1710 = !DILocalVariable(name: "i", scope: !1711, file: !462, line: 395, type: !102)
!1711 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 395, column: 3)
!1712 = !DILocalVariable(name: "is_right_quote", scope: !1713, file: !462, line: 397, type: !143)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !462, line: 396, column: 5)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !462, line: 395, column: 3)
!1715 = !DILocalVariable(name: "escaping", scope: !1713, file: !462, line: 398, type: !143)
!1716 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1713, file: !462, line: 399, type: !143)
!1717 = !DILocalVariable(name: "c", scope: !1713, file: !462, line: 417, type: !107)
!1718 = !DILabel(scope: !1719, name: "c_and_shell_escape", file: !462, line: 502)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 478, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 419, column: 9)
!1721 = !DILabel(scope: !1719, name: "c_escape", file: !462, line: 507)
!1722 = !DILocalVariable(name: "m", scope: !1723, file: !462, line: 598, type: !102)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 596, column: 11)
!1724 = !DILocalVariable(name: "printable", scope: !1723, file: !462, line: 600, type: !143)
!1725 = !DILocalVariable(name: "mbs", scope: !1726, file: !462, line: 609, type: !549)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !462, line: 608, column: 15)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !462, line: 602, column: 17)
!1728 = !DILocalVariable(name: "w", scope: !1729, file: !462, line: 618, type: !442)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !462, line: 617, column: 19)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !462, line: 616, column: 17)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !462, line: 616, column: 17)
!1732 = !DILocalVariable(name: "bytes", scope: !1729, file: !462, line: 619, type: !102)
!1733 = !DILocalVariable(name: "j", scope: !1734, file: !462, line: 648, type: !102)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !462, line: 648, column: 29)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !462, line: 647, column: 27)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !462, line: 645, column: 29)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !462, line: 636, column: 23)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !462, line: 628, column: 30)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !462, line: 623, column: 30)
!1740 = distinct !DILexicalBlock(scope: !1729, file: !462, line: 621, column: 25)
!1741 = !DILocalVariable(name: "ilim", scope: !1742, file: !462, line: 674, type: !102)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !462, line: 671, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1723, file: !462, line: 670, column: 17)
!1744 = !DILabel(scope: !1713, name: "store_escape", file: !462, line: 709)
!1745 = !DILabel(scope: !1713, name: "store_c", file: !462, line: 712)
!1746 = !DILabel(scope: !1679, name: "force_outer_quoting_style", file: !462, line: 753)
!1747 = distinct !DIAssignID()
!1748 = distinct !DIAssignID()
!1749 = distinct !DIAssignID()
!1750 = distinct !DIAssignID()
!1751 = distinct !DIAssignID()
!1752 = !DILocation(line: 0, scope: !1726)
!1753 = distinct !DIAssignID()
!1754 = !DILocation(line: 0, scope: !1729)
!1755 = !DILocation(line: 0, scope: !1679)
!1756 = !DILocation(line: 258, column: 25, scope: !1679)
!1757 = !DILocation(line: 258, column: 36, scope: !1679)
!1758 = !DILocation(line: 265, column: 8, scope: !1679)
!1759 = !DILocation(line: 267, column: 3, scope: !1679)
!1760 = !DILocation(line: 261, column: 10, scope: !1679)
!1761 = !DILocation(line: 262, column: 15, scope: !1679)
!1762 = !DILocation(line: 263, column: 10, scope: !1679)
!1763 = !DILocation(line: 264, column: 8, scope: !1679)
!1764 = !DILocation(line: 266, column: 8, scope: !1679)
!1765 = !DILocation(line: 267, column: 8, scope: !1679)
!1766 = !DILocation(line: 308, column: 2, scope: !1679)
!1767 = !DILocation(line: 311, column: 3, scope: !1679)
!1768 = !DILocation(line: 318, column: 11, scope: !1709)
!1769 = !DILocation(line: 318, column: 12, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1709, file: !462, line: 318, column: 11)
!1771 = !DILocation(line: 319, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !462, line: 319, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !462, line: 319, column: 9)
!1774 = !DILocation(line: 319, column: 9, scope: !1773)
!1775 = !DILocation(line: 0, scope: !540, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 357, column: 26, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !462, line: 335, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1708, file: !462, line: 334, column: 13)
!1779 = !DILocation(line: 199, column: 29, scope: !540, inlinedAt: !1776)
!1780 = !DILocation(line: 201, column: 19, scope: !1781, inlinedAt: !1776)
!1781 = distinct !DILexicalBlock(scope: !540, file: !462, line: 201, column: 7)
!1782 = !DILocation(line: 201, column: 7, scope: !540, inlinedAt: !1776)
!1783 = !DILocation(line: 229, column: 3, scope: !540, inlinedAt: !1776)
!1784 = !DILocation(line: 230, column: 3, scope: !540, inlinedAt: !1776)
!1785 = !DILocalVariable(name: "ps", arg: 1, scope: !1786, file: !1527, line: 1135, type: !1789)
!1786 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !1787, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1790)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1790 = !{!1785}
!1791 = !DILocation(line: 0, scope: !1786, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 230, column: 18, scope: !540, inlinedAt: !1776)
!1793 = !DILocalVariable(name: "__dest", arg: 1, scope: !1794, file: !1237, line: 57, type: !100)
!1794 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1795)
!1795 = !{!1793, !1796, !1797}
!1796 = !DILocalVariable(name: "__ch", arg: 2, scope: !1794, file: !1237, line: 57, type: !78)
!1797 = !DILocalVariable(name: "__len", arg: 3, scope: !1794, file: !1237, line: 57, type: !102)
!1798 = !DILocation(line: 0, scope: !1794, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1137, column: 3, scope: !1786, inlinedAt: !1792)
!1800 = !DILocation(line: 59, column: 10, scope: !1794, inlinedAt: !1799)
!1801 = !DILocation(line: 231, column: 7, scope: !1802, inlinedAt: !1776)
!1802 = distinct !DILexicalBlock(scope: !540, file: !462, line: 231, column: 7)
!1803 = !DILocation(line: 231, column: 40, scope: !1802, inlinedAt: !1776)
!1804 = !DILocation(line: 231, column: 45, scope: !1802, inlinedAt: !1776)
!1805 = !DILocation(line: 235, column: 1, scope: !540, inlinedAt: !1776)
!1806 = !DILocation(line: 0, scope: !540, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 358, column: 27, scope: !1777)
!1808 = !DILocation(line: 199, column: 29, scope: !540, inlinedAt: !1807)
!1809 = !DILocation(line: 201, column: 19, scope: !1781, inlinedAt: !1807)
!1810 = !DILocation(line: 201, column: 7, scope: !540, inlinedAt: !1807)
!1811 = !DILocation(line: 229, column: 3, scope: !540, inlinedAt: !1807)
!1812 = !DILocation(line: 230, column: 3, scope: !540, inlinedAt: !1807)
!1813 = !DILocation(line: 0, scope: !1786, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 230, column: 18, scope: !540, inlinedAt: !1807)
!1815 = !DILocation(line: 0, scope: !1794, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 1137, column: 3, scope: !1786, inlinedAt: !1814)
!1817 = !DILocation(line: 59, column: 10, scope: !1794, inlinedAt: !1816)
!1818 = !DILocation(line: 231, column: 7, scope: !1802, inlinedAt: !1807)
!1819 = !DILocation(line: 231, column: 40, scope: !1802, inlinedAt: !1807)
!1820 = !DILocation(line: 231, column: 45, scope: !1802, inlinedAt: !1807)
!1821 = !DILocation(line: 235, column: 1, scope: !540, inlinedAt: !1807)
!1822 = !DILocation(line: 360, column: 14, scope: !1707)
!1823 = !DILocation(line: 360, column: 13, scope: !1708)
!1824 = !DILocation(line: 0, scope: !1706)
!1825 = !DILocation(line: 361, column: 45, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1706, file: !462, line: 361, column: 11)
!1827 = !DILocation(line: 361, column: 11, scope: !1706)
!1828 = !DILocation(line: 362, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !462, line: 362, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !462, line: 362, column: 13)
!1831 = !DILocation(line: 362, column: 13, scope: !1830)
!1832 = !DILocation(line: 361, column: 52, scope: !1826)
!1833 = distinct !{!1833, !1827, !1834, !905}
!1834 = !DILocation(line: 362, column: 13, scope: !1706)
!1835 = !DILocation(line: 260, column: 10, scope: !1679)
!1836 = !DILocation(line: 365, column: 28, scope: !1708)
!1837 = !DILocation(line: 367, column: 7, scope: !1709)
!1838 = !DILocation(line: 370, column: 7, scope: !1709)
!1839 = !DILocation(line: 373, column: 7, scope: !1709)
!1840 = !DILocation(line: 376, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1709, file: !462, line: 376, column: 11)
!1842 = !DILocation(line: 376, column: 11, scope: !1709)
!1843 = !DILocation(line: 381, column: 12, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1709, file: !462, line: 381, column: 11)
!1845 = !DILocation(line: 381, column: 11, scope: !1709)
!1846 = !DILocation(line: 382, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !462, line: 382, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !462, line: 382, column: 9)
!1849 = !DILocation(line: 382, column: 9, scope: !1848)
!1850 = !DILocation(line: 389, column: 7, scope: !1709)
!1851 = !DILocation(line: 392, column: 7, scope: !1709)
!1852 = !DILocation(line: 0, scope: !1711)
!1853 = !DILocation(line: 395, column: 8, scope: !1711)
!1854 = !DILocation(line: 309, column: 8, scope: !1679)
!1855 = !DILocation(line: 395, scope: !1711)
!1856 = !DILocation(line: 395, column: 34, scope: !1714)
!1857 = !DILocation(line: 395, column: 26, scope: !1714)
!1858 = !DILocation(line: 395, column: 48, scope: !1714)
!1859 = !DILocation(line: 395, column: 55, scope: !1714)
!1860 = !DILocation(line: 395, column: 3, scope: !1711)
!1861 = !DILocation(line: 395, column: 67, scope: !1714)
!1862 = !DILocation(line: 0, scope: !1713)
!1863 = !DILocation(line: 402, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 401, column: 11)
!1865 = !DILocation(line: 404, column: 17, scope: !1864)
!1866 = !DILocation(line: 405, column: 39, scope: !1864)
!1867 = !DILocation(line: 409, column: 32, scope: !1864)
!1868 = !DILocation(line: 405, column: 19, scope: !1864)
!1869 = !DILocation(line: 405, column: 15, scope: !1864)
!1870 = !DILocation(line: 410, column: 11, scope: !1864)
!1871 = !DILocation(line: 410, column: 25, scope: !1864)
!1872 = !DILocalVariable(name: "__s1", arg: 1, scope: !1873, file: !871, line: 974, type: !1006)
!1873 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1496, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !1874)
!1874 = !{!1872, !1875, !1876}
!1875 = !DILocalVariable(name: "__s2", arg: 2, scope: !1873, file: !871, line: 974, type: !1006)
!1876 = !DILocalVariable(name: "__n", arg: 3, scope: !1873, file: !871, line: 974, type: !102)
!1877 = !DILocation(line: 0, scope: !1873, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 410, column: 14, scope: !1864)
!1879 = !DILocation(line: 976, column: 11, scope: !1873, inlinedAt: !1878)
!1880 = !DILocation(line: 976, column: 10, scope: !1873, inlinedAt: !1878)
!1881 = !DILocation(line: 401, column: 11, scope: !1713)
!1882 = !DILocation(line: 417, column: 25, scope: !1713)
!1883 = !DILocation(line: 418, column: 7, scope: !1713)
!1884 = !DILocation(line: 421, column: 15, scope: !1720)
!1885 = !DILocation(line: 423, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !462, line: 423, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !462, line: 422, column: 13)
!1888 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 421, column: 15)
!1889 = !DILocation(line: 423, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !462, line: 423, column: 15)
!1891 = !DILocation(line: 423, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !462, line: 423, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !462, line: 423, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !462, line: 423, column: 15)
!1895 = !DILocation(line: 423, column: 15, scope: !1893)
!1896 = !DILocation(line: 423, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !462, line: 423, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !462, line: 423, column: 15)
!1899 = !DILocation(line: 423, column: 15, scope: !1898)
!1900 = !DILocation(line: 423, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !462, line: 423, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !462, line: 423, column: 15)
!1903 = !DILocation(line: 423, column: 15, scope: !1902)
!1904 = !DILocation(line: 423, column: 15, scope: !1894)
!1905 = !DILocation(line: 423, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !462, line: 423, column: 15)
!1907 = distinct !DILexicalBlock(scope: !1886, file: !462, line: 423, column: 15)
!1908 = !DILocation(line: 423, column: 15, scope: !1907)
!1909 = !DILocation(line: 431, column: 19, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1887, file: !462, line: 430, column: 19)
!1911 = !DILocation(line: 431, column: 24, scope: !1910)
!1912 = !DILocation(line: 431, column: 28, scope: !1910)
!1913 = !DILocation(line: 431, column: 38, scope: !1910)
!1914 = !DILocation(line: 431, column: 48, scope: !1910)
!1915 = !DILocation(line: 431, column: 59, scope: !1910)
!1916 = !DILocation(line: 433, column: 19, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !462, line: 433, column: 19)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !462, line: 433, column: 19)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !462, line: 432, column: 17)
!1920 = !DILocation(line: 433, column: 19, scope: !1918)
!1921 = !DILocation(line: 434, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !462, line: 434, column: 19)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !462, line: 434, column: 19)
!1924 = !DILocation(line: 434, column: 19, scope: !1923)
!1925 = !DILocation(line: 435, column: 17, scope: !1919)
!1926 = !DILocation(line: 442, column: 20, scope: !1888)
!1927 = !DILocation(line: 447, column: 11, scope: !1720)
!1928 = !DILocation(line: 450, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 448, column: 13)
!1930 = !DILocation(line: 456, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !462, line: 455, column: 19)
!1932 = !DILocation(line: 456, column: 24, scope: !1931)
!1933 = !DILocation(line: 456, column: 28, scope: !1931)
!1934 = !DILocation(line: 456, column: 38, scope: !1931)
!1935 = !DILocation(line: 456, column: 41, scope: !1931)
!1936 = !DILocation(line: 456, column: 52, scope: !1931)
!1937 = !DILocation(line: 455, column: 19, scope: !1929)
!1938 = !DILocation(line: 457, column: 25, scope: !1931)
!1939 = !DILocation(line: 457, column: 17, scope: !1931)
!1940 = !DILocation(line: 464, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1931, file: !462, line: 458, column: 19)
!1942 = !DILocation(line: 468, column: 21, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !462, line: 468, column: 21)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !462, line: 468, column: 21)
!1945 = !DILocation(line: 468, column: 21, scope: !1944)
!1946 = !DILocation(line: 469, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !462, line: 469, column: 21)
!1948 = distinct !DILexicalBlock(scope: !1941, file: !462, line: 469, column: 21)
!1949 = !DILocation(line: 469, column: 21, scope: !1948)
!1950 = !DILocation(line: 470, column: 21, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !462, line: 470, column: 21)
!1952 = distinct !DILexicalBlock(scope: !1941, file: !462, line: 470, column: 21)
!1953 = !DILocation(line: 470, column: 21, scope: !1952)
!1954 = !DILocation(line: 471, column: 21, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !462, line: 471, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1941, file: !462, line: 471, column: 21)
!1957 = !DILocation(line: 471, column: 21, scope: !1956)
!1958 = !DILocation(line: 472, column: 21, scope: !1941)
!1959 = !DILocation(line: 482, column: 33, scope: !1719)
!1960 = !DILocation(line: 483, column: 33, scope: !1719)
!1961 = !DILocation(line: 485, column: 33, scope: !1719)
!1962 = !DILocation(line: 486, column: 33, scope: !1719)
!1963 = !DILocation(line: 487, column: 33, scope: !1719)
!1964 = !DILocation(line: 490, column: 17, scope: !1719)
!1965 = !DILocation(line: 492, column: 21, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !462, line: 491, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1719, file: !462, line: 490, column: 17)
!1968 = !DILocation(line: 499, column: 35, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1719, file: !462, line: 499, column: 17)
!1970 = !DILocation(line: 499, column: 57, scope: !1969)
!1971 = !DILocation(line: 0, scope: !1719)
!1972 = !DILocation(line: 502, column: 11, scope: !1719)
!1973 = !DILocation(line: 504, column: 17, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1719, file: !462, line: 503, column: 17)
!1975 = !DILocation(line: 507, column: 11, scope: !1719)
!1976 = !DILocation(line: 508, column: 17, scope: !1719)
!1977 = !DILocation(line: 517, column: 15, scope: !1720)
!1978 = !DILocation(line: 517, column: 40, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 517, column: 15)
!1980 = !DILocation(line: 517, column: 47, scope: !1979)
!1981 = !DILocation(line: 517, column: 18, scope: !1979)
!1982 = !DILocation(line: 521, column: 17, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 521, column: 15)
!1984 = !DILocation(line: 521, column: 15, scope: !1720)
!1985 = !DILocation(line: 525, column: 11, scope: !1720)
!1986 = !DILocation(line: 537, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 536, column: 15)
!1988 = !DILocation(line: 544, column: 15, scope: !1720)
!1989 = !DILocation(line: 546, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !462, line: 545, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1720, file: !462, line: 544, column: 15)
!1992 = !DILocation(line: 549, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !462, line: 549, column: 19)
!1994 = !DILocation(line: 549, column: 30, scope: !1993)
!1995 = !DILocation(line: 558, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !462, line: 558, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !462, line: 558, column: 15)
!1998 = !DILocation(line: 558, column: 15, scope: !1997)
!1999 = !DILocation(line: 559, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !462, line: 559, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1990, file: !462, line: 559, column: 15)
!2002 = !DILocation(line: 559, column: 15, scope: !2001)
!2003 = !DILocation(line: 560, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !462, line: 560, column: 15)
!2005 = distinct !DILexicalBlock(scope: !1990, file: !462, line: 560, column: 15)
!2006 = !DILocation(line: 560, column: 15, scope: !2005)
!2007 = !DILocation(line: 562, column: 13, scope: !1990)
!2008 = !DILocation(line: 602, column: 17, scope: !1723)
!2009 = !DILocation(line: 0, scope: !1723)
!2010 = !DILocation(line: 605, column: 29, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1727, file: !462, line: 603, column: 15)
!2012 = !DILocation(line: 605, column: 27, scope: !2011)
!2013 = !DILocation(line: 606, column: 15, scope: !2011)
!2014 = !DILocation(line: 609, column: 17, scope: !1726)
!2015 = !DILocation(line: 0, scope: !1786, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 609, column: 32, scope: !1726)
!2017 = !DILocation(line: 0, scope: !1794, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 1137, column: 3, scope: !1786, inlinedAt: !2016)
!2019 = !DILocation(line: 59, column: 10, scope: !1794, inlinedAt: !2018)
!2020 = !DILocation(line: 613, column: 29, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1726, file: !462, line: 613, column: 21)
!2022 = !DILocation(line: 613, column: 21, scope: !1726)
!2023 = !DILocation(line: 614, column: 29, scope: !2021)
!2024 = !DILocation(line: 614, column: 19, scope: !2021)
!2025 = !DILocation(line: 618, column: 21, scope: !1729)
!2026 = !DILocation(line: 620, column: 54, scope: !1729)
!2027 = !DILocation(line: 619, column: 36, scope: !1729)
!2028 = !DILocation(line: 621, column: 25, scope: !1729)
!2029 = !DILocation(line: 631, column: 38, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1738, file: !462, line: 629, column: 23)
!2031 = !DILocation(line: 631, column: 48, scope: !2030)
!2032 = !DILocation(line: 626, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1739, file: !462, line: 624, column: 23)
!2034 = !DILocation(line: 631, column: 51, scope: !2030)
!2035 = !DILocation(line: 631, column: 25, scope: !2030)
!2036 = !DILocation(line: 632, column: 28, scope: !2030)
!2037 = !DILocation(line: 631, column: 34, scope: !2030)
!2038 = distinct !{!2038, !2035, !2036, !905}
!2039 = !DILocation(line: 0, scope: !1734)
!2040 = !DILocation(line: 646, column: 29, scope: !1736)
!2041 = !DILocation(line: 649, column: 39, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1734, file: !462, line: 648, column: 29)
!2043 = !DILocation(line: 649, column: 31, scope: !2042)
!2044 = !DILocation(line: 648, column: 60, scope: !2042)
!2045 = !DILocation(line: 648, column: 50, scope: !2042)
!2046 = !DILocation(line: 648, column: 29, scope: !1734)
!2047 = distinct !{!2047, !2046, !2048, !905}
!2048 = !DILocation(line: 654, column: 33, scope: !1734)
!2049 = !DILocation(line: 657, column: 43, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1737, file: !462, line: 657, column: 29)
!2051 = !DILocalVariable(name: "wc", arg: 1, scope: !2052, file: !2053, line: 865, type: !2056)
!2052 = distinct !DISubprogram(name: "c32isprint", scope: !2053, file: !2053, line: 865, type: !2054, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2058)
!2053 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!78, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2057, line: 20, baseType: !84)
!2057 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2058 = !{!2051}
!2059 = !DILocation(line: 0, scope: !2052, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 657, column: 31, scope: !2050)
!2061 = !DILocation(line: 871, column: 10, scope: !2052, inlinedAt: !2060)
!2062 = !DILocation(line: 657, column: 31, scope: !2050)
!2063 = !DILocation(line: 664, column: 23, scope: !1729)
!2064 = !DILocation(line: 665, column: 19, scope: !1730)
!2065 = !DILocation(line: 666, column: 15, scope: !1727)
!2066 = !DILocation(line: 0, scope: !1727)
!2067 = !DILocation(line: 670, column: 19, scope: !1743)
!2068 = !DILocation(line: 670, column: 23, scope: !1743)
!2069 = !DILocation(line: 674, column: 33, scope: !1742)
!2070 = !DILocation(line: 0, scope: !1742)
!2071 = !DILocation(line: 676, column: 17, scope: !1742)
!2072 = !DILocation(line: 398, column: 12, scope: !1713)
!2073 = !DILocation(line: 678, column: 43, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !462, line: 678, column: 25)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !462, line: 677, column: 19)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !462, line: 676, column: 17)
!2077 = distinct !DILexicalBlock(scope: !1742, file: !462, line: 676, column: 17)
!2078 = !DILocation(line: 680, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !462, line: 680, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !462, line: 679, column: 23)
!2081 = !DILocation(line: 680, column: 25, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !462, line: 680, column: 25)
!2083 = !DILocation(line: 680, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !462, line: 680, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !462, line: 680, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !462, line: 680, column: 25)
!2087 = !DILocation(line: 680, column: 25, scope: !2085)
!2088 = !DILocation(line: 680, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !462, line: 680, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !462, line: 680, column: 25)
!2091 = !DILocation(line: 680, column: 25, scope: !2090)
!2092 = !DILocation(line: 680, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !462, line: 680, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2086, file: !462, line: 680, column: 25)
!2095 = !DILocation(line: 680, column: 25, scope: !2094)
!2096 = !DILocation(line: 680, column: 25, scope: !2086)
!2097 = !DILocation(line: 680, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !462, line: 680, column: 25)
!2099 = distinct !DILexicalBlock(scope: !2079, file: !462, line: 680, column: 25)
!2100 = !DILocation(line: 680, column: 25, scope: !2099)
!2101 = !DILocation(line: 681, column: 25, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !462, line: 681, column: 25)
!2103 = distinct !DILexicalBlock(scope: !2080, file: !462, line: 681, column: 25)
!2104 = !DILocation(line: 681, column: 25, scope: !2103)
!2105 = !DILocation(line: 682, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !462, line: 682, column: 25)
!2107 = distinct !DILexicalBlock(scope: !2080, file: !462, line: 682, column: 25)
!2108 = !DILocation(line: 682, column: 25, scope: !2107)
!2109 = !DILocation(line: 683, column: 38, scope: !2080)
!2110 = !DILocation(line: 683, column: 33, scope: !2080)
!2111 = !DILocation(line: 684, column: 23, scope: !2080)
!2112 = !DILocation(line: 685, column: 30, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2074, file: !462, line: 685, column: 30)
!2114 = !DILocation(line: 685, column: 30, scope: !2074)
!2115 = !DILocation(line: 687, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !462, line: 687, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !462, line: 687, column: 25)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !462, line: 686, column: 23)
!2119 = !DILocation(line: 687, column: 25, scope: !2117)
!2120 = !DILocation(line: 689, column: 23, scope: !2118)
!2121 = !DILocation(line: 690, column: 35, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2075, file: !462, line: 690, column: 25)
!2123 = !DILocation(line: 690, column: 30, scope: !2122)
!2124 = !DILocation(line: 690, column: 25, scope: !2075)
!2125 = !DILocation(line: 692, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !462, line: 692, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2075, file: !462, line: 692, column: 21)
!2128 = !DILocation(line: 692, column: 21, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !462, line: 692, column: 21)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !462, line: 692, column: 21)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !462, line: 692, column: 21)
!2132 = !DILocation(line: 692, column: 21, scope: !2130)
!2133 = !DILocation(line: 692, column: 21, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !462, line: 692, column: 21)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !462, line: 692, column: 21)
!2136 = !DILocation(line: 692, column: 21, scope: !2135)
!2137 = !DILocation(line: 692, column: 21, scope: !2131)
!2138 = !DILocation(line: 0, scope: !2075)
!2139 = !DILocation(line: 693, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !462, line: 693, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2075, file: !462, line: 693, column: 21)
!2142 = !DILocation(line: 693, column: 21, scope: !2141)
!2143 = !DILocation(line: 694, column: 25, scope: !2075)
!2144 = !DILocation(line: 676, column: 17, scope: !2076)
!2145 = distinct !{!2145, !2146, !2147}
!2146 = !DILocation(line: 676, column: 17, scope: !2077)
!2147 = !DILocation(line: 695, column: 19, scope: !2077)
!2148 = !DILocation(line: 409, column: 30, scope: !1864)
!2149 = !DILocation(line: 702, column: 34, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 702, column: 11)
!2151 = !DILocation(line: 704, column: 14, scope: !2150)
!2152 = !DILocation(line: 705, column: 14, scope: !2150)
!2153 = !DILocation(line: 705, column: 35, scope: !2150)
!2154 = !DILocation(line: 705, column: 17, scope: !2150)
!2155 = !DILocation(line: 705, column: 47, scope: !2150)
!2156 = !DILocation(line: 705, column: 65, scope: !2150)
!2157 = !DILocation(line: 706, column: 11, scope: !2150)
!2158 = !DILocation(line: 702, column: 11, scope: !1713)
!2159 = !DILocation(line: 395, column: 15, scope: !1711)
!2160 = !DILocation(line: 709, column: 5, scope: !1713)
!2161 = !DILocation(line: 710, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 710, column: 7)
!2163 = !DILocation(line: 710, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2162, file: !462, line: 710, column: 7)
!2165 = !DILocation(line: 710, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !462, line: 710, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !462, line: 710, column: 7)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !462, line: 710, column: 7)
!2169 = !DILocation(line: 710, column: 7, scope: !2167)
!2170 = !DILocation(line: 710, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !462, line: 710, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !462, line: 710, column: 7)
!2173 = !DILocation(line: 710, column: 7, scope: !2172)
!2174 = !DILocation(line: 710, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !462, line: 710, column: 7)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !462, line: 710, column: 7)
!2177 = !DILocation(line: 710, column: 7, scope: !2176)
!2178 = !DILocation(line: 710, column: 7, scope: !2168)
!2179 = !DILocation(line: 710, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !462, line: 710, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2162, file: !462, line: 710, column: 7)
!2182 = !DILocation(line: 710, column: 7, scope: !2181)
!2183 = !DILocation(line: 712, column: 5, scope: !1713)
!2184 = !DILocation(line: 713, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !462, line: 713, column: 7)
!2186 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 713, column: 7)
!2187 = !DILocation(line: 417, column: 21, scope: !1713)
!2188 = !DILocation(line: 713, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !462, line: 713, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !462, line: 713, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !462, line: 713, column: 7)
!2192 = !DILocation(line: 713, column: 7, scope: !2190)
!2193 = !DILocation(line: 713, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !462, line: 713, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !462, line: 713, column: 7)
!2196 = !DILocation(line: 713, column: 7, scope: !2195)
!2197 = !DILocation(line: 713, column: 7, scope: !2191)
!2198 = !DILocation(line: 714, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !462, line: 714, column: 7)
!2200 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 714, column: 7)
!2201 = !DILocation(line: 714, column: 7, scope: !2200)
!2202 = !DILocation(line: 716, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1713, file: !462, line: 716, column: 11)
!2204 = !DILocation(line: 716, column: 11, scope: !1713)
!2205 = !DILocation(line: 718, column: 5, scope: !1714)
!2206 = !DILocation(line: 395, column: 82, scope: !1714)
!2207 = !DILocation(line: 395, column: 3, scope: !1714)
!2208 = distinct !{!2208, !1860, !2209, !905}
!2209 = !DILocation(line: 718, column: 5, scope: !1711)
!2210 = !DILocation(line: 720, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 720, column: 7)
!2212 = !DILocation(line: 720, column: 16, scope: !2211)
!2213 = !DILocation(line: 728, column: 51, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 728, column: 7)
!2215 = !DILocation(line: 731, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !462, line: 731, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !462, line: 730, column: 5)
!2218 = !DILocation(line: 731, column: 11, scope: !2217)
!2219 = !DILocation(line: 732, column: 16, scope: !2216)
!2220 = !DILocation(line: 732, column: 9, scope: !2216)
!2221 = !DILocation(line: 736, column: 18, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !462, line: 736, column: 16)
!2223 = !DILocation(line: 736, column: 29, scope: !2222)
!2224 = !DILocation(line: 745, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 745, column: 7)
!2226 = !DILocation(line: 745, column: 20, scope: !2225)
!2227 = !DILocation(line: 746, column: 12, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !462, line: 746, column: 5)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !462, line: 746, column: 5)
!2230 = !DILocation(line: 746, column: 5, scope: !2229)
!2231 = !DILocation(line: 747, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !462, line: 747, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !462, line: 747, column: 7)
!2234 = !DILocation(line: 747, column: 7, scope: !2233)
!2235 = !DILocation(line: 746, column: 39, scope: !2228)
!2236 = distinct !{!2236, !2230, !2237, !905}
!2237 = !DILocation(line: 747, column: 7, scope: !2229)
!2238 = !DILocation(line: 749, column: 11, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 749, column: 7)
!2240 = !DILocation(line: 749, column: 7, scope: !1679)
!2241 = !DILocation(line: 750, column: 5, scope: !2239)
!2242 = !DILocation(line: 750, column: 17, scope: !2239)
!2243 = !DILocation(line: 753, column: 2, scope: !1679)
!2244 = !DILocation(line: 756, column: 51, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1679, file: !462, line: 756, column: 7)
!2246 = !DILocation(line: 756, column: 21, scope: !2245)
!2247 = !DILocation(line: 760, column: 42, scope: !1679)
!2248 = !DILocation(line: 758, column: 10, scope: !1679)
!2249 = !DILocation(line: 758, column: 3, scope: !1679)
!2250 = !DILocation(line: 762, column: 1, scope: !1679)
!2251 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !982, file: !982, line: 98, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!102}
!2254 = !DISubprogram(name: "iswprint", scope: !2255, file: !2255, line: 120, type: !2054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2256 = distinct !DISubprogram(name: "quotearg_alloc", scope: !462, file: !462, line: 788, type: !2257, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!99, !105, !102, !1572}
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "arg", arg: 1, scope: !2256, file: !462, line: 788, type: !105)
!2261 = !DILocalVariable(name: "argsize", arg: 2, scope: !2256, file: !462, line: 788, type: !102)
!2262 = !DILocalVariable(name: "o", arg: 3, scope: !2256, file: !462, line: 789, type: !1572)
!2263 = !DILocation(line: 0, scope: !2256)
!2264 = !DILocalVariable(name: "arg", arg: 1, scope: !2265, file: !462, line: 801, type: !105)
!2265 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !462, file: !462, line: 801, type: !2266, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!99, !105, !102, !720, !1572}
!2268 = !{!2264, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2269 = !DILocalVariable(name: "argsize", arg: 2, scope: !2265, file: !462, line: 801, type: !102)
!2270 = !DILocalVariable(name: "size", arg: 3, scope: !2265, file: !462, line: 801, type: !720)
!2271 = !DILocalVariable(name: "o", arg: 4, scope: !2265, file: !462, line: 802, type: !1572)
!2272 = !DILocalVariable(name: "p", scope: !2265, file: !462, line: 804, type: !1572)
!2273 = !DILocalVariable(name: "saved_errno", scope: !2265, file: !462, line: 805, type: !78)
!2274 = !DILocalVariable(name: "flags", scope: !2265, file: !462, line: 807, type: !78)
!2275 = !DILocalVariable(name: "bufsize", scope: !2265, file: !462, line: 808, type: !102)
!2276 = !DILocalVariable(name: "buf", scope: !2265, file: !462, line: 812, type: !99)
!2277 = !DILocation(line: 0, scope: !2265, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 791, column: 10, scope: !2256)
!2279 = !DILocation(line: 804, column: 37, scope: !2265, inlinedAt: !2278)
!2280 = !DILocation(line: 805, column: 21, scope: !2265, inlinedAt: !2278)
!2281 = !DILocation(line: 807, column: 18, scope: !2265, inlinedAt: !2278)
!2282 = !DILocation(line: 807, column: 24, scope: !2265, inlinedAt: !2278)
!2283 = !DILocation(line: 808, column: 72, scope: !2265, inlinedAt: !2278)
!2284 = !DILocation(line: 809, column: 56, scope: !2265, inlinedAt: !2278)
!2285 = !DILocation(line: 810, column: 49, scope: !2265, inlinedAt: !2278)
!2286 = !DILocation(line: 811, column: 49, scope: !2265, inlinedAt: !2278)
!2287 = !DILocation(line: 808, column: 20, scope: !2265, inlinedAt: !2278)
!2288 = !DILocation(line: 811, column: 62, scope: !2265, inlinedAt: !2278)
!2289 = !DILocation(line: 812, column: 15, scope: !2265, inlinedAt: !2278)
!2290 = !DILocation(line: 813, column: 60, scope: !2265, inlinedAt: !2278)
!2291 = !DILocation(line: 815, column: 32, scope: !2265, inlinedAt: !2278)
!2292 = !DILocation(line: 815, column: 47, scope: !2265, inlinedAt: !2278)
!2293 = !DILocation(line: 813, column: 3, scope: !2265, inlinedAt: !2278)
!2294 = !DILocation(line: 816, column: 9, scope: !2265, inlinedAt: !2278)
!2295 = !DILocation(line: 791, column: 3, scope: !2256)
!2296 = !DILocation(line: 0, scope: !2265)
!2297 = !DILocation(line: 804, column: 37, scope: !2265)
!2298 = !DILocation(line: 805, column: 21, scope: !2265)
!2299 = !DILocation(line: 807, column: 18, scope: !2265)
!2300 = !DILocation(line: 807, column: 27, scope: !2265)
!2301 = !DILocation(line: 807, column: 24, scope: !2265)
!2302 = !DILocation(line: 808, column: 72, scope: !2265)
!2303 = !DILocation(line: 809, column: 56, scope: !2265)
!2304 = !DILocation(line: 810, column: 49, scope: !2265)
!2305 = !DILocation(line: 811, column: 49, scope: !2265)
!2306 = !DILocation(line: 808, column: 20, scope: !2265)
!2307 = !DILocation(line: 811, column: 62, scope: !2265)
!2308 = !DILocation(line: 812, column: 15, scope: !2265)
!2309 = !DILocation(line: 813, column: 60, scope: !2265)
!2310 = !DILocation(line: 815, column: 32, scope: !2265)
!2311 = !DILocation(line: 815, column: 47, scope: !2265)
!2312 = !DILocation(line: 813, column: 3, scope: !2265)
!2313 = !DILocation(line: 816, column: 9, scope: !2265)
!2314 = !DILocation(line: 817, column: 7, scope: !2265)
!2315 = !DILocation(line: 818, column: 11, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2265, file: !462, line: 817, column: 7)
!2317 = !{!1144, !1144, i64 0}
!2318 = !DILocation(line: 818, column: 5, scope: !2316)
!2319 = !DILocation(line: 819, column: 3, scope: !2265)
!2320 = distinct !DISubprogram(name: "quotearg_free", scope: !462, file: !462, line: 837, type: !417, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2321)
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "sv", scope: !2320, file: !462, line: 839, type: !563)
!2323 = !DILocalVariable(name: "i", scope: !2324, file: !462, line: 840, type: !78)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !462, line: 840, column: 3)
!2325 = !DILocation(line: 839, column: 24, scope: !2320)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 0, scope: !2324)
!2328 = !DILocation(line: 840, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !462, line: 840, column: 3)
!2330 = !DILocation(line: 840, column: 3, scope: !2324)
!2331 = !DILocation(line: 842, column: 13, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2320, file: !462, line: 842, column: 7)
!2333 = !{!2334, !791, i64 8}
!2334 = !{!"slotvec", !1144, i64 0, !791, i64 8}
!2335 = !DILocation(line: 842, column: 17, scope: !2332)
!2336 = !DILocation(line: 842, column: 7, scope: !2320)
!2337 = !DILocation(line: 841, column: 17, scope: !2329)
!2338 = !DILocation(line: 841, column: 5, scope: !2329)
!2339 = !DILocation(line: 840, column: 32, scope: !2329)
!2340 = distinct !{!2340, !2330, !2341, !905}
!2341 = !DILocation(line: 841, column: 20, scope: !2324)
!2342 = !DILocation(line: 844, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2332, file: !462, line: 843, column: 5)
!2344 = !DILocation(line: 845, column: 21, scope: !2343)
!2345 = !{!2334, !1144, i64 0}
!2346 = !DILocation(line: 846, column: 20, scope: !2343)
!2347 = !DILocation(line: 847, column: 5, scope: !2343)
!2348 = !DILocation(line: 848, column: 10, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2320, file: !462, line: 848, column: 7)
!2350 = !DILocation(line: 848, column: 7, scope: !2320)
!2351 = !DILocation(line: 850, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !462, line: 849, column: 5)
!2353 = !DILocation(line: 851, column: 15, scope: !2352)
!2354 = !DILocation(line: 852, column: 5, scope: !2352)
!2355 = !DILocation(line: 853, column: 10, scope: !2320)
!2356 = !DILocation(line: 854, column: 1, scope: !2320)
!2357 = distinct !DISubprogram(name: "quotearg_n", scope: !462, file: !462, line: 919, type: !975, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2358)
!2358 = !{!2359, !2360}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2357, file: !462, line: 919, type: !78)
!2360 = !DILocalVariable(name: "arg", arg: 2, scope: !2357, file: !462, line: 919, type: !105)
!2361 = !DILocation(line: 0, scope: !2357)
!2362 = !DILocation(line: 921, column: 10, scope: !2357)
!2363 = !DILocation(line: 921, column: 3, scope: !2357)
!2364 = distinct !DISubprogram(name: "quotearg_n_options", scope: !462, file: !462, line: 866, type: !2365, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!99, !78, !105, !102, !1572}
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2378, !2379, !2381, !2382, !2383}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2364, file: !462, line: 866, type: !78)
!2369 = !DILocalVariable(name: "arg", arg: 2, scope: !2364, file: !462, line: 866, type: !105)
!2370 = !DILocalVariable(name: "argsize", arg: 3, scope: !2364, file: !462, line: 866, type: !102)
!2371 = !DILocalVariable(name: "options", arg: 4, scope: !2364, file: !462, line: 867, type: !1572)
!2372 = !DILocalVariable(name: "saved_errno", scope: !2364, file: !462, line: 869, type: !78)
!2373 = !DILocalVariable(name: "sv", scope: !2364, file: !462, line: 871, type: !563)
!2374 = !DILocalVariable(name: "nslots_max", scope: !2364, file: !462, line: 873, type: !78)
!2375 = !DILocalVariable(name: "preallocated", scope: !2376, file: !462, line: 879, type: !143)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !462, line: 878, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2364, file: !462, line: 877, column: 7)
!2378 = !DILocalVariable(name: "new_nslots", scope: !2376, file: !462, line: 880, type: !733)
!2379 = !DILocalVariable(name: "size", scope: !2380, file: !462, line: 891, type: !102)
!2380 = distinct !DILexicalBlock(scope: !2364, file: !462, line: 890, column: 3)
!2381 = !DILocalVariable(name: "val", scope: !2380, file: !462, line: 892, type: !99)
!2382 = !DILocalVariable(name: "flags", scope: !2380, file: !462, line: 894, type: !78)
!2383 = !DILocalVariable(name: "qsize", scope: !2380, file: !462, line: 895, type: !102)
!2384 = distinct !DIAssignID()
!2385 = !DILocation(line: 0, scope: !2376)
!2386 = !DILocation(line: 0, scope: !2364)
!2387 = !DILocation(line: 869, column: 21, scope: !2364)
!2388 = !DILocation(line: 871, column: 24, scope: !2364)
!2389 = !DILocation(line: 874, column: 17, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2364, file: !462, line: 874, column: 7)
!2391 = !DILocation(line: 875, column: 5, scope: !2390)
!2392 = !DILocation(line: 877, column: 7, scope: !2377)
!2393 = !DILocation(line: 877, column: 14, scope: !2377)
!2394 = !DILocation(line: 877, column: 7, scope: !2364)
!2395 = !DILocation(line: 879, column: 31, scope: !2376)
!2396 = !DILocation(line: 880, column: 7, scope: !2376)
!2397 = !DILocation(line: 880, column: 26, scope: !2376)
!2398 = !DILocation(line: 880, column: 13, scope: !2376)
!2399 = distinct !DIAssignID()
!2400 = !DILocation(line: 882, column: 31, scope: !2376)
!2401 = !DILocation(line: 883, column: 33, scope: !2376)
!2402 = !DILocation(line: 883, column: 42, scope: !2376)
!2403 = !DILocation(line: 883, column: 31, scope: !2376)
!2404 = !DILocation(line: 882, column: 22, scope: !2376)
!2405 = !DILocation(line: 882, column: 15, scope: !2376)
!2406 = !DILocation(line: 884, column: 11, scope: !2376)
!2407 = !DILocation(line: 885, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2376, file: !462, line: 884, column: 11)
!2409 = !{i64 0, i64 8, !2317, i64 8, i64 8, !790}
!2410 = !DILocation(line: 885, column: 9, scope: !2408)
!2411 = !DILocation(line: 886, column: 20, scope: !2376)
!2412 = !DILocation(line: 886, column: 18, scope: !2376)
!2413 = !DILocation(line: 886, column: 32, scope: !2376)
!2414 = !DILocation(line: 886, column: 43, scope: !2376)
!2415 = !DILocation(line: 886, column: 53, scope: !2376)
!2416 = !DILocation(line: 0, scope: !1794, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 886, column: 7, scope: !2376)
!2418 = !DILocation(line: 59, column: 10, scope: !1794, inlinedAt: !2417)
!2419 = !DILocation(line: 887, column: 16, scope: !2376)
!2420 = !DILocation(line: 887, column: 14, scope: !2376)
!2421 = !DILocation(line: 888, column: 5, scope: !2377)
!2422 = !DILocation(line: 888, column: 5, scope: !2376)
!2423 = !DILocation(line: 891, column: 19, scope: !2380)
!2424 = !DILocation(line: 891, column: 25, scope: !2380)
!2425 = !DILocation(line: 0, scope: !2380)
!2426 = !DILocation(line: 892, column: 23, scope: !2380)
!2427 = !DILocation(line: 894, column: 26, scope: !2380)
!2428 = !DILocation(line: 894, column: 32, scope: !2380)
!2429 = !DILocation(line: 896, column: 55, scope: !2380)
!2430 = !DILocation(line: 897, column: 55, scope: !2380)
!2431 = !DILocation(line: 898, column: 55, scope: !2380)
!2432 = !DILocation(line: 899, column: 55, scope: !2380)
!2433 = !DILocation(line: 895, column: 20, scope: !2380)
!2434 = !DILocation(line: 901, column: 14, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2380, file: !462, line: 901, column: 9)
!2436 = !DILocation(line: 901, column: 9, scope: !2380)
!2437 = !DILocation(line: 903, column: 35, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !462, line: 902, column: 7)
!2439 = !DILocation(line: 903, column: 20, scope: !2438)
!2440 = !DILocation(line: 904, column: 17, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !462, line: 904, column: 13)
!2442 = !DILocation(line: 904, column: 13, scope: !2438)
!2443 = !DILocation(line: 905, column: 11, scope: !2441)
!2444 = !DILocation(line: 906, column: 27, scope: !2438)
!2445 = !DILocation(line: 906, column: 19, scope: !2438)
!2446 = !DILocation(line: 907, column: 69, scope: !2438)
!2447 = !DILocation(line: 909, column: 44, scope: !2438)
!2448 = !DILocation(line: 910, column: 44, scope: !2438)
!2449 = !DILocation(line: 907, column: 9, scope: !2438)
!2450 = !DILocation(line: 911, column: 7, scope: !2438)
!2451 = !DILocation(line: 913, column: 11, scope: !2380)
!2452 = !DILocation(line: 914, column: 5, scope: !2380)
!2453 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !462, file: !462, line: 925, type: !2454, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!99, !78, !105, !102}
!2456 = !{!2457, !2458, !2459}
!2457 = !DILocalVariable(name: "n", arg: 1, scope: !2453, file: !462, line: 925, type: !78)
!2458 = !DILocalVariable(name: "arg", arg: 2, scope: !2453, file: !462, line: 925, type: !105)
!2459 = !DILocalVariable(name: "argsize", arg: 3, scope: !2453, file: !462, line: 925, type: !102)
!2460 = !DILocation(line: 0, scope: !2453)
!2461 = !DILocation(line: 927, column: 10, scope: !2453)
!2462 = !DILocation(line: 927, column: 3, scope: !2453)
!2463 = distinct !DISubprogram(name: "quotearg", scope: !462, file: !462, line: 931, type: !984, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2464)
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "arg", arg: 1, scope: !2463, file: !462, line: 931, type: !105)
!2466 = !DILocation(line: 0, scope: !2463)
!2467 = !DILocation(line: 0, scope: !2357, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 933, column: 10, scope: !2463)
!2469 = !DILocation(line: 921, column: 10, scope: !2357, inlinedAt: !2468)
!2470 = !DILocation(line: 933, column: 3, scope: !2463)
!2471 = distinct !DISubprogram(name: "quotearg_mem", scope: !462, file: !462, line: 937, type: !2472, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!99, !105, !102}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2471, file: !462, line: 937, type: !105)
!2476 = !DILocalVariable(name: "argsize", arg: 2, scope: !2471, file: !462, line: 937, type: !102)
!2477 = !DILocation(line: 0, scope: !2471)
!2478 = !DILocation(line: 0, scope: !2453, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 939, column: 10, scope: !2471)
!2480 = !DILocation(line: 927, column: 10, scope: !2453, inlinedAt: !2479)
!2481 = !DILocation(line: 939, column: 3, scope: !2471)
!2482 = distinct !DISubprogram(name: "quotearg_n_style", scope: !462, file: !462, line: 943, type: !2483, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!99, !78, !488, !105}
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "n", arg: 1, scope: !2482, file: !462, line: 943, type: !78)
!2487 = !DILocalVariable(name: "s", arg: 2, scope: !2482, file: !462, line: 943, type: !488)
!2488 = !DILocalVariable(name: "arg", arg: 3, scope: !2482, file: !462, line: 943, type: !105)
!2489 = !DILocalVariable(name: "o", scope: !2482, file: !462, line: 945, type: !1573)
!2490 = distinct !DIAssignID()
!2491 = !DILocation(line: 0, scope: !2482)
!2492 = !DILocation(line: 945, column: 3, scope: !2482)
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"quoting_options_from_style: argument 0"}
!2495 = distinct !{!2495, !"quoting_options_from_style"}
!2496 = !DILocation(line: 945, column: 36, scope: !2482)
!2497 = !DILocalVariable(name: "style", arg: 1, scope: !2498, file: !462, line: 183, type: !488)
!2498 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !462, file: !462, line: 183, type: !2499, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!515, !488}
!2501 = !{!2497, !2502}
!2502 = !DILocalVariable(name: "o", scope: !2498, file: !462, line: 185, type: !515)
!2503 = !DILocation(line: 0, scope: !2498, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 945, column: 36, scope: !2482)
!2505 = !DILocation(line: 185, column: 26, scope: !2498, inlinedAt: !2504)
!2506 = distinct !DIAssignID()
!2507 = !DILocation(line: 186, column: 13, scope: !2508, inlinedAt: !2504)
!2508 = distinct !DILexicalBlock(scope: !2498, file: !462, line: 186, column: 7)
!2509 = !DILocation(line: 186, column: 7, scope: !2498, inlinedAt: !2504)
!2510 = !DILocation(line: 187, column: 5, scope: !2508, inlinedAt: !2504)
!2511 = !DILocation(line: 188, column: 11, scope: !2498, inlinedAt: !2504)
!2512 = distinct !DIAssignID()
!2513 = !DILocation(line: 946, column: 10, scope: !2482)
!2514 = !DILocation(line: 947, column: 1, scope: !2482)
!2515 = !DILocation(line: 946, column: 3, scope: !2482)
!2516 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !462, file: !462, line: 950, type: !2517, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!99, !78, !488, !105, !102}
!2519 = !{!2520, !2521, !2522, !2523, !2524}
!2520 = !DILocalVariable(name: "n", arg: 1, scope: !2516, file: !462, line: 950, type: !78)
!2521 = !DILocalVariable(name: "s", arg: 2, scope: !2516, file: !462, line: 950, type: !488)
!2522 = !DILocalVariable(name: "arg", arg: 3, scope: !2516, file: !462, line: 951, type: !105)
!2523 = !DILocalVariable(name: "argsize", arg: 4, scope: !2516, file: !462, line: 951, type: !102)
!2524 = !DILocalVariable(name: "o", scope: !2516, file: !462, line: 953, type: !1573)
!2525 = distinct !DIAssignID()
!2526 = !DILocation(line: 0, scope: !2516)
!2527 = !DILocation(line: 953, column: 3, scope: !2516)
!2528 = !{!2529}
!2529 = distinct !{!2529, !2530, !"quoting_options_from_style: argument 0"}
!2530 = distinct !{!2530, !"quoting_options_from_style"}
!2531 = !DILocation(line: 953, column: 36, scope: !2516)
!2532 = !DILocation(line: 0, scope: !2498, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 953, column: 36, scope: !2516)
!2534 = !DILocation(line: 185, column: 26, scope: !2498, inlinedAt: !2533)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 186, column: 13, scope: !2508, inlinedAt: !2533)
!2537 = !DILocation(line: 186, column: 7, scope: !2498, inlinedAt: !2533)
!2538 = !DILocation(line: 187, column: 5, scope: !2508, inlinedAt: !2533)
!2539 = !DILocation(line: 188, column: 11, scope: !2498, inlinedAt: !2533)
!2540 = distinct !DIAssignID()
!2541 = !DILocation(line: 954, column: 10, scope: !2516)
!2542 = !DILocation(line: 955, column: 1, scope: !2516)
!2543 = !DILocation(line: 954, column: 3, scope: !2516)
!2544 = distinct !DISubprogram(name: "quotearg_style", scope: !462, file: !462, line: 958, type: !2545, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!99, !488, !105}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "s", arg: 1, scope: !2544, file: !462, line: 958, type: !488)
!2549 = !DILocalVariable(name: "arg", arg: 2, scope: !2544, file: !462, line: 958, type: !105)
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 0, scope: !2544)
!2552 = !DILocation(line: 0, scope: !2482, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 960, column: 10, scope: !2544)
!2554 = !DILocation(line: 945, column: 3, scope: !2482, inlinedAt: !2553)
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"quoting_options_from_style: argument 0"}
!2557 = distinct !{!2557, !"quoting_options_from_style"}
!2558 = !DILocation(line: 945, column: 36, scope: !2482, inlinedAt: !2553)
!2559 = !DILocation(line: 0, scope: !2498, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 945, column: 36, scope: !2482, inlinedAt: !2553)
!2561 = !DILocation(line: 185, column: 26, scope: !2498, inlinedAt: !2560)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 186, column: 13, scope: !2508, inlinedAt: !2560)
!2564 = !DILocation(line: 186, column: 7, scope: !2498, inlinedAt: !2560)
!2565 = !DILocation(line: 187, column: 5, scope: !2508, inlinedAt: !2560)
!2566 = !DILocation(line: 188, column: 11, scope: !2498, inlinedAt: !2560)
!2567 = distinct !DIAssignID()
!2568 = !DILocation(line: 946, column: 10, scope: !2482, inlinedAt: !2553)
!2569 = !DILocation(line: 947, column: 1, scope: !2482, inlinedAt: !2553)
!2570 = !DILocation(line: 960, column: 3, scope: !2544)
!2571 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !462, file: !462, line: 964, type: !2572, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!99, !488, !105, !102}
!2574 = !{!2575, !2576, !2577}
!2575 = !DILocalVariable(name: "s", arg: 1, scope: !2571, file: !462, line: 964, type: !488)
!2576 = !DILocalVariable(name: "arg", arg: 2, scope: !2571, file: !462, line: 964, type: !105)
!2577 = !DILocalVariable(name: "argsize", arg: 3, scope: !2571, file: !462, line: 964, type: !102)
!2578 = distinct !DIAssignID()
!2579 = !DILocation(line: 0, scope: !2571)
!2580 = !DILocation(line: 0, scope: !2516, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 966, column: 10, scope: !2571)
!2582 = !DILocation(line: 953, column: 3, scope: !2516, inlinedAt: !2581)
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"quoting_options_from_style: argument 0"}
!2585 = distinct !{!2585, !"quoting_options_from_style"}
!2586 = !DILocation(line: 953, column: 36, scope: !2516, inlinedAt: !2581)
!2587 = !DILocation(line: 0, scope: !2498, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 953, column: 36, scope: !2516, inlinedAt: !2581)
!2589 = !DILocation(line: 185, column: 26, scope: !2498, inlinedAt: !2588)
!2590 = distinct !DIAssignID()
!2591 = !DILocation(line: 186, column: 13, scope: !2508, inlinedAt: !2588)
!2592 = !DILocation(line: 186, column: 7, scope: !2498, inlinedAt: !2588)
!2593 = !DILocation(line: 187, column: 5, scope: !2508, inlinedAt: !2588)
!2594 = !DILocation(line: 188, column: 11, scope: !2498, inlinedAt: !2588)
!2595 = distinct !DIAssignID()
!2596 = !DILocation(line: 954, column: 10, scope: !2516, inlinedAt: !2581)
!2597 = !DILocation(line: 955, column: 1, scope: !2516, inlinedAt: !2581)
!2598 = !DILocation(line: 966, column: 3, scope: !2571)
!2599 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !462, file: !462, line: 970, type: !2600, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!99, !105, !102, !4}
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DILocalVariable(name: "arg", arg: 1, scope: !2599, file: !462, line: 970, type: !105)
!2604 = !DILocalVariable(name: "argsize", arg: 2, scope: !2599, file: !462, line: 970, type: !102)
!2605 = !DILocalVariable(name: "ch", arg: 3, scope: !2599, file: !462, line: 970, type: !4)
!2606 = !DILocalVariable(name: "options", scope: !2599, file: !462, line: 972, type: !515)
!2607 = distinct !DIAssignID()
!2608 = !DILocation(line: 0, scope: !2599)
!2609 = !DILocation(line: 972, column: 3, scope: !2599)
!2610 = !DILocation(line: 973, column: 13, scope: !2599)
!2611 = !{i64 0, i64 4, !858, i64 4, i64 4, !858, i64 8, i64 32, !867, i64 40, i64 8, !790, i64 48, i64 8, !790}
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 0, scope: !1592, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 974, column: 3, scope: !2599)
!2615 = !DILocation(line: 147, column: 41, scope: !1592, inlinedAt: !2614)
!2616 = !DILocation(line: 147, column: 62, scope: !1592, inlinedAt: !2614)
!2617 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2614)
!2618 = !DILocation(line: 148, column: 15, scope: !1592, inlinedAt: !2614)
!2619 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2614)
!2620 = !DILocation(line: 149, column: 24, scope: !1592, inlinedAt: !2614)
!2621 = !DILocation(line: 150, column: 19, scope: !1592, inlinedAt: !2614)
!2622 = !DILocation(line: 150, column: 24, scope: !1592, inlinedAt: !2614)
!2623 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2614)
!2624 = !DILocation(line: 975, column: 10, scope: !2599)
!2625 = !DILocation(line: 976, column: 1, scope: !2599)
!2626 = !DILocation(line: 975, column: 3, scope: !2599)
!2627 = distinct !DISubprogram(name: "quotearg_char", scope: !462, file: !462, line: 979, type: !2628, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!99, !105, !4}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "arg", arg: 1, scope: !2627, file: !462, line: 979, type: !105)
!2632 = !DILocalVariable(name: "ch", arg: 2, scope: !2627, file: !462, line: 979, type: !4)
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 0, scope: !2627)
!2635 = !DILocation(line: 0, scope: !2599, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 981, column: 10, scope: !2627)
!2637 = !DILocation(line: 972, column: 3, scope: !2599, inlinedAt: !2636)
!2638 = !DILocation(line: 973, column: 13, scope: !2599, inlinedAt: !2636)
!2639 = distinct !DIAssignID()
!2640 = !DILocation(line: 0, scope: !1592, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 974, column: 3, scope: !2599, inlinedAt: !2636)
!2642 = !DILocation(line: 147, column: 41, scope: !1592, inlinedAt: !2641)
!2643 = !DILocation(line: 147, column: 62, scope: !1592, inlinedAt: !2641)
!2644 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2641)
!2645 = !DILocation(line: 148, column: 15, scope: !1592, inlinedAt: !2641)
!2646 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2641)
!2647 = !DILocation(line: 149, column: 24, scope: !1592, inlinedAt: !2641)
!2648 = !DILocation(line: 150, column: 19, scope: !1592, inlinedAt: !2641)
!2649 = !DILocation(line: 150, column: 24, scope: !1592, inlinedAt: !2641)
!2650 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2641)
!2651 = !DILocation(line: 975, column: 10, scope: !2599, inlinedAt: !2636)
!2652 = !DILocation(line: 976, column: 1, scope: !2599, inlinedAt: !2636)
!2653 = !DILocation(line: 981, column: 3, scope: !2627)
!2654 = distinct !DISubprogram(name: "quotearg_colon", scope: !462, file: !462, line: 985, type: !984, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2655)
!2655 = !{!2656}
!2656 = !DILocalVariable(name: "arg", arg: 1, scope: !2654, file: !462, line: 985, type: !105)
!2657 = distinct !DIAssignID()
!2658 = !DILocation(line: 0, scope: !2654)
!2659 = !DILocation(line: 0, scope: !2627, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 987, column: 10, scope: !2654)
!2661 = !DILocation(line: 0, scope: !2599, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 981, column: 10, scope: !2627, inlinedAt: !2660)
!2663 = !DILocation(line: 972, column: 3, scope: !2599, inlinedAt: !2662)
!2664 = !DILocation(line: 973, column: 13, scope: !2599, inlinedAt: !2662)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !1592, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 974, column: 3, scope: !2599, inlinedAt: !2662)
!2668 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2667)
!2669 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2667)
!2670 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2667)
!2671 = !DILocation(line: 975, column: 10, scope: !2599, inlinedAt: !2662)
!2672 = !DILocation(line: 976, column: 1, scope: !2599, inlinedAt: !2662)
!2673 = !DILocation(line: 987, column: 3, scope: !2654)
!2674 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !462, file: !462, line: 991, type: !2472, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2675)
!2675 = !{!2676, !2677}
!2676 = !DILocalVariable(name: "arg", arg: 1, scope: !2674, file: !462, line: 991, type: !105)
!2677 = !DILocalVariable(name: "argsize", arg: 2, scope: !2674, file: !462, line: 991, type: !102)
!2678 = distinct !DIAssignID()
!2679 = !DILocation(line: 0, scope: !2674)
!2680 = !DILocation(line: 0, scope: !2599, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 993, column: 10, scope: !2674)
!2682 = !DILocation(line: 972, column: 3, scope: !2599, inlinedAt: !2681)
!2683 = !DILocation(line: 973, column: 13, scope: !2599, inlinedAt: !2681)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !1592, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 974, column: 3, scope: !2599, inlinedAt: !2681)
!2687 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2686)
!2688 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2686)
!2689 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2686)
!2690 = !DILocation(line: 975, column: 10, scope: !2599, inlinedAt: !2681)
!2691 = !DILocation(line: 976, column: 1, scope: !2599, inlinedAt: !2681)
!2692 = !DILocation(line: 993, column: 3, scope: !2674)
!2693 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !462, file: !462, line: 997, type: !2483, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !462, line: 997, type: !78)
!2696 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !462, line: 997, type: !488)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !462, line: 997, type: !105)
!2698 = !DILocalVariable(name: "options", scope: !2693, file: !462, line: 999, type: !515)
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocation(line: 185, column: 26, scope: !2498, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1000, column: 13, scope: !2693)
!2703 = !DILocation(line: 999, column: 3, scope: !2693)
!2704 = !DILocation(line: 0, scope: !2498, inlinedAt: !2702)
!2705 = !DILocation(line: 186, column: 13, scope: !2508, inlinedAt: !2702)
!2706 = !DILocation(line: 186, column: 7, scope: !2498, inlinedAt: !2702)
!2707 = !DILocation(line: 187, column: 5, scope: !2508, inlinedAt: !2702)
!2708 = !{!2709}
!2709 = distinct !{!2709, !2710, !"quoting_options_from_style: argument 0"}
!2710 = distinct !{!2710, !"quoting_options_from_style"}
!2711 = !DILocation(line: 1000, column: 13, scope: !2693)
!2712 = distinct !DIAssignID()
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 0, scope: !1592, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1001, column: 3, scope: !2693)
!2716 = !DILocation(line: 147, column: 57, scope: !1592, inlinedAt: !2715)
!2717 = !DILocation(line: 149, column: 21, scope: !1592, inlinedAt: !2715)
!2718 = !DILocation(line: 150, column: 6, scope: !1592, inlinedAt: !2715)
!2719 = distinct !DIAssignID()
!2720 = !DILocation(line: 1002, column: 10, scope: !2693)
!2721 = !DILocation(line: 1003, column: 1, scope: !2693)
!2722 = !DILocation(line: 1002, column: 3, scope: !2693)
!2723 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !462, file: !462, line: 1006, type: !2724, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!99, !78, !105, !105, !105}
!2726 = !{!2727, !2728, !2729, !2730}
!2727 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !462, line: 1006, type: !78)
!2728 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2723, file: !462, line: 1006, type: !105)
!2729 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2723, file: !462, line: 1007, type: !105)
!2730 = !DILocalVariable(name: "arg", arg: 4, scope: !2723, file: !462, line: 1007, type: !105)
!2731 = distinct !DIAssignID()
!2732 = !DILocation(line: 0, scope: !2723)
!2733 = !DILocalVariable(name: "o", scope: !2734, file: !462, line: 1018, type: !515)
!2734 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !462, file: !462, line: 1014, type: !2735, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!99, !78, !105, !105, !105, !102}
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2733}
!2738 = !DILocalVariable(name: "n", arg: 1, scope: !2734, file: !462, line: 1014, type: !78)
!2739 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2734, file: !462, line: 1014, type: !105)
!2740 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2734, file: !462, line: 1015, type: !105)
!2741 = !DILocalVariable(name: "arg", arg: 4, scope: !2734, file: !462, line: 1016, type: !105)
!2742 = !DILocalVariable(name: "argsize", arg: 5, scope: !2734, file: !462, line: 1016, type: !102)
!2743 = !DILocation(line: 0, scope: !2734, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1009, column: 10, scope: !2723)
!2745 = !DILocation(line: 1018, column: 3, scope: !2734, inlinedAt: !2744)
!2746 = !DILocation(line: 1018, column: 30, scope: !2734, inlinedAt: !2744)
!2747 = distinct !DIAssignID()
!2748 = distinct !DIAssignID()
!2749 = !DILocation(line: 0, scope: !1632, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1019, column: 3, scope: !2734, inlinedAt: !2744)
!2751 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2750)
!2752 = distinct !DIAssignID()
!2753 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2750)
!2754 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2750)
!2755 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2750)
!2756 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2750)
!2757 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2750)
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2750)
!2760 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2750)
!2761 = distinct !DIAssignID()
!2762 = !DILocation(line: 1020, column: 10, scope: !2734, inlinedAt: !2744)
!2763 = !DILocation(line: 1021, column: 1, scope: !2734, inlinedAt: !2744)
!2764 = !DILocation(line: 1009, column: 3, scope: !2723)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 0, scope: !2734)
!2767 = !DILocation(line: 1018, column: 3, scope: !2734)
!2768 = !DILocation(line: 1018, column: 30, scope: !2734)
!2769 = distinct !DIAssignID()
!2770 = distinct !DIAssignID()
!2771 = !DILocation(line: 0, scope: !1632, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1019, column: 3, scope: !2734)
!2773 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2772)
!2774 = distinct !DIAssignID()
!2775 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2772)
!2776 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2772)
!2777 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2772)
!2778 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2772)
!2779 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2772)
!2780 = distinct !DIAssignID()
!2781 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2772)
!2782 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2772)
!2783 = distinct !DIAssignID()
!2784 = !DILocation(line: 1020, column: 10, scope: !2734)
!2785 = !DILocation(line: 1021, column: 1, scope: !2734)
!2786 = !DILocation(line: 1020, column: 3, scope: !2734)
!2787 = distinct !DISubprogram(name: "quotearg_custom", scope: !462, file: !462, line: 1024, type: !2788, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!99, !105, !105, !105}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2787, file: !462, line: 1024, type: !105)
!2792 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2787, file: !462, line: 1024, type: !105)
!2793 = !DILocalVariable(name: "arg", arg: 3, scope: !2787, file: !462, line: 1025, type: !105)
!2794 = distinct !DIAssignID()
!2795 = !DILocation(line: 0, scope: !2787)
!2796 = !DILocation(line: 0, scope: !2723, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1027, column: 10, scope: !2787)
!2798 = !DILocation(line: 0, scope: !2734, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1009, column: 10, scope: !2723, inlinedAt: !2797)
!2800 = !DILocation(line: 1018, column: 3, scope: !2734, inlinedAt: !2799)
!2801 = !DILocation(line: 1018, column: 30, scope: !2734, inlinedAt: !2799)
!2802 = distinct !DIAssignID()
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 0, scope: !1632, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1019, column: 3, scope: !2734, inlinedAt: !2799)
!2806 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2805)
!2807 = distinct !DIAssignID()
!2808 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2805)
!2809 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2805)
!2810 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2805)
!2811 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2805)
!2812 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2805)
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2805)
!2815 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2805)
!2816 = distinct !DIAssignID()
!2817 = !DILocation(line: 1020, column: 10, scope: !2734, inlinedAt: !2799)
!2818 = !DILocation(line: 1021, column: 1, scope: !2734, inlinedAt: !2799)
!2819 = !DILocation(line: 1027, column: 3, scope: !2787)
!2820 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !462, file: !462, line: 1031, type: !2821, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!99, !105, !105, !105, !102}
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2820, file: !462, line: 1031, type: !105)
!2825 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2820, file: !462, line: 1031, type: !105)
!2826 = !DILocalVariable(name: "arg", arg: 3, scope: !2820, file: !462, line: 1032, type: !105)
!2827 = !DILocalVariable(name: "argsize", arg: 4, scope: !2820, file: !462, line: 1032, type: !102)
!2828 = distinct !DIAssignID()
!2829 = !DILocation(line: 0, scope: !2820)
!2830 = !DILocation(line: 0, scope: !2734, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1034, column: 10, scope: !2820)
!2832 = !DILocation(line: 1018, column: 3, scope: !2734, inlinedAt: !2831)
!2833 = !DILocation(line: 1018, column: 30, scope: !2734, inlinedAt: !2831)
!2834 = distinct !DIAssignID()
!2835 = distinct !DIAssignID()
!2836 = !DILocation(line: 0, scope: !1632, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1019, column: 3, scope: !2734, inlinedAt: !2831)
!2838 = !DILocation(line: 174, column: 12, scope: !1632, inlinedAt: !2837)
!2839 = distinct !DIAssignID()
!2840 = !DILocation(line: 175, column: 8, scope: !1645, inlinedAt: !2837)
!2841 = !DILocation(line: 175, column: 19, scope: !1645, inlinedAt: !2837)
!2842 = !DILocation(line: 176, column: 5, scope: !1645, inlinedAt: !2837)
!2843 = !DILocation(line: 177, column: 6, scope: !1632, inlinedAt: !2837)
!2844 = !DILocation(line: 177, column: 17, scope: !1632, inlinedAt: !2837)
!2845 = distinct !DIAssignID()
!2846 = !DILocation(line: 178, column: 6, scope: !1632, inlinedAt: !2837)
!2847 = !DILocation(line: 178, column: 18, scope: !1632, inlinedAt: !2837)
!2848 = distinct !DIAssignID()
!2849 = !DILocation(line: 1020, column: 10, scope: !2734, inlinedAt: !2831)
!2850 = !DILocation(line: 1021, column: 1, scope: !2734, inlinedAt: !2831)
!2851 = !DILocation(line: 1034, column: 3, scope: !2820)
!2852 = distinct !DISubprogram(name: "quote_n_mem", scope: !462, file: !462, line: 1049, type: !2853, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!105, !78, !105, !102}
!2855 = !{!2856, !2857, !2858}
!2856 = !DILocalVariable(name: "n", arg: 1, scope: !2852, file: !462, line: 1049, type: !78)
!2857 = !DILocalVariable(name: "arg", arg: 2, scope: !2852, file: !462, line: 1049, type: !105)
!2858 = !DILocalVariable(name: "argsize", arg: 3, scope: !2852, file: !462, line: 1049, type: !102)
!2859 = !DILocation(line: 0, scope: !2852)
!2860 = !DILocation(line: 1051, column: 10, scope: !2852)
!2861 = !DILocation(line: 1051, column: 3, scope: !2852)
!2862 = distinct !DISubprogram(name: "quote_mem", scope: !462, file: !462, line: 1055, type: !2863, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!105, !105, !102}
!2865 = !{!2866, !2867}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2862, file: !462, line: 1055, type: !105)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2862, file: !462, line: 1055, type: !102)
!2868 = !DILocation(line: 0, scope: !2862)
!2869 = !DILocation(line: 0, scope: !2852, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1057, column: 10, scope: !2862)
!2871 = !DILocation(line: 1051, column: 10, scope: !2852, inlinedAt: !2870)
!2872 = !DILocation(line: 1057, column: 3, scope: !2862)
!2873 = distinct !DISubprogram(name: "quote_n", scope: !462, file: !462, line: 1061, type: !2874, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!105, !78, !105}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "n", arg: 1, scope: !2873, file: !462, line: 1061, type: !78)
!2878 = !DILocalVariable(name: "arg", arg: 2, scope: !2873, file: !462, line: 1061, type: !105)
!2879 = !DILocation(line: 0, scope: !2873)
!2880 = !DILocation(line: 0, scope: !2852, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1063, column: 10, scope: !2873)
!2882 = !DILocation(line: 1051, column: 10, scope: !2852, inlinedAt: !2881)
!2883 = !DILocation(line: 1063, column: 3, scope: !2873)
!2884 = distinct !DISubprogram(name: "quote", scope: !462, file: !462, line: 1067, type: !2885, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!105, !105}
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "arg", arg: 1, scope: !2884, file: !462, line: 1067, type: !105)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocation(line: 0, scope: !2873, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1069, column: 10, scope: !2884)
!2892 = !DILocation(line: 0, scope: !2852, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1063, column: 10, scope: !2873, inlinedAt: !2891)
!2894 = !DILocation(line: 1051, column: 10, scope: !2852, inlinedAt: !2893)
!2895 = !DILocation(line: 1069, column: 3, scope: !2884)
!2896 = distinct !DISubprogram(name: "version_etc_arn", scope: !578, file: !578, line: 61, type: !2897, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2934)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2899, !105, !105, !105, !2933, !102}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !2901)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2901, file: !160, line: 51, baseType: !78, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2901, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2901, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2901, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2901, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2901, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2901, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2901, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2901, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2901, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2901, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2901, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2901, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2901, file: !160, line: 70, baseType: !2917, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2901, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2901, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2901, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2901, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2901, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2901, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2901, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2901, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2901, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2901, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2901, file: !160, line: 93, baseType: !2917, size: 64, offset: 1344)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2901, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2901, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2901, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2901, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940}
!2935 = !DILocalVariable(name: "stream", arg: 1, scope: !2896, file: !578, line: 61, type: !2899)
!2936 = !DILocalVariable(name: "command_name", arg: 2, scope: !2896, file: !578, line: 62, type: !105)
!2937 = !DILocalVariable(name: "package", arg: 3, scope: !2896, file: !578, line: 62, type: !105)
!2938 = !DILocalVariable(name: "version", arg: 4, scope: !2896, file: !578, line: 63, type: !105)
!2939 = !DILocalVariable(name: "authors", arg: 5, scope: !2896, file: !578, line: 64, type: !2933)
!2940 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2896, file: !578, line: 64, type: !102)
!2941 = !DILocation(line: 0, scope: !2896)
!2942 = !DILocation(line: 66, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2896, file: !578, line: 66, column: 7)
!2944 = !DILocation(line: 66, column: 7, scope: !2896)
!2945 = !DILocation(line: 67, column: 5, scope: !2943)
!2946 = !DILocation(line: 69, column: 5, scope: !2943)
!2947 = !DILocation(line: 83, column: 3, scope: !2896)
!2948 = !DILocation(line: 85, column: 3, scope: !2896)
!2949 = !DILocation(line: 88, column: 3, scope: !2896)
!2950 = !DILocation(line: 95, column: 3, scope: !2896)
!2951 = !DILocation(line: 97, column: 3, scope: !2896)
!2952 = !DILocation(line: 105, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2896, file: !578, line: 98, column: 5)
!2954 = !DILocation(line: 106, column: 7, scope: !2953)
!2955 = !DILocation(line: 109, column: 7, scope: !2953)
!2956 = !DILocation(line: 110, column: 7, scope: !2953)
!2957 = !DILocation(line: 113, column: 7, scope: !2953)
!2958 = !DILocation(line: 115, column: 7, scope: !2953)
!2959 = !DILocation(line: 120, column: 7, scope: !2953)
!2960 = !DILocation(line: 122, column: 7, scope: !2953)
!2961 = !DILocation(line: 127, column: 7, scope: !2953)
!2962 = !DILocation(line: 129, column: 7, scope: !2953)
!2963 = !DILocation(line: 134, column: 7, scope: !2953)
!2964 = !DILocation(line: 137, column: 7, scope: !2953)
!2965 = !DILocation(line: 142, column: 7, scope: !2953)
!2966 = !DILocation(line: 145, column: 7, scope: !2953)
!2967 = !DILocation(line: 150, column: 7, scope: !2953)
!2968 = !DILocation(line: 154, column: 7, scope: !2953)
!2969 = !DILocation(line: 159, column: 7, scope: !2953)
!2970 = !DILocation(line: 163, column: 7, scope: !2953)
!2971 = !DILocation(line: 170, column: 7, scope: !2953)
!2972 = !DILocation(line: 174, column: 7, scope: !2953)
!2973 = !DILocation(line: 176, column: 1, scope: !2896)
!2974 = distinct !DISubprogram(name: "version_etc_ar", scope: !578, file: !578, line: 183, type: !2975, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2899, !105, !105, !105, !2933}
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983}
!2978 = !DILocalVariable(name: "stream", arg: 1, scope: !2974, file: !578, line: 183, type: !2899)
!2979 = !DILocalVariable(name: "command_name", arg: 2, scope: !2974, file: !578, line: 184, type: !105)
!2980 = !DILocalVariable(name: "package", arg: 3, scope: !2974, file: !578, line: 184, type: !105)
!2981 = !DILocalVariable(name: "version", arg: 4, scope: !2974, file: !578, line: 185, type: !105)
!2982 = !DILocalVariable(name: "authors", arg: 5, scope: !2974, file: !578, line: 185, type: !2933)
!2983 = !DILocalVariable(name: "n_authors", scope: !2974, file: !578, line: 187, type: !102)
!2984 = !DILocation(line: 0, scope: !2974)
!2985 = !DILocation(line: 189, column: 8, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2974, file: !578, line: 189, column: 3)
!2987 = !DILocation(line: 189, scope: !2986)
!2988 = !DILocation(line: 189, column: 23, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !578, line: 189, column: 3)
!2990 = !DILocation(line: 189, column: 3, scope: !2986)
!2991 = !DILocation(line: 189, column: 52, scope: !2989)
!2992 = distinct !{!2992, !2990, !2993, !905}
!2993 = !DILocation(line: 190, column: 5, scope: !2986)
!2994 = !DILocation(line: 191, column: 3, scope: !2974)
!2995 = !DILocation(line: 192, column: 1, scope: !2974)
!2996 = distinct !DISubprogram(name: "version_etc_va", scope: !578, file: !578, line: 199, type: !2997, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3006)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2899, !105, !105, !105, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3000, file: !578, line: 192, baseType: !84, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3000, file: !578, line: 192, baseType: !84, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3000, file: !578, line: 192, baseType: !100, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3000, file: !578, line: 192, baseType: !100, size: 64, offset: 128)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013}
!3007 = !DILocalVariable(name: "stream", arg: 1, scope: !2996, file: !578, line: 199, type: !2899)
!3008 = !DILocalVariable(name: "command_name", arg: 2, scope: !2996, file: !578, line: 200, type: !105)
!3009 = !DILocalVariable(name: "package", arg: 3, scope: !2996, file: !578, line: 200, type: !105)
!3010 = !DILocalVariable(name: "version", arg: 4, scope: !2996, file: !578, line: 201, type: !105)
!3011 = !DILocalVariable(name: "authors", arg: 5, scope: !2996, file: !578, line: 201, type: !2999)
!3012 = !DILocalVariable(name: "n_authors", scope: !2996, file: !578, line: 203, type: !102)
!3013 = !DILocalVariable(name: "authtab", scope: !2996, file: !578, line: 204, type: !3014)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !60)
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 0, scope: !2996)
!3017 = !DILocation(line: 204, column: 3, scope: !2996)
!3018 = !DILocation(line: 208, column: 35, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !578, line: 206, column: 3)
!3020 = distinct !DILexicalBlock(scope: !2996, file: !578, line: 206, column: 3)
!3021 = !DILocation(line: 208, column: 33, scope: !3019)
!3022 = !DILocation(line: 208, column: 67, scope: !3019)
!3023 = !DILocation(line: 206, column: 3, scope: !3020)
!3024 = !DILocation(line: 208, column: 14, scope: !3019)
!3025 = !DILocation(line: 0, scope: !3020)
!3026 = !DILocation(line: 211, column: 3, scope: !2996)
!3027 = !DILocation(line: 213, column: 1, scope: !2996)
!3028 = distinct !DISubprogram(name: "version_etc", scope: !578, file: !578, line: 230, type: !3029, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2899, !105, !105, !105, null}
!3031 = !{!3032, !3033, !3034, !3035, !3036}
!3032 = !DILocalVariable(name: "stream", arg: 1, scope: !3028, file: !578, line: 230, type: !2899)
!3033 = !DILocalVariable(name: "command_name", arg: 2, scope: !3028, file: !578, line: 231, type: !105)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !3028, file: !578, line: 231, type: !105)
!3035 = !DILocalVariable(name: "version", arg: 4, scope: !3028, file: !578, line: 232, type: !105)
!3036 = !DILocalVariable(name: "authors", scope: !3028, file: !578, line: 234, type: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !853, line: 52, baseType: !3038)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1419, line: 12, baseType: !3039)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !578, baseType: !3040)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3000, size: 192, elements: !55)
!3041 = distinct !DIAssignID()
!3042 = !DILocation(line: 0, scope: !3028)
!3043 = !DILocation(line: 234, column: 3, scope: !3028)
!3044 = !DILocation(line: 235, column: 3, scope: !3028)
!3045 = !DILocation(line: 236, column: 3, scope: !3028)
!3046 = !DILocation(line: 237, column: 3, scope: !3028)
!3047 = !DILocation(line: 238, column: 1, scope: !3028)
!3048 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !578, file: !578, line: 241, type: !417, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706)
!3049 = !DILocation(line: 243, column: 3, scope: !3048)
!3050 = !DILocation(line: 248, column: 3, scope: !3048)
!3051 = !DILocation(line: 254, column: 3, scope: !3048)
!3052 = !DILocation(line: 259, column: 3, scope: !3048)
!3053 = !DILocation(line: 261, column: 1, scope: !3048)
!3054 = distinct !DISubprogram(name: "xnrealloc", scope: !3055, file: !3055, line: 147, type: !3056, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3058)
!3055 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!100, !100, !102, !102}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !3055, line: 147, type: !100)
!3060 = !DILocalVariable(name: "n", arg: 2, scope: !3054, file: !3055, line: 147, type: !102)
!3061 = !DILocalVariable(name: "s", arg: 3, scope: !3054, file: !3055, line: 147, type: !102)
!3062 = !DILocation(line: 0, scope: !3054)
!3063 = !DILocalVariable(name: "p", arg: 1, scope: !3064, file: !714, line: 83, type: !100)
!3064 = distinct !DISubprogram(name: "xreallocarray", scope: !714, file: !714, line: 83, type: !3056, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3065)
!3065 = !{!3063, !3066, !3067}
!3066 = !DILocalVariable(name: "n", arg: 2, scope: !3064, file: !714, line: 83, type: !102)
!3067 = !DILocalVariable(name: "s", arg: 3, scope: !3064, file: !714, line: 83, type: !102)
!3068 = !DILocation(line: 0, scope: !3064, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 149, column: 10, scope: !3054)
!3070 = !DILocation(line: 85, column: 25, scope: !3064, inlinedAt: !3069)
!3071 = !DILocalVariable(name: "p", arg: 1, scope: !3072, file: !714, line: 37, type: !100)
!3072 = distinct !DISubprogram(name: "check_nonnull", scope: !714, file: !714, line: 37, type: !3073, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!100, !100}
!3075 = !{!3071}
!3076 = !DILocation(line: 0, scope: !3072, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 85, column: 10, scope: !3064, inlinedAt: !3069)
!3078 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3077)
!3079 = distinct !DILexicalBlock(scope: !3072, file: !714, line: 39, column: 7)
!3080 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3077)
!3081 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3077)
!3082 = !DILocation(line: 149, column: 3, scope: !3054)
!3083 = !DILocation(line: 0, scope: !3064)
!3084 = !DILocation(line: 85, column: 25, scope: !3064)
!3085 = !DILocation(line: 0, scope: !3072, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 85, column: 10, scope: !3064)
!3087 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3086)
!3088 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3086)
!3089 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3086)
!3090 = !DILocation(line: 85, column: 3, scope: !3064)
!3091 = distinct !DISubprogram(name: "xmalloc", scope: !714, file: !714, line: 47, type: !3092, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!100, !102}
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "s", arg: 1, scope: !3091, file: !714, line: 47, type: !102)
!3096 = !DILocation(line: 0, scope: !3091)
!3097 = !DILocation(line: 49, column: 25, scope: !3091)
!3098 = !DILocation(line: 0, scope: !3072, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 49, column: 10, scope: !3091)
!3100 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3099)
!3101 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3099)
!3102 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3099)
!3103 = !DILocation(line: 49, column: 3, scope: !3091)
!3104 = !DISubprogram(name: "malloc", scope: !982, file: !982, line: 540, type: !3092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3105 = distinct !DISubprogram(name: "ximalloc", scope: !714, file: !714, line: 53, type: !3106, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!100, !733}
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "s", arg: 1, scope: !3105, file: !714, line: 53, type: !733)
!3110 = !DILocation(line: 0, scope: !3105)
!3111 = !DILocalVariable(name: "s", arg: 1, scope: !3112, file: !3113, line: 55, type: !733)
!3112 = distinct !DISubprogram(name: "imalloc", scope: !3113, file: !3113, line: 55, type: !3106, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3114)
!3113 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3114 = !{!3111}
!3115 = !DILocation(line: 0, scope: !3112, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 55, column: 25, scope: !3105)
!3117 = !DILocation(line: 57, column: 26, scope: !3112, inlinedAt: !3116)
!3118 = !DILocation(line: 0, scope: !3072, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 55, column: 10, scope: !3105)
!3120 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3119)
!3121 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3119)
!3122 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3119)
!3123 = !DILocation(line: 55, column: 3, scope: !3105)
!3124 = distinct !DISubprogram(name: "xcharalloc", scope: !714, file: !714, line: 59, type: !3125, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!99, !102}
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !714, line: 59, type: !102)
!3129 = !DILocation(line: 0, scope: !3124)
!3130 = !DILocation(line: 0, scope: !3091, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 61, column: 10, scope: !3124)
!3132 = !DILocation(line: 49, column: 25, scope: !3091, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !3072, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 49, column: 10, scope: !3091, inlinedAt: !3131)
!3135 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3134)
!3138 = !DILocation(line: 61, column: 3, scope: !3124)
!3139 = distinct !DISubprogram(name: "xrealloc", scope: !714, file: !714, line: 68, type: !3140, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!100, !100, !102}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "p", arg: 1, scope: !3139, file: !714, line: 68, type: !100)
!3144 = !DILocalVariable(name: "s", arg: 2, scope: !3139, file: !714, line: 68, type: !102)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocalVariable(name: "ptr", arg: 1, scope: !3147, file: !3148, line: 2057, type: !100)
!3147 = distinct !DISubprogram(name: "rpl_realloc", scope: !3148, file: !3148, line: 2057, type: !3140, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3149)
!3148 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3149 = !{!3146, !3150}
!3150 = !DILocalVariable(name: "size", arg: 2, scope: !3147, file: !3148, line: 2057, type: !102)
!3151 = !DILocation(line: 0, scope: !3147, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 70, column: 25, scope: !3139)
!3153 = !DILocation(line: 2059, column: 24, scope: !3147, inlinedAt: !3152)
!3154 = !DILocation(line: 2059, column: 10, scope: !3147, inlinedAt: !3152)
!3155 = !DILocation(line: 0, scope: !3072, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 70, column: 10, scope: !3139)
!3157 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3156)
!3158 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3156)
!3159 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3156)
!3160 = !DILocation(line: 70, column: 3, scope: !3139)
!3161 = !DISubprogram(name: "realloc", scope: !982, file: !982, line: 551, type: !3140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3162 = distinct !DISubprogram(name: "xirealloc", scope: !714, file: !714, line: 74, type: !3163, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!100, !100, !733}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "p", arg: 1, scope: !3162, file: !714, line: 74, type: !100)
!3167 = !DILocalVariable(name: "s", arg: 2, scope: !3162, file: !714, line: 74, type: !733)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocalVariable(name: "p", arg: 1, scope: !3170, file: !3113, line: 66, type: !100)
!3170 = distinct !DISubprogram(name: "irealloc", scope: !3113, file: !3113, line: 66, type: !3163, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3171)
!3171 = !{!3169, !3172}
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3170, file: !3113, line: 66, type: !733)
!3173 = !DILocation(line: 0, scope: !3170, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 76, column: 25, scope: !3162)
!3175 = !DILocation(line: 0, scope: !3147, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 68, column: 26, scope: !3170, inlinedAt: !3174)
!3177 = !DILocation(line: 2059, column: 24, scope: !3147, inlinedAt: !3176)
!3178 = !DILocation(line: 2059, column: 10, scope: !3147, inlinedAt: !3176)
!3179 = !DILocation(line: 0, scope: !3072, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 76, column: 10, scope: !3162)
!3181 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3180)
!3182 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3180)
!3183 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3180)
!3184 = !DILocation(line: 76, column: 3, scope: !3162)
!3185 = distinct !DISubprogram(name: "xireallocarray", scope: !714, file: !714, line: 89, type: !3186, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!100, !100, !733, !733}
!3188 = !{!3189, !3190, !3191}
!3189 = !DILocalVariable(name: "p", arg: 1, scope: !3185, file: !714, line: 89, type: !100)
!3190 = !DILocalVariable(name: "n", arg: 2, scope: !3185, file: !714, line: 89, type: !733)
!3191 = !DILocalVariable(name: "s", arg: 3, scope: !3185, file: !714, line: 89, type: !733)
!3192 = !DILocation(line: 0, scope: !3185)
!3193 = !DILocalVariable(name: "p", arg: 1, scope: !3194, file: !3113, line: 98, type: !100)
!3194 = distinct !DISubprogram(name: "ireallocarray", scope: !3113, file: !3113, line: 98, type: !3186, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3195)
!3195 = !{!3193, !3196, !3197}
!3196 = !DILocalVariable(name: "n", arg: 2, scope: !3194, file: !3113, line: 98, type: !733)
!3197 = !DILocalVariable(name: "s", arg: 3, scope: !3194, file: !3113, line: 98, type: !733)
!3198 = !DILocation(line: 0, scope: !3194, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 91, column: 25, scope: !3185)
!3200 = !DILocation(line: 101, column: 13, scope: !3194, inlinedAt: !3199)
!3201 = !DILocation(line: 0, scope: !3072, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 91, column: 10, scope: !3185)
!3203 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3202)
!3204 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3202)
!3205 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3202)
!3206 = !DILocation(line: 91, column: 3, scope: !3185)
!3207 = distinct !DISubprogram(name: "xnmalloc", scope: !714, file: !714, line: 98, type: !3208, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!100, !102, !102}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3207, file: !714, line: 98, type: !102)
!3212 = !DILocalVariable(name: "s", arg: 2, scope: !3207, file: !714, line: 98, type: !102)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 0, scope: !3064, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 100, column: 10, scope: !3207)
!3216 = !DILocation(line: 85, column: 25, scope: !3064, inlinedAt: !3215)
!3217 = !DILocation(line: 0, scope: !3072, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 85, column: 10, scope: !3064, inlinedAt: !3215)
!3219 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3218)
!3220 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3218)
!3221 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3218)
!3222 = !DILocation(line: 100, column: 3, scope: !3207)
!3223 = distinct !DISubprogram(name: "xinmalloc", scope: !714, file: !714, line: 104, type: !3224, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!100, !733, !733}
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3223, file: !714, line: 104, type: !733)
!3228 = !DILocalVariable(name: "s", arg: 2, scope: !3223, file: !714, line: 104, type: !733)
!3229 = !DILocation(line: 0, scope: !3223)
!3230 = !DILocation(line: 0, scope: !3185, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 106, column: 10, scope: !3223)
!3232 = !DILocation(line: 0, scope: !3194, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 91, column: 25, scope: !3185, inlinedAt: !3231)
!3234 = !DILocation(line: 101, column: 13, scope: !3194, inlinedAt: !3233)
!3235 = !DILocation(line: 0, scope: !3072, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 91, column: 10, scope: !3185, inlinedAt: !3231)
!3237 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3236)
!3238 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3236)
!3239 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3236)
!3240 = !DILocation(line: 106, column: 3, scope: !3223)
!3241 = distinct !DISubprogram(name: "x2realloc", scope: !714, file: !714, line: 116, type: !3242, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!100, !100, !720}
!3244 = !{!3245, !3246}
!3245 = !DILocalVariable(name: "p", arg: 1, scope: !3241, file: !714, line: 116, type: !100)
!3246 = !DILocalVariable(name: "ps", arg: 2, scope: !3241, file: !714, line: 116, type: !720)
!3247 = !DILocation(line: 0, scope: !3241)
!3248 = !DILocation(line: 0, scope: !717, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 118, column: 10, scope: !3241)
!3250 = !DILocation(line: 178, column: 14, scope: !717, inlinedAt: !3249)
!3251 = !DILocation(line: 180, column: 9, scope: !3252, inlinedAt: !3249)
!3252 = distinct !DILexicalBlock(scope: !717, file: !714, line: 180, column: 7)
!3253 = !DILocation(line: 180, column: 7, scope: !717, inlinedAt: !3249)
!3254 = !DILocation(line: 182, column: 13, scope: !3255, inlinedAt: !3249)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !714, line: 182, column: 11)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !714, line: 181, column: 5)
!3257 = !DILocation(line: 182, column: 11, scope: !3256, inlinedAt: !3249)
!3258 = !DILocation(line: 197, column: 11, scope: !3259, inlinedAt: !3249)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !714, line: 197, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !714, line: 195, column: 5)
!3261 = !DILocation(line: 197, column: 11, scope: !3260, inlinedAt: !3249)
!3262 = !DILocation(line: 198, column: 9, scope: !3259, inlinedAt: !3249)
!3263 = !DILocation(line: 0, scope: !3064, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 201, column: 7, scope: !717, inlinedAt: !3249)
!3265 = !DILocation(line: 85, column: 25, scope: !3064, inlinedAt: !3264)
!3266 = !DILocation(line: 0, scope: !3072, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 85, column: 10, scope: !3064, inlinedAt: !3264)
!3268 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3267)
!3269 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3267)
!3270 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3267)
!3271 = !DILocation(line: 202, column: 7, scope: !717, inlinedAt: !3249)
!3272 = !DILocation(line: 118, column: 3, scope: !3241)
!3273 = !DILocation(line: 0, scope: !717)
!3274 = !DILocation(line: 178, column: 14, scope: !717)
!3275 = !DILocation(line: 180, column: 9, scope: !3252)
!3276 = !DILocation(line: 180, column: 7, scope: !717)
!3277 = !DILocation(line: 182, column: 13, scope: !3255)
!3278 = !DILocation(line: 182, column: 11, scope: !3256)
!3279 = !DILocation(line: 190, column: 30, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3255, file: !714, line: 183, column: 9)
!3281 = !DILocation(line: 191, column: 16, scope: !3280)
!3282 = !DILocation(line: 191, column: 13, scope: !3280)
!3283 = !DILocation(line: 192, column: 9, scope: !3280)
!3284 = !DILocation(line: 197, column: 11, scope: !3259)
!3285 = !DILocation(line: 197, column: 11, scope: !3260)
!3286 = !DILocation(line: 198, column: 9, scope: !3259)
!3287 = !DILocation(line: 0, scope: !3064, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 201, column: 7, scope: !717)
!3289 = !DILocation(line: 85, column: 25, scope: !3064, inlinedAt: !3288)
!3290 = !DILocation(line: 0, scope: !3072, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 85, column: 10, scope: !3064, inlinedAt: !3288)
!3292 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3291)
!3293 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3291)
!3294 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3291)
!3295 = !DILocation(line: 202, column: 7, scope: !717)
!3296 = !DILocation(line: 203, column: 3, scope: !717)
!3297 = !DILocation(line: 0, scope: !729)
!3298 = !DILocation(line: 230, column: 14, scope: !729)
!3299 = !DILocation(line: 238, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !729, file: !714, line: 238, column: 7)
!3301 = !DILocation(line: 238, column: 7, scope: !729)
!3302 = !DILocation(line: 240, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !729, file: !714, line: 240, column: 7)
!3304 = !DILocation(line: 240, column: 18, scope: !3303)
!3305 = !DILocation(line: 253, column: 8, scope: !729)
!3306 = !DILocation(line: 256, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !729, file: !714, line: 256, column: 7)
!3308 = !DILocation(line: 256, column: 7, scope: !729)
!3309 = !DILocation(line: 258, column: 27, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !714, line: 257, column: 5)
!3311 = !DILocation(line: 259, column: 50, scope: !3310)
!3312 = !DILocation(line: 259, column: 32, scope: !3310)
!3313 = !DILocation(line: 260, column: 5, scope: !3310)
!3314 = !DILocation(line: 262, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !729, file: !714, line: 262, column: 7)
!3316 = !DILocation(line: 262, column: 7, scope: !729)
!3317 = !DILocation(line: 263, column: 9, scope: !3315)
!3318 = !DILocation(line: 263, column: 5, scope: !3315)
!3319 = !DILocation(line: 264, column: 9, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !729, file: !714, line: 264, column: 7)
!3321 = !DILocation(line: 264, column: 14, scope: !3320)
!3322 = !DILocation(line: 265, column: 7, scope: !3320)
!3323 = !DILocation(line: 265, column: 11, scope: !3320)
!3324 = !DILocation(line: 266, column: 11, scope: !3320)
!3325 = !DILocation(line: 267, column: 14, scope: !3320)
!3326 = !DILocation(line: 264, column: 7, scope: !729)
!3327 = !DILocation(line: 268, column: 5, scope: !3320)
!3328 = !DILocation(line: 0, scope: !3139, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 269, column: 8, scope: !729)
!3330 = !DILocation(line: 0, scope: !3147, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 70, column: 25, scope: !3139, inlinedAt: !3329)
!3332 = !DILocation(line: 2059, column: 24, scope: !3147, inlinedAt: !3331)
!3333 = !DILocation(line: 2059, column: 10, scope: !3147, inlinedAt: !3331)
!3334 = !DILocation(line: 0, scope: !3072, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 70, column: 10, scope: !3139, inlinedAt: !3329)
!3336 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3335)
!3337 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3335)
!3338 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3335)
!3339 = !DILocation(line: 270, column: 7, scope: !729)
!3340 = !DILocation(line: 271, column: 3, scope: !729)
!3341 = distinct !DISubprogram(name: "xzalloc", scope: !714, file: !714, line: 279, type: !3092, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "s", arg: 1, scope: !3341, file: !714, line: 279, type: !102)
!3344 = !DILocation(line: 0, scope: !3341)
!3345 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !714, line: 294, type: !102)
!3346 = distinct !DISubprogram(name: "xcalloc", scope: !714, file: !714, line: 294, type: !3208, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3347)
!3347 = !{!3345, !3348}
!3348 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !714, line: 294, type: !102)
!3349 = !DILocation(line: 0, scope: !3346, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 281, column: 10, scope: !3341)
!3351 = !DILocation(line: 296, column: 25, scope: !3346, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !3072, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 296, column: 10, scope: !3346, inlinedAt: !3350)
!3354 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3353)
!3355 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3353)
!3356 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3353)
!3357 = !DILocation(line: 281, column: 3, scope: !3341)
!3358 = !DISubprogram(name: "calloc", scope: !982, file: !982, line: 543, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DILocation(line: 0, scope: !3346)
!3360 = !DILocation(line: 296, column: 25, scope: !3346)
!3361 = !DILocation(line: 0, scope: !3072, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 296, column: 10, scope: !3346)
!3363 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3362)
!3364 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3362)
!3365 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3362)
!3366 = !DILocation(line: 296, column: 3, scope: !3346)
!3367 = distinct !DISubprogram(name: "xizalloc", scope: !714, file: !714, line: 285, type: !3106, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3368)
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "s", arg: 1, scope: !3367, file: !714, line: 285, type: !733)
!3370 = !DILocation(line: 0, scope: !3367)
!3371 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !714, line: 300, type: !733)
!3372 = distinct !DISubprogram(name: "xicalloc", scope: !714, file: !714, line: 300, type: !3224, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3373)
!3373 = !{!3371, !3374}
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !714, line: 300, type: !733)
!3375 = !DILocation(line: 0, scope: !3372, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 287, column: 10, scope: !3367)
!3377 = !DILocalVariable(name: "n", arg: 1, scope: !3378, file: !3113, line: 77, type: !733)
!3378 = distinct !DISubprogram(name: "icalloc", scope: !3113, file: !3113, line: 77, type: !3224, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3379)
!3379 = !{!3377, !3380}
!3380 = !DILocalVariable(name: "s", arg: 2, scope: !3378, file: !3113, line: 77, type: !733)
!3381 = !DILocation(line: 0, scope: !3378, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 302, column: 25, scope: !3372, inlinedAt: !3376)
!3383 = !DILocation(line: 91, column: 10, scope: !3378, inlinedAt: !3382)
!3384 = !DILocation(line: 0, scope: !3072, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 302, column: 10, scope: !3372, inlinedAt: !3376)
!3386 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3385)
!3389 = !DILocation(line: 287, column: 3, scope: !3367)
!3390 = !DILocation(line: 0, scope: !3372)
!3391 = !DILocation(line: 0, scope: !3378, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 302, column: 25, scope: !3372)
!3393 = !DILocation(line: 91, column: 10, scope: !3378, inlinedAt: !3392)
!3394 = !DILocation(line: 0, scope: !3072, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 302, column: 10, scope: !3372)
!3396 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3395)
!3397 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3395)
!3398 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3395)
!3399 = !DILocation(line: 302, column: 3, scope: !3372)
!3400 = distinct !DISubprogram(name: "xmemdup", scope: !714, file: !714, line: 310, type: !3401, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!100, !1006, !102}
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "p", arg: 1, scope: !3400, file: !714, line: 310, type: !1006)
!3405 = !DILocalVariable(name: "s", arg: 2, scope: !3400, file: !714, line: 310, type: !102)
!3406 = !DILocation(line: 0, scope: !3400)
!3407 = !DILocation(line: 0, scope: !3091, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 312, column: 18, scope: !3400)
!3409 = !DILocation(line: 49, column: 25, scope: !3091, inlinedAt: !3408)
!3410 = !DILocation(line: 0, scope: !3072, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 49, column: 10, scope: !3091, inlinedAt: !3408)
!3412 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3411)
!3413 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3411)
!3414 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3411)
!3415 = !DILocalVariable(name: "__dest", arg: 1, scope: !3416, file: !1237, line: 26, type: !1240)
!3416 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3417)
!3417 = !{!3415, !3418, !3419}
!3418 = !DILocalVariable(name: "__src", arg: 2, scope: !3416, file: !1237, line: 26, type: !1005)
!3419 = !DILocalVariable(name: "__len", arg: 3, scope: !3416, file: !1237, line: 26, type: !102)
!3420 = !DILocation(line: 0, scope: !3416, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 312, column: 10, scope: !3400)
!3422 = !DILocation(line: 29, column: 10, scope: !3416, inlinedAt: !3421)
!3423 = !DILocation(line: 312, column: 3, scope: !3400)
!3424 = distinct !DISubprogram(name: "ximemdup", scope: !714, file: !714, line: 316, type: !3425, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!100, !1006, !733}
!3427 = !{!3428, !3429}
!3428 = !DILocalVariable(name: "p", arg: 1, scope: !3424, file: !714, line: 316, type: !1006)
!3429 = !DILocalVariable(name: "s", arg: 2, scope: !3424, file: !714, line: 316, type: !733)
!3430 = !DILocation(line: 0, scope: !3424)
!3431 = !DILocation(line: 0, scope: !3105, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 318, column: 18, scope: !3424)
!3433 = !DILocation(line: 0, scope: !3112, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 55, column: 25, scope: !3105, inlinedAt: !3432)
!3435 = !DILocation(line: 57, column: 26, scope: !3112, inlinedAt: !3434)
!3436 = !DILocation(line: 0, scope: !3072, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 55, column: 10, scope: !3105, inlinedAt: !3432)
!3438 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3437)
!3439 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3437)
!3440 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3437)
!3441 = !DILocation(line: 0, scope: !3416, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 318, column: 10, scope: !3424)
!3443 = !DILocation(line: 29, column: 10, scope: !3416, inlinedAt: !3442)
!3444 = !DILocation(line: 318, column: 3, scope: !3424)
!3445 = distinct !DISubprogram(name: "ximemdup0", scope: !714, file: !714, line: 325, type: !3446, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!99, !1006, !733}
!3448 = !{!3449, !3450, !3451}
!3449 = !DILocalVariable(name: "p", arg: 1, scope: !3445, file: !714, line: 325, type: !1006)
!3450 = !DILocalVariable(name: "s", arg: 2, scope: !3445, file: !714, line: 325, type: !733)
!3451 = !DILocalVariable(name: "result", scope: !3445, file: !714, line: 327, type: !99)
!3452 = !DILocation(line: 0, scope: !3445)
!3453 = !DILocation(line: 327, column: 30, scope: !3445)
!3454 = !DILocation(line: 0, scope: !3105, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 327, column: 18, scope: !3445)
!3456 = !DILocation(line: 0, scope: !3112, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 55, column: 25, scope: !3105, inlinedAt: !3455)
!3458 = !DILocation(line: 57, column: 26, scope: !3112, inlinedAt: !3457)
!3459 = !DILocation(line: 0, scope: !3072, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 55, column: 10, scope: !3105, inlinedAt: !3455)
!3461 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3460)
!3462 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3460)
!3463 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3460)
!3464 = !DILocation(line: 328, column: 3, scope: !3445)
!3465 = !DILocation(line: 328, column: 13, scope: !3445)
!3466 = !DILocation(line: 0, scope: !3416, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 329, column: 10, scope: !3445)
!3468 = !DILocation(line: 29, column: 10, scope: !3416, inlinedAt: !3467)
!3469 = !DILocation(line: 329, column: 3, scope: !3445)
!3470 = distinct !DISubprogram(name: "xstrdup", scope: !714, file: !714, line: 335, type: !984, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3471)
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "string", arg: 1, scope: !3470, file: !714, line: 335, type: !105)
!3473 = !DILocation(line: 0, scope: !3470)
!3474 = !DILocation(line: 337, column: 27, scope: !3470)
!3475 = !DILocation(line: 337, column: 43, scope: !3470)
!3476 = !DILocation(line: 0, scope: !3400, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 337, column: 10, scope: !3470)
!3478 = !DILocation(line: 0, scope: !3091, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 312, column: 18, scope: !3400, inlinedAt: !3477)
!3480 = !DILocation(line: 49, column: 25, scope: !3091, inlinedAt: !3479)
!3481 = !DILocation(line: 0, scope: !3072, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 49, column: 10, scope: !3091, inlinedAt: !3479)
!3483 = !DILocation(line: 39, column: 8, scope: !3079, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3072, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3079, inlinedAt: !3482)
!3486 = !DILocation(line: 0, scope: !3416, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 312, column: 10, scope: !3400, inlinedAt: !3477)
!3488 = !DILocation(line: 29, column: 10, scope: !3416, inlinedAt: !3487)
!3489 = !DILocation(line: 337, column: 3, scope: !3470)
!3490 = distinct !DISubprogram(name: "xalloc_die", scope: !674, file: !674, line: 32, type: !417, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3491)
!3491 = !{!3492}
!3492 = !DILocalVariable(name: "__errstatus", scope: !3493, file: !674, line: 34, type: !3494)
!3493 = distinct !DILexicalBlock(scope: !3490, file: !674, line: 34, column: 3)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3495 = !DILocation(line: 34, column: 3, scope: !3493)
!3496 = !DILocation(line: 0, scope: !3493)
!3497 = !DILocation(line: 40, column: 3, scope: !3490)
!3498 = distinct !DISubprogram(name: "last_component", scope: !751, file: !751, line: 29, type: !984, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3499)
!3499 = !{!3500, !3501, !3502, !3503}
!3500 = !DILocalVariable(name: "name", arg: 1, scope: !3498, file: !751, line: 29, type: !105)
!3501 = !DILocalVariable(name: "base", scope: !3498, file: !751, line: 31, type: !105)
!3502 = !DILocalVariable(name: "last_was_slash", scope: !3498, file: !751, line: 35, type: !143)
!3503 = !DILocalVariable(name: "p", scope: !3504, file: !751, line: 36, type: !105)
!3504 = distinct !DILexicalBlock(scope: !3498, file: !751, line: 36, column: 3)
!3505 = !DILocation(line: 0, scope: !3498)
!3506 = !DILocation(line: 32, column: 3, scope: !3498)
!3507 = !DILocation(line: 32, column: 10, scope: !3498)
!3508 = !DILocation(line: 33, column: 9, scope: !3498)
!3509 = distinct !{!3509, !3506, !3508, !905}
!3510 = !DILocation(line: 36, column: 30, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3504, file: !751, line: 36, column: 3)
!3512 = !DILocation(line: 31, column: 15, scope: !3498)
!3513 = !DILocation(line: 36, scope: !3504)
!3514 = !DILocation(line: 0, scope: !3504)
!3515 = !DILocation(line: 36, column: 3, scope: !3504)
!3516 = !DILocation(line: 47, column: 3, scope: !3498)
!3517 = !DILocation(line: 40, column: 16, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !751, line: 40, column: 16)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !751, line: 38, column: 11)
!3520 = distinct !DILexicalBlock(scope: !3511, file: !751, line: 37, column: 5)
!3521 = !DILocation(line: 40, column: 16, scope: !3519)
!3522 = !DILocation(line: 36, column: 35, scope: !3511)
!3523 = !DILocation(line: 36, column: 3, scope: !3511)
!3524 = distinct !{!3524, !3515, !3525, !905}
!3525 = !DILocation(line: 45, column: 5, scope: !3504)
!3526 = distinct !DISubprogram(name: "base_len", scope: !751, file: !751, line: 51, type: !3527, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!102, !105}
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "name", arg: 1, scope: !3526, file: !751, line: 51, type: !105)
!3531 = !DILocalVariable(name: "len", scope: !3526, file: !751, line: 53, type: !102)
!3532 = !DILocalVariable(name: "prefix_len", scope: !3526, file: !751, line: 61, type: !102)
!3533 = !DILocation(line: 0, scope: !3526)
!3534 = !DILocation(line: 54, column: 14, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3526, file: !751, line: 54, column: 3)
!3536 = !DILocation(line: 54, column: 8, scope: !3535)
!3537 = !DILocation(line: 54, column: 32, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3535, file: !751, line: 54, column: 3)
!3539 = !DILocation(line: 54, column: 38, scope: !3538)
!3540 = !DILocation(line: 54, column: 41, scope: !3538)
!3541 = !DILocation(line: 54, column: 3, scope: !3535)
!3542 = !DILocation(line: 54, column: 70, scope: !3538)
!3543 = distinct !{!3543, !3541, !3544, !905}
!3544 = !DILocation(line: 55, column: 5, scope: !3535)
!3545 = !DILocation(line: 54, scope: !3535)
!3546 = !DILocation(line: 66, column: 3, scope: !3526)
!3547 = distinct !DISubprogram(name: "close_stream", scope: !754, file: !754, line: 55, type: !3548, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3584)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!78, !3550}
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3552)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3552, file: !160, line: 51, baseType: !78, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3552, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3552, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3552, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3552, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3552, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3552, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3552, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3552, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3552, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3552, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3552, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3552, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3552, file: !160, line: 70, baseType: !3568, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3552, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3552, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3552, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3552, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3552, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3552, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3552, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3552, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3552, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3552, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3552, file: !160, line: 93, baseType: !3568, size: 64, offset: 1344)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3552, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3552, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3552, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3552, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3584 = !{!3585, !3586, !3588, !3589}
!3585 = !DILocalVariable(name: "stream", arg: 1, scope: !3547, file: !754, line: 55, type: !3550)
!3586 = !DILocalVariable(name: "some_pending", scope: !3547, file: !754, line: 57, type: !3587)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3588 = !DILocalVariable(name: "prev_fail", scope: !3547, file: !754, line: 58, type: !3587)
!3589 = !DILocalVariable(name: "fclose_fail", scope: !3547, file: !754, line: 59, type: !3587)
!3590 = !DILocation(line: 0, scope: !3547)
!3591 = !DILocation(line: 57, column: 30, scope: !3547)
!3592 = !DILocalVariable(name: "__stream", arg: 1, scope: !3593, file: !1135, line: 135, type: !3550)
!3593 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1135, file: !1135, line: 135, type: !3548, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3594)
!3594 = !{!3592}
!3595 = !DILocation(line: 0, scope: !3593, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 58, column: 27, scope: !3547)
!3597 = !DILocation(line: 137, column: 10, scope: !3593, inlinedAt: !3596)
!3598 = !{!1143, !859, i64 0}
!3599 = !DILocation(line: 58, column: 43, scope: !3547)
!3600 = !DILocation(line: 59, column: 29, scope: !3547)
!3601 = !DILocation(line: 59, column: 45, scope: !3547)
!3602 = !DILocation(line: 69, column: 17, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3547, file: !754, line: 69, column: 7)
!3604 = !DILocation(line: 57, column: 50, scope: !3547)
!3605 = !DILocation(line: 69, column: 33, scope: !3603)
!3606 = !DILocation(line: 69, column: 53, scope: !3603)
!3607 = !DILocation(line: 69, column: 59, scope: !3603)
!3608 = !DILocation(line: 69, column: 7, scope: !3547)
!3609 = !DILocation(line: 71, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3603, file: !754, line: 70, column: 5)
!3611 = !DILocation(line: 72, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3610, file: !754, line: 71, column: 11)
!3613 = !DILocation(line: 72, column: 15, scope: !3612)
!3614 = !DILocation(line: 77, column: 1, scope: !3547)
!3615 = !DISubprogram(name: "__fpending", scope: !3616, file: !3616, line: 75, type: !3617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3616 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!102, !3550}
!3619 = distinct !DISubprogram(name: "rpl_fclose", scope: !756, file: !756, line: 58, type: !3620, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3656)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!78, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3624, file: !160, line: 51, baseType: !78, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3624, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3624, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3624, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3624, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3624, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3624, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3624, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3624, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3624, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3624, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3624, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3624, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3624, file: !160, line: 70, baseType: !3640, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3624, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3624, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3624, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3624, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3624, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3624, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3624, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3624, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3624, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3624, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3624, file: !160, line: 93, baseType: !3640, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3624, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3624, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3624, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3624, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3656 = !{!3657, !3658, !3659, !3660}
!3657 = !DILocalVariable(name: "fp", arg: 1, scope: !3619, file: !756, line: 58, type: !3622)
!3658 = !DILocalVariable(name: "saved_errno", scope: !3619, file: !756, line: 60, type: !78)
!3659 = !DILocalVariable(name: "fd", scope: !3619, file: !756, line: 63, type: !78)
!3660 = !DILocalVariable(name: "result", scope: !3619, file: !756, line: 74, type: !78)
!3661 = !DILocation(line: 0, scope: !3619)
!3662 = !DILocation(line: 63, column: 12, scope: !3619)
!3663 = !DILocation(line: 64, column: 10, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3619, file: !756, line: 64, column: 7)
!3665 = !DILocation(line: 64, column: 7, scope: !3619)
!3666 = !DILocation(line: 65, column: 12, scope: !3664)
!3667 = !DILocation(line: 65, column: 5, scope: !3664)
!3668 = !DILocation(line: 70, column: 9, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3619, file: !756, line: 70, column: 7)
!3670 = !DILocation(line: 70, column: 23, scope: !3669)
!3671 = !DILocation(line: 70, column: 33, scope: !3669)
!3672 = !DILocation(line: 70, column: 26, scope: !3669)
!3673 = !DILocation(line: 70, column: 59, scope: !3669)
!3674 = !DILocation(line: 71, column: 7, scope: !3669)
!3675 = !DILocation(line: 71, column: 10, scope: !3669)
!3676 = !DILocation(line: 70, column: 7, scope: !3619)
!3677 = !DILocation(line: 100, column: 12, scope: !3619)
!3678 = !DILocation(line: 105, column: 7, scope: !3619)
!3679 = !DILocation(line: 72, column: 19, scope: !3669)
!3680 = !DILocation(line: 105, column: 19, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3619, file: !756, line: 105, column: 7)
!3682 = !DILocation(line: 107, column: 13, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3681, file: !756, line: 106, column: 5)
!3684 = !DILocation(line: 109, column: 5, scope: !3683)
!3685 = !DILocation(line: 112, column: 1, scope: !3619)
!3686 = !DISubprogram(name: "fileno", scope: !853, file: !853, line: 809, type: !3620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3687 = !DISubprogram(name: "fclose", scope: !853, file: !853, line: 178, type: !3620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3688 = !DISubprogram(name: "__freading", scope: !3616, file: !3616, line: 51, type: !3620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3689 = !DISubprogram(name: "lseek", scope: !1212, file: !1212, line: 339, type: !3690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!182, !78, !182, !78}
!3692 = distinct !DISubprogram(name: "rpl_fflush", scope: !758, file: !758, line: 130, type: !3693, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3729)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!78, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3697)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3697, file: !160, line: 51, baseType: !78, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3697, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3697, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3697, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3697, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3697, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3697, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3697, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3697, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3697, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3697, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3697, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3697, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3697, file: !160, line: 70, baseType: !3713, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3697, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3697, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3697, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3697, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3697, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3697, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3697, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3697, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3697, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3697, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3697, file: !160, line: 93, baseType: !3713, size: 64, offset: 1344)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3697, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3697, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3697, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3697, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "stream", arg: 1, scope: !3692, file: !758, line: 130, type: !3695)
!3731 = !DILocation(line: 0, scope: !3692)
!3732 = !DILocation(line: 151, column: 14, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3692, file: !758, line: 151, column: 7)
!3734 = !DILocation(line: 151, column: 22, scope: !3733)
!3735 = !DILocation(line: 151, column: 27, scope: !3733)
!3736 = !DILocation(line: 151, column: 7, scope: !3692)
!3737 = !DILocation(line: 152, column: 12, scope: !3733)
!3738 = !DILocation(line: 152, column: 5, scope: !3733)
!3739 = !DILocalVariable(name: "fp", arg: 1, scope: !3740, file: !758, line: 42, type: !3695)
!3740 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !758, file: !758, line: 42, type: !3741, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3695}
!3743 = !{!3739}
!3744 = !DILocation(line: 0, scope: !3740, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 157, column: 3, scope: !3692)
!3746 = !DILocation(line: 44, column: 12, scope: !3747, inlinedAt: !3745)
!3747 = distinct !DILexicalBlock(scope: !3740, file: !758, line: 44, column: 7)
!3748 = !DILocation(line: 44, column: 19, scope: !3747, inlinedAt: !3745)
!3749 = !DILocation(line: 44, column: 7, scope: !3740, inlinedAt: !3745)
!3750 = !DILocation(line: 46, column: 5, scope: !3747, inlinedAt: !3745)
!3751 = !DILocation(line: 159, column: 10, scope: !3692)
!3752 = !DILocation(line: 159, column: 3, scope: !3692)
!3753 = !DILocation(line: 236, column: 1, scope: !3692)
!3754 = !DISubprogram(name: "fflush", scope: !853, file: !853, line: 230, type: !3693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3755 = distinct !DISubprogram(name: "rpl_fseeko", scope: !760, file: !760, line: 28, type: !3756, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3793)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!78, !3758, !3792, !78}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3760)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3760, file: !160, line: 51, baseType: !78, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3760, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3760, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3760, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3760, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3760, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3760, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3760, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3760, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3760, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3760, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3760, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3760, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3760, file: !160, line: 70, baseType: !3776, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3760, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3760, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3760, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3760, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3760, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3760, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3760, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3760, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3760, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3760, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3760, file: !160, line: 93, baseType: !3776, size: 64, offset: 1344)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3760, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3760, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3760, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3760, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !853, line: 63, baseType: !182)
!3793 = !{!3794, !3795, !3796, !3797}
!3794 = !DILocalVariable(name: "fp", arg: 1, scope: !3755, file: !760, line: 28, type: !3758)
!3795 = !DILocalVariable(name: "offset", arg: 2, scope: !3755, file: !760, line: 28, type: !3792)
!3796 = !DILocalVariable(name: "whence", arg: 3, scope: !3755, file: !760, line: 28, type: !78)
!3797 = !DILocalVariable(name: "pos", scope: !3798, file: !760, line: 123, type: !3792)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !760, line: 119, column: 5)
!3799 = distinct !DILexicalBlock(scope: !3755, file: !760, line: 55, column: 7)
!3800 = !DILocation(line: 0, scope: !3755)
!3801 = !DILocation(line: 55, column: 12, scope: !3799)
!3802 = !{!1143, !791, i64 16}
!3803 = !DILocation(line: 55, column: 33, scope: !3799)
!3804 = !{!1143, !791, i64 8}
!3805 = !DILocation(line: 55, column: 25, scope: !3799)
!3806 = !DILocation(line: 56, column: 7, scope: !3799)
!3807 = !DILocation(line: 56, column: 15, scope: !3799)
!3808 = !DILocation(line: 56, column: 37, scope: !3799)
!3809 = !{!1143, !791, i64 32}
!3810 = !DILocation(line: 56, column: 29, scope: !3799)
!3811 = !DILocation(line: 57, column: 7, scope: !3799)
!3812 = !DILocation(line: 57, column: 15, scope: !3799)
!3813 = !{!1143, !791, i64 72}
!3814 = !DILocation(line: 57, column: 29, scope: !3799)
!3815 = !DILocation(line: 55, column: 7, scope: !3755)
!3816 = !DILocation(line: 123, column: 26, scope: !3798)
!3817 = !DILocation(line: 123, column: 19, scope: !3798)
!3818 = !DILocation(line: 0, scope: !3798)
!3819 = !DILocation(line: 124, column: 15, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3798, file: !760, line: 124, column: 11)
!3821 = !DILocation(line: 124, column: 11, scope: !3798)
!3822 = !DILocation(line: 135, column: 19, scope: !3798)
!3823 = !DILocation(line: 136, column: 12, scope: !3798)
!3824 = !DILocation(line: 136, column: 20, scope: !3798)
!3825 = !{!1143, !1144, i64 144}
!3826 = !DILocation(line: 167, column: 7, scope: !3798)
!3827 = !DILocation(line: 169, column: 10, scope: !3755)
!3828 = !DILocation(line: 169, column: 3, scope: !3755)
!3829 = !DILocation(line: 170, column: 1, scope: !3755)
!3830 = !DISubprogram(name: "fseeko", scope: !853, file: !853, line: 736, type: !3831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!78, !3758, !182, !78}
!3833 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !681, file: !681, line: 100, type: !3834, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3837)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!102, !1553, !105, !102, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3837 = !{!3838, !3839, !3840, !3841, !3842}
!3838 = !DILocalVariable(name: "pwc", arg: 1, scope: !3833, file: !681, line: 100, type: !1553)
!3839 = !DILocalVariable(name: "s", arg: 2, scope: !3833, file: !681, line: 100, type: !105)
!3840 = !DILocalVariable(name: "n", arg: 3, scope: !3833, file: !681, line: 100, type: !102)
!3841 = !DILocalVariable(name: "ps", arg: 4, scope: !3833, file: !681, line: 100, type: !3836)
!3842 = !DILocalVariable(name: "ret", scope: !3833, file: !681, line: 130, type: !102)
!3843 = !DILocation(line: 0, scope: !3833)
!3844 = !DILocation(line: 105, column: 9, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3833, file: !681, line: 105, column: 7)
!3846 = !DILocation(line: 105, column: 7, scope: !3833)
!3847 = !DILocation(line: 117, column: 10, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3833, file: !681, line: 117, column: 7)
!3849 = !DILocation(line: 117, column: 7, scope: !3833)
!3850 = !DILocation(line: 130, column: 16, scope: !3833)
!3851 = !DILocation(line: 135, column: 11, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3833, file: !681, line: 135, column: 7)
!3853 = !DILocation(line: 135, column: 25, scope: !3852)
!3854 = !DILocation(line: 135, column: 30, scope: !3852)
!3855 = !DILocation(line: 135, column: 7, scope: !3833)
!3856 = !DILocalVariable(name: "ps", arg: 1, scope: !3857, file: !1527, line: 1135, type: !3836)
!3857 = distinct !DISubprogram(name: "mbszero", scope: !1527, file: !1527, line: 1135, type: !3858, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !3836}
!3860 = !{!3856}
!3861 = !DILocation(line: 0, scope: !3857, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 137, column: 5, scope: !3852)
!3863 = !DILocalVariable(name: "__dest", arg: 1, scope: !3864, file: !1237, line: 57, type: !100)
!3864 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1536, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3865)
!3865 = !{!3863, !3866, !3867}
!3866 = !DILocalVariable(name: "__ch", arg: 2, scope: !3864, file: !1237, line: 57, type: !78)
!3867 = !DILocalVariable(name: "__len", arg: 3, scope: !3864, file: !1237, line: 57, type: !102)
!3868 = !DILocation(line: 0, scope: !3864, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 1137, column: 3, scope: !3857, inlinedAt: !3862)
!3870 = !DILocation(line: 59, column: 10, scope: !3864, inlinedAt: !3869)
!3871 = !DILocation(line: 137, column: 5, scope: !3852)
!3872 = !DILocation(line: 138, column: 11, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3833, file: !681, line: 138, column: 7)
!3874 = !DILocation(line: 138, column: 7, scope: !3833)
!3875 = !DILocation(line: 139, column: 5, scope: !3873)
!3876 = !DILocation(line: 143, column: 26, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3833, file: !681, line: 143, column: 7)
!3878 = !DILocation(line: 143, column: 41, scope: !3877)
!3879 = !DILocation(line: 143, column: 7, scope: !3833)
!3880 = !DILocation(line: 145, column: 15, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !681, line: 145, column: 11)
!3882 = distinct !DILexicalBlock(scope: !3877, file: !681, line: 144, column: 5)
!3883 = !DILocation(line: 145, column: 11, scope: !3882)
!3884 = !DILocation(line: 146, column: 32, scope: !3881)
!3885 = !DILocation(line: 146, column: 16, scope: !3881)
!3886 = !DILocation(line: 146, column: 14, scope: !3881)
!3887 = !DILocation(line: 146, column: 9, scope: !3881)
!3888 = !DILocation(line: 286, column: 1, scope: !3833)
!3889 = !DISubprogram(name: "mbsinit", scope: !3890, file: !3890, line: 293, type: !3891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3890 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!78, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!3895 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !762, file: !762, line: 27, type: !3056, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3896)
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DILocalVariable(name: "ptr", arg: 1, scope: !3895, file: !762, line: 27, type: !100)
!3898 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3895, file: !762, line: 27, type: !102)
!3899 = !DILocalVariable(name: "size", arg: 3, scope: !3895, file: !762, line: 27, type: !102)
!3900 = !DILocalVariable(name: "nbytes", scope: !3895, file: !762, line: 29, type: !102)
!3901 = !DILocation(line: 0, scope: !3895)
!3902 = !DILocation(line: 30, column: 7, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !762, line: 30, column: 7)
!3904 = !DILocation(line: 30, column: 7, scope: !3895)
!3905 = !DILocation(line: 32, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !762, line: 31, column: 5)
!3907 = !DILocation(line: 32, column: 13, scope: !3906)
!3908 = !DILocation(line: 33, column: 7, scope: !3906)
!3909 = !DILocalVariable(name: "ptr", arg: 1, scope: !3910, file: !3148, line: 2057, type: !100)
!3910 = distinct !DISubprogram(name: "rpl_realloc", scope: !3148, file: !3148, line: 2057, type: !3140, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3911)
!3911 = !{!3909, !3912}
!3912 = !DILocalVariable(name: "size", arg: 2, scope: !3910, file: !3148, line: 2057, type: !102)
!3913 = !DILocation(line: 0, scope: !3910, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 37, column: 10, scope: !3895)
!3915 = !DILocation(line: 2059, column: 24, scope: !3910, inlinedAt: !3914)
!3916 = !DILocation(line: 2059, column: 10, scope: !3910, inlinedAt: !3914)
!3917 = !DILocation(line: 37, column: 3, scope: !3895)
!3918 = !DILocation(line: 38, column: 1, scope: !3895)
!3919 = distinct !DISubprogram(name: "hard_locale", scope: !699, file: !699, line: 28, type: !3920, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!143, !78}
!3922 = !{!3923, !3924}
!3923 = !DILocalVariable(name: "category", arg: 1, scope: !3919, file: !699, line: 28, type: !78)
!3924 = !DILocalVariable(name: "locale", scope: !3919, file: !699, line: 30, type: !3925)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3926)
!3926 = !{!3927}
!3927 = !DISubrange(count: 257)
!3928 = distinct !DIAssignID()
!3929 = !DILocation(line: 0, scope: !3919)
!3930 = !DILocation(line: 30, column: 3, scope: !3919)
!3931 = !DILocation(line: 32, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3919, file: !699, line: 32, column: 7)
!3933 = !DILocation(line: 32, column: 7, scope: !3919)
!3934 = !DILocalVariable(name: "__s1", arg: 1, scope: !3935, file: !871, line: 1359, type: !105)
!3935 = distinct !DISubprogram(name: "streq", scope: !871, file: !871, line: 1359, type: !872, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3936)
!3936 = !{!3934, !3937}
!3937 = !DILocalVariable(name: "__s2", arg: 2, scope: !3935, file: !871, line: 1359, type: !105)
!3938 = !DILocation(line: 0, scope: !3935, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 35, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3919, file: !699, line: 35, column: 7)
!3941 = !DILocation(line: 1361, column: 11, scope: !3935, inlinedAt: !3939)
!3942 = !DILocation(line: 35, column: 29, scope: !3940)
!3943 = !DILocation(line: 0, scope: !3935, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 35, column: 32, scope: !3940)
!3945 = !DILocation(line: 1361, column: 11, scope: !3935, inlinedAt: !3944)
!3946 = !DILocation(line: 1361, column: 10, scope: !3935, inlinedAt: !3944)
!3947 = !DILocation(line: 35, column: 7, scope: !3919)
!3948 = !DILocation(line: 46, column: 3, scope: !3919)
!3949 = !DILocation(line: 47, column: 1, scope: !3919)
!3950 = distinct !DISubprogram(name: "setlocale_null_r", scope: !768, file: !768, line: 154, type: !3951, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!78, !78, !99, !102}
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "category", arg: 1, scope: !3950, file: !768, line: 154, type: !78)
!3955 = !DILocalVariable(name: "buf", arg: 2, scope: !3950, file: !768, line: 154, type: !99)
!3956 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3950, file: !768, line: 154, type: !102)
!3957 = !DILocation(line: 0, scope: !3950)
!3958 = !DILocation(line: 159, column: 10, scope: !3950)
!3959 = !DILocation(line: 159, column: 3, scope: !3950)
!3960 = distinct !DISubprogram(name: "setlocale_null", scope: !768, file: !768, line: 186, type: !3961, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!105, !78}
!3963 = !{!3964}
!3964 = !DILocalVariable(name: "category", arg: 1, scope: !3960, file: !768, line: 186, type: !78)
!3965 = !DILocation(line: 0, scope: !3960)
!3966 = !DILocation(line: 189, column: 10, scope: !3960)
!3967 = !DILocation(line: 189, column: 3, scope: !3960)
!3968 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !770, file: !770, line: 35, type: !3961, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3969)
!3969 = !{!3970, !3971}
!3970 = !DILocalVariable(name: "category", arg: 1, scope: !3968, file: !770, line: 35, type: !78)
!3971 = !DILocalVariable(name: "result", scope: !3968, file: !770, line: 37, type: !105)
!3972 = !DILocation(line: 0, scope: !3968)
!3973 = !DILocation(line: 37, column: 24, scope: !3968)
!3974 = !DILocation(line: 62, column: 3, scope: !3968)
!3975 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !770, file: !770, line: 66, type: !3951, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3976)
!3976 = !{!3977, !3978, !3979, !3980, !3981}
!3977 = !DILocalVariable(name: "category", arg: 1, scope: !3975, file: !770, line: 66, type: !78)
!3978 = !DILocalVariable(name: "buf", arg: 2, scope: !3975, file: !770, line: 66, type: !99)
!3979 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3975, file: !770, line: 66, type: !102)
!3980 = !DILocalVariable(name: "result", scope: !3975, file: !770, line: 111, type: !105)
!3981 = !DILocalVariable(name: "length", scope: !3982, file: !770, line: 125, type: !102)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !770, line: 124, column: 5)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !770, line: 113, column: 7)
!3984 = !DILocation(line: 0, scope: !3975)
!3985 = !DILocation(line: 0, scope: !3968, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 111, column: 24, scope: !3975)
!3987 = !DILocation(line: 37, column: 24, scope: !3968, inlinedAt: !3986)
!3988 = !DILocation(line: 113, column: 14, scope: !3983)
!3989 = !DILocation(line: 113, column: 7, scope: !3975)
!3990 = !DILocation(line: 116, column: 19, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !770, line: 116, column: 11)
!3992 = distinct !DILexicalBlock(scope: !3983, file: !770, line: 114, column: 5)
!3993 = !DILocation(line: 116, column: 11, scope: !3992)
!3994 = !DILocation(line: 120, column: 16, scope: !3991)
!3995 = !DILocation(line: 120, column: 9, scope: !3991)
!3996 = !DILocation(line: 125, column: 23, scope: !3982)
!3997 = !DILocation(line: 0, scope: !3982)
!3998 = !DILocation(line: 126, column: 18, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3982, file: !770, line: 126, column: 11)
!4000 = !DILocation(line: 126, column: 11, scope: !3982)
!4001 = !DILocation(line: 128, column: 39, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3999, file: !770, line: 127, column: 9)
!4003 = !DILocalVariable(name: "__dest", arg: 1, scope: !4004, file: !1237, line: 26, type: !1240)
!4004 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4005)
!4005 = !{!4003, !4006, !4007}
!4006 = !DILocalVariable(name: "__src", arg: 2, scope: !4004, file: !1237, line: 26, type: !1005)
!4007 = !DILocalVariable(name: "__len", arg: 3, scope: !4004, file: !1237, line: 26, type: !102)
!4008 = !DILocation(line: 0, scope: !4004, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 128, column: 11, scope: !4002)
!4010 = !DILocation(line: 29, column: 10, scope: !4004, inlinedAt: !4009)
!4011 = !DILocation(line: 129, column: 11, scope: !4002)
!4012 = !DILocation(line: 133, column: 23, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !770, line: 133, column: 15)
!4014 = distinct !DILexicalBlock(scope: !3999, file: !770, line: 132, column: 9)
!4015 = !DILocation(line: 133, column: 15, scope: !4014)
!4016 = !DILocation(line: 138, column: 44, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4013, file: !770, line: 134, column: 13)
!4018 = !DILocation(line: 0, scope: !4004, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 138, column: 15, scope: !4017)
!4020 = !DILocation(line: 29, column: 10, scope: !4004, inlinedAt: !4019)
!4021 = !DILocation(line: 139, column: 15, scope: !4017)
!4022 = !DILocation(line: 139, column: 32, scope: !4017)
!4023 = !DILocation(line: 140, column: 13, scope: !4017)
!4024 = !DILocation(line: 0, scope: !3983)
!4025 = !DILocation(line: 145, column: 1, scope: !3975)
