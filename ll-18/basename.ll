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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !410
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !400
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !402
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !404
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !406
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !408
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !412
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !414
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !419
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !424
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !430
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !432
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !434
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !465
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !468
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !470
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !475
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !477
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !479
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !481
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !483
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !485
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !487
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 8, !dbg !489
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !514
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !528
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !566
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !573
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !530
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !575
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !518
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !535
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !537
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !539
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !541
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !543
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !581
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !584
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !586
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !588
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !590
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !592
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !597
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !602
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !604
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !609
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !614
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !619
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !624
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !626
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !631
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !636
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !641
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !646
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !648
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !650
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !652
@.str.21.106 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !654
@.str.22.107 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !656
@.str.23.108 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !658
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !663
@exit_failure = dso_local global i32 1, align 4, !dbg !671
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !677
@.str.1.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !680
@.str.2.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !682
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !684
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !687
@.str.143 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !702
@.str.1.144 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !705

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !785 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !789, metadata !DIExpression()), !dbg !790
  %2 = icmp eq i32 %0, 0, !dbg !791
  br i1 %2, label %8, label %3, !dbg !793

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !794, !tbaa !796
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !794
  %6 = load ptr, ptr @program_name, align 8, !dbg !794, !tbaa !796
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !794
  br label %40, !dbg !794

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !800
  %10 = load ptr, ptr @program_name, align 8, !dbg !800, !tbaa !796
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !800
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !802
  %13 = load ptr, ptr @stdout, align 8, !dbg !802, !tbaa !796
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !802
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !803
  %16 = load ptr, ptr @stdout, align 8, !dbg !803, !tbaa !796
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !803
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !806
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !806
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !807
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !807
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !808
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !809
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !810
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !810
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !811
  %24 = load ptr, ptr @program_name, align 8, !dbg !811, !tbaa !796
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %23, ptr noundef %24, ptr noundef %24, ptr noundef %24, ptr noundef %24) #39, !dbg !811
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !812, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata !831, metadata !825, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr poison, metadata !824, metadata !DIExpression()), !dbg !829
  tail call void @emit_bug_reporting_address() #39, !dbg !832
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !833
  call void @llvm.dbg.value(metadata ptr %26, metadata !827, metadata !DIExpression()), !dbg !829
  %27 = icmp eq ptr %26, null, !dbg !834
  br i1 %27, label %35, label %28, !dbg !836

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !837
  %30 = icmp eq i32 %29, 0, !dbg !837
  br i1 %30, label %35, label %31, !dbg !838

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !839
  %33 = load ptr, ptr @stdout, align 8, !dbg !839, !tbaa !796
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !839
  br label %35, !dbg !841

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !829
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !842
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !842
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !843
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !843
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !844
  unreachable, !dbg !844
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !845 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !849 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !855 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !858 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !133 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !137, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !138, metadata !DIExpression()), !dbg !861
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !862, !tbaa !863
  %3 = icmp eq i32 %2, -1, !dbg !865
  br i1 %3, label %4, label %16, !dbg !866

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !867
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !139, metadata !DIExpression()), !dbg !868
  %6 = icmp eq ptr %5, null, !dbg !869
  br i1 %6, label %14, label %7, !dbg !870

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !871, !tbaa !872
  %9 = icmp eq i8 %8, 0, !dbg !871
  br i1 %9, label %14, label %10, !dbg !873

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !874, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !880, metadata !DIExpression()), !dbg !881
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !883
  %12 = icmp eq i32 %11, 0, !dbg !884
  %13 = zext i1 %12 to i32, !dbg !873
  br label %14, !dbg !873

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !885, !tbaa !863
  br label %16, !dbg !886

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !887
  %18 = icmp eq i32 %17, 0, !dbg !887
  br i1 %18, label %22, label %19, !dbg !889

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !890, !tbaa !796
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !890
  br label %121, !dbg !892

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !142, metadata !DIExpression()), !dbg !861
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !893
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !144, metadata !DIExpression()), !dbg !861
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !895
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !145, metadata !DIExpression()), !dbg !861
  %26 = icmp eq ptr %25, null, !dbg !896
  br i1 %26, label %53, label %27, !dbg !897

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !898
  br i1 %28, label %53, label %29, !dbg !899

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !146, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()), !dbg !900
  %30 = icmp ult ptr %24, %25, !dbg !901
  br i1 %30, label %31, label %53, !dbg !902

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !861
  %33 = load ptr, ptr %32, align 8, !tbaa !796
  br label %34, !dbg !902

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !146, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !150, metadata !DIExpression()), !dbg !900
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !903
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !146, metadata !DIExpression()), !dbg !900
  %38 = load i8, ptr %35, align 1, !dbg !903, !tbaa !872
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !903
  %41 = load i16, ptr %40, align 2, !dbg !903, !tbaa !904
  %42 = freeze i16 %41, !dbg !906
  %43 = lshr i16 %42, 13, !dbg !906
  %44 = and i16 %43, 1, !dbg !906
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !907
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !150, metadata !DIExpression()), !dbg !900
  %47 = icmp ult ptr %37, %25, !dbg !901
  %48 = icmp ult i64 %46, 2, !dbg !908
  %49 = select i1 %47, i1 %48, i1 false, !dbg !908
  br i1 %49, label %34, label %50, !dbg !902, !llvm.loop !909

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !907
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !911
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !913
  br label %53, !dbg !913

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !861
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !145, metadata !DIExpression()), !dbg !861
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.22) #40, !dbg !914
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !151, metadata !DIExpression()), !dbg !861
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !152, metadata !DIExpression()), !dbg !861
  br label %58, !dbg !916

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !861
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !152, metadata !DIExpression()), !dbg !861
  %61 = load i8, ptr %59, align 1, !dbg !917, !tbaa !872
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !918

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !919
  %64 = load i8, ptr %63, align 1, !dbg !922, !tbaa !872
  %65 = icmp ne i8 %64, 45, !dbg !923
  %66 = select i1 %65, i1 %60, i1 false, !dbg !924
  br label %67, !dbg !924

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !142, metadata !DIExpression()), !dbg !861
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !925
  %70 = load ptr, ptr %69, align 8, !dbg !925, !tbaa !796
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !925
  %73 = load i16, ptr %72, align 2, !dbg !925, !tbaa !904
  %74 = and i16 %73, 8192, !dbg !925
  %75 = icmp eq i16 %74, 0, !dbg !925
  br i1 %75, label %89, label %76, !dbg !927

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !928
  br i1 %77, label %91, label %78, !dbg !931

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !932
  %80 = load i8, ptr %79, align 1, !dbg !932, !tbaa !872
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !932
  %83 = load i16, ptr %82, align 2, !dbg !932, !tbaa !904
  %84 = and i16 %83, 8192, !dbg !932
  %85 = icmp eq i16 %84, 0, !dbg !932
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !933
  br i1 %88, label %89, label %91, !dbg !933

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !934
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !152, metadata !DIExpression()), !dbg !861
  br label %58, !dbg !916, !llvm.loop !935

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !861
  %92 = ptrtoint ptr %24 to i64, !dbg !937
  %93 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !796
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata !831, metadata !880, metadata !DIExpression()), !dbg !956
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !861
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !958
  %96 = icmp eq i32 %95, 0, !dbg !958
  br i1 %96, label %100, label %97, !dbg !960

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !961
  %99 = icmp eq i32 %98, 0, !dbg !961
  br i1 %99, label %100, label %103, !dbg !962

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !963
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !963
  br label %106, !dbg !965

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !966
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !966
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !796
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %107), !dbg !968
  %109 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !796
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %109), !dbg !969
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !970
  %112 = sub i64 %111, %92, !dbg !970
  %113 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !796
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !970
  %115 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !796
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %115), !dbg !971
  %117 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !796
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %117), !dbg !972
  %119 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !796
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !973
  br label %121, !dbg !974

121:                                              ; preds = %106, %19
  ret void, !dbg !974
}

; Function Attrs: nounwind
declare !dbg !975 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !979 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !983 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !985 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !988 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !991 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !994 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !997 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1003 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1004 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1010 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1015, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1016, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1017, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1018, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1019, metadata !DIExpression()), !dbg !1022
  %3 = load ptr, ptr %1, align 8, !dbg !1023, !tbaa !796
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1024
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #39, !dbg !1025
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #39, !dbg !1026
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #39, !dbg !1027
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1028
  br label %8, !dbg !1029

8:                                                ; preds = %2, %18
  %9 = phi i1 [ false, %2 ], [ true, %18 ]
  %10 = phi i1 [ false, %2 ], [ %19, %18 ]
  %11 = phi ptr [ null, %2 ], [ %20, %18 ]
  br label %12, !dbg !1030

12:                                               ; preds = %8, %27
  %13 = phi i1 [ true, %27 ], [ %9, %8 ]
  %14 = phi i1 [ %28, %27 ], [ %10, %8 ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1019, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1018, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1022
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1020, metadata !DIExpression()), !dbg !1032
  switch i32 %15, label %.loopexit8 [
    i32 -1, label %.loopexit9
    i32 115, label %.loopexit10
    i32 97, label %27
    i32 122, label %.preheader1
    i32 -2, label %.loopexit11
    i32 -3, label %.loopexit12
  ], !dbg !1030

.preheader1:                                      ; preds = %12
  br label %16, !dbg !1030

16:                                               ; preds = %.preheader1, %16
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1019, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1018, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1022
  %17 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1020, metadata !DIExpression()), !dbg !1032
  switch i32 %17, label %.loopexit2 [
    i32 -1, label %.loopexit3
    i32 115, label %.loopexit4
    i32 97, label %.loopexit5
    i32 122, label %16
    i32 -2, label %.loopexit6
    i32 -3, label %.loopexit7
  ], !dbg !1030, !llvm.loop !1033

.loopexit4:                                       ; preds = %16
  br label %18, !dbg !1035

.loopexit10:                                      ; preds = %12
  %.lcssa14 = phi i1 [ %14, %12 ]
  br label %18, !dbg !1035

18:                                               ; preds = %.loopexit10, %.loopexit4
  %19 = phi i1 [ true, %.loopexit4 ], [ %.lcssa14, %.loopexit10 ]
  %20 = load ptr, ptr @optarg, align 8, !dbg !1035, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1019, metadata !DIExpression()), !dbg !1022
  br label %8, !dbg !1037

.loopexit6:                                       ; preds = %16
  br label %21, !dbg !1038

.loopexit11:                                      ; preds = %12
  br label %21, !dbg !1038

21:                                               ; preds = %.loopexit11, %.loopexit6
  tail call void @usage(i32 noundef 0) #43, !dbg !1038
  unreachable, !dbg !1038

.loopexit7:                                       ; preds = %16
  br label %22, !dbg !1039

.loopexit12:                                      ; preds = %12
  br label %22, !dbg !1039

22:                                               ; preds = %.loopexit12, %.loopexit7
  %23 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !796
  %24 = load ptr, ptr @Version, align 8, !dbg !1039, !tbaa !796
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #39, !dbg !1039
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %24, ptr noundef %25, ptr noundef null) #39, !dbg !1039
  tail call void @exit(i32 noundef 0) #41, !dbg !1039
  unreachable, !dbg !1039

.loopexit2:                                       ; preds = %16
  br label %26, !dbg !1040

.loopexit8:                                       ; preds = %12
  br label %26, !dbg !1040

26:                                               ; preds = %.loopexit8, %.loopexit2
  tail call void @usage(i32 noundef 1) #43, !dbg !1040
  unreachable, !dbg !1040

.loopexit5:                                       ; preds = %16
  br label %27, !dbg !1041

27:                                               ; preds = %.loopexit5, %12
  %28 = phi i1 [ %14, %12 ], [ true, %.loopexit5 ]
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1019, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1018, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1022
  br label %12, !dbg !1041

.loopexit3:                                       ; preds = %16
  %.lcssa36 = phi ptr [ %11, %16 ]
  %.lcssa28 = phi i1 [ %13, %16 ]
  br label %29, !dbg !1042

.loopexit9:                                       ; preds = %12
  %.lcssa32 = phi ptr [ %11, %12 ]
  %.lcssa23 = phi i1 [ %13, %12 ]
  %.lcssa13 = phi i1 [ %14, %12 ]
  br label %29, !dbg !1042

29:                                               ; preds = %.loopexit9, %.loopexit3
  %30 = phi ptr [ %.lcssa36, %.loopexit3 ], [ %.lcssa32, %.loopexit9 ]
  %31 = phi i1 [ %.lcssa28, %.loopexit3 ], [ %.lcssa23, %.loopexit9 ]
  %32 = phi i1 [ true, %.loopexit3 ], [ %.lcssa13, %.loopexit9 ]
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1019, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1018, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1017, metadata !DIExpression()), !dbg !1022
  %33 = load i32, ptr @optind, align 4, !dbg !1042, !tbaa !863
  %34 = icmp slt i32 %33, %0, !dbg !1044
  br i1 %34, label %37, label %35, !dbg !1045

35:                                               ; preds = %29
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1046
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #39, !dbg !1046
  tail call void @usage(i32 noundef 1) #43, !dbg !1048
  unreachable, !dbg !1048

37:                                               ; preds = %29
  %38 = add nsw i32 %33, 2
  %39 = icmp sge i32 %38, %0
  %40 = select i1 %31, i1 true, i1 %39, !dbg !1049
  br i1 %40, label %49, label %41, !dbg !1049

41:                                               ; preds = %37
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1051
  %43 = load i32, ptr @optind, align 4, !dbg !1051, !tbaa !863
  %44 = sext i32 %43 to i64, !dbg !1051
  %45 = getelementptr ptr, ptr %1, i64 %44, !dbg !1051
  %46 = getelementptr ptr, ptr %45, i64 2, !dbg !1051
  %47 = load ptr, ptr %46, align 8, !dbg !1051, !tbaa !796
  %48 = tail call ptr @quote(ptr noundef %47) #39, !dbg !1051
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %42, ptr noundef %48) #39, !dbg !1051
  tail call void @usage(i32 noundef 1) #43, !dbg !1053
  unreachable, !dbg !1053

49:                                               ; preds = %37
  br i1 %31, label %.preheader, label %58, !dbg !1054

.preheader:                                       ; preds = %49
  br label %50, !dbg !1055

50:                                               ; preds = %.preheader, %50
  %51 = phi i32 [ %56, %50 ], [ %33, %.preheader ]
  %52 = sext i32 %51 to i64, !dbg !1059
  %53 = getelementptr inbounds ptr, ptr %1, i64 %52, !dbg !1059
  %54 = load ptr, ptr %53, align 8, !dbg !1059, !tbaa !796
  tail call fastcc void @perform_basename(ptr noundef %54, ptr noundef %30, i1 noundef %32), !dbg !1061
  %55 = load i32, ptr @optind, align 4, !dbg !1062, !tbaa !863
  %56 = add nsw i32 %55, 1, !dbg !1062
  store i32 %56, ptr @optind, align 4, !dbg !1062, !tbaa !863
  %57 = icmp slt i32 %56, %0, !dbg !1063
  br i1 %57, label %50, label %.loopexit, !dbg !1055, !llvm.loop !1064

58:                                               ; preds = %49
  %59 = sext i32 %33 to i64, !dbg !1066
  %60 = getelementptr inbounds ptr, ptr %1, i64 %59, !dbg !1066
  %61 = load ptr, ptr %60, align 8, !dbg !1066, !tbaa !796
  %62 = icmp eq i32 %38, %0, !dbg !1067
  br i1 %62, label %63, label %66, !dbg !1068

63:                                               ; preds = %58
  %64 = getelementptr ptr, ptr %60, i64 1, !dbg !1069
  %65 = load ptr, ptr %64, align 8, !dbg !1069, !tbaa !796
  br label %66, !dbg !1068

66:                                               ; preds = %58, %63
  %67 = phi ptr [ %65, %63 ], [ null, %58 ], !dbg !1068
  tail call fastcc void @perform_basename(ptr noundef %61, ptr noundef %67, i1 noundef %32), !dbg !1070
  br label %68

.loopexit:                                        ; preds = %50
  br label %68, !dbg !1071

68:                                               ; preds = %.loopexit, %66
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
define internal fastcc void @perform_basename(ptr noundef %0, ptr noundef readonly %1, i1 noundef %2) unnamed_addr #10 !dbg !1085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1089, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1090, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata i1 %2, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1093
  %4 = tail call noalias nonnull ptr @base_name(ptr noundef %0) #39, !dbg !1094
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1092, metadata !DIExpression()), !dbg !1093
  %5 = tail call i1 @strip_trailing_slashes(ptr noundef nonnull %4) #39, !dbg !1095
  %6 = icmp eq ptr %1, null, !dbg !1096
  br i1 %6, label %29, label %7, !dbg !1098

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !dbg !1099, !tbaa !872
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
  %23 = load i8, ptr %22, align 1, !dbg !1120, !tbaa !872
  %24 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %24, metadata !1108, metadata !DIExpression()), !dbg !1109
  %25 = load i8, ptr %24, align 1, !dbg !1122, !tbaa !872
  %26 = icmp eq i8 %23, %25, !dbg !1123
  br i1 %26, label %15, label %.loopexit, !dbg !1124, !llvm.loop !1125

27:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ], !dbg !1109
  %.lcssa = phi i1 [ %18, %15 ], !dbg !1116
  br i1 %.lcssa, label %28, label %29, !dbg !1127

28:                                               ; preds = %27
  store i8 0, ptr %.lcssa2, align 1, !dbg !1128, !tbaa !872
  br label %29, !dbg !1130

.loopexit:                                        ; preds = %21
  br label %29, !dbg !1131

29:                                               ; preds = %.loopexit, %28, %27, %7, %3
  %30 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !796
  %31 = tail call i32 @fputs_unlocked(ptr noundef nonnull %4, ptr noundef %30), !dbg !1131
  %32 = select i1 %2, i32 0, i32 10, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %32, metadata !1133, metadata !DIExpression()), !dbg !1139
  %33 = load ptr, ptr @stdout, align 8, !dbg !1141, !tbaa !796
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
  store i8 %42, ptr %35, align 1, !dbg !1141, !tbaa !872
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
  store ptr %0, ptr @file_name, align 8, !dbg !1162, !tbaa !796
  ret void, !dbg !1163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1164 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1170, !tbaa !1171
  ret void, !dbg !1173
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1174 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !796
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1180
  %3 = icmp eq i32 %2, 0, !dbg !1181
  br i1 %3, label %22, label %4, !dbg !1182

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1183, !tbaa !1171, !range !1184, !noundef !831
  %6 = icmp eq i8 %5, 0, !dbg !1183
  br i1 %6, label %11, label %7, !dbg !1185

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1186
  %9 = load i32, ptr %8, align 4, !dbg !1186, !tbaa !863
  %10 = icmp eq i32 %9, 32, !dbg !1187
  br i1 %10, label %22, label %11, !dbg !1188

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #39, !dbg !1189
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1176, metadata !DIExpression()), !dbg !1190
  %13 = load ptr, ptr @file_name, align 8, !dbg !1191, !tbaa !796
  %14 = icmp eq ptr %13, null, !dbg !1191
  %15 = tail call ptr @__errno_location() #42, !dbg !1193
  %16 = load i32, ptr %15, align 4, !dbg !1193, !tbaa !863
  br i1 %14, label %19, label %17, !dbg !1194

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1195
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #39, !dbg !1195
  br label %20, !dbg !1195

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #39, !dbg !1196
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1197, !tbaa !863
  tail call void @_exit(i32 noundef %21) #41, !dbg !1198
  unreachable, !dbg !1198

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1199, !tbaa !796
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1201
  %25 = icmp eq i32 %24, 0, !dbg !1202
  br i1 %25, label %28, label %26, !dbg !1203

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1204, !tbaa !863
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
  %3 = load i8, ptr %2, align 1, !dbg !1222, !tbaa !872
  %4 = icmp eq i8 %3, 0, !dbg !1222
  br i1 %4, label %12, label %5, !dbg !1224

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(ptr noundef nonnull %2) #40, !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1217, metadata !DIExpression()), !dbg !1220
  %7 = getelementptr inbounds i8, ptr %2, i64 %6, !dbg !1227
  %8 = load i8, ptr %7, align 1, !dbg !1227, !tbaa !872
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
  store i8 0, ptr %19, align 1, !dbg !1248, !tbaa !872
  ret ptr %18, !dbg !1249
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #15 !dbg !1250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1254, metadata !DIExpression()), !dbg !1258
  %2 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1258
  %3 = load i8, ptr %2, align 1, !dbg !1260, !tbaa !872
  %4 = icmp eq i8 %3, 0, !dbg !1260
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1255, metadata !DIExpression()), !dbg !1258
  %6 = tail call i64 @base_len(ptr noundef %5) #40, !dbg !1263
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1256, metadata !DIExpression()), !dbg !1258
  %8 = load i8, ptr %7, align 1, !dbg !1265, !tbaa !872
  %9 = icmp ne i8 %8, 0, !dbg !1266
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1258
  store i8 0, ptr %7, align 1, !dbg !1267, !tbaa !872
  ret i1 %9, !dbg !1268
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1269 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1274, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1275, metadata !DIExpression()), !dbg !1277
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1276, metadata !DIExpression(DW_OP_deref)), !dbg !1277
  tail call fastcc void @flush_stdout(), !dbg !1278
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1279, !tbaa !796
  %7 = icmp eq ptr %6, null, !dbg !1279
  br i1 %7, label %9, label %8, !dbg !1281

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1282
  br label %13, !dbg !1282

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1283, !tbaa !796
  %11 = tail call ptr @getprogname() #40, !dbg !1283
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %11) #39, !dbg !1283
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1285, !tbaa.struct !1286
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1285
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1285
  ret void, !dbg !1287
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1288 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 1, metadata !1292, metadata !DIExpression()), !dbg !1295
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1298
  %2 = icmp slt i32 %1, 0, !dbg !1299
  br i1 %2, label %6, label %3, !dbg !1300

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1301, !tbaa !796
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1301
  br label %6, !dbg !1301

6:                                                ; preds = %3, %0
  ret void, !dbg !1302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1303 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1309
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1305, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1306, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1307, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1308, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  %7 = load ptr, ptr @stderr, align 8, !dbg !1311, !tbaa !796
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1312, !noalias !1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %7, metadata !1352, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %2, metadata !1353, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr poison, metadata !1354, metadata !DIExpression(DW_OP_deref)), !dbg !1361
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1312, !noalias !1356
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1362, !tbaa !863
  %10 = add i32 %9, 1, !dbg !1362
  store i32 %10, ptr @error_message_count, align 4, !dbg !1362, !tbaa !863
  %11 = icmp eq i32 %1, 0, !dbg !1363
  br i1 %11, label %21, label %12, !dbg !1365

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1366, metadata !DIExpression(), metadata !1309, metadata ptr %5, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 %1, metadata !1369, metadata !DIExpression()), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1376
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1377
  call void @llvm.dbg.value(metadata ptr %13, metadata !1370, metadata !DIExpression()), !dbg !1374
  %14 = icmp eq ptr %13, null, !dbg !1378
  br i1 %14, label %15, label %17, !dbg !1380

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #39, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %16, metadata !1370, metadata !DIExpression()), !dbg !1374
  br label %17, !dbg !1382

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1374
  call void @llvm.dbg.value(metadata ptr %18, metadata !1370, metadata !DIExpression()), !dbg !1374
  %19 = load ptr, ptr @stderr, align 8, !dbg !1383, !tbaa !796
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %18) #39, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1384
  br label %21, !dbg !1385

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1386, !tbaa !796
  call void @llvm.dbg.value(metadata i32 10, metadata !1387, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %22, metadata !1392, metadata !DIExpression()), !dbg !1393
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1395
  %24 = load ptr, ptr %23, align 8, !dbg !1395, !tbaa !1142
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1395
  %26 = load ptr, ptr %25, align 8, !dbg !1395, !tbaa !1145
  %27 = icmp ult ptr %24, %26, !dbg !1395
  br i1 %27, label %30, label %28, !dbg !1395, !prof !1146

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1395
  br label %32, !dbg !1395

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1395
  store ptr %31, ptr %23, align 8, !dbg !1395, !tbaa !1142
  store i8 10, ptr %24, align 1, !dbg !1395, !tbaa !872
  br label %32, !dbg !1395

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1396, !tbaa !796
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1396
  %35 = icmp eq i32 %0, 0, !dbg !1397
  br i1 %35, label %37, label %36, !dbg !1399

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1400
  unreachable, !dbg !1400

37:                                               ; preds = %32
  ret void, !dbg !1401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #17

declare !dbg !1402 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1405 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1408 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1411 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1415 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1422, metadata !DIExpression(), metadata !1423, metadata ptr %4, metadata !DIExpression()), !dbg !1424
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1419, metadata !DIExpression()), !dbg !1424
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1420, metadata !DIExpression()), !dbg !1424
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1421, metadata !DIExpression()), !dbg !1424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1425
  call void @llvm.va_start(ptr nonnull %4), !dbg !1426
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1427, !tbaa.struct !1286
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1427
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1427
  call void @llvm.va_end(ptr nonnull %4), !dbg !1428
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1429
  ret void, !dbg !1429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !378 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !394, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !395, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !397, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !398, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !399, metadata !DIExpression(DW_OP_deref)), !dbg !1430
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1431, !tbaa !863
  %9 = icmp eq i32 %8, 0, !dbg !1431
  br i1 %9, label %24, label %10, !dbg !1433

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1434, !tbaa !863
  %12 = icmp eq i32 %11, %3, !dbg !1437
  br i1 %12, label %13, label %23, !dbg !1438

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1439, !tbaa !796
  %15 = icmp eq ptr %14, %2, !dbg !1440
  br i1 %15, label %37, label %16, !dbg !1441

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1442
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1443
  br i1 %19, label %20, label %23, !dbg !1443

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1444
  %22 = icmp eq i32 %21, 0, !dbg !1445
  br i1 %22, label %37, label %23, !dbg !1446

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1447, !tbaa !796
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1448, !tbaa !863
  br label %24, !dbg !1449

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1450
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1451, !tbaa !796
  %26 = icmp eq ptr %25, null, !dbg !1451
  br i1 %26, label %28, label %27, !dbg !1453

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1454
  br label %32, !dbg !1454

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1455, !tbaa !796
  %30 = tail call ptr @getprogname() #40, !dbg !1455
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %30) #39, !dbg !1455
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1457, !tbaa !796
  %34 = icmp eq ptr %2, null, !dbg !1457
  %35 = select i1 %34, ptr @.str.3.41, ptr @.str.2.42, !dbg !1457
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1457
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1458, !tbaa.struct !1286
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1458
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1458
  br label %37, !dbg !1459

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1460 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1470
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1469, metadata !DIExpression(), metadata !1470, metadata ptr %6, metadata !DIExpression()), !dbg !1471
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1465, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1466, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1467, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1468, metadata !DIExpression()), !dbg !1471
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1472
  call void @llvm.va_start(ptr nonnull %6), !dbg !1473
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1474, !tbaa.struct !1286
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1474
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1474
  call void @llvm.va_end(ptr nonnull %6), !dbg !1475
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1476
  ret void, !dbg !1476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1477 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1480, !tbaa !796
  ret ptr %1, !dbg !1481
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1482 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1484, metadata !DIExpression()), !dbg !1487
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1488
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1485, metadata !DIExpression()), !dbg !1487
  %3 = icmp eq ptr %2, null, !dbg !1489
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1489
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1486, metadata !DIExpression()), !dbg !1487
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
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1484, metadata !DIExpression()), !dbg !1487
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #40, !dbg !1507
  %16 = icmp eq i32 %15, 0, !dbg !1510
  %17 = select i1 %16, i64 3, i64 0, !dbg !1511
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1511
  br label %19, !dbg !1511

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1487
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1486, metadata !DIExpression()), !dbg !1487
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1484, metadata !DIExpression()), !dbg !1487
  store ptr %20, ptr @program_name, align 8, !dbg !1512, !tbaa !796
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1513, !tbaa !796
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1514, !tbaa !796
  ret void, !dbg !1515
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1516 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !436 {
  %3 = alloca i32, align 4, !DIAssignID !1517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !446, metadata !DIExpression(), metadata !1517, metadata ptr %3, metadata !DIExpression()), !dbg !1518
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !451, metadata !DIExpression(), metadata !1519, metadata ptr %4, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !443, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !444, metadata !DIExpression()), !dbg !1518
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1520
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !445, metadata !DIExpression()), !dbg !1518
  %6 = icmp eq ptr %5, %0, !dbg !1521
  br i1 %6, label %7, label %14, !dbg !1523

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1524
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata ptr %4, metadata !1535, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 8, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i64 0, ptr %4, align 8, !dbg !1544
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1545
  %9 = icmp eq i64 %8, 2, !dbg !1547
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1548
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1549
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1549
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1518
  ret ptr %15, !dbg !1549
}

; Function Attrs: nounwind
declare !dbg !1550 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1556 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1561, metadata !DIExpression()), !dbg !1564
  %2 = tail call ptr @__errno_location() #42, !dbg !1565
  %3 = load i32, ptr %2, align 4, !dbg !1565, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1562, metadata !DIExpression()), !dbg !1564
  %4 = icmp eq ptr %0, null, !dbg !1566
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1566
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1567
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i32 %3, ptr %2, align 4, !dbg !1568, !tbaa !863
  ret ptr %6, !dbg !1569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1570 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1576, metadata !DIExpression()), !dbg !1577
  %2 = icmp eq ptr %0, null, !dbg !1578
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1578
  %4 = load i32, ptr %3, align 8, !dbg !1579, !tbaa !1580
  ret i32 %4, !dbg !1582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1583 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1587, metadata !DIExpression()), !dbg !1589
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1589
  %3 = icmp eq ptr %0, null, !dbg !1590
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1590
  store i32 %1, ptr %4, align 8, !dbg !1591, !tbaa !1580
  ret void, !dbg !1592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1597, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1598, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1599, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1600, metadata !DIExpression()), !dbg !1605
  %4 = icmp eq ptr %0, null, !dbg !1606
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1606
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1607
  %7 = lshr i8 %1, 5, !dbg !1608
  %8 = zext nneg i8 %7 to i64, !dbg !1608
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1609
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1601, metadata !DIExpression()), !dbg !1605
  %10 = and i8 %1, 31, !dbg !1610
  %11 = zext nneg i8 %10 to i32, !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1603, metadata !DIExpression()), !dbg !1605
  %12 = load i32, ptr %9, align 4, !dbg !1611, !tbaa !863
  %13 = lshr i32 %12, %11, !dbg !1612
  %14 = and i32 %13, 1, !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1604, metadata !DIExpression()), !dbg !1605
  %15 = xor i32 %13, %2, !dbg !1614
  %16 = and i32 %15, 1, !dbg !1614
  %17 = shl nuw i32 %16, %11, !dbg !1615
  %18 = xor i32 %17, %12, !dbg !1616
  store i32 %18, ptr %9, align 4, !dbg !1616, !tbaa !863
  ret i32 %14, !dbg !1617
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1618 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1622, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1623, metadata !DIExpression()), !dbg !1625
  %3 = icmp eq ptr %0, null, !dbg !1626
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1628
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1622, metadata !DIExpression()), !dbg !1625
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1629
  %6 = load i32, ptr %5, align 4, !dbg !1629, !tbaa !1630
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1624, metadata !DIExpression()), !dbg !1625
  store i32 %1, ptr %5, align 4, !dbg !1631, !tbaa !1630
  ret i32 %6, !dbg !1632
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1633 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !1640
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !1640
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1639, metadata !DIExpression()), !dbg !1640
  %4 = icmp eq ptr %0, null, !dbg !1641
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1643
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !1640
  store i32 10, ptr %5, align 8, !dbg !1644, !tbaa !1580
  %6 = icmp ne ptr %1, null, !dbg !1645
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1647
  br i1 %8, label %10, label %9, !dbg !1647

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1648
  unreachable, !dbg !1648

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1649
  store ptr %1, ptr %11, align 8, !dbg !1650, !tbaa !1651
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1652
  store ptr %2, ptr %12, align 8, !dbg !1653, !tbaa !1654
  ret void, !dbg !1655
}

; Function Attrs: noreturn nounwind
declare !dbg !1656 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1657 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1661, metadata !DIExpression()), !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1662, metadata !DIExpression()), !dbg !1669
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1663, metadata !DIExpression()), !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1664, metadata !DIExpression()), !dbg !1669
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1665, metadata !DIExpression()), !dbg !1669
  %6 = icmp eq ptr %4, null, !dbg !1670
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1670
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1666, metadata !DIExpression()), !dbg !1669
  %8 = tail call ptr @__errno_location() #42, !dbg !1671
  %9 = load i32, ptr %8, align 4, !dbg !1671, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1667, metadata !DIExpression()), !dbg !1669
  %10 = load i32, ptr %7, align 8, !dbg !1672, !tbaa !1580
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1673
  %12 = load i32, ptr %11, align 4, !dbg !1673, !tbaa !1630
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1674
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1675
  %15 = load ptr, ptr %14, align 8, !dbg !1675, !tbaa !1651
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1676
  %17 = load ptr, ptr %16, align 8, !dbg !1676, !tbaa !1654
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 %9, ptr %8, align 4, !dbg !1678, !tbaa !863
  ret i64 %18, !dbg !1679
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1680 {
  %10 = alloca i32, align 4, !DIAssignID !1748
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1749
  %12 = alloca i32, align 4, !DIAssignID !1750
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1751
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1752
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1726, metadata !DIExpression(), metadata !1752, metadata ptr %14, metadata !DIExpression()), !dbg !1753
  %15 = alloca i32, align 4, !DIAssignID !1754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1729, metadata !DIExpression(), metadata !1754, metadata ptr %15, metadata !DIExpression()), !dbg !1755
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1686, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1688, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1689, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1690, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1691, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1692, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1693, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1694, metadata !DIExpression()), !dbg !1756
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1757
  %17 = icmp eq i64 %16, 1, !dbg !1758
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1698, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1701, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1756
  %18 = and i32 %5, 2, !dbg !1759
  %19 = icmp ne i32 %18, 0, !dbg !1759
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1759

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1760
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1761
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1762
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1699, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1698, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1689, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1694, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1693, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1690, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.label(metadata !1704), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1756
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
  ], !dbg !1764

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1690, metadata !DIExpression()), !dbg !1756
  br label %101, !dbg !1765

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1690, metadata !DIExpression()), !dbg !1756
  br i1 %36, label %101, label %42, !dbg !1765

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1766
  br i1 %43, label %101, label %44, !dbg !1770

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1766, !tbaa !872
  br label %101, !dbg !1766

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !552, metadata !DIExpression(), metadata !1750, metadata ptr %12, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !553, metadata !DIExpression(), metadata !1751, metadata ptr %13, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !549, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 %28, metadata !550, metadata !DIExpression()), !dbg !1771
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #39, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %46, metadata !551, metadata !DIExpression()), !dbg !1771
  %47 = icmp eq ptr %46, @.str.11.73, !dbg !1776
  br i1 %47, label %48, label %57, !dbg !1778

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1779
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %13, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %13, metadata !1789, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 8, metadata !1793, metadata !DIExpression()), !dbg !1794
  store i64 0, ptr %13, align 8, !dbg !1796
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1797
  %50 = icmp eq i64 %49, 3, !dbg !1799
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1800
  %54 = icmp eq i32 %28, 9, !dbg !1800
  %55 = select i1 %54, ptr @.str.10.75, ptr @.str.12.76, !dbg !1800
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1801
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1801
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1693, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.assign(metadata i1 undef, metadata !552, metadata !DIExpression(), metadata !1748, metadata ptr %10, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !553, metadata !DIExpression(), metadata !1749, metadata ptr %11, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !549, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i32 %28, metadata !550, metadata !DIExpression()), !dbg !1802
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #39, !dbg !1804
  call void @llvm.dbg.value(metadata ptr %59, metadata !551, metadata !DIExpression()), !dbg !1802
  %60 = icmp eq ptr %59, @.str.12.76, !dbg !1805
  br i1 %60, label %61, label %70, !dbg !1806

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1807
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %11, metadata !1781, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %11, metadata !1789, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64 8, metadata !1793, metadata !DIExpression()), !dbg !1811
  store i64 0, ptr %11, align 8, !dbg !1813
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1814
  %63 = icmp eq i64 %62, 3, !dbg !1815
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1816
  %67 = icmp eq i32 %28, 9, !dbg !1816
  %68 = select i1 %67, ptr @.str.10.75, ptr @.str.12.76, !dbg !1816
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1816
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1817
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1694, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1693, metadata !DIExpression()), !dbg !1756
  br i1 %36, label %88, label %73, !dbg !1818

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1706, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1756
  %74 = load i8, ptr %71, align 1, !dbg !1820, !tbaa !872
  %75 = icmp eq i8 %74, 0, !dbg !1822
  br i1 %75, label %88, label %.preheader11, !dbg !1822

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1822

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1706, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1696, metadata !DIExpression()), !dbg !1756
  %80 = icmp ult i64 %79, %39, !dbg !1823
  br i1 %80, label %81, label %83, !dbg !1826

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1823
  store i8 %77, ptr %82, align 1, !dbg !1823, !tbaa !872
  br label %83, !dbg !1823

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1826
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1696, metadata !DIExpression()), !dbg !1756
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1706, metadata !DIExpression()), !dbg !1819
  %86 = load i8, ptr %85, align 1, !dbg !1820, !tbaa !872
  %87 = icmp eq i8 %86, 0, !dbg !1822
  br i1 %87, label %.loopexit12, label %76, !dbg !1822, !llvm.loop !1828

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1826
  br label %88, !dbg !1830

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1698, metadata !DIExpression()), !dbg !1756
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !1830
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1699, metadata !DIExpression()), !dbg !1756
  br label %101, !dbg !1832

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1701, metadata !DIExpression()), !dbg !1756
  br label %101, !dbg !1833

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1690, metadata !DIExpression()), !dbg !1756
  br label %101, !dbg !1834

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  br i1 %36, label %101, label %95, !dbg !1835

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1690, metadata !DIExpression()), !dbg !1756
  br i1 %36, label %101, label %95, !dbg !1834

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1836
  br i1 %97, label %101, label %98, !dbg !1840

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1836, !tbaa !872
  br label %101, !dbg !1836

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1756
  br label %101, !dbg !1841

100:                                              ; preds = %27
  call void @abort() #41, !dbg !1842
  unreachable, !dbg !1842

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1831
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.75, %42 ], [ @.str.10.75, %44 ], [ @.str.10.75, %41 ], [ %33, %27 ], [ @.str.12.76, %95 ], [ @.str.12.76, %98 ], [ @.str.12.76, %94 ], [ @.str.10.75, %40 ], [ @.str.12.76, %91 ], [ @.str.12.76, %92 ], [ @.str.12.76, %93 ], !dbg !1756
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1756
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1701, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1700, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1699, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1698, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1694, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1693, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1690, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1711, metadata !DIExpression()), !dbg !1843
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
  br label %121, !dbg !1844

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1831
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1760
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1845
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1689, metadata !DIExpression()), !dbg !1756
  %130 = icmp eq i64 %122, -1, !dbg !1846
  br i1 %130, label %131, label %135, !dbg !1847

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1848
  %133 = load i8, ptr %132, align 1, !dbg !1848, !tbaa !872
  %134 = icmp eq i8 %133, 0, !dbg !1849
  br i1 %134, label %573, label %137, !dbg !1850

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1851
  br i1 %136, label %573, label %137, !dbg !1850

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1852
  br i1 %113, label %138, label %151, !dbg !1853

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1855
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1856
  br i1 %140, label %141, label %143, !dbg !1856

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1689, metadata !DIExpression()), !dbg !1756
  br label %143, !dbg !1858

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1689, metadata !DIExpression()), !dbg !1756
  %145 = icmp ugt i64 %139, %144, !dbg !1859
  br i1 %145, label %151, label %146, !dbg !1860

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %147, metadata !1862, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %106, metadata !1865, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %107, metadata !1866, metadata !DIExpression()), !dbg !1867
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1869
  %149 = icmp eq i32 %148, 0, !dbg !1870
  %150 = and i1 %149, %109, !dbg !1871
  br i1 %150, label %.loopexit7, label %151, !dbg !1871

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1713, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1689, metadata !DIExpression()), !dbg !1756
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1872
  %155 = load i8, ptr %154, align 1, !dbg !1872, !tbaa !872
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1718, metadata !DIExpression()), !dbg !1852
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
  ], !dbg !1873

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1874

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1875

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1852
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1879
  br i1 %159, label %176, label %160, !dbg !1879

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1881
  br i1 %161, label %162, label %164, !dbg !1885

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1881
  store i8 39, ptr %163, align 1, !dbg !1881, !tbaa !872
  br label %164, !dbg !1881

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1696, metadata !DIExpression()), !dbg !1756
  %166 = icmp ult i64 %165, %129, !dbg !1886
  br i1 %166, label %167, label %169, !dbg !1889

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1886
  store i8 36, ptr %168, align 1, !dbg !1886, !tbaa !872
  br label %169, !dbg !1886

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1889
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1696, metadata !DIExpression()), !dbg !1756
  %171 = icmp ult i64 %170, %129, !dbg !1890
  br i1 %171, label %172, label %174, !dbg !1893

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1890
  store i8 39, ptr %173, align 1, !dbg !1890, !tbaa !872
  br label %174, !dbg !1890

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %176, !dbg !1894

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1756
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1696, metadata !DIExpression()), !dbg !1756
  %179 = icmp ult i64 %177, %129, !dbg !1895
  br i1 %179, label %180, label %182, !dbg !1898

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1895
  store i8 92, ptr %181, align 1, !dbg !1895, !tbaa !872
  br label %182, !dbg !1895

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1696, metadata !DIExpression()), !dbg !1756
  br i1 %110, label %184, label %476, !dbg !1899

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1901
  %186 = icmp ult i64 %185, %152, !dbg !1902
  br i1 %186, label %187, label %433, !dbg !1903

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1904
  %189 = load i8, ptr %188, align 1, !dbg !1904, !tbaa !872
  %190 = add i8 %189, -48, !dbg !1905
  %191 = icmp ult i8 %190, 10, !dbg !1905
  br i1 %191, label %192, label %433, !dbg !1905

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1906
  br i1 %193, label %194, label %196, !dbg !1910

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1906
  store i8 48, ptr %195, align 1, !dbg !1906, !tbaa !872
  br label %196, !dbg !1906

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1696, metadata !DIExpression()), !dbg !1756
  %198 = icmp ult i64 %197, %129, !dbg !1911
  br i1 %198, label %199, label %201, !dbg !1914

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1911
  store i8 48, ptr %200, align 1, !dbg !1911, !tbaa !872
  br label %201, !dbg !1911

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1914
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1696, metadata !DIExpression()), !dbg !1756
  br label %433, !dbg !1915

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1916

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1917

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1918

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1920

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1922
  %209 = icmp ult i64 %208, %152, !dbg !1923
  br i1 %209, label %210, label %433, !dbg !1924

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1925
  %212 = load i8, ptr %211, align 1, !dbg !1925, !tbaa !872
  %213 = icmp eq i8 %212, 63, !dbg !1926
  br i1 %213, label %214, label %433, !dbg !1927

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1928
  %216 = load i8, ptr %215, align 1, !dbg !1928, !tbaa !872
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
  ], !dbg !1929

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1930

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1711, metadata !DIExpression()), !dbg !1843
  %219 = icmp ult i64 %123, %129, !dbg !1932
  br i1 %219, label %220, label %222, !dbg !1935

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1932
  store i8 63, ptr %221, align 1, !dbg !1932, !tbaa !872
  br label %222, !dbg !1932

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1696, metadata !DIExpression()), !dbg !1756
  %224 = icmp ult i64 %223, %129, !dbg !1936
  br i1 %224, label %225, label %227, !dbg !1939

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1936
  store i8 34, ptr %226, align 1, !dbg !1936, !tbaa !872
  br label %227, !dbg !1936

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1696, metadata !DIExpression()), !dbg !1756
  %229 = icmp ult i64 %228, %129, !dbg !1940
  br i1 %229, label %230, label %232, !dbg !1943

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1940
  store i8 34, ptr %231, align 1, !dbg !1940, !tbaa !872
  br label %232, !dbg !1940

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1696, metadata !DIExpression()), !dbg !1756
  %234 = icmp ult i64 %233, %129, !dbg !1944
  br i1 %234, label %235, label %237, !dbg !1947

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1944
  store i8 63, ptr %236, align 1, !dbg !1944, !tbaa !872
  br label %237, !dbg !1944

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1696, metadata !DIExpression()), !dbg !1756
  br label %433, !dbg !1948

239:                                              ; preds = %151
  br label %249, !dbg !1949

240:                                              ; preds = %151
  br label %249, !dbg !1950

241:                                              ; preds = %151
  br label %247, !dbg !1951

242:                                              ; preds = %151
  br label %247, !dbg !1952

243:                                              ; preds = %151
  br label %249, !dbg !1953

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1954

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1955

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1958

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1960
  call void @llvm.dbg.label(metadata !1719), !dbg !1961
  br i1 %118, label %.loopexit8, label %249, !dbg !1962

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1960
  call void @llvm.dbg.label(metadata !1722), !dbg !1964
  br i1 %108, label %487, label %444, !dbg !1965

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1966

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1967, !tbaa !872
  %254 = icmp eq i8 %253, 0, !dbg !1969
  br i1 %254, label %255, label %433, !dbg !1970

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1971
  br i1 %256, label %257, label %433, !dbg !1973

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1852
  br label %258, !dbg !1974

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1852
  br i1 %115, label %260, label %433, !dbg !1975

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1977

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1852
  br i1 %115, label %262, label %433, !dbg !1978

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1979

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1982
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1984
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1984
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1697, metadata !DIExpression()), !dbg !1756
  %269 = icmp ult i64 %123, %268, !dbg !1985
  br i1 %269, label %270, label %272, !dbg !1988

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1985
  store i8 39, ptr %271, align 1, !dbg !1985, !tbaa !872
  br label %272, !dbg !1985

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1696, metadata !DIExpression()), !dbg !1756
  %274 = icmp ult i64 %273, %268, !dbg !1989
  br i1 %274, label %275, label %277, !dbg !1992

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1989
  store i8 92, ptr %276, align 1, !dbg !1989, !tbaa !872
  br label %277, !dbg !1989

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1696, metadata !DIExpression()), !dbg !1756
  %279 = icmp ult i64 %278, %268, !dbg !1993
  br i1 %279, label %280, label %282, !dbg !1996

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1993
  store i8 39, ptr %281, align 1, !dbg !1993, !tbaa !872
  br label %282, !dbg !1993

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %433, !dbg !1997

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1998

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1723, metadata !DIExpression()), !dbg !1999
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2000
  %287 = load ptr, ptr %286, align 8, !dbg !2000, !tbaa !796
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2000
  %290 = load i16, ptr %289, align 2, !dbg !2000, !tbaa !904
  %291 = and i16 %290, 16384, !dbg !2000
  %292 = icmp ne i16 %291, 0, !dbg !2002
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1725, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1999
  br label %334, !dbg !2003

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %14, metadata !1781, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata ptr %14, metadata !1789, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 8, metadata !1793, metadata !DIExpression()), !dbg !2007
  store i64 0, ptr %14, align 8, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1723, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1999
  %294 = icmp eq i64 %152, -1, !dbg !2010
  br i1 %294, label %295, label %297, !dbg !2012

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1689, metadata !DIExpression()), !dbg !1756
  br label %297, !dbg !2014

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1689, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2015
  %299 = sub i64 %298, %128, !dbg !2016
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1733, metadata !DIExpression()), !dbg !1755
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2018

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1723, metadata !DIExpression()), !dbg !1999
  %302 = icmp ult i64 %128, %298, !dbg !2019
  br i1 %302, label %.preheader5, label %329, !dbg !2021

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2022

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1999
  br label %329, !dbg !2023

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1723, metadata !DIExpression()), !dbg !1999
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2025
  %308 = load i8, ptr %307, align 1, !dbg !2025, !tbaa !872
  %309 = icmp eq i8 %308, 0, !dbg !2021
  br i1 %309, label %.loopexit6, label %310, !dbg !2022

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1723, metadata !DIExpression()), !dbg !1999
  %312 = add i64 %311, %128, !dbg !2027
  %313 = icmp eq i64 %311, %299, !dbg !2019
  br i1 %313, label %.loopexit6, label %304, !dbg !2021, !llvm.loop !2028

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1734, metadata !DIExpression()), !dbg !2029
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2030
  %317 = and i1 %316, %109, !dbg !2030
  br i1 %317, label %.preheader3, label %325, !dbg !2030

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2031

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1734, metadata !DIExpression()), !dbg !2029
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2032
  %321 = load i8, ptr %320, align 1, !dbg !2032, !tbaa !872
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2034

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2035
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1734, metadata !DIExpression()), !dbg !2029
  %324 = icmp eq i64 %323, %300, !dbg !2036
  br i1 %324, label %.loopexit4, label %318, !dbg !2031, !llvm.loop !2037

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2039

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2039, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %326, metadata !2041, metadata !DIExpression()), !dbg !2049
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2051
  %328 = icmp ne i32 %327, 0, !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1725, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1723, metadata !DIExpression()), !dbg !1999
  br label %329, !dbg !2053

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2054

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1725, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1723, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2055
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1725, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1723, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2055
  call void @llvm.dbg.label(metadata !1747), !dbg !2056
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2057
  br label %624, !dbg !2057

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1852
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2059
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1725, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1723, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1689, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1717, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1852
  %338 = icmp ult i64 %336, 2, !dbg !2060
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2061
  br i1 %340, label %433, label %341, !dbg !2061

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1742, metadata !DIExpression()), !dbg !2063
  br label %343, !dbg !2064

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1756
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1843
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1713, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1696, metadata !DIExpression()), !dbg !1756
  br i1 %339, label %394, label %350, !dbg !2065

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2070

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1852
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2073
  br i1 %352, label %369, label %353, !dbg !2073

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2075
  br i1 %354, label %355, label %357, !dbg !2079

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2075
  store i8 39, ptr %356, align 1, !dbg !2075, !tbaa !872
  br label %357, !dbg !2075

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1696, metadata !DIExpression()), !dbg !1756
  %359 = icmp ult i64 %358, %129, !dbg !2080
  br i1 %359, label %360, label %362, !dbg !2083

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2080
  store i8 36, ptr %361, align 1, !dbg !2080, !tbaa !872
  br label %362, !dbg !2080

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1696, metadata !DIExpression()), !dbg !1756
  %364 = icmp ult i64 %363, %129, !dbg !2084
  br i1 %364, label %365, label %367, !dbg !2087

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2084
  store i8 39, ptr %366, align 1, !dbg !2084, !tbaa !872
  br label %367, !dbg !2084

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2087
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %369, !dbg !2088

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1756
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1696, metadata !DIExpression()), !dbg !1756
  %372 = icmp ult i64 %370, %129, !dbg !2089
  br i1 %372, label %373, label %375, !dbg !2092

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2089
  store i8 92, ptr %374, align 1, !dbg !2089, !tbaa !872
  br label %375, !dbg !2089

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1696, metadata !DIExpression()), !dbg !1756
  %377 = icmp ult i64 %376, %129, !dbg !2093
  br i1 %377, label %378, label %382, !dbg !2096

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2093
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2093
  store i8 %380, ptr %381, align 1, !dbg !2093, !tbaa !872
  br label %382, !dbg !2093

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1696, metadata !DIExpression()), !dbg !1756
  %384 = icmp ult i64 %383, %129, !dbg !2097
  br i1 %384, label %385, label %390, !dbg !2100

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2097
  %388 = or disjoint i8 %387, 48, !dbg !2097
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2097
  store i8 %388, ptr %389, align 1, !dbg !2097, !tbaa !872
  br label %390, !dbg !2097

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1696, metadata !DIExpression()), !dbg !1756
  %392 = and i8 %349, 7, !dbg !2101
  %393 = or disjoint i8 %392, 48, !dbg !2102
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1718, metadata !DIExpression()), !dbg !1852
  br label %401, !dbg !2103

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2104

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2105
  br i1 %396, label %397, label %399, !dbg !2110

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2105
  store i8 92, ptr %398, align 1, !dbg !2105, !tbaa !872
  br label %399, !dbg !2105

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1852
  br label %401, !dbg !2111

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1756
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1713, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1696, metadata !DIExpression()), !dbg !1756
  %407 = add i64 %346, 1, !dbg !2112
  %408 = icmp ugt i64 %342, %407, !dbg !2114
  br i1 %408, label %409, label %.loopexit2, !dbg !2115

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2116
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2116
  br i1 %411, label %423, label %412, !dbg !2116

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2119
  br i1 %413, label %414, label %416, !dbg !2123

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2119
  store i8 39, ptr %415, align 1, !dbg !2119, !tbaa !872
  br label %416, !dbg !2119

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2123
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1696, metadata !DIExpression()), !dbg !1756
  %418 = icmp ult i64 %417, %129, !dbg !2124
  br i1 %418, label %419, label %421, !dbg !2127

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2124
  store i8 39, ptr %420, align 1, !dbg !2124, !tbaa !872
  br label %421, !dbg !2124

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %423, !dbg !2128

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2129
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1696, metadata !DIExpression()), !dbg !1756
  %426 = icmp ult i64 %424, %129, !dbg !2130
  br i1 %426, label %427, label %429, !dbg !2133

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2130
  store i8 %406, ptr %428, align 1, !dbg !2130, !tbaa !872
  br label %429, !dbg !2130

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1711, metadata !DIExpression()), !dbg !1843
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2134
  %432 = load i8, ptr %431, align 1, !dbg !2134, !tbaa !872
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1718, metadata !DIExpression()), !dbg !1852
  br label %343, !dbg !2135, !llvm.loop !2136

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2139
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1756
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1760
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1843
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1852
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1713, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1689, metadata !DIExpression()), !dbg !1756
  br i1 %111, label %455, label %444, !dbg !2140

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
  br i1 %120, label %456, label %476, !dbg !2142

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2143

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
  %467 = lshr i8 %458, 5, !dbg !2144
  %468 = zext nneg i8 %467 to i64, !dbg !2144
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2145
  %470 = load i32, ptr %469, align 4, !dbg !2145, !tbaa !863
  %471 = and i8 %458, 31, !dbg !2146
  %472 = zext nneg i8 %471 to i32, !dbg !2146
  %473 = shl nuw i32 1, %472, !dbg !2147
  %474 = and i32 %470, %473, !dbg !2147
  %475 = icmp eq i32 %474, 0, !dbg !2147
  br i1 %475, label %476, label %487, !dbg !2148

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
  br i1 %153, label %487, label %523, !dbg !2149

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2139
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1756
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1760
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2150
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1852
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1689, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.label(metadata !1745), !dbg !2151
  br i1 %109, label %.loopexit8, label %497, !dbg !2152

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1852
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2154
  br i1 %498, label %515, label %499, !dbg !2154

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2156
  br i1 %500, label %501, label %503, !dbg !2160

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2156
  store i8 39, ptr %502, align 1, !dbg !2156, !tbaa !872
  br label %503, !dbg !2156

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1696, metadata !DIExpression()), !dbg !1756
  %505 = icmp ult i64 %504, %496, !dbg !2161
  br i1 %505, label %506, label %508, !dbg !2164

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2161
  store i8 36, ptr %507, align 1, !dbg !2161, !tbaa !872
  br label %508, !dbg !2161

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1696, metadata !DIExpression()), !dbg !1756
  %510 = icmp ult i64 %509, %496, !dbg !2165
  br i1 %510, label %511, label %513, !dbg !2168

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2165
  store i8 39, ptr %512, align 1, !dbg !2165, !tbaa !872
  br label %513, !dbg !2165

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %515, !dbg !2169

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1852
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1696, metadata !DIExpression()), !dbg !1756
  %518 = icmp ult i64 %516, %496, !dbg !2170
  br i1 %518, label %519, label %521, !dbg !2173

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2170
  store i8 92, ptr %520, align 1, !dbg !2170, !tbaa !872
  br label %521, !dbg !2170

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1689, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.label(metadata !1746), !dbg !2174
  br label %547, !dbg !2175

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1756
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1852
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1843
  br label %523, !dbg !2175

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2139
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1756
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1760
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2150
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2178
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1718, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1689, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.label(metadata !1746), !dbg !2174
  %534 = xor i1 %528, true, !dbg !2175
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2175
  br i1 %535, label %547, label %536, !dbg !2175

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2179
  br i1 %537, label %538, label %540, !dbg !2183

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2179
  store i8 39, ptr %539, align 1, !dbg !2179, !tbaa !872
  br label %540, !dbg !2179

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1696, metadata !DIExpression()), !dbg !1756
  %542 = icmp ult i64 %541, %533, !dbg !2184
  br i1 %542, label %543, label %545, !dbg !2187

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2184
  store i8 39, ptr %544, align 1, !dbg !2184, !tbaa !872
  br label %545, !dbg !2184

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1756
  br label %547, !dbg !2188

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1852
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1696, metadata !DIExpression()), !dbg !1756
  %557 = icmp ult i64 %555, %548, !dbg !2189
  br i1 %557, label %558, label %560, !dbg !2192

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2189
  store i8 %549, ptr %559, align 1, !dbg !2189, !tbaa !872
  br label %560, !dbg !2189

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1696, metadata !DIExpression()), !dbg !1756
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1756
  br label %563, !dbg !2194

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2139
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1756
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1760
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2150
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1711, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1705, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1689, metadata !DIExpression()), !dbg !1756
  %572 = add i64 %570, 1, !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1711, metadata !DIExpression()), !dbg !1843
  br label %121, !dbg !2196, !llvm.loop !2197

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1831
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1760
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1687, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1703, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1702, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1697, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1696, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1689, metadata !DIExpression()), !dbg !1756
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2199
  %575 = xor i1 %109, true, !dbg !2201
  %576 = or i1 %574, %575, !dbg !2201
  %577 = or i1 %576, %110, !dbg !2201
  br i1 %577, label %578, label %.loopexit13, !dbg !2201

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2202
  %580 = xor i1 %.lcssa38, true, !dbg !2202
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2202
  br i1 %581, label %589, label %582, !dbg !2202

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2204

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1760
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2206
  br label %638, !dbg !2208

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2209
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2211
  br i1 %588, label %27, label %589, !dbg !2211

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1756
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1831
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2212
  %592 = or i1 %591, %590, !dbg !2214
  br i1 %592, label %608, label %593, !dbg !2214

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1698, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1696, metadata !DIExpression()), !dbg !1756
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2215, !tbaa !872
  %595 = icmp eq i8 %594, 0, !dbg !2218
  br i1 %595, label %608, label %.preheader, !dbg !2218

.preheader:                                       ; preds = %593
  br label %596, !dbg !2218

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1698, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1696, metadata !DIExpression()), !dbg !1756
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2219
  br i1 %600, label %601, label %603, !dbg !2222

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2219
  store i8 %597, ptr %602, align 1, !dbg !2219, !tbaa !872
  br label %603, !dbg !2219

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2222
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1696, metadata !DIExpression()), !dbg !1756
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1698, metadata !DIExpression()), !dbg !1756
  %606 = load i8, ptr %605, align 1, !dbg !2215, !tbaa !872
  %607 = icmp eq i8 %606, 0, !dbg !2218
  br i1 %607, label %.loopexit, label %596, !dbg !2218, !llvm.loop !2224

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2222
  br label %608, !dbg !2226

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1696, metadata !DIExpression()), !dbg !1756
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2226
  br i1 %610, label %611, label %638, !dbg !2228

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2229
  store i8 0, ptr %612, align 1, !dbg !2230, !tbaa !872
  br label %638, !dbg !2229

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1747), !dbg !2056
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2231
  br i1 %614, label %624, label %630, !dbg !2057

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1852
  br label %615, !dbg !2231

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2231

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2231

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1747), !dbg !2056
  %622 = icmp eq i32 %616, 2, !dbg !2231
  %623 = select i1 %619, i32 4, i32 2, !dbg !2057
  br i1 %622, label %624, label %630, !dbg !2057

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2057

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1858
  br label %630, !dbg !2232

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1690, metadata !DIExpression()), !dbg !1756
  %636 = and i32 %5, -3, !dbg !2232
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2233
  br label %638, !dbg !2234

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2235
}

; Function Attrs: nounwind
declare !dbg !2236 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2239 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2241 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2245, metadata !DIExpression()), !dbg !2248
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()), !dbg !2248
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr %0, metadata !2249, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %1, metadata !2254, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr null, metadata !2255, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !2262
  %4 = icmp eq ptr %2, null, !dbg !2264
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %5, metadata !2257, metadata !DIExpression()), !dbg !2262
  %6 = tail call ptr @__errno_location() #42, !dbg !2265
  %7 = load i32, ptr %6, align 4, !dbg !2265, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %7, metadata !2258, metadata !DIExpression()), !dbg !2262
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2266
  %9 = load i32, ptr %8, align 4, !dbg !2266, !tbaa !1630
  %10 = or i32 %9, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %10, metadata !2259, metadata !DIExpression()), !dbg !2262
  %11 = load i32, ptr %5, align 8, !dbg !2268, !tbaa !1580
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2269
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2270
  %14 = load ptr, ptr %13, align 8, !dbg !2270, !tbaa !1651
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2271
  %16 = load ptr, ptr %15, align 8, !dbg !2271, !tbaa !1654
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2272
  %18 = add i64 %17, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %18, metadata !2260, metadata !DIExpression()), !dbg !2262
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %19, metadata !2261, metadata !DIExpression()), !dbg !2262
  %20 = load i32, ptr %5, align 8, !dbg !2275, !tbaa !1580
  %21 = load ptr, ptr %13, align 8, !dbg !2276, !tbaa !1651
  %22 = load ptr, ptr %15, align 8, !dbg !2277, !tbaa !1654
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2278
  store i32 %7, ptr %6, align 4, !dbg !2279, !tbaa !863
  ret ptr %19, !dbg !2280
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2249, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2254, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2255, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2256, metadata !DIExpression()), !dbg !2281
  %5 = icmp eq ptr %3, null, !dbg !2282
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2282
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2257, metadata !DIExpression()), !dbg !2281
  %7 = tail call ptr @__errno_location() #42, !dbg !2283
  %8 = load i32, ptr %7, align 4, !dbg !2283, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2258, metadata !DIExpression()), !dbg !2281
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2284
  %10 = load i32, ptr %9, align 4, !dbg !2284, !tbaa !1630
  %11 = icmp eq ptr %2, null, !dbg !2285
  %12 = zext i1 %11 to i32, !dbg !2285
  %13 = or i32 %10, %12, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2259, metadata !DIExpression()), !dbg !2281
  %14 = load i32, ptr %6, align 8, !dbg !2287, !tbaa !1580
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2288
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2289
  %17 = load ptr, ptr %16, align 8, !dbg !2289, !tbaa !1651
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2290
  %19 = load ptr, ptr %18, align 8, !dbg !2290, !tbaa !1654
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2291
  %21 = add i64 %20, 1, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2260, metadata !DIExpression()), !dbg !2281
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2293
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2261, metadata !DIExpression()), !dbg !2281
  %23 = load i32, ptr %6, align 8, !dbg !2294, !tbaa !1580
  %24 = load ptr, ptr %16, align 8, !dbg !2295, !tbaa !1651
  %25 = load ptr, ptr %18, align 8, !dbg !2296, !tbaa !1654
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2297
  store i32 %8, ptr %7, align 4, !dbg !2298, !tbaa !863
  br i1 %11, label %28, label %27, !dbg !2299

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2300, !tbaa !2302
  br label %28, !dbg !2303

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2305 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2310, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2307, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2308, metadata !DIExpression()), !dbg !2312
  %2 = load i32, ptr @nslots, align 4, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2308, metadata !DIExpression()), !dbg !2312
  %3 = icmp sgt i32 %2, 1, !dbg !2313
  br i1 %3, label %4, label %6, !dbg !2315

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2313
  br label %10, !dbg !2315

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2316

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2316
  %8 = load ptr, ptr %7, align 8, !dbg !2316, !tbaa !2318
  %9 = icmp eq ptr %8, @slot0, !dbg !2320
  br i1 %9, label %17, label %16, !dbg !2321

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2308, metadata !DIExpression()), !dbg !2312
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2322
  %13 = load ptr, ptr %12, align 8, !dbg !2322, !tbaa !2318
  tail call void @free(ptr noundef %13) #39, !dbg !2323
  %14 = add nuw nsw i64 %11, 1, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2308, metadata !DIExpression()), !dbg !2312
  %15 = icmp eq i64 %14, %5, !dbg !2313
  br i1 %15, label %.loopexit, label %10, !dbg !2315, !llvm.loop !2325

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2327
  store i64 256, ptr @slotvec0, align 8, !dbg !2329, !tbaa !2330
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2331, !tbaa !2318
  br label %17, !dbg !2332

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2333
  br i1 %18, label %20, label %19, !dbg !2335

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2336
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2338, !tbaa !796
  br label %20, !dbg !2339

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2340, !tbaa !863
  ret void, !dbg !2341
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2342 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2344, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2345, metadata !DIExpression()), !dbg !2346
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2347
  ret ptr %3, !dbg !2348
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2349 {
  %5 = alloca i64, align 8, !DIAssignID !2369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2363, metadata !DIExpression(), metadata !2369, metadata ptr %5, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2353, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2354, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2355, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2356, metadata !DIExpression()), !dbg !2371
  %6 = tail call ptr @__errno_location() #42, !dbg !2372
  %7 = load i32, ptr %6, align 4, !dbg !2372, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2357, metadata !DIExpression()), !dbg !2371
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2373, !tbaa !796
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2358, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2359, metadata !DIExpression()), !dbg !2371
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2374
  br i1 %9, label %10, label %11, !dbg !2374

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2376
  unreachable, !dbg !2376

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2377, !tbaa !863
  %13 = icmp sgt i32 %12, %0, !dbg !2378
  br i1 %13, label %32, label %14, !dbg !2379

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2380
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2381
  %16 = sext i32 %12 to i64, !dbg !2382
  store i64 %16, ptr %5, align 8, !dbg !2383, !tbaa !2302, !DIAssignID !2384
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2363, metadata !DIExpression(), metadata !2384, metadata ptr %5, metadata !DIExpression()), !dbg !2370
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2385
  %18 = add nuw nsw i32 %0, 1, !dbg !2386
  %19 = sub i32 %18, %12, !dbg !2387
  %20 = sext i32 %19 to i64, !dbg !2388
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2389
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2358, metadata !DIExpression()), !dbg !2371
  store ptr %21, ptr @slotvec, align 8, !dbg !2390, !tbaa !796
  br i1 %15, label %22, label %23, !dbg !2391

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2392, !tbaa.struct !2394
  br label %23, !dbg !2395

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2396, !tbaa !863
  %25 = sext i32 %24 to i64, !dbg !2397
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2397
  %27 = load i64, ptr %5, align 8, !dbg !2398, !tbaa !2302
  %28 = sub nsw i64 %27, %25, !dbg !2399
  %29 = shl i64 %28, 4, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %26, metadata !1789, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %29, metadata !1793, metadata !DIExpression()), !dbg !2401
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2403
  %30 = load i64, ptr %5, align 8, !dbg !2404, !tbaa !2302
  %31 = trunc i64 %30 to i32, !dbg !2404
  store i32 %31, ptr @nslots, align 4, !dbg !2405, !tbaa !863
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2406
  br label %32, !dbg !2407

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2358, metadata !DIExpression()), !dbg !2371
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2408
  %36 = load i64, ptr %35, align 8, !dbg !2409, !tbaa !2330
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2364, metadata !DIExpression()), !dbg !2410
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2411
  %38 = load ptr, ptr %37, align 8, !dbg !2411, !tbaa !2318
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2366, metadata !DIExpression()), !dbg !2410
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2412
  %40 = load i32, ptr %39, align 4, !dbg !2412, !tbaa !1630
  %41 = or i32 %40, 1, !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2367, metadata !DIExpression()), !dbg !2410
  %42 = load i32, ptr %3, align 8, !dbg !2414, !tbaa !1580
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2415
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2416
  %45 = load ptr, ptr %44, align 8, !dbg !2416, !tbaa !1651
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2417
  %47 = load ptr, ptr %46, align 8, !dbg !2417, !tbaa !1654
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2368, metadata !DIExpression()), !dbg !2410
  %49 = icmp ugt i64 %36, %48, !dbg !2419
  br i1 %49, label %60, label %50, !dbg !2421

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2364, metadata !DIExpression()), !dbg !2410
  store i64 %51, ptr %35, align 8, !dbg !2424, !tbaa !2330
  %52 = icmp eq ptr %38, @slot0, !dbg !2425
  br i1 %52, label %54, label %53, !dbg !2427

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2428
  br label %54, !dbg !2428

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2429
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2366, metadata !DIExpression()), !dbg !2410
  store ptr %55, ptr %37, align 8, !dbg !2430, !tbaa !2318
  %56 = load i32, ptr %3, align 8, !dbg !2431, !tbaa !1580
  %57 = load ptr, ptr %44, align 8, !dbg !2432, !tbaa !1651
  %58 = load ptr, ptr %46, align 8, !dbg !2433, !tbaa !1654
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2434
  br label %60, !dbg !2435

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2410
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2366, metadata !DIExpression()), !dbg !2410
  store i32 %7, ptr %6, align 4, !dbg !2436, !tbaa !863
  ret ptr %61, !dbg !2437
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2438 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2442, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2443, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2444, metadata !DIExpression()), !dbg !2445
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2446
  ret ptr %4, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata ptr %0, metadata !2345, metadata !DIExpression()), !dbg !2452
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2454
  ret ptr %2, !dbg !2455
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata ptr %0, metadata !2443, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %1, metadata !2444, metadata !DIExpression()), !dbg !2463
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2465
  ret ptr %3, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2467 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2475
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2474, metadata !DIExpression(), metadata !2475, metadata ptr %4, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2471, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2472, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2487, metadata !DIExpression()), !dbg !2490
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2490, !alias.scope !2478, !DIAssignID !2491
  call void @llvm.dbg.assign(metadata i8 0, metadata !2474, metadata !DIExpression(), metadata !2491, metadata ptr %4, metadata !DIExpression()), !dbg !2476
  %5 = icmp eq i32 %1, 10, !dbg !2492
  br i1 %5, label %6, label %7, !dbg !2494

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2495, !noalias !2478
  unreachable, !dbg !2495

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2496, !tbaa !1580, !alias.scope !2478, !DIAssignID !2497
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2474, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2497, metadata ptr %4, metadata !DIExpression()), !dbg !2476
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2499
  ret ptr %8, !dbg !2500
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2501 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2509, metadata !DIExpression(), metadata !2510, metadata ptr %5, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2506, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2487, metadata !DIExpression()), !dbg !2519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2519, !alias.scope !2513, !DIAssignID !2520
  call void @llvm.dbg.assign(metadata i8 0, metadata !2509, metadata !DIExpression(), metadata !2520, metadata ptr %5, metadata !DIExpression()), !dbg !2511
  %6 = icmp eq i32 %1, 10, !dbg !2521
  br i1 %6, label %7, label %8, !dbg !2522

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2523, !noalias !2513
  unreachable, !dbg !2523

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2524, !tbaa !1580, !alias.scope !2513, !DIAssignID !2525
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2509, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2525, metadata ptr %5, metadata !DIExpression()), !dbg !2511
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2527
  ret ptr %9, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2529 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2535
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2474, metadata !DIExpression(), metadata !2535, metadata ptr %3, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2471, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %1, metadata !2473, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2539
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2487, metadata !DIExpression()), !dbg !2546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2546, !alias.scope !2540, !DIAssignID !2547
  call void @llvm.dbg.assign(metadata i8 0, metadata !2474, metadata !DIExpression(), metadata !2547, metadata ptr %3, metadata !DIExpression()), !dbg !2537
  %4 = icmp eq i32 %0, 10, !dbg !2548
  br i1 %4, label %5, label %6, !dbg !2549

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2550, !noalias !2540
  unreachable, !dbg !2550

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2551, !tbaa !1580, !alias.scope !2540, !DIAssignID !2552
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2474, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2552, metadata ptr %3, metadata !DIExpression()), !dbg !2537
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2553
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2554
  ret ptr %7, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2556 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2563
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2561, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2509, metadata !DIExpression(), metadata !2563, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2505, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %2, metadata !2508, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2487, metadata !DIExpression()), !dbg !2574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2574, !alias.scope !2568, !DIAssignID !2575
  call void @llvm.dbg.assign(metadata i8 0, metadata !2509, metadata !DIExpression(), metadata !2575, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  %5 = icmp eq i32 %0, 10, !dbg !2576
  br i1 %5, label %6, label %7, !dbg !2577

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2578, !noalias !2568
  unreachable, !dbg !2578

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2579, !tbaa !1580, !alias.scope !2568, !DIAssignID !2580
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2509, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2580, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2582
  ret ptr %8, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2584 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2592
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2592, metadata ptr %4, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2595, !tbaa.struct !2596, !DIAssignID !2597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2597, metadata ptr %4, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1598, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1600, metadata !DIExpression()), !dbg !2598
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2600
  %6 = lshr i8 %2, 5, !dbg !2601
  %7 = zext nneg i8 %6 to i64, !dbg !2601
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1601, metadata !DIExpression()), !dbg !2598
  %9 = and i8 %2, 31, !dbg !2603
  %10 = zext nneg i8 %9 to i32, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1603, metadata !DIExpression()), !dbg !2598
  %11 = load i32, ptr %8, align 4, !dbg !2604, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1604, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2598
  %13 = and i32 %12, 1, !dbg !2606
  %14 = xor i32 %13, 1, !dbg !2606
  %15 = shl nuw i32 %14, %10, !dbg !2607
  %16 = xor i32 %15, %11, !dbg !2608
  store i32 %16, ptr %8, align 4, !dbg !2608, !tbaa !863
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2610
  ret ptr %17, !dbg !2611
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2612 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2618
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2618, metadata ptr %3, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 -1, metadata !2589, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 %1, metadata !2590, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2623, !tbaa.struct !2596, !DIAssignID !2624
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2624, metadata ptr %3, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !1597, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1598, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1600, metadata !DIExpression()), !dbg !2625
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2627
  %5 = lshr i8 %1, 5, !dbg !2628
  %6 = zext nneg i8 %5 to i64, !dbg !2628
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %7, metadata !1601, metadata !DIExpression()), !dbg !2625
  %8 = and i8 %1, 31, !dbg !2630
  %9 = zext nneg i8 %8 to i32, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %9, metadata !1603, metadata !DIExpression()), !dbg !2625
  %10 = load i32, ptr %7, align 4, !dbg !2631, !tbaa !863
  %11 = lshr i32 %10, %9, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %11, metadata !1604, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2625
  %12 = and i32 %11, 1, !dbg !2633
  %13 = xor i32 %12, 1, !dbg !2633
  %14 = shl nuw i32 %13, %9, !dbg !2634
  %15 = xor i32 %14, %10, !dbg !2635
  store i32 %15, ptr %7, align 4, !dbg !2635, !tbaa !863
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2637
  ret ptr %16, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2639 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2642
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 58, metadata !2617, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2642, metadata ptr %2, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 -1, metadata !2589, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 58, metadata !2590, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2649, !tbaa.struct !2596, !DIAssignID !2650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2650, metadata ptr %2, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %2, metadata !1597, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 58, metadata !1598, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2651
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2653
  call void @llvm.dbg.value(metadata ptr %3, metadata !1601, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 26, metadata !1603, metadata !DIExpression()), !dbg !2651
  %4 = load i32, ptr %3, align 4, !dbg !2654, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %4, metadata !1604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2651
  %5 = or i32 %4, 67108864, !dbg !2655
  store i32 %5, ptr %3, align 4, !dbg !2655, !tbaa !863
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2656
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2657
  ret ptr %6, !dbg !2658
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2659 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2663
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2663, metadata ptr %3, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 58, metadata !2590, metadata !DIExpression()), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2668, !tbaa.struct !2596, !DIAssignID !2669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2669, metadata ptr %3, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %3, metadata !1597, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 58, metadata !1598, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2670
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %4, metadata !1601, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 26, metadata !1603, metadata !DIExpression()), !dbg !2670
  %5 = load i32, ptr %4, align 4, !dbg !2673, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %5, metadata !1604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2670
  %6 = or i32 %5, 67108864, !dbg !2674
  store i32 %6, ptr %4, align 4, !dbg !2674, !tbaa !863
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2675
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2676
  ret ptr %7, !dbg !2677
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2678 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2683, metadata !DIExpression(), metadata !2684, metadata ptr %4, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2487, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2680, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2681, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2689
  %5 = icmp eq i32 %1, 10, !dbg !2690
  br i1 %5, label %6, label %7, !dbg !2691

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2692, !noalias !2693
  unreachable, !dbg !2692

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2689
  store i32 %1, ptr %4, align 8, !dbg !2696, !tbaa.struct !2596, !DIAssignID !2697
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2696
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2683, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2697, metadata ptr %4, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2683, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2698, metadata ptr %8, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1598, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1600, metadata !DIExpression()), !dbg !2699
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1601, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1603, metadata !DIExpression()), !dbg !2699
  %10 = load i32, ptr %9, align 4, !dbg !2702, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2699
  %11 = or i32 %10, 67108864, !dbg !2703
  store i32 %11, ptr %9, align 4, !dbg !2703, !tbaa !863, !DIAssignID !2704
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2683, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2704, metadata ptr %9, metadata !DIExpression()), !dbg !2685
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2705
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2706
  ret ptr %12, !dbg !2707
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2708 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2716
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()), !dbg !2717
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2713, metadata !DIExpression()), !dbg !2717
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2714, metadata !DIExpression()), !dbg !2717
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2716, metadata ptr %5, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %1, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %2, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %3, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 -1, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2731, !tbaa.struct !2596, !DIAssignID !2732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2732, metadata ptr %5, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2733, metadata ptr undef, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %2, metadata !1639, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !2734
  store i32 10, ptr %5, align 8, !dbg !2736, !tbaa !1580, !DIAssignID !2737
  call void @llvm.dbg.assign(metadata i32 10, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2737, metadata ptr %5, metadata !DIExpression()), !dbg !2728
  %6 = icmp ne ptr %1, null, !dbg !2738
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2739
  br i1 %8, label %10, label %9, !dbg !2739

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2740
  unreachable, !dbg !2740

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2741
  store ptr %1, ptr %11, align 8, !dbg !2742, !tbaa !1651, !DIAssignID !2743
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2743, metadata ptr %11, metadata !DIExpression()), !dbg !2728
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2744
  store ptr %2, ptr %12, align 8, !dbg !2745, !tbaa !1654, !DIAssignID !2746
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2746, metadata ptr %12, metadata !DIExpression()), !dbg !2728
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2747
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2748
  ret ptr %13, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2719 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2750, metadata ptr %6, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2724, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2725, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2726, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2727, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2753, !tbaa.struct !2596, !DIAssignID !2754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2754, metadata ptr %6, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2755, metadata ptr undef, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %6, metadata !1637, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !1638, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %2, metadata !1639, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %6, metadata !1637, metadata !DIExpression()), !dbg !2756
  store i32 10, ptr %6, align 8, !dbg !2758, !tbaa !1580, !DIAssignID !2759
  call void @llvm.dbg.assign(metadata i32 10, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2759, metadata ptr %6, metadata !DIExpression()), !dbg !2751
  %7 = icmp ne ptr %1, null, !dbg !2760
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2761
  br i1 %9, label %11, label %10, !dbg !2761

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2762
  unreachable, !dbg !2762

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2763
  store ptr %1, ptr %12, align 8, !dbg !2764, !tbaa !1651, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2765, metadata ptr %12, metadata !DIExpression()), !dbg !2751
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2766
  store ptr %2, ptr %13, align 8, !dbg !2767, !tbaa !1654, !DIAssignID !2768
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2768, metadata ptr %13, metadata !DIExpression()), !dbg !2751
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2769
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2770
  ret ptr %14, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2772 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2779
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 0, metadata !2712, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %0, metadata !2713, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %1, metadata !2714, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %2, metadata !2715, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2779, metadata ptr %4, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %2, metadata !2726, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 -1, metadata !2727, metadata !DIExpression()), !dbg !2783
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2786, !tbaa.struct !2596, !DIAssignID !2787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2787, metadata ptr %4, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2788, metadata ptr undef, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %4, metadata !1637, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %0, metadata !1638, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %1, metadata !1639, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %4, metadata !1637, metadata !DIExpression()), !dbg !2789
  store i32 10, ptr %4, align 8, !dbg !2791, !tbaa !1580, !DIAssignID !2792
  call void @llvm.dbg.assign(metadata i32 10, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2792, metadata ptr %4, metadata !DIExpression()), !dbg !2783
  %5 = icmp ne ptr %0, null, !dbg !2793
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2794
  br i1 %7, label %9, label %8, !dbg !2794

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2795
  unreachable, !dbg !2795

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2796
  store ptr %0, ptr %10, align 8, !dbg !2797, !tbaa !1651, !DIAssignID !2798
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2798, metadata ptr %10, metadata !DIExpression()), !dbg !2783
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2799
  store ptr %1, ptr %11, align 8, !dbg !2800, !tbaa !1654, !DIAssignID !2801
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2801, metadata ptr %11, metadata !DIExpression()), !dbg !2783
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2803
  ret ptr %12, !dbg !2804
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2805 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2813
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2809, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2810, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2811, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2813, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %2, metadata !2726, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %3, metadata !2727, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2818, !tbaa.struct !2596, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(), metadata !2819, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2820, metadata ptr undef, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %0, metadata !1638, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !1639, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !2821
  store i32 10, ptr %5, align 8, !dbg !2823, !tbaa !1580, !DIAssignID !2824
  call void @llvm.dbg.assign(metadata i32 10, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2824, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  %6 = icmp ne ptr %0, null, !dbg !2825
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2826
  br i1 %8, label %10, label %9, !dbg !2826

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2827
  unreachable, !dbg !2827

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2828
  store ptr %0, ptr %11, align 8, !dbg !2829, !tbaa !1651, !DIAssignID !2830
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2830, metadata ptr %11, metadata !DIExpression()), !dbg !2815
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2831
  store ptr %1, ptr %12, align 8, !dbg !2832, !tbaa !1654, !DIAssignID !2833
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2718, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2833, metadata ptr %12, metadata !DIExpression()), !dbg !2815
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2835
  ret ptr %13, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2837 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2842, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2843, metadata !DIExpression()), !dbg !2844
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2845
  ret ptr %4, !dbg !2846
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2851, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2843, metadata !DIExpression()), !dbg !2854
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2856
  ret ptr %3, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2858 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2862, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata ptr %1, metadata !2842, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()), !dbg !2865
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2867
  ret ptr %3, !dbg !2868
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2869 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2862, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()), !dbg !2877
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2879
  ret ptr %2, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2921, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2924, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2925, metadata !DIExpression()), !dbg !2926
  %7 = icmp eq ptr %1, null, !dbg !2927
  br i1 %7, label %10, label %8, !dbg !2929

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2930
  br label %12, !dbg !2930

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #39, !dbg !2931
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #39, !dbg !2932
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2932
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2933
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #39, !dbg !2934
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #39, !dbg !2934
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !2935
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
  ], !dbg !2936

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #39, !dbg !2937
  %21 = load ptr, ptr %4, align 8, !dbg !2937, !tbaa !796
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2937
  br label %147, !dbg !2939

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #39, !dbg !2940
  %25 = load ptr, ptr %4, align 8, !dbg !2940, !tbaa !796
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2940
  %27 = load ptr, ptr %26, align 8, !dbg !2940, !tbaa !796
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2940
  br label %147, !dbg !2941

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #39, !dbg !2942
  %31 = load ptr, ptr %4, align 8, !dbg !2942, !tbaa !796
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2942
  %33 = load ptr, ptr %32, align 8, !dbg !2942, !tbaa !796
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2942
  %35 = load ptr, ptr %34, align 8, !dbg !2942, !tbaa !796
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2942
  br label %147, !dbg !2943

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #39, !dbg !2944
  %39 = load ptr, ptr %4, align 8, !dbg !2944, !tbaa !796
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2944
  %41 = load ptr, ptr %40, align 8, !dbg !2944, !tbaa !796
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2944
  %43 = load ptr, ptr %42, align 8, !dbg !2944, !tbaa !796
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2944
  %45 = load ptr, ptr %44, align 8, !dbg !2944, !tbaa !796
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2944
  br label %147, !dbg !2945

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #39, !dbg !2946
  %49 = load ptr, ptr %4, align 8, !dbg !2946, !tbaa !796
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2946
  %51 = load ptr, ptr %50, align 8, !dbg !2946, !tbaa !796
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2946
  %53 = load ptr, ptr %52, align 8, !dbg !2946, !tbaa !796
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2946
  %55 = load ptr, ptr %54, align 8, !dbg !2946, !tbaa !796
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2946
  %57 = load ptr, ptr %56, align 8, !dbg !2946, !tbaa !796
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2946
  br label %147, !dbg !2947

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #39, !dbg !2948
  %61 = load ptr, ptr %4, align 8, !dbg !2948, !tbaa !796
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2948
  %63 = load ptr, ptr %62, align 8, !dbg !2948, !tbaa !796
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2948
  %65 = load ptr, ptr %64, align 8, !dbg !2948, !tbaa !796
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2948
  %67 = load ptr, ptr %66, align 8, !dbg !2948, !tbaa !796
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2948
  %69 = load ptr, ptr %68, align 8, !dbg !2948, !tbaa !796
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2948
  %71 = load ptr, ptr %70, align 8, !dbg !2948, !tbaa !796
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2948
  br label %147, !dbg !2949

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #39, !dbg !2950
  %75 = load ptr, ptr %4, align 8, !dbg !2950, !tbaa !796
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2950
  %77 = load ptr, ptr %76, align 8, !dbg !2950, !tbaa !796
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2950
  %79 = load ptr, ptr %78, align 8, !dbg !2950, !tbaa !796
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2950
  %81 = load ptr, ptr %80, align 8, !dbg !2950, !tbaa !796
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2950
  %83 = load ptr, ptr %82, align 8, !dbg !2950, !tbaa !796
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2950
  %85 = load ptr, ptr %84, align 8, !dbg !2950, !tbaa !796
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2950
  %87 = load ptr, ptr %86, align 8, !dbg !2950, !tbaa !796
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2950
  br label %147, !dbg !2951

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #39, !dbg !2952
  %91 = load ptr, ptr %4, align 8, !dbg !2952, !tbaa !796
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2952
  %93 = load ptr, ptr %92, align 8, !dbg !2952, !tbaa !796
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2952
  %95 = load ptr, ptr %94, align 8, !dbg !2952, !tbaa !796
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2952
  %97 = load ptr, ptr %96, align 8, !dbg !2952, !tbaa !796
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2952
  %99 = load ptr, ptr %98, align 8, !dbg !2952, !tbaa !796
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2952
  %101 = load ptr, ptr %100, align 8, !dbg !2952, !tbaa !796
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2952
  %103 = load ptr, ptr %102, align 8, !dbg !2952, !tbaa !796
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2952
  %105 = load ptr, ptr %104, align 8, !dbg !2952, !tbaa !796
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2952
  br label %147, !dbg !2953

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #39, !dbg !2954
  %109 = load ptr, ptr %4, align 8, !dbg !2954, !tbaa !796
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2954
  %111 = load ptr, ptr %110, align 8, !dbg !2954, !tbaa !796
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2954
  %113 = load ptr, ptr %112, align 8, !dbg !2954, !tbaa !796
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2954
  %115 = load ptr, ptr %114, align 8, !dbg !2954, !tbaa !796
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2954
  %117 = load ptr, ptr %116, align 8, !dbg !2954, !tbaa !796
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2954
  %119 = load ptr, ptr %118, align 8, !dbg !2954, !tbaa !796
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2954
  %121 = load ptr, ptr %120, align 8, !dbg !2954, !tbaa !796
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2954
  %123 = load ptr, ptr %122, align 8, !dbg !2954, !tbaa !796
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2954
  %125 = load ptr, ptr %124, align 8, !dbg !2954, !tbaa !796
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2954
  br label %147, !dbg !2955

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #39, !dbg !2956
  %129 = load ptr, ptr %4, align 8, !dbg !2956, !tbaa !796
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2956
  %131 = load ptr, ptr %130, align 8, !dbg !2956, !tbaa !796
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2956
  %133 = load ptr, ptr %132, align 8, !dbg !2956, !tbaa !796
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2956
  %135 = load ptr, ptr %134, align 8, !dbg !2956, !tbaa !796
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2956
  %137 = load ptr, ptr %136, align 8, !dbg !2956, !tbaa !796
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2956
  %139 = load ptr, ptr %138, align 8, !dbg !2956, !tbaa !796
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2956
  %141 = load ptr, ptr %140, align 8, !dbg !2956, !tbaa !796
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2956
  %143 = load ptr, ptr %142, align 8, !dbg !2956, !tbaa !796
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2956
  %145 = load ptr, ptr %144, align 8, !dbg !2956, !tbaa !796
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2956
  br label %147, !dbg !2957

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2958
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2959 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2964, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2966, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2968, metadata !DIExpression()), !dbg !2969
  br label %6, !dbg !2970

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2968, metadata !DIExpression()), !dbg !2969
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2973
  %9 = load ptr, ptr %8, align 8, !dbg !2973, !tbaa !796
  %10 = icmp eq ptr %9, null, !dbg !2975
  %11 = add i64 %7, 1, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2968, metadata !DIExpression()), !dbg !2969
  br i1 %10, label %12, label %6, !dbg !2975, !llvm.loop !2977

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2972
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2979
  ret void, !dbg !2980
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2981 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3003, metadata ptr %6, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2996, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2997, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2998, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2999, metadata !DIExpression(DW_OP_deref)), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3000, metadata !DIExpression()), !dbg !3004
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3000, metadata !DIExpression()), !dbg !3004
  %10 = icmp sgt i32 %9, -1, !dbg !3006
  br i1 %10, label %18, label %11, !dbg !3006

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3006
  store i32 %12, ptr %7, align 8, !dbg !3006
  %13 = icmp ult i32 %9, -7, !dbg !3006
  br i1 %13, label %14, label %18, !dbg !3006

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3006
  %16 = sext i32 %9 to i64, !dbg !3006
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3006
  br label %22, !dbg !3006

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3006
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3006
  store ptr %21, ptr %4, align 8, !dbg !3006
  br label %22, !dbg !3006

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3006
  %25 = load ptr, ptr %24, align 8, !dbg !3006
  store ptr %25, ptr %6, align 8, !dbg !3009, !tbaa !796
  %26 = icmp eq ptr %25, null, !dbg !3010
  br i1 %26, label %197, label %27, !dbg !3011

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3000, metadata !DIExpression()), !dbg !3004
  %28 = icmp sgt i32 %23, -1, !dbg !3006
  br i1 %28, label %36, label %29, !dbg !3006

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3006
  store i32 %30, ptr %7, align 8, !dbg !3006
  %31 = icmp ult i32 %23, -7, !dbg !3006
  br i1 %31, label %32, label %36, !dbg !3006

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3006
  %34 = sext i32 %23 to i64, !dbg !3006
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3006
  br label %40, !dbg !3006

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3006
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3006
  store ptr %39, ptr %4, align 8, !dbg !3006
  br label %40, !dbg !3006

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3006
  %43 = load ptr, ptr %42, align 8, !dbg !3006
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3012
  store ptr %43, ptr %44, align 8, !dbg !3009, !tbaa !796
  %45 = icmp eq ptr %43, null, !dbg !3010
  br i1 %45, label %197, label %46, !dbg !3011

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3000, metadata !DIExpression()), !dbg !3004
  %47 = icmp sgt i32 %41, -1, !dbg !3006
  br i1 %47, label %55, label %48, !dbg !3006

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3006
  store i32 %49, ptr %7, align 8, !dbg !3006
  %50 = icmp ult i32 %41, -7, !dbg !3006
  br i1 %50, label %51, label %55, !dbg !3006

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3006
  %53 = sext i32 %41 to i64, !dbg !3006
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3006
  br label %59, !dbg !3006

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3006
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3006
  store ptr %58, ptr %4, align 8, !dbg !3006
  br label %59, !dbg !3006

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3006
  %62 = load ptr, ptr %61, align 8, !dbg !3006
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3012
  store ptr %62, ptr %63, align 8, !dbg !3009, !tbaa !796
  %64 = icmp eq ptr %62, null, !dbg !3010
  br i1 %64, label %197, label %65, !dbg !3011

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3000, metadata !DIExpression()), !dbg !3004
  %66 = icmp sgt i32 %60, -1, !dbg !3006
  br i1 %66, label %74, label %67, !dbg !3006

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3006
  store i32 %68, ptr %7, align 8, !dbg !3006
  %69 = icmp ult i32 %60, -7, !dbg !3006
  br i1 %69, label %70, label %74, !dbg !3006

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3006
  %72 = sext i32 %60 to i64, !dbg !3006
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3006
  br label %78, !dbg !3006

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3006
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3006
  store ptr %77, ptr %4, align 8, !dbg !3006
  br label %78, !dbg !3006

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3006
  %81 = load ptr, ptr %80, align 8, !dbg !3006
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3012
  store ptr %81, ptr %82, align 8, !dbg !3009, !tbaa !796
  %83 = icmp eq ptr %81, null, !dbg !3010
  br i1 %83, label %197, label %84, !dbg !3011

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3000, metadata !DIExpression()), !dbg !3004
  %85 = icmp sgt i32 %79, -1, !dbg !3006
  br i1 %85, label %93, label %86, !dbg !3006

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3006
  store i32 %87, ptr %7, align 8, !dbg !3006
  %88 = icmp ult i32 %79, -7, !dbg !3006
  br i1 %88, label %89, label %93, !dbg !3006

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3006
  %91 = sext i32 %79 to i64, !dbg !3006
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3006
  br label %97, !dbg !3006

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3006
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3006
  store ptr %96, ptr %4, align 8, !dbg !3006
  br label %97, !dbg !3006

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3006
  %100 = load ptr, ptr %99, align 8, !dbg !3006
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3012
  store ptr %100, ptr %101, align 8, !dbg !3009, !tbaa !796
  %102 = icmp eq ptr %100, null, !dbg !3010
  br i1 %102, label %197, label %103, !dbg !3011

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3000, metadata !DIExpression()), !dbg !3004
  %104 = icmp sgt i32 %98, -1, !dbg !3006
  br i1 %104, label %112, label %105, !dbg !3006

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3006
  store i32 %106, ptr %7, align 8, !dbg !3006
  %107 = icmp ult i32 %98, -7, !dbg !3006
  br i1 %107, label %108, label %112, !dbg !3006

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3006
  %110 = sext i32 %98 to i64, !dbg !3006
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3006
  br label %116, !dbg !3006

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3006
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3006
  store ptr %115, ptr %4, align 8, !dbg !3006
  br label %116, !dbg !3006

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3006
  %119 = load ptr, ptr %118, align 8, !dbg !3006
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3012
  store ptr %119, ptr %120, align 8, !dbg !3009, !tbaa !796
  %121 = icmp eq ptr %119, null, !dbg !3010
  br i1 %121, label %197, label %122, !dbg !3011

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3000, metadata !DIExpression()), !dbg !3004
  %123 = icmp sgt i32 %117, -1, !dbg !3006
  br i1 %123, label %131, label %124, !dbg !3006

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3006
  store i32 %125, ptr %7, align 8, !dbg !3006
  %126 = icmp ult i32 %117, -7, !dbg !3006
  br i1 %126, label %127, label %131, !dbg !3006

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3006
  %129 = sext i32 %117 to i64, !dbg !3006
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3006
  br label %135, !dbg !3006

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3006
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3006
  store ptr %134, ptr %4, align 8, !dbg !3006
  br label %135, !dbg !3006

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3006
  %138 = load ptr, ptr %137, align 8, !dbg !3006
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3012
  store ptr %138, ptr %139, align 8, !dbg !3009, !tbaa !796
  %140 = icmp eq ptr %138, null, !dbg !3010
  br i1 %140, label %197, label %141, !dbg !3011

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3000, metadata !DIExpression()), !dbg !3004
  %142 = icmp sgt i32 %136, -1, !dbg !3006
  br i1 %142, label %150, label %143, !dbg !3006

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3006
  store i32 %144, ptr %7, align 8, !dbg !3006
  %145 = icmp ult i32 %136, -7, !dbg !3006
  br i1 %145, label %146, label %150, !dbg !3006

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3006
  %148 = sext i32 %136 to i64, !dbg !3006
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3006
  br label %154, !dbg !3006

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3006
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3006
  store ptr %153, ptr %4, align 8, !dbg !3006
  br label %154, !dbg !3006

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3006
  %157 = load ptr, ptr %156, align 8, !dbg !3006
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3012
  store ptr %157, ptr %158, align 8, !dbg !3009, !tbaa !796
  %159 = icmp eq ptr %157, null, !dbg !3010
  br i1 %159, label %197, label %160, !dbg !3011

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3000, metadata !DIExpression()), !dbg !3004
  %161 = icmp sgt i32 %155, -1, !dbg !3006
  br i1 %161, label %169, label %162, !dbg !3006

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3006
  store i32 %163, ptr %7, align 8, !dbg !3006
  %164 = icmp ult i32 %155, -7, !dbg !3006
  br i1 %164, label %165, label %169, !dbg !3006

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3006
  %167 = sext i32 %155 to i64, !dbg !3006
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3006
  br label %173, !dbg !3006

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3006
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3006
  store ptr %172, ptr %4, align 8, !dbg !3006
  br label %173, !dbg !3006

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3006
  %176 = load ptr, ptr %175, align 8, !dbg !3006
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3012
  store ptr %176, ptr %177, align 8, !dbg !3009, !tbaa !796
  %178 = icmp eq ptr %176, null, !dbg !3010
  br i1 %178, label %197, label %179, !dbg !3011

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3000, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3000, metadata !DIExpression()), !dbg !3004
  %180 = icmp sgt i32 %174, -1, !dbg !3006
  br i1 %180, label %188, label %181, !dbg !3006

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3006
  store i32 %182, ptr %7, align 8, !dbg !3006
  %183 = icmp ult i32 %174, -7, !dbg !3006
  br i1 %183, label %184, label %188, !dbg !3006

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3006
  %186 = sext i32 %174 to i64, !dbg !3006
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3006
  br label %191, !dbg !3006

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3006
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3006
  store ptr %190, ptr %4, align 8, !dbg !3006
  br label %191, !dbg !3006

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3006
  %193 = load ptr, ptr %192, align 8, !dbg !3006
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3012
  store ptr %193, ptr %194, align 8, !dbg !3009, !tbaa !796
  %195 = icmp eq ptr %193, null, !dbg !3010
  %196 = select i1 %195, i64 9, i64 10, !dbg !3011
  br label %197, !dbg !3011

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3013
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3014
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3015
  ret void, !dbg !3015
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3016 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3025
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3024, metadata !DIExpression(), metadata !3025, metadata ptr %5, metadata !DIExpression()), !dbg !3026
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3023, metadata !DIExpression()), !dbg !3026
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3027
  call void @llvm.va_start(ptr nonnull %5), !dbg !3028
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3029, !tbaa.struct !1286
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3029
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3029
  call void @llvm.va_end(ptr nonnull %5), !dbg !3030
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3031
  ret void, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3032 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3033, !tbaa !796
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3033
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #39, !dbg !3034
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #39, !dbg !3034
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #39, !dbg !3035
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21.106) #39, !dbg !3035
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22.107, i32 noundef 5) #39, !dbg !3036
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.108) #39, !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %2, metadata !3051, metadata !DIExpression()), !dbg !3052
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3060
  %5 = icmp eq ptr %4, null, !dbg !3062
  br i1 %5, label %6, label %7, !dbg !3064

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3065
  unreachable, !dbg !3065

7:                                                ; preds = %3
  ret ptr %4, !dbg !3066
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3048 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3051, metadata !DIExpression()), !dbg !3067
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3069
  %5 = icmp eq ptr %4, null, !dbg !3071
  br i1 %5, label %6, label %7, !dbg !3072

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3073
  unreachable, !dbg !3073

7:                                                ; preds = %3
  ret ptr %4, !dbg !3074
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3080
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3082
  %3 = icmp eq ptr %2, null, !dbg !3084
  br i1 %3, label %4, label %5, !dbg !3085

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3086
  unreachable, !dbg !3086

5:                                                ; preds = %1
  ret ptr %2, !dbg !3087
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3088 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %0, metadata !3095, metadata !DIExpression()), !dbg !3099
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3101
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3102
  %3 = icmp eq ptr %2, null, !dbg !3104
  br i1 %3, label %4, label %5, !dbg !3105

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3106
  unreachable, !dbg !3106

5:                                                ; preds = %1
  ret ptr %2, !dbg !3107
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3108 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3114
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3117
  %3 = icmp eq ptr %2, null, !dbg !3119
  br i1 %3, label %4, label %5, !dbg !3120

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3121
  unreachable, !dbg !3121

5:                                                ; preds = %1
  ret ptr %2, !dbg !3122
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3123 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3127, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3137
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3139
  %5 = icmp eq ptr %4, null, !dbg !3141
  br i1 %5, label %6, label %7, !dbg !3142

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3143
  unreachable, !dbg !3143

7:                                                ; preds = %2
  ret ptr %4, !dbg !3144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3145 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3159
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3161
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3162
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3163
  %5 = icmp eq ptr %4, null, !dbg !3165
  br i1 %5, label %6, label %7, !dbg !3166

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3167
  unreachable, !dbg !3167

7:                                                ; preds = %2
  ret ptr %4, !dbg !3168
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3169 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3173, metadata !DIExpression()), !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %2, metadata !3181, metadata !DIExpression()), !dbg !3182
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3184
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3185
  %5 = icmp eq ptr %4, null, !dbg !3187
  br i1 %5, label %6, label %7, !dbg !3188

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3189
  unreachable, !dbg !3189

7:                                                ; preds = %3
  ret ptr %4, !dbg !3190
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr null, metadata !3047, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %0, metadata !3050, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3198
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3201
  %4 = icmp eq ptr %3, null, !dbg !3203
  br i1 %4, label %5, label %6, !dbg !3204

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3205
  unreachable, !dbg !3205

6:                                                ; preds = %2
  ret ptr %3, !dbg !3206
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3207 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3211, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr null, metadata !3173, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %0, metadata !3174, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr null, metadata !3177, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3216
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3219
  %4 = icmp eq ptr %3, null, !dbg !3221
  br i1 %4, label %5, label %6, !dbg !3222

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3223
  unreachable, !dbg !3223

6:                                                ; preds = %2
  ret ptr %3, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3225 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %0, metadata !729, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %1, metadata !730, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 1, metadata !731, metadata !DIExpression()), !dbg !3232
  %3 = load i64, ptr %1, align 8, !dbg !3234, !tbaa !2302
  call void @llvm.dbg.value(metadata i64 %3, metadata !732, metadata !DIExpression()), !dbg !3232
  %4 = icmp eq ptr %0, null, !dbg !3235
  br i1 %4, label %5, label %8, !dbg !3237

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3238
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3241
  br label %15, !dbg !3241

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3242
  %10 = add nuw i64 %9, 1, !dbg !3242
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3242
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3242
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %13, metadata !732, metadata !DIExpression()), !dbg !3232
  br i1 %12, label %14, label %15, !dbg !3245

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3246
  unreachable, !dbg !3246

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3232
  call void @llvm.dbg.value(metadata i64 %16, metadata !732, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %16, metadata !3050, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 1, metadata !3051, metadata !DIExpression()), !dbg !3247
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3249
  call void @llvm.dbg.value(metadata ptr %17, metadata !3055, metadata !DIExpression()), !dbg !3250
  %18 = icmp eq ptr %17, null, !dbg !3252
  br i1 %18, label %19, label %20, !dbg !3253

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3254
  unreachable, !dbg !3254

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !729, metadata !DIExpression()), !dbg !3232
  store i64 %16, ptr %1, align 8, !dbg !3255, !tbaa !2302
  ret ptr %17, !dbg !3256
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !729, metadata !DIExpression()), !dbg !3257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !730, metadata !DIExpression()), !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !731, metadata !DIExpression()), !dbg !3257
  %4 = load i64, ptr %1, align 8, !dbg !3258, !tbaa !2302
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !732, metadata !DIExpression()), !dbg !3257
  %5 = icmp eq ptr %0, null, !dbg !3259
  br i1 %5, label %6, label %13, !dbg !3260

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3261
  br i1 %7, label %8, label %20, !dbg !3262

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !732, metadata !DIExpression()), !dbg !3257
  %10 = icmp ugt i64 %2, 128, !dbg !3265
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !732, metadata !DIExpression()), !dbg !3257
  br label %20, !dbg !3267

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3268
  %15 = add nuw i64 %14, 1, !dbg !3268
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3268
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3268
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !732, metadata !DIExpression()), !dbg !3257
  br i1 %17, label %19, label %20, !dbg !3269

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3270
  unreachable, !dbg !3270

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !732, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %21, metadata !3050, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %2, metadata !3051, metadata !DIExpression()), !dbg !3271
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %22, metadata !3055, metadata !DIExpression()), !dbg !3274
  %23 = icmp eq ptr %22, null, !dbg !3276
  br i1 %23, label %24, label %25, !dbg !3277

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3278
  unreachable, !dbg !3278

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !729, metadata !DIExpression()), !dbg !3257
  store i64 %21, ptr %1, align 8, !dbg !3279, !tbaa !2302
  ret ptr %22, !dbg !3280
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !748, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !749, metadata !DIExpression()), !dbg !3281
  %6 = load i64, ptr %1, align 8, !dbg !3282, !tbaa !2302
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !750, metadata !DIExpression()), !dbg !3281
  %7 = ashr i64 %6, 1, !dbg !3283
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3283
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3283
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !751, metadata !DIExpression()), !dbg !3281
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !751, metadata !DIExpression()), !dbg !3281
  %12 = icmp sgt i64 %3, -1, !dbg !3286
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3288
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !751, metadata !DIExpression()), !dbg !3281
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3289
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3289
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !752, metadata !DIExpression()), !dbg !3281
  %18 = icmp slt i64 %17, 128, !dbg !3289
  %19 = select i1 %18, i64 128, i64 0, !dbg !3289
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !753, metadata !DIExpression()), !dbg !3281
  %21 = icmp eq i64 %20, 0, !dbg !3290
  br i1 %21, label %28, label %22, !dbg !3292

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !751, metadata !DIExpression()), !dbg !3281
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !752, metadata !DIExpression()), !dbg !3281
  br label %28, !dbg !3296

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3281
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !752, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !751, metadata !DIExpression()), !dbg !3281
  %31 = icmp eq ptr %0, null, !dbg !3297
  br i1 %31, label %32, label %33, !dbg !3299

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3300, !tbaa !2302
  br label %33, !dbg !3301

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3302
  %35 = icmp slt i64 %34, %2, !dbg !3304
  br i1 %35, label %36, label %48, !dbg !3305

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3306
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3306
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !751, metadata !DIExpression()), !dbg !3281
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3307
  br i1 %42, label %47, label %43, !dbg !3307

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3308
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3308
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !752, metadata !DIExpression()), !dbg !3281
  br i1 %45, label %47, label %48, !dbg !3309

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !3310
  unreachable, !dbg !3310

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3281
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !752, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !751, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr %0, metadata !3127, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %50, metadata !3128, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %50, metadata !3134, metadata !DIExpression()), !dbg !3313
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3315
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %52, metadata !3055, metadata !DIExpression()), !dbg !3317
  %53 = icmp eq ptr %52, null, !dbg !3319
  br i1 %53, label %54, label %55, !dbg !3320

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !3321
  unreachable, !dbg !3321

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !745, metadata !DIExpression()), !dbg !3281
  store i64 %49, ptr %1, align 8, !dbg !3322, !tbaa !2302
  ret ptr %52, !dbg !3323
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3324 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %0, metadata !3328, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 1, metadata !3331, metadata !DIExpression()), !dbg !3332
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3335
  %3 = icmp eq ptr %2, null, !dbg !3337
  br i1 %3, label %4, label %5, !dbg !3338

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3339
  unreachable, !dbg !3339

5:                                                ; preds = %1
  ret ptr %2, !dbg !3340
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3341 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3329 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3328, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3342
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3344
  %4 = icmp eq ptr %3, null, !dbg !3346
  br i1 %4, label %5, label %6, !dbg !3347

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3348
  unreachable, !dbg !3348

6:                                                ; preds = %2
  ret ptr %3, !dbg !3349
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %0, metadata !3360, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %0, metadata !3360, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3364
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3367
  %3 = icmp eq ptr %2, null, !dbg !3369
  br i1 %3, label %4, label %5, !dbg !3370

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3371
  unreachable, !dbg !3371

5:                                                ; preds = %1
  ret ptr %2, !dbg !3372
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64 %0, metadata !3360, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %0, metadata !3360, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()), !dbg !3374
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3376
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3377
  %4 = icmp eq ptr %3, null, !dbg !3379
  br i1 %4, label %5, label %6, !dbg !3380

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3381
  unreachable, !dbg !3381

6:                                                ; preds = %2
  ret ptr %3, !dbg !3382
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3390
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3392
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3393
  %4 = icmp eq ptr %3, null, !dbg !3395
  br i1 %4, label %5, label %6, !dbg !3396

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3397
  unreachable, !dbg !3397

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3398, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3405
  ret ptr %3, !dbg !3406
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3407 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3411, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3416
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3419
  %4 = icmp eq ptr %3, null, !dbg !3421
  br i1 %4, label %5, label %6, !dbg !3422

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3423
  unreachable, !dbg !3423

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3398, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3426
  ret ptr %3, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3435
  %3 = add nsw i64 %1, 1, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %3, metadata !3093, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %3, metadata !3095, metadata !DIExpression()), !dbg !3439
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3442
  %5 = icmp eq ptr %4, null, !dbg !3444
  br i1 %5, label %6, label %7, !dbg !3445

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3446
  unreachable, !dbg !3446

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3435
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3447
  store i8 0, ptr %8, align 1, !dbg !3448, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %4, metadata !3398, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3451
  ret ptr %4, !dbg !3452
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3453 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3456
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3457
  %3 = add i64 %2, 1, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %3, metadata !3388, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %3, metadata !3079, metadata !DIExpression()), !dbg !3461
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3463
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !3464
  %5 = icmp eq ptr %4, null, !dbg !3466
  br i1 %5, label %6, label %7, !dbg !3467

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3468
  unreachable, !dbg !3468

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3398, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 %3, metadata !3402, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3471
  ret ptr %4, !dbg !3472
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3473 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3478, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3475, metadata !DIExpression()), !dbg !3479
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.121, ptr noundef nonnull @.str.2.122, i32 noundef 5) #39, !dbg !3478
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef %2) #39, !dbg !3478
  %3 = icmp eq i32 %1, 0, !dbg !3478
  tail call void @llvm.assume(i1 %3), !dbg !3478
  tail call void @abort() #41, !dbg !3480
  unreachable, !dbg !3480
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3483, metadata !DIExpression()), !dbg !3488
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3488
  br label %2, !dbg !3489

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3488
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3484, metadata !DIExpression()), !dbg !3488
  %4 = load i8, ptr %3, align 1, !dbg !3490, !tbaa !872
  %5 = icmp eq i8 %4, 47, !dbg !3490
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3491
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3484, metadata !DIExpression()), !dbg !3488
  br i1 %5, label %2, label %.preheader, !dbg !3489, !llvm.loop !3492

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !3488
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !3490
  br label %7, !dbg !3493

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !3494
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !3496
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !3497
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3486, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3485, metadata !DIExpression()), !dbg !3488
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3484, metadata !DIExpression()), !dbg !3488
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3493

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !3496
  ret ptr %.lcssa, !dbg !3499

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3500
  br label %15, !dbg !3500

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3488
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3485, metadata !DIExpression()), !dbg !3488
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3484, metadata !DIExpression()), !dbg !3488
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3503
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3486, metadata !DIExpression()), !dbg !3498
  %19 = load i8, ptr %18, align 1, !dbg !3494, !tbaa !872
  br label %7, !dbg !3504, !llvm.loop !3505
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3514
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3512, metadata !DIExpression()), !dbg !3514
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3512, metadata !DIExpression()), !dbg !3514
  %4 = icmp ugt i64 %2, 1, !dbg !3518
  br i1 %4, label %.preheader, label %13, !dbg !3520

.preheader:                                       ; preds = %1
  br label %5, !dbg !3521

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3512, metadata !DIExpression()), !dbg !3514
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3522
  %8 = load i8, ptr %7, align 1, !dbg !3522, !tbaa !872
  %9 = icmp eq i8 %8, 47, !dbg !3522
  br i1 %9, label %10, label %.loopexit, !dbg !3521

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3512, metadata !DIExpression()), !dbg !3514
  %12 = icmp ugt i64 %11, 1, !dbg !3518
  br i1 %12, label %5, label %.loopexit, !dbg !3520, !llvm.loop !3524

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !3526

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3513, metadata !DIExpression()), !dbg !3514
  ret i64 %14, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3566, metadata !DIExpression()), !dbg !3571
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3567, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3571
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3573, metadata !DIExpression()), !dbg !3576
  %3 = load i32, ptr %0, align 8, !dbg !3578, !tbaa !3579
  %4 = and i32 %3, 32, !dbg !3580
  %5 = icmp eq i32 %4, 0, !dbg !3580
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3569, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3571
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3581
  %7 = icmp eq i32 %6, 0, !dbg !3582
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3571
  br i1 %5, label %8, label %18, !dbg !3583

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3585
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3567, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3571
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3586
  %11 = xor i1 %7, true, !dbg !3586
  %12 = sext i1 %11 to i32, !dbg !3586
  br i1 %10, label %21, label %13, !dbg !3586

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3587
  %15 = load i32, ptr %14, align 4, !dbg !3587, !tbaa !863
  %16 = icmp ne i32 %15, 9, !dbg !3588
  %17 = sext i1 %16 to i32, !dbg !3589
  br label %21, !dbg !3589

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3590

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3592
  store i32 0, ptr %20, align 4, !dbg !3594, !tbaa !863
  br label %21, !dbg !3592

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3571
  ret i32 %22, !dbg !3595
}

; Function Attrs: nounwind
declare !dbg !3596 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3638, metadata !DIExpression()), !dbg !3642
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3642
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3640, metadata !DIExpression()), !dbg !3642
  %3 = icmp slt i32 %2, 0, !dbg !3644
  br i1 %3, label %4, label %6, !dbg !3646

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3647
  br label %24, !dbg !3648

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3649
  %8 = icmp eq i32 %7, 0, !dbg !3649
  br i1 %8, label %13, label %9, !dbg !3651

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3652
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3653
  %12 = icmp eq i64 %11, -1, !dbg !3654
  br i1 %12, label %16, label %13, !dbg !3655

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3656
  %15 = icmp eq i32 %14, 0, !dbg !3656
  br i1 %15, label %16, label %18, !dbg !3657

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3642
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3641, metadata !DIExpression()), !dbg !3642
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3641, metadata !DIExpression()), !dbg !3642
  br label %24, !dbg !3659

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3660
  %20 = load i32, ptr %19, align 4, !dbg !3660, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3639, metadata !DIExpression()), !dbg !3642
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3641, metadata !DIExpression()), !dbg !3642
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3641, metadata !DIExpression()), !dbg !3642
  %22 = icmp eq i32 %20, 0, !dbg !3661
  br i1 %22, label %24, label %23, !dbg !3659

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3663, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3641, metadata !DIExpression()), !dbg !3642
  br label %24, !dbg !3665

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3642
  ret i32 %25, !dbg !3666
}

; Function Attrs: nofree nounwind
declare !dbg !3667 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3668 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3669 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3670 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3712
  %2 = icmp eq ptr %0, null, !dbg !3713
  br i1 %2, label %6, label %3, !dbg !3715

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3716
  %5 = icmp eq i32 %4, 0, !dbg !3716
  br i1 %5, label %6, label %8, !dbg !3717

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3718
  br label %16, !dbg !3719

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3720, metadata !DIExpression()), !dbg !3725
  %9 = load i32, ptr %0, align 8, !dbg !3727, !tbaa !3579
  %10 = and i32 %9, 256, !dbg !3729
  %11 = icmp eq i32 %10, 0, !dbg !3729
  br i1 %11, label %14, label %12, !dbg !3730

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3731
  br label %14, !dbg !3731

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3732
  br label %16, !dbg !3733

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3712
  ret i32 %17, !dbg !3734
}

; Function Attrs: nofree nounwind
declare !dbg !3735 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3775, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3776, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3777, metadata !DIExpression()), !dbg !3781
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3782
  %5 = load ptr, ptr %4, align 8, !dbg !3782, !tbaa !3783
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3784
  %7 = load ptr, ptr %6, align 8, !dbg !3784, !tbaa !3785
  %8 = icmp eq ptr %5, %7, !dbg !3786
  br i1 %8, label %9, label %27, !dbg !3787

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3788
  %11 = load ptr, ptr %10, align 8, !dbg !3788, !tbaa !1142
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3789
  %13 = load ptr, ptr %12, align 8, !dbg !3789, !tbaa !3790
  %14 = icmp eq ptr %11, %13, !dbg !3791
  br i1 %14, label %15, label %27, !dbg !3792

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3793
  %17 = load ptr, ptr %16, align 8, !dbg !3793, !tbaa !3794
  %18 = icmp eq ptr %17, null, !dbg !3795
  br i1 %18, label %19, label %27, !dbg !3796

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3797
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3778, metadata !DIExpression()), !dbg !3799
  %22 = icmp eq i64 %21, -1, !dbg !3800
  br i1 %22, label %29, label %23, !dbg !3802

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3803, !tbaa !3579
  %25 = and i32 %24, -17, !dbg !3803
  store i32 %25, ptr %0, align 8, !dbg !3803, !tbaa !3579
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3804
  store i64 %21, ptr %26, align 8, !dbg !3805, !tbaa !3806
  br label %29, !dbg !3807

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3808
  br label %29, !dbg !3809

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3781
  ret i32 %30, !dbg !3810
}

; Function Attrs: nofree nounwind
declare !dbg !3811 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3814 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3820, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3821, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3822, metadata !DIExpression()), !dbg !3824
  %5 = icmp eq ptr %1, null, !dbg !3825
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3827
  %7 = select i1 %5, ptr @.str.138, ptr %1, !dbg !3827
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3821, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3820, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3819, metadata !DIExpression()), !dbg !3824
  %9 = icmp eq ptr %3, null, !dbg !3828
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3822, metadata !DIExpression()), !dbg !3824
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3823, metadata !DIExpression()), !dbg !3824
  %12 = icmp ult i64 %11, -3, !dbg !3832
  br i1 %12, label %13, label %17, !dbg !3834

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !3835
  %15 = icmp eq i32 %14, 0, !dbg !3835
  br i1 %15, label %16, label %29, !dbg !3836

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3837, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %10, metadata !3844, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 0, metadata !3847, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 8, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i64 0, ptr %10, align 1, !dbg !3851
  br label %29, !dbg !3852

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3853
  br i1 %18, label %19, label %20, !dbg !3855

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !3856
  unreachable, !dbg !3856

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3857

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !3859
  br i1 %23, label %29, label %24, !dbg !3860

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3861
  br i1 %25, label %29, label %26, !dbg !3864

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3865, !tbaa !872
  %28 = zext i8 %27 to i32, !dbg !3866
  store i32 %28, ptr %6, align 4, !dbg !3867, !tbaa !863
  br label %29, !dbg !3868

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3824
  ret i64 %30, !dbg !3869
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3870 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !3876 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3880, metadata !DIExpression()), !dbg !3882
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3883
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3881, metadata !DIExpression()), !dbg !3882
  br i1 %5, label %6, label %8, !dbg !3885

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !3886
  store i32 12, ptr %7, align 4, !dbg !3888, !tbaa !863
  br label %12, !dbg !3889

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %9, metadata !3893, metadata !DIExpression()), !dbg !3894
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3896
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !3897
  br label %12, !dbg !3898

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3882
  ret ptr %13, !dbg !3899
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3900 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3909
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3905, metadata !DIExpression(), metadata !3909, metadata ptr %2, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3904, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !3911
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !3912
  %4 = icmp eq i32 %3, 0, !dbg !3912
  br i1 %4, label %5, label %12, !dbg !3914

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3915, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !3918, metadata !DIExpression()), !dbg !3919
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.143, i64 2), !dbg !3922
  %7 = icmp eq i32 %6, 0, !dbg !3923
  br i1 %7, label %11, label %8, !dbg !3924

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3915, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr @.str.1.144, metadata !3918, metadata !DIExpression()), !dbg !3925
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.144, i64 6), !dbg !3927
  %10 = icmp eq i32 %9, 0, !dbg !3928
  br i1 %10, label %11, label %12, !dbg !3929

11:                                               ; preds = %8, %5
  br label %12, !dbg !3930

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3910
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !3931
  ret i1 %13, !dbg !3931
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3932 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3936, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3937, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3938, metadata !DIExpression()), !dbg !3939
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !3940
  ret i32 %4, !dbg !3941
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3942 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3946, metadata !DIExpression()), !dbg !3947
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !3948
  ret ptr %2, !dbg !3949
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3952, metadata !DIExpression()), !dbg !3954
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3955
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3953, metadata !DIExpression()), !dbg !3954
  ret ptr %2, !dbg !3956
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3957 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3959, metadata !DIExpression()), !dbg !3966
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3960, metadata !DIExpression()), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3961, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 %0, metadata !3952, metadata !DIExpression()), !dbg !3967
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3969
  call void @llvm.dbg.value(metadata ptr %4, metadata !3953, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3962, metadata !DIExpression()), !dbg !3966
  %5 = icmp eq ptr %4, null, !dbg !3970
  br i1 %5, label %6, label %9, !dbg !3971

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3972
  br i1 %7, label %19, label %8, !dbg !3975

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3976, !tbaa !872
  br label %19, !dbg !3977

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3963, metadata !DIExpression()), !dbg !3979
  %11 = icmp ult i64 %10, %2, !dbg !3980
  br i1 %11, label %12, label %14, !dbg !3982

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3983
  call void @llvm.dbg.value(metadata ptr %1, metadata !3985, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %4, metadata !3988, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %13, metadata !3989, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !3992
  br label %19, !dbg !3993

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3994
  br i1 %15, label %19, label %16, !dbg !3997

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3998
  call void @llvm.dbg.value(metadata ptr %1, metadata !3985, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %4, metadata !3988, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %17, metadata !3989, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4002
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4003
  store i8 0, ptr %18, align 1, !dbg !4004, !tbaa !872
  br label %19, !dbg !4005

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4006
  ret i32 %20, !dbg !4007
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
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !351, !355, !707, !709, !370, !673, !711, !426, !440, !491, !713, !665, !720, !755, !757, !760, !762, !764, !766, !689, !768, !770, !772, !774}
!llvm.ident = !{!776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776, !776}
!llvm.module.flags = !{!777, !778, !779, !780, !781, !782, !783, !784}

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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/basename.o -MD -MP -MF src/.deps/basename.Tpo -c src/basename.c -o src/.basename.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !98, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !421, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!100, !107}
!373 = !{!374, !376, !400, !402, !404, !406, !368, !408, !410, !412, !414, !419}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !216, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !105, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !393)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !78, !78, !105, !84, !105, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !383)
!382 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 12, baseType: !385)
!384 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !386, file: !371, baseType: !100, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !386, file: !371, baseType: !100, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !386, file: !371, baseType: !100, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !386, file: !371, baseType: !78, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !386, file: !371, baseType: !78, size: 32, offset: 224)
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !78)
!395 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !78)
!396 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !105)
!397 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !84)
!398 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !105)
!399 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !84, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !223, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !255, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !230, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !84, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !78, isLocal: false, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !250, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 21)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !216, isLocal: true, isDefinition: true)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "program_name", scope: !426, file: !427, line: 31, type: !105, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !427, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !428, globals: !429, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!428 = !{!100, !99}
!429 = !{!424, !430, !432}
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !427, line: 46, type: !255, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !427, line: 49, type: !223, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "utf07FF", scope: !436, file: !437, line: 46, type: !464, isLocal: true, isDefinition: true)
!436 = distinct !DISubprogram(name: "proper_name_lite", scope: !437, file: !437, line: 38, type: !438, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !442)
!437 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!438 = !DISubroutineType(types: !439)
!439 = !{!105, !105, !105}
!440 = distinct !DICompileUnit(language: DW_LANG_C11, file: !437, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !441, splitDebugInlining: false, nameTableKind: None)
!441 = !{!434}
!442 = !{!443, !444, !445, !446, !451}
!443 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !436, file: !437, line: 38, type: !105)
!444 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !436, file: !437, line: 38, type: !105)
!445 = !DILocalVariable(name: "translation", scope: !436, file: !437, line: 40, type: !105)
!446 = !DILocalVariable(name: "w", scope: !436, file: !437, line: 47, type: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !448, line: 37, baseType: !449)
!448 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !183, line: 57, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !183, line: 42, baseType: !84)
!451 = !DILocalVariable(name: "mbs", scope: !436, file: !437, line: 48, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !453, line: 6, baseType: !454)
!453 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !455, line: 21, baseType: !456)
!455 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 13, size: 64, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !456, file: !455, line: 15, baseType: !78, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !456, file: !455, line: 20, baseType: !460, size: 32, offset: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !455, line: 16, size: 32, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !460, file: !455, line: 18, baseType: !84, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !460, file: !455, line: 19, baseType: !223, size: 32)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16, elements: !231)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !467, line: 78, type: !255, isLocal: true, isDefinition: true)
!467 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !467, line: 79, type: !69, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !467, line: 80, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 13)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !467, line: 81, type: !472, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !467, line: 82, type: !205, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !467, line: 83, type: !230, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !467, line: 84, type: !255, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !467, line: 85, type: !250, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !467, line: 86, type: !250, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !467, line: 87, type: !255, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !491, file: !467, line: 76, type: !577, isLocal: false, isDefinition: true)
!491 = distinct !DICompileUnit(language: DW_LANG_C11, file: !467, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !492, retainedTypes: !512, globals: !513, splitDebugInlining: false, nameTableKind: None)
!492 = !{!493, !507, !82}
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !494, line: 42, baseType: !84, size: 32, elements: !495)
!494 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!496 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!497 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!498 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!499 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!500 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!501 = !DIEnumerator(name: "c_quoting_style", value: 5)
!502 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!503 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!504 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!505 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!506 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!507 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !494, line: 254, baseType: !84, size: 32, elements: !508)
!508 = !{!509, !510, !511}
!509 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!510 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!511 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!512 = !{!100, !78, !101, !102}
!513 = !{!465, !468, !470, !475, !477, !479, !481, !483, !485, !487, !489, !514, !518, !528, !530, !535, !537, !539, !541, !543, !566, !573, !575}
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !491, file: !467, line: 92, type: !516, isLocal: false, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 320, elements: !60)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !491, file: !467, line: 1040, type: !520, isLocal: false, isDefinition: true)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !467, line: 56, size: 448, elements: !521)
!521 = !{!522, !523, !524, !526, !527}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !520, file: !467, line: 59, baseType: !493, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !467, line: 62, baseType: !78, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !520, file: !467, line: 66, baseType: !525, size: 256, offset: 64)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !520, file: !467, line: 69, baseType: !105, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !520, file: !467, line: 72, baseType: !105, size: 64, offset: 384)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !491, file: !467, line: 107, type: !520, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "slot0", scope: !491, file: !467, line: 831, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 256)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !467, line: 321, type: !230, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !467, line: 357, type: !230, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !467, line: 358, type: !230, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !467, line: 199, type: !250, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "quote", scope: !545, file: !467, line: 228, type: !564, isLocal: true, isDefinition: true)
!545 = distinct !DISubprogram(name: "gettext_quote", scope: !467, file: !467, line: 197, type: !546, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!105, !105, !493}
!548 = !{!549, !550, !551, !552, !553}
!549 = !DILocalVariable(name: "msgid", arg: 1, scope: !545, file: !467, line: 197, type: !105)
!550 = !DILocalVariable(name: "s", arg: 2, scope: !545, file: !467, line: 197, type: !493)
!551 = !DILocalVariable(name: "translation", scope: !545, file: !467, line: 199, type: !105)
!552 = !DILocalVariable(name: "w", scope: !545, file: !467, line: 229, type: !447)
!553 = !DILocalVariable(name: "mbs", scope: !545, file: !467, line: 230, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !453, line: 6, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !455, line: 21, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 13, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !556, file: !455, line: 15, baseType: !78, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !556, file: !455, line: 20, baseType: !560, size: 32, offset: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !455, line: 16, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !560, file: !455, line: 18, baseType: !84, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !560, file: !455, line: 19, baseType: !223, size: 32)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !565)
!565 = !{!232, !225}
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "slotvec", scope: !491, file: !467, line: 834, type: !568, isLocal: true, isDefinition: true)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !467, line: 823, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !569, file: !467, line: 825, baseType: !102, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !569, file: !467, line: 826, baseType: !99, size: 64, offset: 64)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "nslots", scope: !491, file: !467, line: 832, type: !78, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "slotvec0", scope: !491, file: !467, line: 833, type: !569, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 704, elements: !579)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!579 = !{!580}
!580 = !DISubrange(count: 11)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !583, line: 67, type: !323, isLocal: true, isDefinition: true)
!583 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !583, line: 69, type: !250, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !583, line: 83, type: !250, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !583, line: 83, type: !223, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !583, line: 85, type: !230, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !583, line: 88, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 171)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !583, line: 88, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 34)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !583, line: 105, type: !116, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !583, line: 109, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 23)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !583, line: 113, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 28)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !583, line: 120, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 32)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !583, line: 127, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 36)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !583, line: 134, type: !274, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !583, line: 142, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 44)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !583, line: 150, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 48)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !583, line: 159, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 52)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !583, line: 170, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 60)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !583, line: 248, type: !205, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !583, line: 248, type: !299, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !583, line: 254, type: !205, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !583, line: 254, type: !111, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !583, line: 254, type: !274, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !583, line: 259, type: !3, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !583, line: 259, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 29)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !665, file: !666, line: 26, type: !668, isLocal: false, isDefinition: true)
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !667, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!667 = !{!663}
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 376, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 47)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "exit_failure", scope: !673, file: !674, line: 24, type: !676, isLocal: false, isDefinition: true)
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !675, splitDebugInlining: false, nameTableKind: None)
!674 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!675 = !{!671}
!676 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !239, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !250, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !123, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 108, type: !54, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "internal_state", scope: !689, file: !686, line: 97, type: !692, isLocal: true, isDefinition: true)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, globals: !691, splitDebugInlining: false, nameTableKind: None)
!690 = !{!100, !102, !107}
!691 = !{!684, !687}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !453, line: 6, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !455, line: 21, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 13, size: 64, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !694, file: !455, line: 15, baseType: !78, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !694, file: !455, line: 20, baseType: !698, size: 32, offset: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !455, line: 16, size: 32, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !698, file: !455, line: 18, baseType: !84, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !698, file: !455, line: 19, baseType: !223, size: 32)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !230, isLocal: true, isDefinition: true)
!704 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !69, isLocal: true, isDefinition: true)
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename.o -MD -MP -MF lib/.deps/libcoreutils_a-basename.Tpo -c lib/basename.c -o lib/.libcoreutils_a-basename.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-stripslash.o -MD -MP -MF lib/.deps/libcoreutils_a-stripslash.Tpo -c lib/stripslash.c -o lib/.libcoreutils_a-stripslash.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !583, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !714, retainedTypes: !718, globals: !719, splitDebugInlining: false, nameTableKind: None)
!714 = !{!715}
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 40, baseType: !84, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!718 = !{!100}
!719 = !{!581, !584, !586, !588, !590, !592, !597, !602, !604, !609, !614, !619, !624, !626, !631, !636, !641, !646, !648, !650, !652, !654, !656, !658}
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !722, retainedTypes: !754, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!722 = !{!723, !735}
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !724, file: !721, line: 188, baseType: !84, size: 32, elements: !733)
!724 = distinct !DISubprogram(name: "x2nrealloc", scope: !721, file: !721, line: 176, type: !725, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !728)
!725 = !DISubroutineType(types: !726)
!726 = !{!100, !100, !727, !102}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!728 = !{!729, !730, !731, !732}
!729 = !DILocalVariable(name: "p", arg: 1, scope: !724, file: !721, line: 176, type: !100)
!730 = !DILocalVariable(name: "pn", arg: 2, scope: !724, file: !721, line: 176, type: !727)
!731 = !DILocalVariable(name: "s", arg: 3, scope: !724, file: !721, line: 176, type: !102)
!732 = !DILocalVariable(name: "n", scope: !724, file: !721, line: 178, type: !102)
!733 = !{!734}
!734 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!735 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !736, file: !721, line: 228, baseType: !84, size: 32, elements: !733)
!736 = distinct !DISubprogram(name: "xpalloc", scope: !721, file: !721, line: 223, type: !737, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !744)
!737 = !DISubroutineType(types: !738)
!738 = !{!100, !100, !739, !740, !742, !740}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !741, line: 130, baseType: !742)
!741 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !743, line: 18, baseType: !184)
!743 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753}
!745 = !DILocalVariable(name: "pa", arg: 1, scope: !736, file: !721, line: 223, type: !100)
!746 = !DILocalVariable(name: "pn", arg: 2, scope: !736, file: !721, line: 223, type: !739)
!747 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !736, file: !721, line: 223, type: !740)
!748 = !DILocalVariable(name: "n_max", arg: 4, scope: !736, file: !721, line: 223, type: !742)
!749 = !DILocalVariable(name: "s", arg: 5, scope: !736, file: !721, line: 223, type: !740)
!750 = !DILocalVariable(name: "n0", scope: !736, file: !721, line: 230, type: !740)
!751 = !DILocalVariable(name: "n", scope: !736, file: !721, line: 237, type: !740)
!752 = !DILocalVariable(name: "nbytes", scope: !736, file: !721, line: 248, type: !740)
!753 = !DILocalVariable(name: "adjusted_nbytes", scope: !736, file: !721, line: 252, type: !740)
!754 = !{!99, !100}
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!756 = !{!677, !680, !682}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!759 = !{!99}
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !771, splitDebugInlining: false, nameTableKind: None)
!771 = !{!702, !705}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!776 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!777 = !{i32 7, !"Dwarf Version", i32 5}
!778 = !{i32 2, !"Debug Info Version", i32 3}
!779 = !{i32 1, !"wchar_size", i32 4}
!780 = !{i32 8, !"PIC Level", i32 2}
!781 = !{i32 7, !"PIE Level", i32 2}
!782 = !{i32 7, !"uwtable", i32 2}
!783 = !{i32 7, !"frame-pointer", i32 1}
!784 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!785 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 41, type: !786, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !78}
!788 = !{!789}
!789 = !DILocalVariable(name: "status", arg: 1, scope: !785, file: !2, line: 41, type: !78)
!790 = !DILocation(line: 0, scope: !785)
!791 = !DILocation(line: 43, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !2, line: 43, column: 7)
!793 = !DILocation(line: 43, column: 7, scope: !785)
!794 = !DILocation(line: 44, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !2, line: 44, column: 5)
!796 = !{!797, !797, i64 0}
!797 = !{!"any pointer", !798, i64 0}
!798 = !{!"omnipotent char", !799, i64 0}
!799 = !{!"Simple C/C++ TBAA"}
!800 = !DILocation(line: 47, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !792, file: !2, line: 46, column: 5)
!802 = !DILocation(line: 52, column: 7, scope: !801)
!803 = !DILocation(line: 736, column: 3, scope: !804, inlinedAt: !805)
!804 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !422, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!805 = distinct !DILocation(line: 57, column: 7, scope: !801)
!806 = !DILocation(line: 59, column: 7, scope: !801)
!807 = !DILocation(line: 63, column: 7, scope: !801)
!808 = !DILocation(line: 67, column: 7, scope: !801)
!809 = !DILocation(line: 71, column: 7, scope: !801)
!810 = !DILocation(line: 72, column: 7, scope: !801)
!811 = !DILocation(line: 73, column: 7, scope: !801)
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
!830 = distinct !DILocation(line: 82, column: 7, scope: !801)
!831 = !{}
!832 = !DILocation(line: 857, column: 3, scope: !813, inlinedAt: !830)
!833 = !DILocation(line: 861, column: 29, scope: !813, inlinedAt: !830)
!834 = !DILocation(line: 862, column: 7, scope: !835, inlinedAt: !830)
!835 = distinct !DILexicalBlock(scope: !813, file: !77, line: 862, column: 7)
!836 = !DILocation(line: 862, column: 19, scope: !835, inlinedAt: !830)
!837 = !DILocation(line: 862, column: 22, scope: !835, inlinedAt: !830)
!838 = !DILocation(line: 862, column: 7, scope: !813, inlinedAt: !830)
!839 = !DILocation(line: 868, column: 7, scope: !840, inlinedAt: !830)
!840 = distinct !DILexicalBlock(scope: !835, file: !77, line: 863, column: 5)
!841 = !DILocation(line: 870, column: 5, scope: !840, inlinedAt: !830)
!842 = !DILocation(line: 875, column: 3, scope: !813, inlinedAt: !830)
!843 = !DILocation(line: 877, column: 3, scope: !813, inlinedAt: !830)
!844 = !DILocation(line: 84, column: 3, scope: !785)
!845 = !DISubprogram(name: "dcgettext", scope: !846, file: !846, line: 51, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!847 = !DISubroutineType(types: !848)
!848 = !{!99, !105, !105, !78}
!849 = !DISubprogram(name: "__fprintf_chk", scope: !850, file: !850, line: 93, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!851 = !DISubroutineType(types: !852)
!852 = !{!78, !853, !78, !854, null}
!853 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!854 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!855 = !DISubprogram(name: "__printf_chk", scope: !850, file: !850, line: 95, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DISubroutineType(types: !857)
!857 = !{!78, !78, !854, null}
!858 = !DISubprogram(name: "fputs_unlocked", scope: !382, file: !382, line: 691, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubroutineType(types: !860)
!860 = !{!78, !854, !853}
!861 = !DILocation(line: 0, scope: !133)
!862 = !DILocation(line: 581, column: 7, scope: !141)
!863 = !{!864, !864, i64 0}
!864 = !{!"int", !798, i64 0}
!865 = !DILocation(line: 581, column: 19, scope: !141)
!866 = !DILocation(line: 581, column: 7, scope: !133)
!867 = !DILocation(line: 585, column: 26, scope: !140)
!868 = !DILocation(line: 0, scope: !140)
!869 = !DILocation(line: 586, column: 23, scope: !140)
!870 = !DILocation(line: 586, column: 28, scope: !140)
!871 = !DILocation(line: 586, column: 32, scope: !140)
!872 = !{!798, !798, i64 0}
!873 = !DILocation(line: 586, column: 38, scope: !140)
!874 = !DILocalVariable(name: "__s1", arg: 1, scope: !875, file: !876, line: 1359, type: !105)
!875 = distinct !DISubprogram(name: "streq", scope: !876, file: !876, line: 1359, type: !877, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !879)
!876 = !DIFile(filename: "./lib/string.h", directory: "/src")
!877 = !DISubroutineType(types: !878)
!878 = !{!143, !105, !105}
!879 = !{!874, !880}
!880 = !DILocalVariable(name: "__s2", arg: 2, scope: !875, file: !876, line: 1359, type: !105)
!881 = !DILocation(line: 0, scope: !875, inlinedAt: !882)
!882 = distinct !DILocation(line: 586, column: 41, scope: !140)
!883 = !DILocation(line: 1361, column: 11, scope: !875, inlinedAt: !882)
!884 = !DILocation(line: 1361, column: 10, scope: !875, inlinedAt: !882)
!885 = !DILocation(line: 586, column: 19, scope: !140)
!886 = !DILocation(line: 587, column: 5, scope: !140)
!887 = !DILocation(line: 588, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !133, file: !77, line: 588, column: 7)
!889 = !DILocation(line: 588, column: 7, scope: !133)
!890 = !DILocation(line: 590, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !77, line: 589, column: 5)
!892 = !DILocation(line: 591, column: 7, scope: !891)
!893 = !DILocation(line: 595, column: 37, scope: !133)
!894 = !DILocation(line: 595, column: 35, scope: !133)
!895 = !DILocation(line: 596, column: 29, scope: !133)
!896 = !DILocation(line: 597, column: 8, scope: !149)
!897 = !DILocation(line: 597, column: 7, scope: !133)
!898 = !DILocation(line: 604, column: 24, scope: !148)
!899 = !DILocation(line: 604, column: 12, scope: !149)
!900 = !DILocation(line: 0, scope: !147)
!901 = !DILocation(line: 610, column: 16, scope: !147)
!902 = !DILocation(line: 610, column: 7, scope: !147)
!903 = !DILocation(line: 611, column: 21, scope: !147)
!904 = !{!905, !905, i64 0}
!905 = !{!"short", !798, i64 0}
!906 = !DILocation(line: 611, column: 19, scope: !147)
!907 = !DILocation(line: 611, column: 16, scope: !147)
!908 = !DILocation(line: 610, column: 30, scope: !147)
!909 = distinct !{!909, !902, !903, !910}
!910 = !{!"llvm.loop.mustprogress"}
!911 = !DILocation(line: 612, column: 18, scope: !912)
!912 = distinct !DILexicalBlock(scope: !147, file: !77, line: 612, column: 11)
!913 = !DILocation(line: 612, column: 11, scope: !147)
!914 = !DILocation(line: 620, column: 23, scope: !133)
!915 = !DILocation(line: 625, column: 39, scope: !133)
!916 = !DILocation(line: 626, column: 3, scope: !133)
!917 = !DILocation(line: 626, column: 10, scope: !133)
!918 = !DILocation(line: 626, column: 21, scope: !133)
!919 = !DILocation(line: 628, column: 44, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !77, line: 628, column: 11)
!921 = distinct !DILexicalBlock(scope: !133, file: !77, line: 627, column: 5)
!922 = !DILocation(line: 628, column: 32, scope: !920)
!923 = !DILocation(line: 628, column: 49, scope: !920)
!924 = !DILocation(line: 628, column: 11, scope: !921)
!925 = !DILocation(line: 630, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !77, line: 630, column: 11)
!927 = !DILocation(line: 630, column: 11, scope: !921)
!928 = !DILocation(line: 632, column: 26, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !77, line: 632, column: 15)
!930 = distinct !DILexicalBlock(scope: !926, file: !77, line: 631, column: 9)
!931 = !DILocation(line: 632, column: 34, scope: !929)
!932 = !DILocation(line: 632, column: 37, scope: !929)
!933 = !DILocation(line: 632, column: 15, scope: !930)
!934 = !DILocation(line: 640, column: 16, scope: !921)
!935 = distinct !{!935, !916, !936, !910}
!936 = !DILocation(line: 641, column: 5, scope: !133)
!937 = !DILocation(line: 644, column: 3, scope: !133)
!938 = !DILocation(line: 0, scope: !875, inlinedAt: !939)
!939 = distinct !DILocation(line: 648, column: 31, scope: !133)
!940 = !DILocation(line: 0, scope: !875, inlinedAt: !941)
!941 = distinct !DILocation(line: 649, column: 31, scope: !133)
!942 = !DILocation(line: 0, scope: !875, inlinedAt: !943)
!943 = distinct !DILocation(line: 650, column: 31, scope: !133)
!944 = !DILocation(line: 0, scope: !875, inlinedAt: !945)
!945 = distinct !DILocation(line: 651, column: 31, scope: !133)
!946 = !DILocation(line: 0, scope: !875, inlinedAt: !947)
!947 = distinct !DILocation(line: 652, column: 31, scope: !133)
!948 = !DILocation(line: 0, scope: !875, inlinedAt: !949)
!949 = distinct !DILocation(line: 653, column: 31, scope: !133)
!950 = !DILocation(line: 0, scope: !875, inlinedAt: !951)
!951 = distinct !DILocation(line: 654, column: 31, scope: !133)
!952 = !DILocation(line: 0, scope: !875, inlinedAt: !953)
!953 = distinct !DILocation(line: 655, column: 31, scope: !133)
!954 = !DILocation(line: 0, scope: !875, inlinedAt: !955)
!955 = distinct !DILocation(line: 656, column: 31, scope: !133)
!956 = !DILocation(line: 0, scope: !875, inlinedAt: !957)
!957 = distinct !DILocation(line: 657, column: 31, scope: !133)
!958 = !DILocation(line: 663, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !133, file: !77, line: 663, column: 7)
!960 = !DILocation(line: 664, column: 7, scope: !959)
!961 = !DILocation(line: 664, column: 10, scope: !959)
!962 = !DILocation(line: 663, column: 7, scope: !133)
!963 = !DILocation(line: 669, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !77, line: 665, column: 5)
!965 = !DILocation(line: 671, column: 5, scope: !964)
!966 = !DILocation(line: 676, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !959, file: !77, line: 673, column: 5)
!968 = !DILocation(line: 679, column: 3, scope: !133)
!969 = !DILocation(line: 683, column: 3, scope: !133)
!970 = !DILocation(line: 686, column: 3, scope: !133)
!971 = !DILocation(line: 688, column: 3, scope: !133)
!972 = !DILocation(line: 691, column: 3, scope: !133)
!973 = !DILocation(line: 695, column: 3, scope: !133)
!974 = !DILocation(line: 696, column: 1, scope: !133)
!975 = !DISubprogram(name: "setlocale", scope: !976, file: !976, line: 122, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!977 = !DISubroutineType(types: !978)
!978 = !{!99, !78, !105}
!979 = !DISubprogram(name: "strncmp", scope: !980, file: !980, line: 159, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!981 = !DISubroutineType(types: !982)
!982 = !{!78, !105, !105, !102}
!983 = !DISubprogram(name: "exit", scope: !984, file: !984, line: 624, type: !786, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!984 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!985 = !DISubprogram(name: "getenv", scope: !984, file: !984, line: 641, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!99, !105}
!988 = !DISubprogram(name: "strcmp", scope: !980, file: !980, line: 156, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!78, !105, !105}
!991 = !DISubprogram(name: "strspn", scope: !980, file: !980, line: 297, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DISubroutineType(types: !993)
!993 = !{!104, !105, !105}
!994 = !DISubprogram(name: "strchr", scope: !980, file: !980, line: 246, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!99, !105, !78}
!997 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1003 = !DISubprogram(name: "strcspn", scope: !980, file: !980, line: 293, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubprogram(name: "fwrite_unlocked", scope: !382, file: !382, line: 704, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!102, !1007, !102, !102, !853}
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1010 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 127, type: !1011, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1014)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!78, !78, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020}
!1015 = !DILocalVariable(name: "argc", arg: 1, scope: !1010, file: !2, line: 127, type: !78)
!1016 = !DILocalVariable(name: "argv", arg: 2, scope: !1010, file: !2, line: 127, type: !1013)
!1017 = !DILocalVariable(name: "multiple_names", scope: !1010, file: !2, line: 129, type: !143)
!1018 = !DILocalVariable(name: "use_nuls", scope: !1010, file: !2, line: 130, type: !143)
!1019 = !DILocalVariable(name: "suffix", scope: !1010, file: !2, line: 131, type: !105)
!1020 = !DILocalVariable(name: "c", scope: !1021, file: !2, line: 143, type: !78)
!1021 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 142, column: 5)
!1022 = !DILocation(line: 0, scope: !1010)
!1023 = !DILocation(line: 134, column: 21, scope: !1010)
!1024 = !DILocation(line: 134, column: 3, scope: !1010)
!1025 = !DILocation(line: 135, column: 3, scope: !1010)
!1026 = !DILocation(line: 136, column: 3, scope: !1010)
!1027 = !DILocation(line: 137, column: 3, scope: !1010)
!1028 = !DILocation(line: 139, column: 3, scope: !1010)
!1029 = !DILocation(line: 141, column: 3, scope: !1010)
!1030 = !DILocation(line: 145, column: 11, scope: !1021)
!1031 = !DILocation(line: 143, column: 15, scope: !1021)
!1032 = !DILocation(line: 0, scope: !1021)
!1033 = distinct !{!1033, !1034}
!1034 = !{!"llvm.loop.peeled.count", i32 1}
!1035 = !DILocation(line: 151, column: 20, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 149, column: 9)
!1037 = !DILocation(line: 151, column: 11, scope: !1036)
!1038 = !DILocation(line: 163, column: 9, scope: !1036)
!1039 = !DILocation(line: 164, column: 9, scope: !1036)
!1040 = !DILocation(line: 167, column: 11, scope: !1036)
!1041 = !DILocation(line: 169, column: 5, scope: !1010)
!1042 = !DILocation(line: 171, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 171, column: 7)
!1044 = !DILocation(line: 171, column: 12, scope: !1043)
!1045 = !DILocation(line: 171, column: 7, scope: !1010)
!1046 = !DILocation(line: 173, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 172, column: 5)
!1048 = !DILocation(line: 174, column: 7, scope: !1047)
!1049 = !DILocation(line: 177, column: 23, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 177, column: 7)
!1051 = !DILocation(line: 179, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 178, column: 5)
!1053 = !DILocation(line: 180, column: 7, scope: !1052)
!1054 = !DILocation(line: 183, column: 7, scope: !1010)
!1055 = !DILocation(line: 185, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 185, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 184, column: 5)
!1058 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 183, column: 7)
!1059 = !DILocation(line: 186, column: 27, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 185, column: 7)
!1061 = !DILocation(line: 186, column: 9, scope: !1060)
!1062 = !DILocation(line: 185, column: 35, scope: !1060)
!1063 = !DILocation(line: 185, column: 21, scope: !1060)
!1064 = distinct !{!1064, !1055, !1065, !910}
!1065 = !DILocation(line: 186, column: 57, scope: !1056)
!1066 = !DILocation(line: 189, column: 23, scope: !1058)
!1067 = !DILocation(line: 190, column: 34, scope: !1058)
!1068 = !DILocation(line: 190, column: 23, scope: !1058)
!1069 = !DILocation(line: 190, column: 44, scope: !1058)
!1070 = !DILocation(line: 189, column: 5, scope: !1058)
!1071 = !DILocation(line: 194, column: 1, scope: !1010)
!1072 = !DISubprogram(name: "bindtextdomain", scope: !846, file: !846, line: 86, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!99, !105, !105}
!1075 = !DISubprogram(name: "textdomain", scope: !846, file: !846, line: 82, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubprogram(name: "atexit", scope: !984, file: !984, line: 602, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!78, !421}
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
!1125 = distinct !{!1125, !1115, !1126, !910}
!1126 = !DILocation(line: 98, column: 7, scope: !1102, inlinedAt: !1110)
!1127 = !DILocation(line: 99, column: 7, scope: !1102, inlinedAt: !1110)
!1128 = !DILocation(line: 100, column: 9, scope: !1129, inlinedAt: !1110)
!1129 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 99, column: 7)
!1130 = !DILocation(line: 100, column: 5, scope: !1129, inlinedAt: !1110)
!1131 = !DILocation(line: 121, column: 3, scope: !1085)
!1132 = !DILocation(line: 122, column: 3, scope: !1085)
!1133 = !DILocalVariable(name: "__c", arg: 1, scope: !1134, file: !1135, line: 108, type: !78)
!1134 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1135, file: !1135, line: 108, type: !1136, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1138)
!1135 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!78, !78}
!1138 = !{!1133}
!1139 = !DILocation(line: 0, scope: !1134, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 122, column: 3, scope: !1085)
!1141 = !DILocation(line: 110, column: 10, scope: !1134, inlinedAt: !1140)
!1142 = !{!1143, !797, i64 40}
!1143 = !{!"_IO_FILE", !864, i64 0, !797, i64 8, !797, i64 16, !797, i64 24, !797, i64 32, !797, i64 40, !797, i64 48, !797, i64 56, !797, i64 64, !797, i64 72, !797, i64 80, !797, i64 88, !797, i64 96, !797, i64 104, !864, i64 112, !864, i64 116, !1144, i64 120, !905, i64 128, !798, i64 130, !798, i64 131, !797, i64 136, !1144, i64 144, !797, i64 152, !797, i64 160, !797, i64 168, !797, i64 176, !1144, i64 184, !864, i64 192, !798, i64 196}
!1144 = !{!"long", !798, i64 0}
!1145 = !{!1143, !797, i64 48}
!1146 = !{!"branch_weights", i32 2000, i32 1}
!1147 = !DILocation(line: 123, column: 3, scope: !1085)
!1148 = !DILocation(line: 124, column: 1, scope: !1085)
!1149 = !DISubprogram(name: "strlen", scope: !980, file: !980, line: 407, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!104, !105}
!1152 = !DISubprogram(name: "__overflow", scope: !382, file: !382, line: 886, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!78, !156, !78}
!1155 = !DISubprogram(name: "free", scope: !984, file: !984, line: 555, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !100}
!1158 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !814, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1159)
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
!1172 = !{!"_Bool", !798, i64 0}
!1173 = !DILocation(line: 90, column: 1, scope: !1164)
!1174 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !422, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1175)
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
!1211 = !DISubprogram(name: "_exit", scope: !1212, file: !1212, line: 624, type: !786, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1212 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1213 = distinct !DISubprogram(name: "base_name", scope: !708, file: !708, line: 27, type: !986, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219}
!1215 = !DILocalVariable(name: "name", arg: 1, scope: !1213, file: !708, line: 27, type: !105)
!1216 = !DILocalVariable(name: "base", scope: !1213, file: !708, line: 29, type: !105)
!1217 = !DILocalVariable(name: "length", scope: !1213, file: !708, line: 30, type: !740)
!1218 = !DILocalVariable(name: "dotslash_len", scope: !1213, file: !708, line: 31, type: !78)
!1219 = !DILocalVariable(name: "p", scope: !1213, file: !708, line: 53, type: !99)
!1220 = !DILocation(line: 0, scope: !1213)
!1221 = !DILocation(line: 29, column: 22, scope: !1213)
!1222 = !DILocation(line: 32, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !708, line: 32, column: 7)
!1224 = !DILocation(line: 32, column: 7, scope: !1213)
!1225 = !DILocation(line: 34, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !708, line: 33, column: 5)
!1227 = !DILocation(line: 37, column: 17, scope: !1226)
!1228 = !DILocation(line: 37, column: 14, scope: !1226)
!1229 = !DILocation(line: 43, column: 5, scope: !1226)
!1230 = !DILocation(line: 49, column: 16, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !708, line: 45, column: 5)
!1232 = !DILocation(line: 0, scope: !1223)
!1233 = !DILocation(line: 53, column: 45, scope: !1213)
!1234 = !DILocation(line: 53, column: 13, scope: !1213)
!1235 = !DILocalVariable(name: "__dest", arg: 1, scope: !1236, file: !1237, line: 26, type: !1240)
!1236 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1241)
!1237 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!100, !1240, !1007, !102}
!1240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1241 = !{!1235, !1242, !1243}
!1242 = !DILocalVariable(name: "__src", arg: 2, scope: !1236, file: !1237, line: 26, type: !1007)
!1243 = !DILocalVariable(name: "__len", arg: 3, scope: !1236, file: !1237, line: 26, type: !102)
!1244 = !DILocation(line: 0, scope: !1236, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 61, column: 3, scope: !1213)
!1246 = !DILocation(line: 29, column: 10, scope: !1236, inlinedAt: !1245)
!1247 = !DILocation(line: 62, column: 3, scope: !1213)
!1248 = !DILocation(line: 62, column: 28, scope: !1213)
!1249 = !DILocation(line: 63, column: 3, scope: !1213)
!1250 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !710, file: !710, line: 31, type: !1251, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!143, !99}
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DILocalVariable(name: "file", arg: 1, scope: !1250, file: !710, line: 31, type: !99)
!1255 = !DILocalVariable(name: "base", scope: !1250, file: !710, line: 33, type: !99)
!1256 = !DILocalVariable(name: "base_lim", scope: !1250, file: !710, line: 39, type: !99)
!1257 = !DILocalVariable(name: "had_slash", scope: !1250, file: !710, line: 40, type: !143)
!1258 = !DILocation(line: 0, scope: !1250)
!1259 = !DILocation(line: 33, column: 16, scope: !1250)
!1260 = !DILocation(line: 37, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !710, line: 37, column: 7)
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
!1286 = !{i64 0, i64 8, !796, i64 8, i64 8, !796, i64 16, i64 8, !796, i64 24, i64 4, !863, i64 28, i64 4, !863}
!1287 = !DILocation(line: 282, column: 1, scope: !1269)
!1288 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !422, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "stdout_fd", scope: !1288, file: !371, line: 166, type: !78)
!1291 = !DILocation(line: 0, scope: !1288)
!1292 = !DILocalVariable(name: "fd", arg: 1, scope: !1293, file: !371, line: 145, type: !78)
!1293 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1136, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1294)
!1294 = !{!1292}
!1295 = !DILocation(line: 0, scope: !1293, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 182, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !371, line: 182, column: 7)
!1298 = !DILocation(line: 157, column: 15, scope: !1293, inlinedAt: !1296)
!1299 = !DILocation(line: 157, column: 12, scope: !1293, inlinedAt: !1296)
!1300 = !DILocation(line: 182, column: 7, scope: !1288)
!1301 = !DILocation(line: 184, column: 5, scope: !1297)
!1302 = !DILocation(line: 185, column: 1, scope: !1288)
!1303 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1270, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1304)
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "status", arg: 1, scope: !1303, file: !371, line: 219, type: !78)
!1306 = !DILocalVariable(name: "errnum", arg: 2, scope: !1303, file: !371, line: 219, type: !78)
!1307 = !DILocalVariable(name: "message", arg: 3, scope: !1303, file: !371, line: 219, type: !105)
!1308 = !DILocalVariable(name: "args", arg: 4, scope: !1303, file: !371, line: 219, type: !381)
!1309 = distinct !DIAssignID()
!1310 = !DILocation(line: 0, scope: !1303)
!1311 = !DILocation(line: 229, column: 13, scope: !1303)
!1312 = !DILocation(line: 135, column: 10, scope: !1313, inlinedAt: !1355)
!1313 = distinct !DISubprogram(name: "vfprintf", scope: !850, file: !850, line: 132, type: !1314, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1351)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!78, !1316, !854, !383}
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
!1352 = !DILocalVariable(name: "__stream", arg: 1, scope: !1313, file: !850, line: 132, type: !1316)
!1353 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1313, file: !850, line: 133, type: !854)
!1354 = !DILocalVariable(name: "__ap", arg: 3, scope: !1313, file: !850, line: 133, type: !383)
!1355 = distinct !DILocation(line: 229, column: 3, scope: !1303)
!1356 = !{!1357, !1359}
!1357 = distinct !{!1357, !1358, !"vfprintf.inline: argument 0"}
!1358 = distinct !{!1358, !"vfprintf.inline"}
!1359 = distinct !{!1359, !1358, !"vfprintf.inline: argument 1"}
!1360 = !DILocation(line: 229, column: 3, scope: !1303)
!1361 = !DILocation(line: 0, scope: !1313, inlinedAt: !1355)
!1362 = !DILocation(line: 232, column: 3, scope: !1303)
!1363 = !DILocation(line: 233, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 233, column: 7)
!1365 = !DILocation(line: 233, column: 7, scope: !1303)
!1366 = !DILocalVariable(name: "errbuf", scope: !1367, file: !371, line: 193, type: !1371)
!1367 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !786, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1368)
!1368 = !{!1369, !1370, !1366}
!1369 = !DILocalVariable(name: "errnum", arg: 1, scope: !1367, file: !371, line: 188, type: !78)
!1370 = !DILocalVariable(name: "s", scope: !1367, file: !371, line: 190, type: !105)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 1024)
!1374 = !DILocation(line: 0, scope: !1367, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 234, column: 5, scope: !1364)
!1376 = !DILocation(line: 193, column: 3, scope: !1367, inlinedAt: !1375)
!1377 = !DILocation(line: 195, column: 7, scope: !1367, inlinedAt: !1375)
!1378 = !DILocation(line: 207, column: 9, scope: !1379, inlinedAt: !1375)
!1379 = distinct !DILexicalBlock(scope: !1367, file: !371, line: 207, column: 7)
!1380 = !DILocation(line: 207, column: 7, scope: !1367, inlinedAt: !1375)
!1381 = !DILocation(line: 208, column: 9, scope: !1379, inlinedAt: !1375)
!1382 = !DILocation(line: 208, column: 5, scope: !1379, inlinedAt: !1375)
!1383 = !DILocation(line: 214, column: 3, scope: !1367, inlinedAt: !1375)
!1384 = !DILocation(line: 216, column: 1, scope: !1367, inlinedAt: !1375)
!1385 = !DILocation(line: 234, column: 5, scope: !1364)
!1386 = !DILocation(line: 238, column: 3, scope: !1303)
!1387 = !DILocalVariable(name: "__c", arg: 1, scope: !1388, file: !1135, line: 101, type: !78)
!1388 = distinct !DISubprogram(name: "putc_unlocked", scope: !1135, file: !1135, line: 101, type: !1389, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!78, !78, !1317}
!1391 = !{!1387, !1392}
!1392 = !DILocalVariable(name: "__stream", arg: 2, scope: !1388, file: !1135, line: 101, type: !1317)
!1393 = !DILocation(line: 0, scope: !1388, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 238, column: 3, scope: !1303)
!1395 = !DILocation(line: 103, column: 10, scope: !1388, inlinedAt: !1394)
!1396 = !DILocation(line: 240, column: 3, scope: !1303)
!1397 = !DILocation(line: 241, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1303, file: !371, line: 241, column: 7)
!1399 = !DILocation(line: 241, column: 7, scope: !1303)
!1400 = !DILocation(line: 242, column: 5, scope: !1398)
!1401 = !DILocation(line: 243, column: 1, scope: !1303)
!1402 = !DISubprogram(name: "__vfprintf_chk", scope: !850, file: !850, line: 96, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!78, !1316, !78, !854, !383}
!1405 = !DISubprogram(name: "strerror_r", scope: !980, file: !980, line: 444, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!99, !78, !99, !102}
!1408 = !DISubprogram(name: "fflush_unlocked", scope: !382, file: !382, line: 239, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!78, !1317}
!1411 = !DISubprogram(name: "fcntl", scope: !1412, file: !1412, line: 149, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1412 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!78, !78, !78, null}
!1415 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1416, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !78, !78, !105, null}
!1418 = !{!1419, !1420, !1421, !1422}
!1419 = !DILocalVariable(name: "status", arg: 1, scope: !1415, file: !371, line: 285, type: !78)
!1420 = !DILocalVariable(name: "errnum", arg: 2, scope: !1415, file: !371, line: 285, type: !78)
!1421 = !DILocalVariable(name: "message", arg: 3, scope: !1415, file: !371, line: 285, type: !105)
!1422 = !DILocalVariable(name: "ap", scope: !1415, file: !371, line: 287, type: !381)
!1423 = distinct !DIAssignID()
!1424 = !DILocation(line: 0, scope: !1415)
!1425 = !DILocation(line: 287, column: 3, scope: !1415)
!1426 = !DILocation(line: 288, column: 3, scope: !1415)
!1427 = !DILocation(line: 289, column: 3, scope: !1415)
!1428 = !DILocation(line: 290, column: 3, scope: !1415)
!1429 = !DILocation(line: 291, column: 1, scope: !1415)
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
!1469 = !DILocalVariable(name: "ap", scope: !1460, file: !371, line: 362, type: !381)
!1470 = distinct !DIAssignID()
!1471 = !DILocation(line: 0, scope: !1460)
!1472 = !DILocation(line: 362, column: 3, scope: !1460)
!1473 = !DILocation(line: 363, column: 3, scope: !1460)
!1474 = !DILocation(line: 364, column: 3, scope: !1460)
!1475 = !DILocation(line: 366, column: 3, scope: !1460)
!1476 = !DILocation(line: 367, column: 1, scope: !1460)
!1477 = distinct !DISubprogram(name: "getprogname", scope: !712, file: !712, line: 54, type: !1478, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!105}
!1480 = !DILocation(line: 58, column: 10, scope: !1477)
!1481 = !DILocation(line: 58, column: 3, scope: !1477)
!1482 = distinct !DISubprogram(name: "set_program_name", scope: !427, file: !427, line: 37, type: !814, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "argv0", arg: 1, scope: !1482, file: !427, line: 37, type: !105)
!1485 = !DILocalVariable(name: "slash", scope: !1482, file: !427, line: 44, type: !105)
!1486 = !DILocalVariable(name: "base", scope: !1482, file: !427, line: 45, type: !105)
!1487 = !DILocation(line: 0, scope: !1482)
!1488 = !DILocation(line: 44, column: 23, scope: !1482)
!1489 = !DILocation(line: 45, column: 22, scope: !1482)
!1490 = !DILocation(line: 46, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !427, line: 46, column: 7)
!1492 = !DILocation(line: 46, column: 9, scope: !1491)
!1493 = !DILocation(line: 46, column: 25, scope: !1491)
!1494 = !DILocation(line: 46, column: 40, scope: !1491)
!1495 = !DILocalVariable(name: "__s1", arg: 1, scope: !1496, file: !876, line: 974, type: !1008)
!1496 = distinct !DISubprogram(name: "memeq", scope: !876, file: !876, line: 974, type: !1497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!143, !1008, !1008, !102}
!1499 = !{!1495, !1500, !1501}
!1500 = !DILocalVariable(name: "__s2", arg: 2, scope: !1496, file: !876, line: 974, type: !1008)
!1501 = !DILocalVariable(name: "__n", arg: 3, scope: !1496, file: !876, line: 974, type: !102)
!1502 = !DILocation(line: 0, scope: !1496, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 46, column: 28, scope: !1491)
!1504 = !DILocation(line: 976, column: 11, scope: !1496, inlinedAt: !1503)
!1505 = !DILocation(line: 976, column: 10, scope: !1496, inlinedAt: !1503)
!1506 = !DILocation(line: 46, column: 7, scope: !1482)
!1507 = !DILocation(line: 49, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !427, line: 49, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1491, file: !427, line: 47, column: 5)
!1510 = !DILocation(line: 49, column: 36, scope: !1508)
!1511 = !DILocation(line: 49, column: 11, scope: !1509)
!1512 = !DILocation(line: 65, column: 16, scope: !1482)
!1513 = !DILocation(line: 71, column: 27, scope: !1482)
!1514 = !DILocation(line: 74, column: 33, scope: !1482)
!1515 = !DILocation(line: 76, column: 1, scope: !1482)
!1516 = !DISubprogram(name: "strrchr", scope: !980, file: !980, line: 273, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = distinct !DIAssignID()
!1518 = !DILocation(line: 0, scope: !436)
!1519 = distinct !DIAssignID()
!1520 = !DILocation(line: 40, column: 29, scope: !436)
!1521 = !DILocation(line: 41, column: 19, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !436, file: !437, line: 41, column: 7)
!1523 = !DILocation(line: 41, column: 7, scope: !436)
!1524 = !DILocation(line: 47, column: 3, scope: !436)
!1525 = !DILocation(line: 48, column: 3, scope: !436)
!1526 = !DILocalVariable(name: "ps", arg: 1, scope: !1527, file: !1528, line: 1135, type: !1531)
!1527 = distinct !DISubprogram(name: "mbszero", scope: !1528, file: !1528, line: 1135, type: !1529, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1532)
!1528 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!1532 = !{!1526}
!1533 = !DILocation(line: 0, scope: !1527, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 48, column: 18, scope: !436)
!1535 = !DILocalVariable(name: "__dest", arg: 1, scope: !1536, file: !1237, line: 57, type: !100)
!1536 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!100, !100, !78, !102}
!1539 = !{!1535, !1540, !1541}
!1540 = !DILocalVariable(name: "__ch", arg: 2, scope: !1536, file: !1237, line: 57, type: !78)
!1541 = !DILocalVariable(name: "__len", arg: 3, scope: !1536, file: !1237, line: 57, type: !102)
!1542 = !DILocation(line: 0, scope: !1536, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 1137, column: 3, scope: !1527, inlinedAt: !1534)
!1544 = !DILocation(line: 59, column: 10, scope: !1536, inlinedAt: !1543)
!1545 = !DILocation(line: 49, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !436, file: !437, line: 49, column: 7)
!1547 = !DILocation(line: 49, column: 39, scope: !1546)
!1548 = !DILocation(line: 49, column: 44, scope: !1546)
!1549 = !DILocation(line: 54, column: 1, scope: !436)
!1550 = !DISubprogram(name: "mbrtoc32", scope: !448, file: !448, line: 57, type: !1551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!102, !1553, !854, !102, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1531)
!1556 = distinct !DISubprogram(name: "clone_quoting_options", scope: !467, file: !467, line: 113, type: !1557, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1560)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1559, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1560 = !{!1561, !1562, !1563}
!1561 = !DILocalVariable(name: "o", arg: 1, scope: !1556, file: !467, line: 113, type: !1559)
!1562 = !DILocalVariable(name: "saved_errno", scope: !1556, file: !467, line: 115, type: !78)
!1563 = !DILocalVariable(name: "p", scope: !1556, file: !467, line: 116, type: !1559)
!1564 = !DILocation(line: 0, scope: !1556)
!1565 = !DILocation(line: 115, column: 21, scope: !1556)
!1566 = !DILocation(line: 116, column: 40, scope: !1556)
!1567 = !DILocation(line: 116, column: 31, scope: !1556)
!1568 = !DILocation(line: 118, column: 9, scope: !1556)
!1569 = !DILocation(line: 119, column: 3, scope: !1556)
!1570 = distinct !DISubprogram(name: "get_quoting_style", scope: !467, file: !467, line: 124, type: !1571, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1575)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!493, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!1575 = !{!1576}
!1576 = !DILocalVariable(name: "o", arg: 1, scope: !1570, file: !467, line: 124, type: !1573)
!1577 = !DILocation(line: 0, scope: !1570)
!1578 = !DILocation(line: 126, column: 11, scope: !1570)
!1579 = !DILocation(line: 126, column: 46, scope: !1570)
!1580 = !{!1581, !864, i64 0}
!1581 = !{!"quoting_options", !864, i64 0, !864, i64 4, !798, i64 8, !797, i64 40, !797, i64 48}
!1582 = !DILocation(line: 126, column: 3, scope: !1570)
!1583 = distinct !DISubprogram(name: "set_quoting_style", scope: !467, file: !467, line: 132, type: !1584, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1559, !493}
!1586 = !{!1587, !1588}
!1587 = !DILocalVariable(name: "o", arg: 1, scope: !1583, file: !467, line: 132, type: !1559)
!1588 = !DILocalVariable(name: "s", arg: 2, scope: !1583, file: !467, line: 132, type: !493)
!1589 = !DILocation(line: 0, scope: !1583)
!1590 = !DILocation(line: 134, column: 4, scope: !1583)
!1591 = !DILocation(line: 134, column: 45, scope: !1583)
!1592 = !DILocation(line: 135, column: 1, scope: !1583)
!1593 = distinct !DISubprogram(name: "set_char_quoting", scope: !467, file: !467, line: 143, type: !1594, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!78, !1559, !4, !78}
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1603, !1604}
!1597 = !DILocalVariable(name: "o", arg: 1, scope: !1593, file: !467, line: 143, type: !1559)
!1598 = !DILocalVariable(name: "c", arg: 2, scope: !1593, file: !467, line: 143, type: !4)
!1599 = !DILocalVariable(name: "i", arg: 3, scope: !1593, file: !467, line: 143, type: !78)
!1600 = !DILocalVariable(name: "uc", scope: !1593, file: !467, line: 145, type: !107)
!1601 = !DILocalVariable(name: "p", scope: !1593, file: !467, line: 146, type: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1603 = !DILocalVariable(name: "shift", scope: !1593, file: !467, line: 148, type: !78)
!1604 = !DILocalVariable(name: "r", scope: !1593, file: !467, line: 149, type: !84)
!1605 = !DILocation(line: 0, scope: !1593)
!1606 = !DILocation(line: 147, column: 6, scope: !1593)
!1607 = !DILocation(line: 147, column: 41, scope: !1593)
!1608 = !DILocation(line: 147, column: 62, scope: !1593)
!1609 = !DILocation(line: 147, column: 57, scope: !1593)
!1610 = !DILocation(line: 148, column: 15, scope: !1593)
!1611 = !DILocation(line: 149, column: 21, scope: !1593)
!1612 = !DILocation(line: 149, column: 24, scope: !1593)
!1613 = !DILocation(line: 149, column: 34, scope: !1593)
!1614 = !DILocation(line: 150, column: 19, scope: !1593)
!1615 = !DILocation(line: 150, column: 24, scope: !1593)
!1616 = !DILocation(line: 150, column: 6, scope: !1593)
!1617 = !DILocation(line: 151, column: 3, scope: !1593)
!1618 = distinct !DISubprogram(name: "set_quoting_flags", scope: !467, file: !467, line: 159, type: !1619, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!78, !1559, !78}
!1621 = !{!1622, !1623, !1624}
!1622 = !DILocalVariable(name: "o", arg: 1, scope: !1618, file: !467, line: 159, type: !1559)
!1623 = !DILocalVariable(name: "i", arg: 2, scope: !1618, file: !467, line: 159, type: !78)
!1624 = !DILocalVariable(name: "r", scope: !1618, file: !467, line: 163, type: !78)
!1625 = !DILocation(line: 0, scope: !1618)
!1626 = !DILocation(line: 161, column: 8, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !467, line: 161, column: 7)
!1628 = !DILocation(line: 161, column: 7, scope: !1618)
!1629 = !DILocation(line: 163, column: 14, scope: !1618)
!1630 = !{!1581, !864, i64 4}
!1631 = !DILocation(line: 164, column: 12, scope: !1618)
!1632 = !DILocation(line: 165, column: 3, scope: !1618)
!1633 = distinct !DISubprogram(name: "set_custom_quoting", scope: !467, file: !467, line: 169, type: !1634, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1559, !105, !105}
!1636 = !{!1637, !1638, !1639}
!1637 = !DILocalVariable(name: "o", arg: 1, scope: !1633, file: !467, line: 169, type: !1559)
!1638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1633, file: !467, line: 170, type: !105)
!1639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1633, file: !467, line: 170, type: !105)
!1640 = !DILocation(line: 0, scope: !1633)
!1641 = !DILocation(line: 172, column: 8, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1633, file: !467, line: 172, column: 7)
!1643 = !DILocation(line: 172, column: 7, scope: !1633)
!1644 = !DILocation(line: 174, column: 12, scope: !1633)
!1645 = !DILocation(line: 175, column: 8, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1633, file: !467, line: 175, column: 7)
!1647 = !DILocation(line: 175, column: 19, scope: !1646)
!1648 = !DILocation(line: 176, column: 5, scope: !1646)
!1649 = !DILocation(line: 177, column: 6, scope: !1633)
!1650 = !DILocation(line: 177, column: 17, scope: !1633)
!1651 = !{!1581, !797, i64 40}
!1652 = !DILocation(line: 178, column: 6, scope: !1633)
!1653 = !DILocation(line: 178, column: 18, scope: !1633)
!1654 = !{!1581, !797, i64 48}
!1655 = !DILocation(line: 179, column: 1, scope: !1633)
!1656 = !DISubprogram(name: "abort", scope: !984, file: !984, line: 598, type: !422, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1657 = distinct !DISubprogram(name: "quotearg_buffer", scope: !467, file: !467, line: 774, type: !1658, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!102, !99, !102, !105, !102, !1573}
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1661 = !DILocalVariable(name: "buffer", arg: 1, scope: !1657, file: !467, line: 774, type: !99)
!1662 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1657, file: !467, line: 774, type: !102)
!1663 = !DILocalVariable(name: "arg", arg: 3, scope: !1657, file: !467, line: 775, type: !105)
!1664 = !DILocalVariable(name: "argsize", arg: 4, scope: !1657, file: !467, line: 775, type: !102)
!1665 = !DILocalVariable(name: "o", arg: 5, scope: !1657, file: !467, line: 776, type: !1573)
!1666 = !DILocalVariable(name: "p", scope: !1657, file: !467, line: 778, type: !1573)
!1667 = !DILocalVariable(name: "saved_errno", scope: !1657, file: !467, line: 779, type: !78)
!1668 = !DILocalVariable(name: "r", scope: !1657, file: !467, line: 780, type: !102)
!1669 = !DILocation(line: 0, scope: !1657)
!1670 = !DILocation(line: 778, column: 37, scope: !1657)
!1671 = !DILocation(line: 779, column: 21, scope: !1657)
!1672 = !DILocation(line: 781, column: 43, scope: !1657)
!1673 = !DILocation(line: 781, column: 53, scope: !1657)
!1674 = !DILocation(line: 781, column: 63, scope: !1657)
!1675 = !DILocation(line: 782, column: 43, scope: !1657)
!1676 = !DILocation(line: 782, column: 58, scope: !1657)
!1677 = !DILocation(line: 780, column: 14, scope: !1657)
!1678 = !DILocation(line: 783, column: 9, scope: !1657)
!1679 = !DILocation(line: 784, column: 3, scope: !1657)
!1680 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !467, file: !467, line: 251, type: !1681, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1685)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!102, !99, !102, !105, !102, !493, !78, !1683, !105, !105}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1711, !1713, !1716, !1717, !1718, !1719, !1722, !1723, !1725, !1726, !1729, !1733, !1734, !1742, !1745, !1746, !1747}
!1686 = !DILocalVariable(name: "buffer", arg: 1, scope: !1680, file: !467, line: 251, type: !99)
!1687 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1680, file: !467, line: 251, type: !102)
!1688 = !DILocalVariable(name: "arg", arg: 3, scope: !1680, file: !467, line: 252, type: !105)
!1689 = !DILocalVariable(name: "argsize", arg: 4, scope: !1680, file: !467, line: 252, type: !102)
!1690 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1680, file: !467, line: 253, type: !493)
!1691 = !DILocalVariable(name: "flags", arg: 6, scope: !1680, file: !467, line: 253, type: !78)
!1692 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1680, file: !467, line: 254, type: !1683)
!1693 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1680, file: !467, line: 255, type: !105)
!1694 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1680, file: !467, line: 256, type: !105)
!1695 = !DILocalVariable(name: "unibyte_locale", scope: !1680, file: !467, line: 258, type: !143)
!1696 = !DILocalVariable(name: "len", scope: !1680, file: !467, line: 260, type: !102)
!1697 = !DILocalVariable(name: "orig_buffersize", scope: !1680, file: !467, line: 261, type: !102)
!1698 = !DILocalVariable(name: "quote_string", scope: !1680, file: !467, line: 262, type: !105)
!1699 = !DILocalVariable(name: "quote_string_len", scope: !1680, file: !467, line: 263, type: !102)
!1700 = !DILocalVariable(name: "backslash_escapes", scope: !1680, file: !467, line: 264, type: !143)
!1701 = !DILocalVariable(name: "elide_outer_quotes", scope: !1680, file: !467, line: 265, type: !143)
!1702 = !DILocalVariable(name: "encountered_single_quote", scope: !1680, file: !467, line: 266, type: !143)
!1703 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1680, file: !467, line: 267, type: !143)
!1704 = !DILabel(scope: !1680, name: "process_input", file: !467, line: 308)
!1705 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1680, file: !467, line: 309, type: !143)
!1706 = !DILocalVariable(name: "lq", scope: !1707, file: !467, line: 361, type: !105)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !467, line: 361, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !467, line: 360, column: 13)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !467, line: 333, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 312, column: 5)
!1711 = !DILocalVariable(name: "i", scope: !1712, file: !467, line: 395, type: !102)
!1712 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 395, column: 3)
!1713 = !DILocalVariable(name: "is_right_quote", scope: !1714, file: !467, line: 397, type: !143)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !467, line: 396, column: 5)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !467, line: 395, column: 3)
!1716 = !DILocalVariable(name: "escaping", scope: !1714, file: !467, line: 398, type: !143)
!1717 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1714, file: !467, line: 399, type: !143)
!1718 = !DILocalVariable(name: "c", scope: !1714, file: !467, line: 417, type: !107)
!1719 = !DILabel(scope: !1720, name: "c_and_shell_escape", file: !467, line: 502)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 478, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 419, column: 9)
!1722 = !DILabel(scope: !1720, name: "c_escape", file: !467, line: 507)
!1723 = !DILocalVariable(name: "m", scope: !1724, file: !467, line: 598, type: !102)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 596, column: 11)
!1725 = !DILocalVariable(name: "printable", scope: !1724, file: !467, line: 600, type: !143)
!1726 = !DILocalVariable(name: "mbs", scope: !1727, file: !467, line: 609, type: !554)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !467, line: 608, column: 15)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !467, line: 602, column: 17)
!1729 = !DILocalVariable(name: "w", scope: !1730, file: !467, line: 618, type: !447)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !467, line: 617, column: 19)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !467, line: 616, column: 17)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !467, line: 616, column: 17)
!1733 = !DILocalVariable(name: "bytes", scope: !1730, file: !467, line: 619, type: !102)
!1734 = !DILocalVariable(name: "j", scope: !1735, file: !467, line: 648, type: !102)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !467, line: 648, column: 29)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !467, line: 647, column: 27)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !467, line: 645, column: 29)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !467, line: 636, column: 23)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !467, line: 628, column: 30)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !467, line: 623, column: 30)
!1741 = distinct !DILexicalBlock(scope: !1730, file: !467, line: 621, column: 25)
!1742 = !DILocalVariable(name: "ilim", scope: !1743, file: !467, line: 674, type: !102)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !467, line: 671, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1724, file: !467, line: 670, column: 17)
!1745 = !DILabel(scope: !1714, name: "store_escape", file: !467, line: 709)
!1746 = !DILabel(scope: !1714, name: "store_c", file: !467, line: 712)
!1747 = !DILabel(scope: !1680, name: "force_outer_quoting_style", file: !467, line: 753)
!1748 = distinct !DIAssignID()
!1749 = distinct !DIAssignID()
!1750 = distinct !DIAssignID()
!1751 = distinct !DIAssignID()
!1752 = distinct !DIAssignID()
!1753 = !DILocation(line: 0, scope: !1727)
!1754 = distinct !DIAssignID()
!1755 = !DILocation(line: 0, scope: !1730)
!1756 = !DILocation(line: 0, scope: !1680)
!1757 = !DILocation(line: 258, column: 25, scope: !1680)
!1758 = !DILocation(line: 258, column: 36, scope: !1680)
!1759 = !DILocation(line: 267, column: 3, scope: !1680)
!1760 = !DILocation(line: 261, column: 10, scope: !1680)
!1761 = !DILocation(line: 262, column: 15, scope: !1680)
!1762 = !DILocation(line: 263, column: 10, scope: !1680)
!1763 = !DILocation(line: 308, column: 2, scope: !1680)
!1764 = !DILocation(line: 311, column: 3, scope: !1680)
!1765 = !DILocation(line: 318, column: 11, scope: !1710)
!1766 = !DILocation(line: 319, column: 9, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !467, line: 319, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !467, line: 319, column: 9)
!1769 = distinct !DILexicalBlock(scope: !1710, file: !467, line: 318, column: 11)
!1770 = !DILocation(line: 319, column: 9, scope: !1768)
!1771 = !DILocation(line: 0, scope: !545, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 357, column: 26, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !467, line: 335, column: 11)
!1774 = distinct !DILexicalBlock(scope: !1709, file: !467, line: 334, column: 13)
!1775 = !DILocation(line: 199, column: 29, scope: !545, inlinedAt: !1772)
!1776 = !DILocation(line: 201, column: 19, scope: !1777, inlinedAt: !1772)
!1777 = distinct !DILexicalBlock(scope: !545, file: !467, line: 201, column: 7)
!1778 = !DILocation(line: 201, column: 7, scope: !545, inlinedAt: !1772)
!1779 = !DILocation(line: 229, column: 3, scope: !545, inlinedAt: !1772)
!1780 = !DILocation(line: 230, column: 3, scope: !545, inlinedAt: !1772)
!1781 = !DILocalVariable(name: "ps", arg: 1, scope: !1782, file: !1528, line: 1135, type: !1785)
!1782 = distinct !DISubprogram(name: "mbszero", scope: !1528, file: !1528, line: 1135, type: !1783, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1786)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1786 = !{!1781}
!1787 = !DILocation(line: 0, scope: !1782, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 230, column: 18, scope: !545, inlinedAt: !1772)
!1789 = !DILocalVariable(name: "__dest", arg: 1, scope: !1790, file: !1237, line: 57, type: !100)
!1790 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1791)
!1791 = !{!1789, !1792, !1793}
!1792 = !DILocalVariable(name: "__ch", arg: 2, scope: !1790, file: !1237, line: 57, type: !78)
!1793 = !DILocalVariable(name: "__len", arg: 3, scope: !1790, file: !1237, line: 57, type: !102)
!1794 = !DILocation(line: 0, scope: !1790, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 1137, column: 3, scope: !1782, inlinedAt: !1788)
!1796 = !DILocation(line: 59, column: 10, scope: !1790, inlinedAt: !1795)
!1797 = !DILocation(line: 231, column: 7, scope: !1798, inlinedAt: !1772)
!1798 = distinct !DILexicalBlock(scope: !545, file: !467, line: 231, column: 7)
!1799 = !DILocation(line: 231, column: 40, scope: !1798, inlinedAt: !1772)
!1800 = !DILocation(line: 231, column: 45, scope: !1798, inlinedAt: !1772)
!1801 = !DILocation(line: 235, column: 1, scope: !545, inlinedAt: !1772)
!1802 = !DILocation(line: 0, scope: !545, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 358, column: 27, scope: !1773)
!1804 = !DILocation(line: 199, column: 29, scope: !545, inlinedAt: !1803)
!1805 = !DILocation(line: 201, column: 19, scope: !1777, inlinedAt: !1803)
!1806 = !DILocation(line: 201, column: 7, scope: !545, inlinedAt: !1803)
!1807 = !DILocation(line: 229, column: 3, scope: !545, inlinedAt: !1803)
!1808 = !DILocation(line: 230, column: 3, scope: !545, inlinedAt: !1803)
!1809 = !DILocation(line: 0, scope: !1782, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 230, column: 18, scope: !545, inlinedAt: !1803)
!1811 = !DILocation(line: 0, scope: !1790, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1137, column: 3, scope: !1782, inlinedAt: !1810)
!1813 = !DILocation(line: 59, column: 10, scope: !1790, inlinedAt: !1812)
!1814 = !DILocation(line: 231, column: 7, scope: !1798, inlinedAt: !1803)
!1815 = !DILocation(line: 231, column: 40, scope: !1798, inlinedAt: !1803)
!1816 = !DILocation(line: 231, column: 45, scope: !1798, inlinedAt: !1803)
!1817 = !DILocation(line: 235, column: 1, scope: !545, inlinedAt: !1803)
!1818 = !DILocation(line: 360, column: 13, scope: !1709)
!1819 = !DILocation(line: 0, scope: !1707)
!1820 = !DILocation(line: 361, column: 45, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1707, file: !467, line: 361, column: 11)
!1822 = !DILocation(line: 361, column: 11, scope: !1707)
!1823 = !DILocation(line: 362, column: 13, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !467, line: 362, column: 13)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !467, line: 362, column: 13)
!1826 = !DILocation(line: 362, column: 13, scope: !1825)
!1827 = !DILocation(line: 361, column: 52, scope: !1821)
!1828 = distinct !{!1828, !1822, !1829, !910}
!1829 = !DILocation(line: 362, column: 13, scope: !1707)
!1830 = !DILocation(line: 365, column: 28, scope: !1709)
!1831 = !DILocation(line: 260, column: 10, scope: !1680)
!1832 = !DILocation(line: 367, column: 7, scope: !1710)
!1833 = !DILocation(line: 373, column: 7, scope: !1710)
!1834 = !DILocation(line: 381, column: 11, scope: !1710)
!1835 = !DILocation(line: 376, column: 11, scope: !1710)
!1836 = !DILocation(line: 382, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !467, line: 382, column: 9)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !467, line: 382, column: 9)
!1839 = distinct !DILexicalBlock(scope: !1710, file: !467, line: 381, column: 11)
!1840 = !DILocation(line: 382, column: 9, scope: !1838)
!1841 = !DILocation(line: 389, column: 7, scope: !1710)
!1842 = !DILocation(line: 392, column: 7, scope: !1710)
!1843 = !DILocation(line: 0, scope: !1712)
!1844 = !DILocation(line: 395, column: 8, scope: !1712)
!1845 = !DILocation(line: 395, scope: !1712)
!1846 = !DILocation(line: 395, column: 34, scope: !1715)
!1847 = !DILocation(line: 395, column: 26, scope: !1715)
!1848 = !DILocation(line: 395, column: 48, scope: !1715)
!1849 = !DILocation(line: 395, column: 55, scope: !1715)
!1850 = !DILocation(line: 395, column: 3, scope: !1712)
!1851 = !DILocation(line: 395, column: 67, scope: !1715)
!1852 = !DILocation(line: 0, scope: !1714)
!1853 = !DILocation(line: 402, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 401, column: 11)
!1855 = !DILocation(line: 404, column: 17, scope: !1854)
!1856 = !DILocation(line: 405, column: 39, scope: !1854)
!1857 = !DILocation(line: 409, column: 32, scope: !1854)
!1858 = !DILocation(line: 405, column: 19, scope: !1854)
!1859 = !DILocation(line: 405, column: 15, scope: !1854)
!1860 = !DILocation(line: 410, column: 11, scope: !1854)
!1861 = !DILocation(line: 410, column: 25, scope: !1854)
!1862 = !DILocalVariable(name: "__s1", arg: 1, scope: !1863, file: !876, line: 974, type: !1008)
!1863 = distinct !DISubprogram(name: "memeq", scope: !876, file: !876, line: 974, type: !1497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1864)
!1864 = !{!1862, !1865, !1866}
!1865 = !DILocalVariable(name: "__s2", arg: 2, scope: !1863, file: !876, line: 974, type: !1008)
!1866 = !DILocalVariable(name: "__n", arg: 3, scope: !1863, file: !876, line: 974, type: !102)
!1867 = !DILocation(line: 0, scope: !1863, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 410, column: 14, scope: !1854)
!1869 = !DILocation(line: 976, column: 11, scope: !1863, inlinedAt: !1868)
!1870 = !DILocation(line: 976, column: 10, scope: !1863, inlinedAt: !1868)
!1871 = !DILocation(line: 401, column: 11, scope: !1714)
!1872 = !DILocation(line: 417, column: 25, scope: !1714)
!1873 = !DILocation(line: 418, column: 7, scope: !1714)
!1874 = !DILocation(line: 421, column: 15, scope: !1721)
!1875 = !DILocation(line: 423, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !467, line: 423, column: 15)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !467, line: 422, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 421, column: 15)
!1879 = !DILocation(line: 423, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !467, line: 423, column: 15)
!1881 = !DILocation(line: 423, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !467, line: 423, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !467, line: 423, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !467, line: 423, column: 15)
!1885 = !DILocation(line: 423, column: 15, scope: !1883)
!1886 = !DILocation(line: 423, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !467, line: 423, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !467, line: 423, column: 15)
!1889 = !DILocation(line: 423, column: 15, scope: !1888)
!1890 = !DILocation(line: 423, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !467, line: 423, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1884, file: !467, line: 423, column: 15)
!1893 = !DILocation(line: 423, column: 15, scope: !1892)
!1894 = !DILocation(line: 423, column: 15, scope: !1884)
!1895 = !DILocation(line: 423, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !467, line: 423, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1876, file: !467, line: 423, column: 15)
!1898 = !DILocation(line: 423, column: 15, scope: !1897)
!1899 = !DILocation(line: 431, column: 19, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1877, file: !467, line: 430, column: 19)
!1901 = !DILocation(line: 431, column: 24, scope: !1900)
!1902 = !DILocation(line: 431, column: 28, scope: !1900)
!1903 = !DILocation(line: 431, column: 38, scope: !1900)
!1904 = !DILocation(line: 431, column: 48, scope: !1900)
!1905 = !DILocation(line: 431, column: 59, scope: !1900)
!1906 = !DILocation(line: 433, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !467, line: 433, column: 19)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !467, line: 433, column: 19)
!1909 = distinct !DILexicalBlock(scope: !1900, file: !467, line: 432, column: 17)
!1910 = !DILocation(line: 433, column: 19, scope: !1908)
!1911 = !DILocation(line: 434, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !467, line: 434, column: 19)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !467, line: 434, column: 19)
!1914 = !DILocation(line: 434, column: 19, scope: !1913)
!1915 = !DILocation(line: 435, column: 17, scope: !1909)
!1916 = !DILocation(line: 442, column: 20, scope: !1878)
!1917 = !DILocation(line: 447, column: 11, scope: !1721)
!1918 = !DILocation(line: 450, column: 19, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 448, column: 13)
!1920 = !DILocation(line: 456, column: 19, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1919, file: !467, line: 455, column: 19)
!1922 = !DILocation(line: 456, column: 24, scope: !1921)
!1923 = !DILocation(line: 456, column: 28, scope: !1921)
!1924 = !DILocation(line: 456, column: 38, scope: !1921)
!1925 = !DILocation(line: 456, column: 41, scope: !1921)
!1926 = !DILocation(line: 456, column: 52, scope: !1921)
!1927 = !DILocation(line: 455, column: 19, scope: !1919)
!1928 = !DILocation(line: 457, column: 25, scope: !1921)
!1929 = !DILocation(line: 457, column: 17, scope: !1921)
!1930 = !DILocation(line: 464, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1921, file: !467, line: 458, column: 19)
!1932 = !DILocation(line: 468, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !467, line: 468, column: 21)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !467, line: 468, column: 21)
!1935 = !DILocation(line: 468, column: 21, scope: !1934)
!1936 = !DILocation(line: 469, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !467, line: 469, column: 21)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !467, line: 469, column: 21)
!1939 = !DILocation(line: 469, column: 21, scope: !1938)
!1940 = !DILocation(line: 470, column: 21, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !467, line: 470, column: 21)
!1942 = distinct !DILexicalBlock(scope: !1931, file: !467, line: 470, column: 21)
!1943 = !DILocation(line: 470, column: 21, scope: !1942)
!1944 = !DILocation(line: 471, column: 21, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !467, line: 471, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1931, file: !467, line: 471, column: 21)
!1947 = !DILocation(line: 471, column: 21, scope: !1946)
!1948 = !DILocation(line: 472, column: 21, scope: !1931)
!1949 = !DILocation(line: 482, column: 33, scope: !1720)
!1950 = !DILocation(line: 483, column: 33, scope: !1720)
!1951 = !DILocation(line: 485, column: 33, scope: !1720)
!1952 = !DILocation(line: 486, column: 33, scope: !1720)
!1953 = !DILocation(line: 487, column: 33, scope: !1720)
!1954 = !DILocation(line: 490, column: 17, scope: !1720)
!1955 = !DILocation(line: 492, column: 21, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !467, line: 491, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1720, file: !467, line: 490, column: 17)
!1958 = !DILocation(line: 499, column: 35, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1720, file: !467, line: 499, column: 17)
!1960 = !DILocation(line: 0, scope: !1720)
!1961 = !DILocation(line: 502, column: 11, scope: !1720)
!1962 = !DILocation(line: 504, column: 17, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1720, file: !467, line: 503, column: 17)
!1964 = !DILocation(line: 507, column: 11, scope: !1720)
!1965 = !DILocation(line: 508, column: 17, scope: !1720)
!1966 = !DILocation(line: 517, column: 15, scope: !1721)
!1967 = !DILocation(line: 517, column: 40, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 517, column: 15)
!1969 = !DILocation(line: 517, column: 47, scope: !1968)
!1970 = !DILocation(line: 517, column: 18, scope: !1968)
!1971 = !DILocation(line: 521, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 521, column: 15)
!1973 = !DILocation(line: 521, column: 15, scope: !1721)
!1974 = !DILocation(line: 525, column: 11, scope: !1721)
!1975 = !DILocation(line: 537, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 536, column: 15)
!1977 = !DILocation(line: 536, column: 15, scope: !1721)
!1978 = !DILocation(line: 544, column: 15, scope: !1721)
!1979 = !DILocation(line: 546, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !467, line: 545, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1721, file: !467, line: 544, column: 15)
!1982 = !DILocation(line: 549, column: 19, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !467, line: 549, column: 19)
!1984 = !DILocation(line: 549, column: 30, scope: !1983)
!1985 = !DILocation(line: 558, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !467, line: 558, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1980, file: !467, line: 558, column: 15)
!1988 = !DILocation(line: 558, column: 15, scope: !1987)
!1989 = !DILocation(line: 559, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !467, line: 559, column: 15)
!1991 = distinct !DILexicalBlock(scope: !1980, file: !467, line: 559, column: 15)
!1992 = !DILocation(line: 559, column: 15, scope: !1991)
!1993 = !DILocation(line: 560, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !467, line: 560, column: 15)
!1995 = distinct !DILexicalBlock(scope: !1980, file: !467, line: 560, column: 15)
!1996 = !DILocation(line: 560, column: 15, scope: !1995)
!1997 = !DILocation(line: 562, column: 13, scope: !1980)
!1998 = !DILocation(line: 602, column: 17, scope: !1724)
!1999 = !DILocation(line: 0, scope: !1724)
!2000 = !DILocation(line: 605, column: 29, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1728, file: !467, line: 603, column: 15)
!2002 = !DILocation(line: 605, column: 41, scope: !2001)
!2003 = !DILocation(line: 606, column: 15, scope: !2001)
!2004 = !DILocation(line: 609, column: 17, scope: !1727)
!2005 = !DILocation(line: 0, scope: !1782, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 609, column: 32, scope: !1727)
!2007 = !DILocation(line: 0, scope: !1790, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 1137, column: 3, scope: !1782, inlinedAt: !2006)
!2009 = !DILocation(line: 59, column: 10, scope: !1790, inlinedAt: !2008)
!2010 = !DILocation(line: 613, column: 29, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1727, file: !467, line: 613, column: 21)
!2012 = !DILocation(line: 613, column: 21, scope: !1727)
!2013 = !DILocation(line: 614, column: 29, scope: !2011)
!2014 = !DILocation(line: 614, column: 19, scope: !2011)
!2015 = !DILocation(line: 618, column: 21, scope: !1730)
!2016 = !DILocation(line: 620, column: 54, scope: !1730)
!2017 = !DILocation(line: 619, column: 36, scope: !1730)
!2018 = !DILocation(line: 621, column: 25, scope: !1730)
!2019 = !DILocation(line: 631, column: 38, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1739, file: !467, line: 629, column: 23)
!2021 = !DILocation(line: 631, column: 48, scope: !2020)
!2022 = !DILocation(line: 631, column: 25, scope: !2020)
!2023 = !DILocation(line: 626, column: 25, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1740, file: !467, line: 624, column: 23)
!2025 = !DILocation(line: 631, column: 51, scope: !2020)
!2026 = !DILocation(line: 632, column: 28, scope: !2020)
!2027 = !DILocation(line: 631, column: 34, scope: !2020)
!2028 = distinct !{!2028, !2022, !2026, !910}
!2029 = !DILocation(line: 0, scope: !1735)
!2030 = !DILocation(line: 646, column: 29, scope: !1737)
!2031 = !DILocation(line: 648, column: 29, scope: !1735)
!2032 = !DILocation(line: 649, column: 39, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1735, file: !467, line: 648, column: 29)
!2034 = !DILocation(line: 649, column: 31, scope: !2033)
!2035 = !DILocation(line: 648, column: 60, scope: !2033)
!2036 = !DILocation(line: 648, column: 50, scope: !2033)
!2037 = distinct !{!2037, !2031, !2038, !910}
!2038 = !DILocation(line: 654, column: 33, scope: !1735)
!2039 = !DILocation(line: 657, column: 43, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1738, file: !467, line: 657, column: 29)
!2041 = !DILocalVariable(name: "wc", arg: 1, scope: !2042, file: !2043, line: 865, type: !2046)
!2042 = distinct !DISubprogram(name: "c32isprint", scope: !2043, file: !2043, line: 865, type: !2044, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2048)
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
!2053 = !DILocation(line: 664, column: 23, scope: !1730)
!2054 = !DILocation(line: 665, column: 19, scope: !1731)
!2055 = !DILocation(line: 666, column: 15, scope: !1728)
!2056 = !DILocation(line: 753, column: 2, scope: !1680)
!2057 = !DILocation(line: 756, column: 51, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 756, column: 7)
!2059 = !DILocation(line: 0, scope: !1728)
!2060 = !DILocation(line: 670, column: 19, scope: !1744)
!2061 = !DILocation(line: 670, column: 23, scope: !1744)
!2062 = !DILocation(line: 674, column: 33, scope: !1743)
!2063 = !DILocation(line: 0, scope: !1743)
!2064 = !DILocation(line: 676, column: 17, scope: !1743)
!2065 = !DILocation(line: 678, column: 43, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !467, line: 678, column: 25)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !467, line: 677, column: 19)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !467, line: 676, column: 17)
!2069 = distinct !DILexicalBlock(scope: !1743, file: !467, line: 676, column: 17)
!2070 = !DILocation(line: 680, column: 25, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !467, line: 680, column: 25)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !467, line: 679, column: 23)
!2073 = !DILocation(line: 680, column: 25, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !467, line: 680, column: 25)
!2075 = !DILocation(line: 680, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !467, line: 680, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !467, line: 680, column: 25)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !467, line: 680, column: 25)
!2079 = !DILocation(line: 680, column: 25, scope: !2077)
!2080 = !DILocation(line: 680, column: 25, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !467, line: 680, column: 25)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !467, line: 680, column: 25)
!2083 = !DILocation(line: 680, column: 25, scope: !2082)
!2084 = !DILocation(line: 680, column: 25, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !467, line: 680, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !467, line: 680, column: 25)
!2087 = !DILocation(line: 680, column: 25, scope: !2086)
!2088 = !DILocation(line: 680, column: 25, scope: !2078)
!2089 = !DILocation(line: 680, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !467, line: 680, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2071, file: !467, line: 680, column: 25)
!2092 = !DILocation(line: 680, column: 25, scope: !2091)
!2093 = !DILocation(line: 681, column: 25, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !467, line: 681, column: 25)
!2095 = distinct !DILexicalBlock(scope: !2072, file: !467, line: 681, column: 25)
!2096 = !DILocation(line: 681, column: 25, scope: !2095)
!2097 = !DILocation(line: 682, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !467, line: 682, column: 25)
!2099 = distinct !DILexicalBlock(scope: !2072, file: !467, line: 682, column: 25)
!2100 = !DILocation(line: 682, column: 25, scope: !2099)
!2101 = !DILocation(line: 683, column: 38, scope: !2072)
!2102 = !DILocation(line: 683, column: 33, scope: !2072)
!2103 = !DILocation(line: 684, column: 23, scope: !2072)
!2104 = !DILocation(line: 685, column: 30, scope: !2066)
!2105 = !DILocation(line: 687, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !467, line: 687, column: 25)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !467, line: 687, column: 25)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !467, line: 686, column: 23)
!2109 = distinct !DILexicalBlock(scope: !2066, file: !467, line: 685, column: 30)
!2110 = !DILocation(line: 687, column: 25, scope: !2107)
!2111 = !DILocation(line: 689, column: 23, scope: !2108)
!2112 = !DILocation(line: 690, column: 35, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2067, file: !467, line: 690, column: 25)
!2114 = !DILocation(line: 690, column: 30, scope: !2113)
!2115 = !DILocation(line: 690, column: 25, scope: !2067)
!2116 = !DILocation(line: 692, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !467, line: 692, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2067, file: !467, line: 692, column: 21)
!2119 = !DILocation(line: 692, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !467, line: 692, column: 21)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !467, line: 692, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !467, line: 692, column: 21)
!2123 = !DILocation(line: 692, column: 21, scope: !2121)
!2124 = !DILocation(line: 692, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !467, line: 692, column: 21)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !467, line: 692, column: 21)
!2127 = !DILocation(line: 692, column: 21, scope: !2126)
!2128 = !DILocation(line: 692, column: 21, scope: !2122)
!2129 = !DILocation(line: 0, scope: !2067)
!2130 = !DILocation(line: 693, column: 21, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !467, line: 693, column: 21)
!2132 = distinct !DILexicalBlock(scope: !2067, file: !467, line: 693, column: 21)
!2133 = !DILocation(line: 693, column: 21, scope: !2132)
!2134 = !DILocation(line: 694, column: 25, scope: !2067)
!2135 = !DILocation(line: 676, column: 17, scope: !2068)
!2136 = distinct !{!2136, !2137, !2138}
!2137 = !DILocation(line: 676, column: 17, scope: !2069)
!2138 = !DILocation(line: 695, column: 19, scope: !2069)
!2139 = !DILocation(line: 409, column: 30, scope: !1854)
!2140 = !DILocation(line: 702, column: 34, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 702, column: 11)
!2142 = !DILocation(line: 704, column: 14, scope: !2141)
!2143 = !DILocation(line: 705, column: 14, scope: !2141)
!2144 = !DILocation(line: 705, column: 35, scope: !2141)
!2145 = !DILocation(line: 705, column: 17, scope: !2141)
!2146 = !DILocation(line: 705, column: 47, scope: !2141)
!2147 = !DILocation(line: 705, column: 65, scope: !2141)
!2148 = !DILocation(line: 706, column: 11, scope: !2141)
!2149 = !DILocation(line: 702, column: 11, scope: !1714)
!2150 = !DILocation(line: 395, column: 15, scope: !1712)
!2151 = !DILocation(line: 709, column: 5, scope: !1714)
!2152 = !DILocation(line: 710, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 710, column: 7)
!2154 = !DILocation(line: 710, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !467, line: 710, column: 7)
!2156 = !DILocation(line: 710, column: 7, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !467, line: 710, column: 7)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !467, line: 710, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !467, line: 710, column: 7)
!2160 = !DILocation(line: 710, column: 7, scope: !2158)
!2161 = !DILocation(line: 710, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !467, line: 710, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !467, line: 710, column: 7)
!2164 = !DILocation(line: 710, column: 7, scope: !2163)
!2165 = !DILocation(line: 710, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !467, line: 710, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2159, file: !467, line: 710, column: 7)
!2168 = !DILocation(line: 710, column: 7, scope: !2167)
!2169 = !DILocation(line: 710, column: 7, scope: !2159)
!2170 = !DILocation(line: 710, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !467, line: 710, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2153, file: !467, line: 710, column: 7)
!2173 = !DILocation(line: 710, column: 7, scope: !2172)
!2174 = !DILocation(line: 712, column: 5, scope: !1714)
!2175 = !DILocation(line: 713, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !467, line: 713, column: 7)
!2177 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 713, column: 7)
!2178 = !DILocation(line: 417, column: 21, scope: !1714)
!2179 = !DILocation(line: 713, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !467, line: 713, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !467, line: 713, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !467, line: 713, column: 7)
!2183 = !DILocation(line: 713, column: 7, scope: !2181)
!2184 = !DILocation(line: 713, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !467, line: 713, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !467, line: 713, column: 7)
!2187 = !DILocation(line: 713, column: 7, scope: !2186)
!2188 = !DILocation(line: 713, column: 7, scope: !2182)
!2189 = !DILocation(line: 714, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !467, line: 714, column: 7)
!2191 = distinct !DILexicalBlock(scope: !1714, file: !467, line: 714, column: 7)
!2192 = !DILocation(line: 714, column: 7, scope: !2191)
!2193 = !DILocation(line: 716, column: 11, scope: !1714)
!2194 = !DILocation(line: 718, column: 5, scope: !1715)
!2195 = !DILocation(line: 395, column: 82, scope: !1715)
!2196 = !DILocation(line: 395, column: 3, scope: !1715)
!2197 = distinct !{!2197, !1850, !2198, !910}
!2198 = !DILocation(line: 718, column: 5, scope: !1712)
!2199 = !DILocation(line: 720, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 720, column: 7)
!2201 = !DILocation(line: 720, column: 16, scope: !2200)
!2202 = !DILocation(line: 728, column: 51, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 728, column: 7)
!2204 = !DILocation(line: 731, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !467, line: 730, column: 5)
!2206 = !DILocation(line: 732, column: 16, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !467, line: 731, column: 11)
!2208 = !DILocation(line: 732, column: 9, scope: !2207)
!2209 = !DILocation(line: 736, column: 18, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !467, line: 736, column: 16)
!2211 = !DILocation(line: 736, column: 29, scope: !2210)
!2212 = !DILocation(line: 745, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 745, column: 7)
!2214 = !DILocation(line: 745, column: 20, scope: !2213)
!2215 = !DILocation(line: 746, column: 12, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !467, line: 746, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !467, line: 746, column: 5)
!2218 = !DILocation(line: 746, column: 5, scope: !2217)
!2219 = !DILocation(line: 747, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !467, line: 747, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !467, line: 747, column: 7)
!2222 = !DILocation(line: 747, column: 7, scope: !2221)
!2223 = !DILocation(line: 746, column: 39, scope: !2216)
!2224 = distinct !{!2224, !2218, !2225, !910}
!2225 = !DILocation(line: 747, column: 7, scope: !2217)
!2226 = !DILocation(line: 749, column: 11, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1680, file: !467, line: 749, column: 7)
!2228 = !DILocation(line: 749, column: 7, scope: !1680)
!2229 = !DILocation(line: 750, column: 5, scope: !2227)
!2230 = !DILocation(line: 750, column: 17, scope: !2227)
!2231 = !DILocation(line: 756, column: 21, scope: !2058)
!2232 = !DILocation(line: 760, column: 42, scope: !1680)
!2233 = !DILocation(line: 758, column: 10, scope: !1680)
!2234 = !DILocation(line: 758, column: 3, scope: !1680)
!2235 = !DILocation(line: 762, column: 1, scope: !1680)
!2236 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !984, file: !984, line: 98, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!102}
!2239 = !DISubprogram(name: "iswprint", scope: !2240, file: !2240, line: 120, type: !2044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2241 = distinct !DISubprogram(name: "quotearg_alloc", scope: !467, file: !467, line: 788, type: !2242, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!99, !105, !102, !1573}
!2244 = !{!2245, !2246, !2247}
!2245 = !DILocalVariable(name: "arg", arg: 1, scope: !2241, file: !467, line: 788, type: !105)
!2246 = !DILocalVariable(name: "argsize", arg: 2, scope: !2241, file: !467, line: 788, type: !102)
!2247 = !DILocalVariable(name: "o", arg: 3, scope: !2241, file: !467, line: 789, type: !1573)
!2248 = !DILocation(line: 0, scope: !2241)
!2249 = !DILocalVariable(name: "arg", arg: 1, scope: !2250, file: !467, line: 801, type: !105)
!2250 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !467, file: !467, line: 801, type: !2251, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!99, !105, !102, !727, !1573}
!2253 = !{!2249, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261}
!2254 = !DILocalVariable(name: "argsize", arg: 2, scope: !2250, file: !467, line: 801, type: !102)
!2255 = !DILocalVariable(name: "size", arg: 3, scope: !2250, file: !467, line: 801, type: !727)
!2256 = !DILocalVariable(name: "o", arg: 4, scope: !2250, file: !467, line: 802, type: !1573)
!2257 = !DILocalVariable(name: "p", scope: !2250, file: !467, line: 804, type: !1573)
!2258 = !DILocalVariable(name: "saved_errno", scope: !2250, file: !467, line: 805, type: !78)
!2259 = !DILocalVariable(name: "flags", scope: !2250, file: !467, line: 807, type: !78)
!2260 = !DILocalVariable(name: "bufsize", scope: !2250, file: !467, line: 808, type: !102)
!2261 = !DILocalVariable(name: "buf", scope: !2250, file: !467, line: 812, type: !99)
!2262 = !DILocation(line: 0, scope: !2250, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 791, column: 10, scope: !2241)
!2264 = !DILocation(line: 804, column: 37, scope: !2250, inlinedAt: !2263)
!2265 = !DILocation(line: 805, column: 21, scope: !2250, inlinedAt: !2263)
!2266 = !DILocation(line: 807, column: 18, scope: !2250, inlinedAt: !2263)
!2267 = !DILocation(line: 807, column: 24, scope: !2250, inlinedAt: !2263)
!2268 = !DILocation(line: 808, column: 72, scope: !2250, inlinedAt: !2263)
!2269 = !DILocation(line: 809, column: 56, scope: !2250, inlinedAt: !2263)
!2270 = !DILocation(line: 810, column: 49, scope: !2250, inlinedAt: !2263)
!2271 = !DILocation(line: 811, column: 49, scope: !2250, inlinedAt: !2263)
!2272 = !DILocation(line: 808, column: 20, scope: !2250, inlinedAt: !2263)
!2273 = !DILocation(line: 811, column: 62, scope: !2250, inlinedAt: !2263)
!2274 = !DILocation(line: 812, column: 15, scope: !2250, inlinedAt: !2263)
!2275 = !DILocation(line: 813, column: 60, scope: !2250, inlinedAt: !2263)
!2276 = !DILocation(line: 815, column: 32, scope: !2250, inlinedAt: !2263)
!2277 = !DILocation(line: 815, column: 47, scope: !2250, inlinedAt: !2263)
!2278 = !DILocation(line: 813, column: 3, scope: !2250, inlinedAt: !2263)
!2279 = !DILocation(line: 816, column: 9, scope: !2250, inlinedAt: !2263)
!2280 = !DILocation(line: 791, column: 3, scope: !2241)
!2281 = !DILocation(line: 0, scope: !2250)
!2282 = !DILocation(line: 804, column: 37, scope: !2250)
!2283 = !DILocation(line: 805, column: 21, scope: !2250)
!2284 = !DILocation(line: 807, column: 18, scope: !2250)
!2285 = !DILocation(line: 807, column: 27, scope: !2250)
!2286 = !DILocation(line: 807, column: 24, scope: !2250)
!2287 = !DILocation(line: 808, column: 72, scope: !2250)
!2288 = !DILocation(line: 809, column: 56, scope: !2250)
!2289 = !DILocation(line: 810, column: 49, scope: !2250)
!2290 = !DILocation(line: 811, column: 49, scope: !2250)
!2291 = !DILocation(line: 808, column: 20, scope: !2250)
!2292 = !DILocation(line: 811, column: 62, scope: !2250)
!2293 = !DILocation(line: 812, column: 15, scope: !2250)
!2294 = !DILocation(line: 813, column: 60, scope: !2250)
!2295 = !DILocation(line: 815, column: 32, scope: !2250)
!2296 = !DILocation(line: 815, column: 47, scope: !2250)
!2297 = !DILocation(line: 813, column: 3, scope: !2250)
!2298 = !DILocation(line: 816, column: 9, scope: !2250)
!2299 = !DILocation(line: 817, column: 7, scope: !2250)
!2300 = !DILocation(line: 818, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2250, file: !467, line: 817, column: 7)
!2302 = !{!1144, !1144, i64 0}
!2303 = !DILocation(line: 818, column: 5, scope: !2301)
!2304 = !DILocation(line: 819, column: 3, scope: !2250)
!2305 = distinct !DISubprogram(name: "quotearg_free", scope: !467, file: !467, line: 837, type: !422, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2306)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "sv", scope: !2305, file: !467, line: 839, type: !568)
!2308 = !DILocalVariable(name: "i", scope: !2309, file: !467, line: 840, type: !78)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !467, line: 840, column: 3)
!2310 = !DILocation(line: 839, column: 24, scope: !2305)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 0, scope: !2309)
!2313 = !DILocation(line: 840, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !467, line: 840, column: 3)
!2315 = !DILocation(line: 840, column: 3, scope: !2309)
!2316 = !DILocation(line: 842, column: 13, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2305, file: !467, line: 842, column: 7)
!2318 = !{!2319, !797, i64 8}
!2319 = !{!"slotvec", !1144, i64 0, !797, i64 8}
!2320 = !DILocation(line: 842, column: 17, scope: !2317)
!2321 = !DILocation(line: 842, column: 7, scope: !2305)
!2322 = !DILocation(line: 841, column: 17, scope: !2314)
!2323 = !DILocation(line: 841, column: 5, scope: !2314)
!2324 = !DILocation(line: 840, column: 32, scope: !2314)
!2325 = distinct !{!2325, !2315, !2326, !910}
!2326 = !DILocation(line: 841, column: 20, scope: !2309)
!2327 = !DILocation(line: 844, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !467, line: 843, column: 5)
!2329 = !DILocation(line: 845, column: 21, scope: !2328)
!2330 = !{!2319, !1144, i64 0}
!2331 = !DILocation(line: 846, column: 20, scope: !2328)
!2332 = !DILocation(line: 847, column: 5, scope: !2328)
!2333 = !DILocation(line: 848, column: 10, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2305, file: !467, line: 848, column: 7)
!2335 = !DILocation(line: 848, column: 7, scope: !2305)
!2336 = !DILocation(line: 850, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !467, line: 849, column: 5)
!2338 = !DILocation(line: 851, column: 15, scope: !2337)
!2339 = !DILocation(line: 852, column: 5, scope: !2337)
!2340 = !DILocation(line: 853, column: 10, scope: !2305)
!2341 = !DILocation(line: 854, column: 1, scope: !2305)
!2342 = distinct !DISubprogram(name: "quotearg_n", scope: !467, file: !467, line: 919, type: !977, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2343)
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "n", arg: 1, scope: !2342, file: !467, line: 919, type: !78)
!2345 = !DILocalVariable(name: "arg", arg: 2, scope: !2342, file: !467, line: 919, type: !105)
!2346 = !DILocation(line: 0, scope: !2342)
!2347 = !DILocation(line: 921, column: 10, scope: !2342)
!2348 = !DILocation(line: 921, column: 3, scope: !2342)
!2349 = distinct !DISubprogram(name: "quotearg_n_options", scope: !467, file: !467, line: 866, type: !2350, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!99, !78, !105, !102, !1573}
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2363, !2364, !2366, !2367, !2368}
!2353 = !DILocalVariable(name: "n", arg: 1, scope: !2349, file: !467, line: 866, type: !78)
!2354 = !DILocalVariable(name: "arg", arg: 2, scope: !2349, file: !467, line: 866, type: !105)
!2355 = !DILocalVariable(name: "argsize", arg: 3, scope: !2349, file: !467, line: 866, type: !102)
!2356 = !DILocalVariable(name: "options", arg: 4, scope: !2349, file: !467, line: 867, type: !1573)
!2357 = !DILocalVariable(name: "saved_errno", scope: !2349, file: !467, line: 869, type: !78)
!2358 = !DILocalVariable(name: "sv", scope: !2349, file: !467, line: 871, type: !568)
!2359 = !DILocalVariable(name: "nslots_max", scope: !2349, file: !467, line: 873, type: !78)
!2360 = !DILocalVariable(name: "preallocated", scope: !2361, file: !467, line: 879, type: !143)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !467, line: 878, column: 5)
!2362 = distinct !DILexicalBlock(scope: !2349, file: !467, line: 877, column: 7)
!2363 = !DILocalVariable(name: "new_nslots", scope: !2361, file: !467, line: 880, type: !740)
!2364 = !DILocalVariable(name: "size", scope: !2365, file: !467, line: 891, type: !102)
!2365 = distinct !DILexicalBlock(scope: !2349, file: !467, line: 890, column: 3)
!2366 = !DILocalVariable(name: "val", scope: !2365, file: !467, line: 892, type: !99)
!2367 = !DILocalVariable(name: "flags", scope: !2365, file: !467, line: 894, type: !78)
!2368 = !DILocalVariable(name: "qsize", scope: !2365, file: !467, line: 895, type: !102)
!2369 = distinct !DIAssignID()
!2370 = !DILocation(line: 0, scope: !2361)
!2371 = !DILocation(line: 0, scope: !2349)
!2372 = !DILocation(line: 869, column: 21, scope: !2349)
!2373 = !DILocation(line: 871, column: 24, scope: !2349)
!2374 = !DILocation(line: 874, column: 17, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2349, file: !467, line: 874, column: 7)
!2376 = !DILocation(line: 875, column: 5, scope: !2375)
!2377 = !DILocation(line: 877, column: 7, scope: !2362)
!2378 = !DILocation(line: 877, column: 14, scope: !2362)
!2379 = !DILocation(line: 877, column: 7, scope: !2349)
!2380 = !DILocation(line: 879, column: 31, scope: !2361)
!2381 = !DILocation(line: 880, column: 7, scope: !2361)
!2382 = !DILocation(line: 880, column: 26, scope: !2361)
!2383 = !DILocation(line: 880, column: 13, scope: !2361)
!2384 = distinct !DIAssignID()
!2385 = !DILocation(line: 882, column: 31, scope: !2361)
!2386 = !DILocation(line: 883, column: 33, scope: !2361)
!2387 = !DILocation(line: 883, column: 42, scope: !2361)
!2388 = !DILocation(line: 883, column: 31, scope: !2361)
!2389 = !DILocation(line: 882, column: 22, scope: !2361)
!2390 = !DILocation(line: 882, column: 15, scope: !2361)
!2391 = !DILocation(line: 884, column: 11, scope: !2361)
!2392 = !DILocation(line: 885, column: 15, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2361, file: !467, line: 884, column: 11)
!2394 = !{i64 0, i64 8, !2302, i64 8, i64 8, !796}
!2395 = !DILocation(line: 885, column: 9, scope: !2393)
!2396 = !DILocation(line: 886, column: 20, scope: !2361)
!2397 = !DILocation(line: 886, column: 18, scope: !2361)
!2398 = !DILocation(line: 886, column: 32, scope: !2361)
!2399 = !DILocation(line: 886, column: 43, scope: !2361)
!2400 = !DILocation(line: 886, column: 53, scope: !2361)
!2401 = !DILocation(line: 0, scope: !1790, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 886, column: 7, scope: !2361)
!2403 = !DILocation(line: 59, column: 10, scope: !1790, inlinedAt: !2402)
!2404 = !DILocation(line: 887, column: 16, scope: !2361)
!2405 = !DILocation(line: 887, column: 14, scope: !2361)
!2406 = !DILocation(line: 888, column: 5, scope: !2362)
!2407 = !DILocation(line: 888, column: 5, scope: !2361)
!2408 = !DILocation(line: 891, column: 19, scope: !2365)
!2409 = !DILocation(line: 891, column: 25, scope: !2365)
!2410 = !DILocation(line: 0, scope: !2365)
!2411 = !DILocation(line: 892, column: 23, scope: !2365)
!2412 = !DILocation(line: 894, column: 26, scope: !2365)
!2413 = !DILocation(line: 894, column: 32, scope: !2365)
!2414 = !DILocation(line: 896, column: 55, scope: !2365)
!2415 = !DILocation(line: 897, column: 55, scope: !2365)
!2416 = !DILocation(line: 898, column: 55, scope: !2365)
!2417 = !DILocation(line: 899, column: 55, scope: !2365)
!2418 = !DILocation(line: 895, column: 20, scope: !2365)
!2419 = !DILocation(line: 901, column: 14, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2365, file: !467, line: 901, column: 9)
!2421 = !DILocation(line: 901, column: 9, scope: !2365)
!2422 = !DILocation(line: 903, column: 35, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !467, line: 902, column: 7)
!2424 = !DILocation(line: 903, column: 20, scope: !2423)
!2425 = !DILocation(line: 904, column: 17, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !467, line: 904, column: 13)
!2427 = !DILocation(line: 904, column: 13, scope: !2423)
!2428 = !DILocation(line: 905, column: 11, scope: !2426)
!2429 = !DILocation(line: 906, column: 27, scope: !2423)
!2430 = !DILocation(line: 906, column: 19, scope: !2423)
!2431 = !DILocation(line: 907, column: 69, scope: !2423)
!2432 = !DILocation(line: 909, column: 44, scope: !2423)
!2433 = !DILocation(line: 910, column: 44, scope: !2423)
!2434 = !DILocation(line: 907, column: 9, scope: !2423)
!2435 = !DILocation(line: 911, column: 7, scope: !2423)
!2436 = !DILocation(line: 913, column: 11, scope: !2365)
!2437 = !DILocation(line: 914, column: 5, scope: !2365)
!2438 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !467, file: !467, line: 925, type: !2439, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!99, !78, !105, !102}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "n", arg: 1, scope: !2438, file: !467, line: 925, type: !78)
!2443 = !DILocalVariable(name: "arg", arg: 2, scope: !2438, file: !467, line: 925, type: !105)
!2444 = !DILocalVariable(name: "argsize", arg: 3, scope: !2438, file: !467, line: 925, type: !102)
!2445 = !DILocation(line: 0, scope: !2438)
!2446 = !DILocation(line: 927, column: 10, scope: !2438)
!2447 = !DILocation(line: 927, column: 3, scope: !2438)
!2448 = distinct !DISubprogram(name: "quotearg", scope: !467, file: !467, line: 931, type: !986, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2449)
!2449 = !{!2450}
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2448, file: !467, line: 931, type: !105)
!2451 = !DILocation(line: 0, scope: !2448)
!2452 = !DILocation(line: 0, scope: !2342, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 933, column: 10, scope: !2448)
!2454 = !DILocation(line: 921, column: 10, scope: !2342, inlinedAt: !2453)
!2455 = !DILocation(line: 933, column: 3, scope: !2448)
!2456 = distinct !DISubprogram(name: "quotearg_mem", scope: !467, file: !467, line: 937, type: !2457, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!99, !105, !102}
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2456, file: !467, line: 937, type: !105)
!2461 = !DILocalVariable(name: "argsize", arg: 2, scope: !2456, file: !467, line: 937, type: !102)
!2462 = !DILocation(line: 0, scope: !2456)
!2463 = !DILocation(line: 0, scope: !2438, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 939, column: 10, scope: !2456)
!2465 = !DILocation(line: 927, column: 10, scope: !2438, inlinedAt: !2464)
!2466 = !DILocation(line: 939, column: 3, scope: !2456)
!2467 = distinct !DISubprogram(name: "quotearg_n_style", scope: !467, file: !467, line: 943, type: !2468, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!99, !78, !493, !105}
!2470 = !{!2471, !2472, !2473, !2474}
!2471 = !DILocalVariable(name: "n", arg: 1, scope: !2467, file: !467, line: 943, type: !78)
!2472 = !DILocalVariable(name: "s", arg: 2, scope: !2467, file: !467, line: 943, type: !493)
!2473 = !DILocalVariable(name: "arg", arg: 3, scope: !2467, file: !467, line: 943, type: !105)
!2474 = !DILocalVariable(name: "o", scope: !2467, file: !467, line: 945, type: !1574)
!2475 = distinct !DIAssignID()
!2476 = !DILocation(line: 0, scope: !2467)
!2477 = !DILocation(line: 945, column: 3, scope: !2467)
!2478 = !{!2479}
!2479 = distinct !{!2479, !2480, !"quoting_options_from_style: argument 0"}
!2480 = distinct !{!2480, !"quoting_options_from_style"}
!2481 = !DILocation(line: 945, column: 36, scope: !2467)
!2482 = !DILocalVariable(name: "style", arg: 1, scope: !2483, file: !467, line: 183, type: !493)
!2483 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !467, file: !467, line: 183, type: !2484, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!520, !493}
!2486 = !{!2482, !2487}
!2487 = !DILocalVariable(name: "o", scope: !2483, file: !467, line: 185, type: !520)
!2488 = !DILocation(line: 0, scope: !2483, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 945, column: 36, scope: !2467)
!2490 = !DILocation(line: 185, column: 26, scope: !2483, inlinedAt: !2489)
!2491 = distinct !DIAssignID()
!2492 = !DILocation(line: 186, column: 13, scope: !2493, inlinedAt: !2489)
!2493 = distinct !DILexicalBlock(scope: !2483, file: !467, line: 186, column: 7)
!2494 = !DILocation(line: 186, column: 7, scope: !2483, inlinedAt: !2489)
!2495 = !DILocation(line: 187, column: 5, scope: !2493, inlinedAt: !2489)
!2496 = !DILocation(line: 188, column: 11, scope: !2483, inlinedAt: !2489)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 946, column: 10, scope: !2467)
!2499 = !DILocation(line: 947, column: 1, scope: !2467)
!2500 = !DILocation(line: 946, column: 3, scope: !2467)
!2501 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !467, file: !467, line: 950, type: !2502, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!99, !78, !493, !105, !102}
!2504 = !{!2505, !2506, !2507, !2508, !2509}
!2505 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !467, line: 950, type: !78)
!2506 = !DILocalVariable(name: "s", arg: 2, scope: !2501, file: !467, line: 950, type: !493)
!2507 = !DILocalVariable(name: "arg", arg: 3, scope: !2501, file: !467, line: 951, type: !105)
!2508 = !DILocalVariable(name: "argsize", arg: 4, scope: !2501, file: !467, line: 951, type: !102)
!2509 = !DILocalVariable(name: "o", scope: !2501, file: !467, line: 953, type: !1574)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 0, scope: !2501)
!2512 = !DILocation(line: 953, column: 3, scope: !2501)
!2513 = !{!2514}
!2514 = distinct !{!2514, !2515, !"quoting_options_from_style: argument 0"}
!2515 = distinct !{!2515, !"quoting_options_from_style"}
!2516 = !DILocation(line: 953, column: 36, scope: !2501)
!2517 = !DILocation(line: 0, scope: !2483, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 953, column: 36, scope: !2501)
!2519 = !DILocation(line: 185, column: 26, scope: !2483, inlinedAt: !2518)
!2520 = distinct !DIAssignID()
!2521 = !DILocation(line: 186, column: 13, scope: !2493, inlinedAt: !2518)
!2522 = !DILocation(line: 186, column: 7, scope: !2483, inlinedAt: !2518)
!2523 = !DILocation(line: 187, column: 5, scope: !2493, inlinedAt: !2518)
!2524 = !DILocation(line: 188, column: 11, scope: !2483, inlinedAt: !2518)
!2525 = distinct !DIAssignID()
!2526 = !DILocation(line: 954, column: 10, scope: !2501)
!2527 = !DILocation(line: 955, column: 1, scope: !2501)
!2528 = !DILocation(line: 954, column: 3, scope: !2501)
!2529 = distinct !DISubprogram(name: "quotearg_style", scope: !467, file: !467, line: 958, type: !2530, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!99, !493, !105}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "s", arg: 1, scope: !2529, file: !467, line: 958, type: !493)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !467, line: 958, type: !105)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 0, scope: !2467, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 960, column: 10, scope: !2529)
!2539 = !DILocation(line: 945, column: 3, scope: !2467, inlinedAt: !2538)
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"quoting_options_from_style: argument 0"}
!2542 = distinct !{!2542, !"quoting_options_from_style"}
!2543 = !DILocation(line: 945, column: 36, scope: !2467, inlinedAt: !2538)
!2544 = !DILocation(line: 0, scope: !2483, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 945, column: 36, scope: !2467, inlinedAt: !2538)
!2546 = !DILocation(line: 185, column: 26, scope: !2483, inlinedAt: !2545)
!2547 = distinct !DIAssignID()
!2548 = !DILocation(line: 186, column: 13, scope: !2493, inlinedAt: !2545)
!2549 = !DILocation(line: 186, column: 7, scope: !2483, inlinedAt: !2545)
!2550 = !DILocation(line: 187, column: 5, scope: !2493, inlinedAt: !2545)
!2551 = !DILocation(line: 188, column: 11, scope: !2483, inlinedAt: !2545)
!2552 = distinct !DIAssignID()
!2553 = !DILocation(line: 946, column: 10, scope: !2467, inlinedAt: !2538)
!2554 = !DILocation(line: 947, column: 1, scope: !2467, inlinedAt: !2538)
!2555 = !DILocation(line: 960, column: 3, scope: !2529)
!2556 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !467, file: !467, line: 964, type: !2557, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!99, !493, !105, !102}
!2559 = !{!2560, !2561, !2562}
!2560 = !DILocalVariable(name: "s", arg: 1, scope: !2556, file: !467, line: 964, type: !493)
!2561 = !DILocalVariable(name: "arg", arg: 2, scope: !2556, file: !467, line: 964, type: !105)
!2562 = !DILocalVariable(name: "argsize", arg: 3, scope: !2556, file: !467, line: 964, type: !102)
!2563 = distinct !DIAssignID()
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 0, scope: !2501, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 966, column: 10, scope: !2556)
!2567 = !DILocation(line: 953, column: 3, scope: !2501, inlinedAt: !2566)
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"quoting_options_from_style: argument 0"}
!2570 = distinct !{!2570, !"quoting_options_from_style"}
!2571 = !DILocation(line: 953, column: 36, scope: !2501, inlinedAt: !2566)
!2572 = !DILocation(line: 0, scope: !2483, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 953, column: 36, scope: !2501, inlinedAt: !2566)
!2574 = !DILocation(line: 185, column: 26, scope: !2483, inlinedAt: !2573)
!2575 = distinct !DIAssignID()
!2576 = !DILocation(line: 186, column: 13, scope: !2493, inlinedAt: !2573)
!2577 = !DILocation(line: 186, column: 7, scope: !2483, inlinedAt: !2573)
!2578 = !DILocation(line: 187, column: 5, scope: !2493, inlinedAt: !2573)
!2579 = !DILocation(line: 188, column: 11, scope: !2483, inlinedAt: !2573)
!2580 = distinct !DIAssignID()
!2581 = !DILocation(line: 954, column: 10, scope: !2501, inlinedAt: !2566)
!2582 = !DILocation(line: 955, column: 1, scope: !2501, inlinedAt: !2566)
!2583 = !DILocation(line: 966, column: 3, scope: !2556)
!2584 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !467, file: !467, line: 970, type: !2585, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!99, !105, !102, !4}
!2587 = !{!2588, !2589, !2590, !2591}
!2588 = !DILocalVariable(name: "arg", arg: 1, scope: !2584, file: !467, line: 970, type: !105)
!2589 = !DILocalVariable(name: "argsize", arg: 2, scope: !2584, file: !467, line: 970, type: !102)
!2590 = !DILocalVariable(name: "ch", arg: 3, scope: !2584, file: !467, line: 970, type: !4)
!2591 = !DILocalVariable(name: "options", scope: !2584, file: !467, line: 972, type: !520)
!2592 = distinct !DIAssignID()
!2593 = !DILocation(line: 0, scope: !2584)
!2594 = !DILocation(line: 972, column: 3, scope: !2584)
!2595 = !DILocation(line: 973, column: 13, scope: !2584)
!2596 = !{i64 0, i64 4, !863, i64 4, i64 4, !863, i64 8, i64 32, !872, i64 40, i64 8, !796, i64 48, i64 8, !796}
!2597 = distinct !DIAssignID()
!2598 = !DILocation(line: 0, scope: !1593, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 974, column: 3, scope: !2584)
!2600 = !DILocation(line: 147, column: 41, scope: !1593, inlinedAt: !2599)
!2601 = !DILocation(line: 147, column: 62, scope: !1593, inlinedAt: !2599)
!2602 = !DILocation(line: 147, column: 57, scope: !1593, inlinedAt: !2599)
!2603 = !DILocation(line: 148, column: 15, scope: !1593, inlinedAt: !2599)
!2604 = !DILocation(line: 149, column: 21, scope: !1593, inlinedAt: !2599)
!2605 = !DILocation(line: 149, column: 24, scope: !1593, inlinedAt: !2599)
!2606 = !DILocation(line: 150, column: 19, scope: !1593, inlinedAt: !2599)
!2607 = !DILocation(line: 150, column: 24, scope: !1593, inlinedAt: !2599)
!2608 = !DILocation(line: 150, column: 6, scope: !1593, inlinedAt: !2599)
!2609 = !DILocation(line: 975, column: 10, scope: !2584)
!2610 = !DILocation(line: 976, column: 1, scope: !2584)
!2611 = !DILocation(line: 975, column: 3, scope: !2584)
!2612 = distinct !DISubprogram(name: "quotearg_char", scope: !467, file: !467, line: 979, type: !2613, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!99, !105, !4}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "arg", arg: 1, scope: !2612, file: !467, line: 979, type: !105)
!2617 = !DILocalVariable(name: "ch", arg: 2, scope: !2612, file: !467, line: 979, type: !4)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 0, scope: !2612)
!2620 = !DILocation(line: 0, scope: !2584, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 981, column: 10, scope: !2612)
!2622 = !DILocation(line: 972, column: 3, scope: !2584, inlinedAt: !2621)
!2623 = !DILocation(line: 973, column: 13, scope: !2584, inlinedAt: !2621)
!2624 = distinct !DIAssignID()
!2625 = !DILocation(line: 0, scope: !1593, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 974, column: 3, scope: !2584, inlinedAt: !2621)
!2627 = !DILocation(line: 147, column: 41, scope: !1593, inlinedAt: !2626)
!2628 = !DILocation(line: 147, column: 62, scope: !1593, inlinedAt: !2626)
!2629 = !DILocation(line: 147, column: 57, scope: !1593, inlinedAt: !2626)
!2630 = !DILocation(line: 148, column: 15, scope: !1593, inlinedAt: !2626)
!2631 = !DILocation(line: 149, column: 21, scope: !1593, inlinedAt: !2626)
!2632 = !DILocation(line: 149, column: 24, scope: !1593, inlinedAt: !2626)
!2633 = !DILocation(line: 150, column: 19, scope: !1593, inlinedAt: !2626)
!2634 = !DILocation(line: 150, column: 24, scope: !1593, inlinedAt: !2626)
!2635 = !DILocation(line: 150, column: 6, scope: !1593, inlinedAt: !2626)
!2636 = !DILocation(line: 975, column: 10, scope: !2584, inlinedAt: !2621)
!2637 = !DILocation(line: 976, column: 1, scope: !2584, inlinedAt: !2621)
!2638 = !DILocation(line: 981, column: 3, scope: !2612)
!2639 = distinct !DISubprogram(name: "quotearg_colon", scope: !467, file: !467, line: 985, type: !986, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2640)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "arg", arg: 1, scope: !2639, file: !467, line: 985, type: !105)
!2642 = distinct !DIAssignID()
!2643 = !DILocation(line: 0, scope: !2639)
!2644 = !DILocation(line: 0, scope: !2612, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 987, column: 10, scope: !2639)
!2646 = !DILocation(line: 0, scope: !2584, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 981, column: 10, scope: !2612, inlinedAt: !2645)
!2648 = !DILocation(line: 972, column: 3, scope: !2584, inlinedAt: !2647)
!2649 = !DILocation(line: 973, column: 13, scope: !2584, inlinedAt: !2647)
!2650 = distinct !DIAssignID()
!2651 = !DILocation(line: 0, scope: !1593, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 974, column: 3, scope: !2584, inlinedAt: !2647)
!2653 = !DILocation(line: 147, column: 57, scope: !1593, inlinedAt: !2652)
!2654 = !DILocation(line: 149, column: 21, scope: !1593, inlinedAt: !2652)
!2655 = !DILocation(line: 150, column: 6, scope: !1593, inlinedAt: !2652)
!2656 = !DILocation(line: 975, column: 10, scope: !2584, inlinedAt: !2647)
!2657 = !DILocation(line: 976, column: 1, scope: !2584, inlinedAt: !2647)
!2658 = !DILocation(line: 987, column: 3, scope: !2639)
!2659 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !467, file: !467, line: 991, type: !2457, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2660)
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2659, file: !467, line: 991, type: !105)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2659, file: !467, line: 991, type: !102)
!2663 = distinct !DIAssignID()
!2664 = !DILocation(line: 0, scope: !2659)
!2665 = !DILocation(line: 0, scope: !2584, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 993, column: 10, scope: !2659)
!2667 = !DILocation(line: 972, column: 3, scope: !2584, inlinedAt: !2666)
!2668 = !DILocation(line: 973, column: 13, scope: !2584, inlinedAt: !2666)
!2669 = distinct !DIAssignID()
!2670 = !DILocation(line: 0, scope: !1593, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 974, column: 3, scope: !2584, inlinedAt: !2666)
!2672 = !DILocation(line: 147, column: 57, scope: !1593, inlinedAt: !2671)
!2673 = !DILocation(line: 149, column: 21, scope: !1593, inlinedAt: !2671)
!2674 = !DILocation(line: 150, column: 6, scope: !1593, inlinedAt: !2671)
!2675 = !DILocation(line: 975, column: 10, scope: !2584, inlinedAt: !2666)
!2676 = !DILocation(line: 976, column: 1, scope: !2584, inlinedAt: !2666)
!2677 = !DILocation(line: 993, column: 3, scope: !2659)
!2678 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !467, file: !467, line: 997, type: !2468, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2679)
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !467, line: 997, type: !78)
!2681 = !DILocalVariable(name: "s", arg: 2, scope: !2678, file: !467, line: 997, type: !493)
!2682 = !DILocalVariable(name: "arg", arg: 3, scope: !2678, file: !467, line: 997, type: !105)
!2683 = !DILocalVariable(name: "options", scope: !2678, file: !467, line: 999, type: !520)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 185, column: 26, scope: !2483, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1000, column: 13, scope: !2678)
!2688 = !DILocation(line: 999, column: 3, scope: !2678)
!2689 = !DILocation(line: 0, scope: !2483, inlinedAt: !2687)
!2690 = !DILocation(line: 186, column: 13, scope: !2493, inlinedAt: !2687)
!2691 = !DILocation(line: 186, column: 7, scope: !2483, inlinedAt: !2687)
!2692 = !DILocation(line: 187, column: 5, scope: !2493, inlinedAt: !2687)
!2693 = !{!2694}
!2694 = distinct !{!2694, !2695, !"quoting_options_from_style: argument 0"}
!2695 = distinct !{!2695, !"quoting_options_from_style"}
!2696 = !DILocation(line: 1000, column: 13, scope: !2678)
!2697 = distinct !DIAssignID()
!2698 = distinct !DIAssignID()
!2699 = !DILocation(line: 0, scope: !1593, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1001, column: 3, scope: !2678)
!2701 = !DILocation(line: 147, column: 57, scope: !1593, inlinedAt: !2700)
!2702 = !DILocation(line: 149, column: 21, scope: !1593, inlinedAt: !2700)
!2703 = !DILocation(line: 150, column: 6, scope: !1593, inlinedAt: !2700)
!2704 = distinct !DIAssignID()
!2705 = !DILocation(line: 1002, column: 10, scope: !2678)
!2706 = !DILocation(line: 1003, column: 1, scope: !2678)
!2707 = !DILocation(line: 1002, column: 3, scope: !2678)
!2708 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !467, file: !467, line: 1006, type: !2709, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!99, !78, !105, !105, !105}
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !467, line: 1006, type: !78)
!2713 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2708, file: !467, line: 1006, type: !105)
!2714 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2708, file: !467, line: 1007, type: !105)
!2715 = !DILocalVariable(name: "arg", arg: 4, scope: !2708, file: !467, line: 1007, type: !105)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 0, scope: !2708)
!2718 = !DILocalVariable(name: "o", scope: !2719, file: !467, line: 1018, type: !520)
!2719 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !467, file: !467, line: 1014, type: !2720, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!99, !78, !105, !105, !105, !102}
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2718}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2719, file: !467, line: 1014, type: !78)
!2724 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2719, file: !467, line: 1014, type: !105)
!2725 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2719, file: !467, line: 1015, type: !105)
!2726 = !DILocalVariable(name: "arg", arg: 4, scope: !2719, file: !467, line: 1016, type: !105)
!2727 = !DILocalVariable(name: "argsize", arg: 5, scope: !2719, file: !467, line: 1016, type: !102)
!2728 = !DILocation(line: 0, scope: !2719, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1009, column: 10, scope: !2708)
!2730 = !DILocation(line: 1018, column: 3, scope: !2719, inlinedAt: !2729)
!2731 = !DILocation(line: 1018, column: 30, scope: !2719, inlinedAt: !2729)
!2732 = distinct !DIAssignID()
!2733 = distinct !DIAssignID()
!2734 = !DILocation(line: 0, scope: !1633, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1019, column: 3, scope: !2719, inlinedAt: !2729)
!2736 = !DILocation(line: 174, column: 12, scope: !1633, inlinedAt: !2735)
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 175, column: 8, scope: !1646, inlinedAt: !2735)
!2739 = !DILocation(line: 175, column: 19, scope: !1646, inlinedAt: !2735)
!2740 = !DILocation(line: 176, column: 5, scope: !1646, inlinedAt: !2735)
!2741 = !DILocation(line: 177, column: 6, scope: !1633, inlinedAt: !2735)
!2742 = !DILocation(line: 177, column: 17, scope: !1633, inlinedAt: !2735)
!2743 = distinct !DIAssignID()
!2744 = !DILocation(line: 178, column: 6, scope: !1633, inlinedAt: !2735)
!2745 = !DILocation(line: 178, column: 18, scope: !1633, inlinedAt: !2735)
!2746 = distinct !DIAssignID()
!2747 = !DILocation(line: 1020, column: 10, scope: !2719, inlinedAt: !2729)
!2748 = !DILocation(line: 1021, column: 1, scope: !2719, inlinedAt: !2729)
!2749 = !DILocation(line: 1009, column: 3, scope: !2708)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !2719)
!2752 = !DILocation(line: 1018, column: 3, scope: !2719)
!2753 = !DILocation(line: 1018, column: 30, scope: !2719)
!2754 = distinct !DIAssignID()
!2755 = distinct !DIAssignID()
!2756 = !DILocation(line: 0, scope: !1633, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1019, column: 3, scope: !2719)
!2758 = !DILocation(line: 174, column: 12, scope: !1633, inlinedAt: !2757)
!2759 = distinct !DIAssignID()
!2760 = !DILocation(line: 175, column: 8, scope: !1646, inlinedAt: !2757)
!2761 = !DILocation(line: 175, column: 19, scope: !1646, inlinedAt: !2757)
!2762 = !DILocation(line: 176, column: 5, scope: !1646, inlinedAt: !2757)
!2763 = !DILocation(line: 177, column: 6, scope: !1633, inlinedAt: !2757)
!2764 = !DILocation(line: 177, column: 17, scope: !1633, inlinedAt: !2757)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 178, column: 6, scope: !1633, inlinedAt: !2757)
!2767 = !DILocation(line: 178, column: 18, scope: !1633, inlinedAt: !2757)
!2768 = distinct !DIAssignID()
!2769 = !DILocation(line: 1020, column: 10, scope: !2719)
!2770 = !DILocation(line: 1021, column: 1, scope: !2719)
!2771 = !DILocation(line: 1020, column: 3, scope: !2719)
!2772 = distinct !DISubprogram(name: "quotearg_custom", scope: !467, file: !467, line: 1024, type: !2773, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!99, !105, !105, !105}
!2775 = !{!2776, !2777, !2778}
!2776 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2772, file: !467, line: 1024, type: !105)
!2777 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2772, file: !467, line: 1024, type: !105)
!2778 = !DILocalVariable(name: "arg", arg: 3, scope: !2772, file: !467, line: 1025, type: !105)
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 0, scope: !2772)
!2781 = !DILocation(line: 0, scope: !2708, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1027, column: 10, scope: !2772)
!2783 = !DILocation(line: 0, scope: !2719, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1009, column: 10, scope: !2708, inlinedAt: !2782)
!2785 = !DILocation(line: 1018, column: 3, scope: !2719, inlinedAt: !2784)
!2786 = !DILocation(line: 1018, column: 30, scope: !2719, inlinedAt: !2784)
!2787 = distinct !DIAssignID()
!2788 = distinct !DIAssignID()
!2789 = !DILocation(line: 0, scope: !1633, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1019, column: 3, scope: !2719, inlinedAt: !2784)
!2791 = !DILocation(line: 174, column: 12, scope: !1633, inlinedAt: !2790)
!2792 = distinct !DIAssignID()
!2793 = !DILocation(line: 175, column: 8, scope: !1646, inlinedAt: !2790)
!2794 = !DILocation(line: 175, column: 19, scope: !1646, inlinedAt: !2790)
!2795 = !DILocation(line: 176, column: 5, scope: !1646, inlinedAt: !2790)
!2796 = !DILocation(line: 177, column: 6, scope: !1633, inlinedAt: !2790)
!2797 = !DILocation(line: 177, column: 17, scope: !1633, inlinedAt: !2790)
!2798 = distinct !DIAssignID()
!2799 = !DILocation(line: 178, column: 6, scope: !1633, inlinedAt: !2790)
!2800 = !DILocation(line: 178, column: 18, scope: !1633, inlinedAt: !2790)
!2801 = distinct !DIAssignID()
!2802 = !DILocation(line: 1020, column: 10, scope: !2719, inlinedAt: !2784)
!2803 = !DILocation(line: 1021, column: 1, scope: !2719, inlinedAt: !2784)
!2804 = !DILocation(line: 1027, column: 3, scope: !2772)
!2805 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !467, file: !467, line: 1031, type: !2806, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!99, !105, !105, !105, !102}
!2808 = !{!2809, !2810, !2811, !2812}
!2809 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2805, file: !467, line: 1031, type: !105)
!2810 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2805, file: !467, line: 1031, type: !105)
!2811 = !DILocalVariable(name: "arg", arg: 3, scope: !2805, file: !467, line: 1032, type: !105)
!2812 = !DILocalVariable(name: "argsize", arg: 4, scope: !2805, file: !467, line: 1032, type: !102)
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 0, scope: !2805)
!2815 = !DILocation(line: 0, scope: !2719, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1034, column: 10, scope: !2805)
!2817 = !DILocation(line: 1018, column: 3, scope: !2719, inlinedAt: !2816)
!2818 = !DILocation(line: 1018, column: 30, scope: !2719, inlinedAt: !2816)
!2819 = distinct !DIAssignID()
!2820 = distinct !DIAssignID()
!2821 = !DILocation(line: 0, scope: !1633, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1019, column: 3, scope: !2719, inlinedAt: !2816)
!2823 = !DILocation(line: 174, column: 12, scope: !1633, inlinedAt: !2822)
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 175, column: 8, scope: !1646, inlinedAt: !2822)
!2826 = !DILocation(line: 175, column: 19, scope: !1646, inlinedAt: !2822)
!2827 = !DILocation(line: 176, column: 5, scope: !1646, inlinedAt: !2822)
!2828 = !DILocation(line: 177, column: 6, scope: !1633, inlinedAt: !2822)
!2829 = !DILocation(line: 177, column: 17, scope: !1633, inlinedAt: !2822)
!2830 = distinct !DIAssignID()
!2831 = !DILocation(line: 178, column: 6, scope: !1633, inlinedAt: !2822)
!2832 = !DILocation(line: 178, column: 18, scope: !1633, inlinedAt: !2822)
!2833 = distinct !DIAssignID()
!2834 = !DILocation(line: 1020, column: 10, scope: !2719, inlinedAt: !2816)
!2835 = !DILocation(line: 1021, column: 1, scope: !2719, inlinedAt: !2816)
!2836 = !DILocation(line: 1034, column: 3, scope: !2805)
!2837 = distinct !DISubprogram(name: "quote_n_mem", scope: !467, file: !467, line: 1049, type: !2838, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!105, !78, !105, !102}
!2840 = !{!2841, !2842, !2843}
!2841 = !DILocalVariable(name: "n", arg: 1, scope: !2837, file: !467, line: 1049, type: !78)
!2842 = !DILocalVariable(name: "arg", arg: 2, scope: !2837, file: !467, line: 1049, type: !105)
!2843 = !DILocalVariable(name: "argsize", arg: 3, scope: !2837, file: !467, line: 1049, type: !102)
!2844 = !DILocation(line: 0, scope: !2837)
!2845 = !DILocation(line: 1051, column: 10, scope: !2837)
!2846 = !DILocation(line: 1051, column: 3, scope: !2837)
!2847 = distinct !DISubprogram(name: "quote_mem", scope: !467, file: !467, line: 1055, type: !2848, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!105, !105, !102}
!2850 = !{!2851, !2852}
!2851 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !467, line: 1055, type: !105)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !467, line: 1055, type: !102)
!2853 = !DILocation(line: 0, scope: !2847)
!2854 = !DILocation(line: 0, scope: !2837, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1057, column: 10, scope: !2847)
!2856 = !DILocation(line: 1051, column: 10, scope: !2837, inlinedAt: !2855)
!2857 = !DILocation(line: 1057, column: 3, scope: !2847)
!2858 = distinct !DISubprogram(name: "quote_n", scope: !467, file: !467, line: 1061, type: !2859, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!105, !78, !105}
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "n", arg: 1, scope: !2858, file: !467, line: 1061, type: !78)
!2863 = !DILocalVariable(name: "arg", arg: 2, scope: !2858, file: !467, line: 1061, type: !105)
!2864 = !DILocation(line: 0, scope: !2858)
!2865 = !DILocation(line: 0, scope: !2837, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1063, column: 10, scope: !2858)
!2867 = !DILocation(line: 1051, column: 10, scope: !2837, inlinedAt: !2866)
!2868 = !DILocation(line: 1063, column: 3, scope: !2858)
!2869 = distinct !DISubprogram(name: "quote", scope: !467, file: !467, line: 1067, type: !2870, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!105, !105}
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "arg", arg: 1, scope: !2869, file: !467, line: 1067, type: !105)
!2874 = !DILocation(line: 0, scope: !2869)
!2875 = !DILocation(line: 0, scope: !2858, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1069, column: 10, scope: !2869)
!2877 = !DILocation(line: 0, scope: !2837, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1063, column: 10, scope: !2858, inlinedAt: !2876)
!2879 = !DILocation(line: 1051, column: 10, scope: !2837, inlinedAt: !2878)
!2880 = !DILocation(line: 1069, column: 3, scope: !2869)
!2881 = distinct !DISubprogram(name: "version_etc_arn", scope: !583, file: !583, line: 61, type: !2882, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !2919)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2884, !105, !105, !105, !2918, !102}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !2886)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2886, file: !160, line: 51, baseType: !78, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2886, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2886, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2886, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2886, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2886, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2886, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2886, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2886, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2886, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2886, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2886, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2886, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2886, file: !160, line: 70, baseType: !2902, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2886, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2886, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2886, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2886, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2886, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2886, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2886, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2886, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2886, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2886, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2886, file: !160, line: 93, baseType: !2902, size: 64, offset: 1344)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2886, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2886, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2886, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2886, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925}
!2920 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !583, line: 61, type: !2884)
!2921 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !583, line: 62, type: !105)
!2922 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !583, line: 62, type: !105)
!2923 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !583, line: 63, type: !105)
!2924 = !DILocalVariable(name: "authors", arg: 5, scope: !2881, file: !583, line: 64, type: !2918)
!2925 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2881, file: !583, line: 64, type: !102)
!2926 = !DILocation(line: 0, scope: !2881)
!2927 = !DILocation(line: 66, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2881, file: !583, line: 66, column: 7)
!2929 = !DILocation(line: 66, column: 7, scope: !2881)
!2930 = !DILocation(line: 67, column: 5, scope: !2928)
!2931 = !DILocation(line: 69, column: 5, scope: !2928)
!2932 = !DILocation(line: 83, column: 3, scope: !2881)
!2933 = !DILocation(line: 85, column: 3, scope: !2881)
!2934 = !DILocation(line: 88, column: 3, scope: !2881)
!2935 = !DILocation(line: 95, column: 3, scope: !2881)
!2936 = !DILocation(line: 97, column: 3, scope: !2881)
!2937 = !DILocation(line: 105, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2881, file: !583, line: 98, column: 5)
!2939 = !DILocation(line: 106, column: 7, scope: !2938)
!2940 = !DILocation(line: 109, column: 7, scope: !2938)
!2941 = !DILocation(line: 110, column: 7, scope: !2938)
!2942 = !DILocation(line: 113, column: 7, scope: !2938)
!2943 = !DILocation(line: 115, column: 7, scope: !2938)
!2944 = !DILocation(line: 120, column: 7, scope: !2938)
!2945 = !DILocation(line: 122, column: 7, scope: !2938)
!2946 = !DILocation(line: 127, column: 7, scope: !2938)
!2947 = !DILocation(line: 129, column: 7, scope: !2938)
!2948 = !DILocation(line: 134, column: 7, scope: !2938)
!2949 = !DILocation(line: 137, column: 7, scope: !2938)
!2950 = !DILocation(line: 142, column: 7, scope: !2938)
!2951 = !DILocation(line: 145, column: 7, scope: !2938)
!2952 = !DILocation(line: 150, column: 7, scope: !2938)
!2953 = !DILocation(line: 154, column: 7, scope: !2938)
!2954 = !DILocation(line: 159, column: 7, scope: !2938)
!2955 = !DILocation(line: 163, column: 7, scope: !2938)
!2956 = !DILocation(line: 170, column: 7, scope: !2938)
!2957 = !DILocation(line: 174, column: 7, scope: !2938)
!2958 = !DILocation(line: 176, column: 1, scope: !2881)
!2959 = distinct !DISubprogram(name: "version_etc_ar", scope: !583, file: !583, line: 183, type: !2960, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2884, !105, !105, !105, !2918}
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968}
!2963 = !DILocalVariable(name: "stream", arg: 1, scope: !2959, file: !583, line: 183, type: !2884)
!2964 = !DILocalVariable(name: "command_name", arg: 2, scope: !2959, file: !583, line: 184, type: !105)
!2965 = !DILocalVariable(name: "package", arg: 3, scope: !2959, file: !583, line: 184, type: !105)
!2966 = !DILocalVariable(name: "version", arg: 4, scope: !2959, file: !583, line: 185, type: !105)
!2967 = !DILocalVariable(name: "authors", arg: 5, scope: !2959, file: !583, line: 185, type: !2918)
!2968 = !DILocalVariable(name: "n_authors", scope: !2959, file: !583, line: 187, type: !102)
!2969 = !DILocation(line: 0, scope: !2959)
!2970 = !DILocation(line: 189, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2959, file: !583, line: 189, column: 3)
!2972 = !DILocation(line: 189, scope: !2971)
!2973 = !DILocation(line: 189, column: 23, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !583, line: 189, column: 3)
!2975 = !DILocation(line: 189, column: 3, scope: !2971)
!2976 = !DILocation(line: 189, column: 52, scope: !2974)
!2977 = distinct !{!2977, !2975, !2978, !910}
!2978 = !DILocation(line: 190, column: 5, scope: !2971)
!2979 = !DILocation(line: 191, column: 3, scope: !2959)
!2980 = !DILocation(line: 192, column: 1, scope: !2959)
!2981 = distinct !DISubprogram(name: "version_etc_va", scope: !583, file: !583, line: 199, type: !2982, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !2994)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2884, !105, !105, !105, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 12, baseType: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !583, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2987, file: !583, line: 192, baseType: !100, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2987, file: !583, line: 192, baseType: !100, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2987, file: !583, line: 192, baseType: !100, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2987, file: !583, line: 192, baseType: !78, size: 32, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2987, file: !583, line: 192, baseType: !78, size: 32, offset: 224)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001}
!2995 = !DILocalVariable(name: "stream", arg: 1, scope: !2981, file: !583, line: 199, type: !2884)
!2996 = !DILocalVariable(name: "command_name", arg: 2, scope: !2981, file: !583, line: 200, type: !105)
!2997 = !DILocalVariable(name: "package", arg: 3, scope: !2981, file: !583, line: 200, type: !105)
!2998 = !DILocalVariable(name: "version", arg: 4, scope: !2981, file: !583, line: 201, type: !105)
!2999 = !DILocalVariable(name: "authors", arg: 5, scope: !2981, file: !583, line: 201, type: !2984)
!3000 = !DILocalVariable(name: "n_authors", scope: !2981, file: !583, line: 203, type: !102)
!3001 = !DILocalVariable(name: "authtab", scope: !2981, file: !583, line: 204, type: !3002)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !60)
!3003 = distinct !DIAssignID()
!3004 = !DILocation(line: 0, scope: !2981)
!3005 = !DILocation(line: 204, column: 3, scope: !2981)
!3006 = !DILocation(line: 208, column: 35, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !583, line: 206, column: 3)
!3008 = distinct !DILexicalBlock(scope: !2981, file: !583, line: 206, column: 3)
!3009 = !DILocation(line: 208, column: 33, scope: !3007)
!3010 = !DILocation(line: 208, column: 67, scope: !3007)
!3011 = !DILocation(line: 206, column: 3, scope: !3008)
!3012 = !DILocation(line: 208, column: 14, scope: !3007)
!3013 = !DILocation(line: 0, scope: !3008)
!3014 = !DILocation(line: 211, column: 3, scope: !2981)
!3015 = !DILocation(line: 213, column: 1, scope: !2981)
!3016 = distinct !DISubprogram(name: "version_etc", scope: !583, file: !583, line: 230, type: !3017, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2884, !105, !105, !105, null}
!3019 = !{!3020, !3021, !3022, !3023, !3024}
!3020 = !DILocalVariable(name: "stream", arg: 1, scope: !3016, file: !583, line: 230, type: !2884)
!3021 = !DILocalVariable(name: "command_name", arg: 2, scope: !3016, file: !583, line: 231, type: !105)
!3022 = !DILocalVariable(name: "package", arg: 3, scope: !3016, file: !583, line: 231, type: !105)
!3023 = !DILocalVariable(name: "version", arg: 4, scope: !3016, file: !583, line: 232, type: !105)
!3024 = !DILocalVariable(name: "authors", scope: !3016, file: !583, line: 234, type: !2984)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 0, scope: !3016)
!3027 = !DILocation(line: 234, column: 3, scope: !3016)
!3028 = !DILocation(line: 235, column: 3, scope: !3016)
!3029 = !DILocation(line: 236, column: 3, scope: !3016)
!3030 = !DILocation(line: 237, column: 3, scope: !3016)
!3031 = !DILocation(line: 238, column: 1, scope: !3016)
!3032 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !583, file: !583, line: 241, type: !422, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713)
!3033 = !DILocation(line: 243, column: 3, scope: !3032)
!3034 = !DILocation(line: 248, column: 3, scope: !3032)
!3035 = !DILocation(line: 254, column: 3, scope: !3032)
!3036 = !DILocation(line: 259, column: 3, scope: !3032)
!3037 = !DILocation(line: 261, column: 1, scope: !3032)
!3038 = distinct !DISubprogram(name: "xnrealloc", scope: !3039, file: !3039, line: 147, type: !3040, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3042)
!3039 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!100, !100, !102, !102}
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !3039, line: 147, type: !100)
!3044 = !DILocalVariable(name: "n", arg: 2, scope: !3038, file: !3039, line: 147, type: !102)
!3045 = !DILocalVariable(name: "s", arg: 3, scope: !3038, file: !3039, line: 147, type: !102)
!3046 = !DILocation(line: 0, scope: !3038)
!3047 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !721, line: 83, type: !100)
!3048 = distinct !DISubprogram(name: "xreallocarray", scope: !721, file: !721, line: 83, type: !3040, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3049)
!3049 = !{!3047, !3050, !3051}
!3050 = !DILocalVariable(name: "n", arg: 2, scope: !3048, file: !721, line: 83, type: !102)
!3051 = !DILocalVariable(name: "s", arg: 3, scope: !3048, file: !721, line: 83, type: !102)
!3052 = !DILocation(line: 0, scope: !3048, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 149, column: 10, scope: !3038)
!3054 = !DILocation(line: 85, column: 25, scope: !3048, inlinedAt: !3053)
!3055 = !DILocalVariable(name: "p", arg: 1, scope: !3056, file: !721, line: 37, type: !100)
!3056 = distinct !DISubprogram(name: "check_nonnull", scope: !721, file: !721, line: 37, type: !3057, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!100, !100}
!3059 = !{!3055}
!3060 = !DILocation(line: 0, scope: !3056, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 85, column: 10, scope: !3048, inlinedAt: !3053)
!3062 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3061)
!3063 = distinct !DILexicalBlock(scope: !3056, file: !721, line: 39, column: 7)
!3064 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3061)
!3065 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3061)
!3066 = !DILocation(line: 149, column: 3, scope: !3038)
!3067 = !DILocation(line: 0, scope: !3048)
!3068 = !DILocation(line: 85, column: 25, scope: !3048)
!3069 = !DILocation(line: 0, scope: !3056, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 85, column: 10, scope: !3048)
!3071 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3070)
!3072 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3070)
!3073 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3070)
!3074 = !DILocation(line: 85, column: 3, scope: !3048)
!3075 = distinct !DISubprogram(name: "xmalloc", scope: !721, file: !721, line: 47, type: !3076, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!100, !102}
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !721, line: 47, type: !102)
!3080 = !DILocation(line: 0, scope: !3075)
!3081 = !DILocation(line: 49, column: 25, scope: !3075)
!3082 = !DILocation(line: 0, scope: !3056, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 49, column: 10, scope: !3075)
!3084 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3083)
!3085 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3083)
!3086 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3083)
!3087 = !DILocation(line: 49, column: 3, scope: !3075)
!3088 = !DISubprogram(name: "malloc", scope: !984, file: !984, line: 540, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3089 = distinct !DISubprogram(name: "ximalloc", scope: !721, file: !721, line: 53, type: !3090, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!100, !740}
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "s", arg: 1, scope: !3089, file: !721, line: 53, type: !740)
!3094 = !DILocation(line: 0, scope: !3089)
!3095 = !DILocalVariable(name: "s", arg: 1, scope: !3096, file: !3097, line: 55, type: !740)
!3096 = distinct !DISubprogram(name: "imalloc", scope: !3097, file: !3097, line: 55, type: !3090, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3098)
!3097 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3098 = !{!3095}
!3099 = !DILocation(line: 0, scope: !3096, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 55, column: 25, scope: !3089)
!3101 = !DILocation(line: 57, column: 26, scope: !3096, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !3056, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 55, column: 10, scope: !3089)
!3104 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3103)
!3105 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3103)
!3106 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3103)
!3107 = !DILocation(line: 55, column: 3, scope: !3089)
!3108 = distinct !DISubprogram(name: "xcharalloc", scope: !721, file: !721, line: 59, type: !3109, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!99, !102}
!3111 = !{!3112}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !721, line: 59, type: !102)
!3113 = !DILocation(line: 0, scope: !3108)
!3114 = !DILocation(line: 0, scope: !3075, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 61, column: 10, scope: !3108)
!3116 = !DILocation(line: 49, column: 25, scope: !3075, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !3056, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 49, column: 10, scope: !3075, inlinedAt: !3115)
!3119 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3118)
!3122 = !DILocation(line: 61, column: 3, scope: !3108)
!3123 = distinct !DISubprogram(name: "xrealloc", scope: !721, file: !721, line: 68, type: !3124, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!100, !100, !102}
!3126 = !{!3127, !3128}
!3127 = !DILocalVariable(name: "p", arg: 1, scope: !3123, file: !721, line: 68, type: !100)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3123, file: !721, line: 68, type: !102)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocalVariable(name: "ptr", arg: 1, scope: !3131, file: !3132, line: 2057, type: !100)
!3131 = distinct !DISubprogram(name: "rpl_realloc", scope: !3132, file: !3132, line: 2057, type: !3124, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3133)
!3132 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3133 = !{!3130, !3134}
!3134 = !DILocalVariable(name: "size", arg: 2, scope: !3131, file: !3132, line: 2057, type: !102)
!3135 = !DILocation(line: 0, scope: !3131, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 70, column: 25, scope: !3123)
!3137 = !DILocation(line: 2059, column: 24, scope: !3131, inlinedAt: !3136)
!3138 = !DILocation(line: 2059, column: 10, scope: !3131, inlinedAt: !3136)
!3139 = !DILocation(line: 0, scope: !3056, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 70, column: 10, scope: !3123)
!3141 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3140)
!3142 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3140)
!3143 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3140)
!3144 = !DILocation(line: 70, column: 3, scope: !3123)
!3145 = !DISubprogram(name: "realloc", scope: !984, file: !984, line: 551, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3146 = distinct !DISubprogram(name: "xirealloc", scope: !721, file: !721, line: 74, type: !3147, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!100, !100, !740}
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "p", arg: 1, scope: !3146, file: !721, line: 74, type: !100)
!3151 = !DILocalVariable(name: "s", arg: 2, scope: !3146, file: !721, line: 74, type: !740)
!3152 = !DILocation(line: 0, scope: !3146)
!3153 = !DILocalVariable(name: "p", arg: 1, scope: !3154, file: !3097, line: 66, type: !100)
!3154 = distinct !DISubprogram(name: "irealloc", scope: !3097, file: !3097, line: 66, type: !3147, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3155)
!3155 = !{!3153, !3156}
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3154, file: !3097, line: 66, type: !740)
!3157 = !DILocation(line: 0, scope: !3154, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 76, column: 25, scope: !3146)
!3159 = !DILocation(line: 0, scope: !3131, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 68, column: 26, scope: !3154, inlinedAt: !3158)
!3161 = !DILocation(line: 2059, column: 24, scope: !3131, inlinedAt: !3160)
!3162 = !DILocation(line: 2059, column: 10, scope: !3131, inlinedAt: !3160)
!3163 = !DILocation(line: 0, scope: !3056, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 76, column: 10, scope: !3146)
!3165 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3164)
!3166 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3164)
!3167 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3164)
!3168 = !DILocation(line: 76, column: 3, scope: !3146)
!3169 = distinct !DISubprogram(name: "xireallocarray", scope: !721, file: !721, line: 89, type: !3170, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!100, !100, !740, !740}
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "p", arg: 1, scope: !3169, file: !721, line: 89, type: !100)
!3174 = !DILocalVariable(name: "n", arg: 2, scope: !3169, file: !721, line: 89, type: !740)
!3175 = !DILocalVariable(name: "s", arg: 3, scope: !3169, file: !721, line: 89, type: !740)
!3176 = !DILocation(line: 0, scope: !3169)
!3177 = !DILocalVariable(name: "p", arg: 1, scope: !3178, file: !3097, line: 98, type: !100)
!3178 = distinct !DISubprogram(name: "ireallocarray", scope: !3097, file: !3097, line: 98, type: !3170, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3179)
!3179 = !{!3177, !3180, !3181}
!3180 = !DILocalVariable(name: "n", arg: 2, scope: !3178, file: !3097, line: 98, type: !740)
!3181 = !DILocalVariable(name: "s", arg: 3, scope: !3178, file: !3097, line: 98, type: !740)
!3182 = !DILocation(line: 0, scope: !3178, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 91, column: 25, scope: !3169)
!3184 = !DILocation(line: 101, column: 13, scope: !3178, inlinedAt: !3183)
!3185 = !DILocation(line: 0, scope: !3056, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 91, column: 10, scope: !3169)
!3187 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3186)
!3188 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3186)
!3189 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3186)
!3190 = !DILocation(line: 91, column: 3, scope: !3169)
!3191 = distinct !DISubprogram(name: "xnmalloc", scope: !721, file: !721, line: 98, type: !3192, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!100, !102, !102}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !721, line: 98, type: !102)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !721, line: 98, type: !102)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 0, scope: !3048, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 100, column: 10, scope: !3191)
!3200 = !DILocation(line: 85, column: 25, scope: !3048, inlinedAt: !3199)
!3201 = !DILocation(line: 0, scope: !3056, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 85, column: 10, scope: !3048, inlinedAt: !3199)
!3203 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3202)
!3204 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3202)
!3205 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3202)
!3206 = !DILocation(line: 100, column: 3, scope: !3191)
!3207 = distinct !DISubprogram(name: "xinmalloc", scope: !721, file: !721, line: 104, type: !3208, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!100, !740, !740}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3207, file: !721, line: 104, type: !740)
!3212 = !DILocalVariable(name: "s", arg: 2, scope: !3207, file: !721, line: 104, type: !740)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 0, scope: !3169, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 106, column: 10, scope: !3207)
!3216 = !DILocation(line: 0, scope: !3178, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 91, column: 25, scope: !3169, inlinedAt: !3215)
!3218 = !DILocation(line: 101, column: 13, scope: !3178, inlinedAt: !3217)
!3219 = !DILocation(line: 0, scope: !3056, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 91, column: 10, scope: !3169, inlinedAt: !3215)
!3221 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3220)
!3224 = !DILocation(line: 106, column: 3, scope: !3207)
!3225 = distinct !DISubprogram(name: "x2realloc", scope: !721, file: !721, line: 116, type: !3226, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!100, !100, !727}
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "p", arg: 1, scope: !3225, file: !721, line: 116, type: !100)
!3230 = !DILocalVariable(name: "ps", arg: 2, scope: !3225, file: !721, line: 116, type: !727)
!3231 = !DILocation(line: 0, scope: !3225)
!3232 = !DILocation(line: 0, scope: !724, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 118, column: 10, scope: !3225)
!3234 = !DILocation(line: 178, column: 14, scope: !724, inlinedAt: !3233)
!3235 = !DILocation(line: 180, column: 9, scope: !3236, inlinedAt: !3233)
!3236 = distinct !DILexicalBlock(scope: !724, file: !721, line: 180, column: 7)
!3237 = !DILocation(line: 180, column: 7, scope: !724, inlinedAt: !3233)
!3238 = !DILocation(line: 182, column: 13, scope: !3239, inlinedAt: !3233)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !721, line: 182, column: 11)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !721, line: 181, column: 5)
!3241 = !DILocation(line: 182, column: 11, scope: !3240, inlinedAt: !3233)
!3242 = !DILocation(line: 197, column: 11, scope: !3243, inlinedAt: !3233)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !721, line: 197, column: 11)
!3244 = distinct !DILexicalBlock(scope: !3236, file: !721, line: 195, column: 5)
!3245 = !DILocation(line: 197, column: 11, scope: !3244, inlinedAt: !3233)
!3246 = !DILocation(line: 198, column: 9, scope: !3243, inlinedAt: !3233)
!3247 = !DILocation(line: 0, scope: !3048, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 201, column: 7, scope: !724, inlinedAt: !3233)
!3249 = !DILocation(line: 85, column: 25, scope: !3048, inlinedAt: !3248)
!3250 = !DILocation(line: 0, scope: !3056, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 85, column: 10, scope: !3048, inlinedAt: !3248)
!3252 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3251)
!3253 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3251)
!3254 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3251)
!3255 = !DILocation(line: 202, column: 7, scope: !724, inlinedAt: !3233)
!3256 = !DILocation(line: 118, column: 3, scope: !3225)
!3257 = !DILocation(line: 0, scope: !724)
!3258 = !DILocation(line: 178, column: 14, scope: !724)
!3259 = !DILocation(line: 180, column: 9, scope: !3236)
!3260 = !DILocation(line: 180, column: 7, scope: !724)
!3261 = !DILocation(line: 182, column: 13, scope: !3239)
!3262 = !DILocation(line: 182, column: 11, scope: !3240)
!3263 = !DILocation(line: 190, column: 30, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3239, file: !721, line: 183, column: 9)
!3265 = !DILocation(line: 191, column: 16, scope: !3264)
!3266 = !DILocation(line: 191, column: 13, scope: !3264)
!3267 = !DILocation(line: 192, column: 9, scope: !3264)
!3268 = !DILocation(line: 197, column: 11, scope: !3243)
!3269 = !DILocation(line: 197, column: 11, scope: !3244)
!3270 = !DILocation(line: 198, column: 9, scope: !3243)
!3271 = !DILocation(line: 0, scope: !3048, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 201, column: 7, scope: !724)
!3273 = !DILocation(line: 85, column: 25, scope: !3048, inlinedAt: !3272)
!3274 = !DILocation(line: 0, scope: !3056, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 85, column: 10, scope: !3048, inlinedAt: !3272)
!3276 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3275)
!3279 = !DILocation(line: 202, column: 7, scope: !724)
!3280 = !DILocation(line: 203, column: 3, scope: !724)
!3281 = !DILocation(line: 0, scope: !736)
!3282 = !DILocation(line: 230, column: 14, scope: !736)
!3283 = !DILocation(line: 238, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !736, file: !721, line: 238, column: 7)
!3285 = !DILocation(line: 238, column: 7, scope: !736)
!3286 = !DILocation(line: 240, column: 9, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !736, file: !721, line: 240, column: 7)
!3288 = !DILocation(line: 240, column: 18, scope: !3287)
!3289 = !DILocation(line: 253, column: 8, scope: !736)
!3290 = !DILocation(line: 256, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !736, file: !721, line: 256, column: 7)
!3292 = !DILocation(line: 256, column: 7, scope: !736)
!3293 = !DILocation(line: 258, column: 27, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !721, line: 257, column: 5)
!3295 = !DILocation(line: 259, column: 32, scope: !3294)
!3296 = !DILocation(line: 260, column: 5, scope: !3294)
!3297 = !DILocation(line: 262, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !736, file: !721, line: 262, column: 7)
!3299 = !DILocation(line: 262, column: 7, scope: !736)
!3300 = !DILocation(line: 263, column: 9, scope: !3298)
!3301 = !DILocation(line: 263, column: 5, scope: !3298)
!3302 = !DILocation(line: 264, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !736, file: !721, line: 264, column: 7)
!3304 = !DILocation(line: 264, column: 14, scope: !3303)
!3305 = !DILocation(line: 265, column: 7, scope: !3303)
!3306 = !DILocation(line: 265, column: 11, scope: !3303)
!3307 = !DILocation(line: 266, column: 11, scope: !3303)
!3308 = !DILocation(line: 267, column: 14, scope: !3303)
!3309 = !DILocation(line: 264, column: 7, scope: !736)
!3310 = !DILocation(line: 268, column: 5, scope: !3303)
!3311 = !DILocation(line: 0, scope: !3123, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 269, column: 8, scope: !736)
!3313 = !DILocation(line: 0, scope: !3131, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 70, column: 25, scope: !3123, inlinedAt: !3312)
!3315 = !DILocation(line: 2059, column: 24, scope: !3131, inlinedAt: !3314)
!3316 = !DILocation(line: 2059, column: 10, scope: !3131, inlinedAt: !3314)
!3317 = !DILocation(line: 0, scope: !3056, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 70, column: 10, scope: !3123, inlinedAt: !3312)
!3319 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3318)
!3322 = !DILocation(line: 270, column: 7, scope: !736)
!3323 = !DILocation(line: 271, column: 3, scope: !736)
!3324 = distinct !DISubprogram(name: "xzalloc", scope: !721, file: !721, line: 279, type: !3076, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3325)
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "s", arg: 1, scope: !3324, file: !721, line: 279, type: !102)
!3327 = !DILocation(line: 0, scope: !3324)
!3328 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !721, line: 294, type: !102)
!3329 = distinct !DISubprogram(name: "xcalloc", scope: !721, file: !721, line: 294, type: !3192, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3330)
!3330 = !{!3328, !3331}
!3331 = !DILocalVariable(name: "s", arg: 2, scope: !3329, file: !721, line: 294, type: !102)
!3332 = !DILocation(line: 0, scope: !3329, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 281, column: 10, scope: !3324)
!3334 = !DILocation(line: 296, column: 25, scope: !3329, inlinedAt: !3333)
!3335 = !DILocation(line: 0, scope: !3056, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 296, column: 10, scope: !3329, inlinedAt: !3333)
!3337 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3336)
!3338 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3336)
!3339 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3336)
!3340 = !DILocation(line: 281, column: 3, scope: !3324)
!3341 = !DISubprogram(name: "calloc", scope: !984, file: !984, line: 543, type: !3192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3342 = !DILocation(line: 0, scope: !3329)
!3343 = !DILocation(line: 296, column: 25, scope: !3329)
!3344 = !DILocation(line: 0, scope: !3056, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 296, column: 10, scope: !3329)
!3346 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3345)
!3347 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3345)
!3348 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3345)
!3349 = !DILocation(line: 296, column: 3, scope: !3329)
!3350 = distinct !DISubprogram(name: "xizalloc", scope: !721, file: !721, line: 285, type: !3090, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "s", arg: 1, scope: !3350, file: !721, line: 285, type: !740)
!3353 = !DILocation(line: 0, scope: !3350)
!3354 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !721, line: 300, type: !740)
!3355 = distinct !DISubprogram(name: "xicalloc", scope: !721, file: !721, line: 300, type: !3208, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3356)
!3356 = !{!3354, !3357}
!3357 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !721, line: 300, type: !740)
!3358 = !DILocation(line: 0, scope: !3355, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 287, column: 10, scope: !3350)
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3361, file: !3097, line: 77, type: !740)
!3361 = distinct !DISubprogram(name: "icalloc", scope: !3097, file: !3097, line: 77, type: !3208, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3362)
!3362 = !{!3360, !3363}
!3363 = !DILocalVariable(name: "s", arg: 2, scope: !3361, file: !3097, line: 77, type: !740)
!3364 = !DILocation(line: 0, scope: !3361, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 302, column: 25, scope: !3355, inlinedAt: !3359)
!3366 = !DILocation(line: 91, column: 10, scope: !3361, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !3056, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 302, column: 10, scope: !3355, inlinedAt: !3359)
!3369 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3368)
!3370 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3368)
!3371 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3368)
!3372 = !DILocation(line: 287, column: 3, scope: !3350)
!3373 = !DILocation(line: 0, scope: !3355)
!3374 = !DILocation(line: 0, scope: !3361, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 302, column: 25, scope: !3355)
!3376 = !DILocation(line: 91, column: 10, scope: !3361, inlinedAt: !3375)
!3377 = !DILocation(line: 0, scope: !3056, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 302, column: 10, scope: !3355)
!3379 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3378)
!3380 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3378)
!3381 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3378)
!3382 = !DILocation(line: 302, column: 3, scope: !3355)
!3383 = distinct !DISubprogram(name: "xmemdup", scope: !721, file: !721, line: 310, type: !3384, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!100, !1008, !102}
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "p", arg: 1, scope: !3383, file: !721, line: 310, type: !1008)
!3388 = !DILocalVariable(name: "s", arg: 2, scope: !3383, file: !721, line: 310, type: !102)
!3389 = !DILocation(line: 0, scope: !3383)
!3390 = !DILocation(line: 0, scope: !3075, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 312, column: 18, scope: !3383)
!3392 = !DILocation(line: 49, column: 25, scope: !3075, inlinedAt: !3391)
!3393 = !DILocation(line: 0, scope: !3056, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 49, column: 10, scope: !3075, inlinedAt: !3391)
!3395 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3394)
!3396 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3394)
!3397 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3394)
!3398 = !DILocalVariable(name: "__dest", arg: 1, scope: !3399, file: !1237, line: 26, type: !1240)
!3399 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3400)
!3400 = !{!3398, !3401, !3402}
!3401 = !DILocalVariable(name: "__src", arg: 2, scope: !3399, file: !1237, line: 26, type: !1007)
!3402 = !DILocalVariable(name: "__len", arg: 3, scope: !3399, file: !1237, line: 26, type: !102)
!3403 = !DILocation(line: 0, scope: !3399, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 312, column: 10, scope: !3383)
!3405 = !DILocation(line: 29, column: 10, scope: !3399, inlinedAt: !3404)
!3406 = !DILocation(line: 312, column: 3, scope: !3383)
!3407 = distinct !DISubprogram(name: "ximemdup", scope: !721, file: !721, line: 316, type: !3408, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!100, !1008, !740}
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "p", arg: 1, scope: !3407, file: !721, line: 316, type: !1008)
!3412 = !DILocalVariable(name: "s", arg: 2, scope: !3407, file: !721, line: 316, type: !740)
!3413 = !DILocation(line: 0, scope: !3407)
!3414 = !DILocation(line: 0, scope: !3089, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 318, column: 18, scope: !3407)
!3416 = !DILocation(line: 0, scope: !3096, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 55, column: 25, scope: !3089, inlinedAt: !3415)
!3418 = !DILocation(line: 57, column: 26, scope: !3096, inlinedAt: !3417)
!3419 = !DILocation(line: 0, scope: !3056, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 55, column: 10, scope: !3089, inlinedAt: !3415)
!3421 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3420)
!3422 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3420)
!3423 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3420)
!3424 = !DILocation(line: 0, scope: !3399, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 318, column: 10, scope: !3407)
!3426 = !DILocation(line: 29, column: 10, scope: !3399, inlinedAt: !3425)
!3427 = !DILocation(line: 318, column: 3, scope: !3407)
!3428 = distinct !DISubprogram(name: "ximemdup0", scope: !721, file: !721, line: 325, type: !3429, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!99, !1008, !740}
!3431 = !{!3432, !3433, !3434}
!3432 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !721, line: 325, type: !1008)
!3433 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !721, line: 325, type: !740)
!3434 = !DILocalVariable(name: "result", scope: !3428, file: !721, line: 327, type: !99)
!3435 = !DILocation(line: 0, scope: !3428)
!3436 = !DILocation(line: 327, column: 30, scope: !3428)
!3437 = !DILocation(line: 0, scope: !3089, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 327, column: 18, scope: !3428)
!3439 = !DILocation(line: 0, scope: !3096, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 55, column: 25, scope: !3089, inlinedAt: !3438)
!3441 = !DILocation(line: 57, column: 26, scope: !3096, inlinedAt: !3440)
!3442 = !DILocation(line: 0, scope: !3056, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 55, column: 10, scope: !3089, inlinedAt: !3438)
!3444 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3443)
!3445 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3443)
!3446 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3443)
!3447 = !DILocation(line: 328, column: 3, scope: !3428)
!3448 = !DILocation(line: 328, column: 13, scope: !3428)
!3449 = !DILocation(line: 0, scope: !3399, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 329, column: 10, scope: !3428)
!3451 = !DILocation(line: 29, column: 10, scope: !3399, inlinedAt: !3450)
!3452 = !DILocation(line: 329, column: 3, scope: !3428)
!3453 = distinct !DISubprogram(name: "xstrdup", scope: !721, file: !721, line: 335, type: !986, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "string", arg: 1, scope: !3453, file: !721, line: 335, type: !105)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 337, column: 27, scope: !3453)
!3458 = !DILocation(line: 337, column: 43, scope: !3453)
!3459 = !DILocation(line: 0, scope: !3383, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 337, column: 10, scope: !3453)
!3461 = !DILocation(line: 0, scope: !3075, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 312, column: 18, scope: !3383, inlinedAt: !3460)
!3463 = !DILocation(line: 49, column: 25, scope: !3075, inlinedAt: !3462)
!3464 = !DILocation(line: 0, scope: !3056, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 49, column: 10, scope: !3075, inlinedAt: !3462)
!3466 = !DILocation(line: 39, column: 8, scope: !3063, inlinedAt: !3465)
!3467 = !DILocation(line: 39, column: 7, scope: !3056, inlinedAt: !3465)
!3468 = !DILocation(line: 40, column: 5, scope: !3063, inlinedAt: !3465)
!3469 = !DILocation(line: 0, scope: !3399, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 312, column: 10, scope: !3383, inlinedAt: !3460)
!3471 = !DILocation(line: 29, column: 10, scope: !3399, inlinedAt: !3470)
!3472 = !DILocation(line: 337, column: 3, scope: !3453)
!3473 = distinct !DISubprogram(name: "xalloc_die", scope: !679, file: !679, line: 32, type: !422, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3474)
!3474 = !{!3475}
!3475 = !DILocalVariable(name: "__errstatus", scope: !3476, file: !679, line: 34, type: !3477)
!3476 = distinct !DILexicalBlock(scope: !3473, file: !679, line: 34, column: 3)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3478 = !DILocation(line: 34, column: 3, scope: !3476)
!3479 = !DILocation(line: 0, scope: !3476)
!3480 = !DILocation(line: 40, column: 3, scope: !3473)
!3481 = distinct !DISubprogram(name: "last_component", scope: !758, file: !758, line: 29, type: !986, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3482)
!3482 = !{!3483, !3484, !3485, !3486}
!3483 = !DILocalVariable(name: "name", arg: 1, scope: !3481, file: !758, line: 29, type: !105)
!3484 = !DILocalVariable(name: "base", scope: !3481, file: !758, line: 31, type: !105)
!3485 = !DILocalVariable(name: "last_was_slash", scope: !3481, file: !758, line: 35, type: !143)
!3486 = !DILocalVariable(name: "p", scope: !3487, file: !758, line: 36, type: !105)
!3487 = distinct !DILexicalBlock(scope: !3481, file: !758, line: 36, column: 3)
!3488 = !DILocation(line: 0, scope: !3481)
!3489 = !DILocation(line: 32, column: 3, scope: !3481)
!3490 = !DILocation(line: 32, column: 10, scope: !3481)
!3491 = !DILocation(line: 33, column: 9, scope: !3481)
!3492 = distinct !{!3492, !3489, !3491, !910}
!3493 = !DILocation(line: 36, column: 3, scope: !3487)
!3494 = !DILocation(line: 36, column: 30, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3487, file: !758, line: 36, column: 3)
!3496 = !DILocation(line: 31, column: 15, scope: !3481)
!3497 = !DILocation(line: 36, scope: !3487)
!3498 = !DILocation(line: 0, scope: !3487)
!3499 = !DILocation(line: 47, column: 3, scope: !3481)
!3500 = !DILocation(line: 40, column: 16, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !758, line: 38, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3495, file: !758, line: 37, column: 5)
!3503 = !DILocation(line: 36, column: 35, scope: !3495)
!3504 = !DILocation(line: 36, column: 3, scope: !3495)
!3505 = distinct !{!3505, !3493, !3506, !910}
!3506 = !DILocation(line: 45, column: 5, scope: !3487)
!3507 = distinct !DISubprogram(name: "base_len", scope: !758, file: !758, line: 51, type: !3508, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!102, !105}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "name", arg: 1, scope: !3507, file: !758, line: 51, type: !105)
!3512 = !DILocalVariable(name: "len", scope: !3507, file: !758, line: 53, type: !102)
!3513 = !DILocalVariable(name: "prefix_len", scope: !3507, file: !758, line: 61, type: !102)
!3514 = !DILocation(line: 0, scope: !3507)
!3515 = !DILocation(line: 54, column: 14, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3507, file: !758, line: 54, column: 3)
!3517 = !DILocation(line: 54, column: 8, scope: !3516)
!3518 = !DILocation(line: 54, column: 32, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !758, line: 54, column: 3)
!3520 = !DILocation(line: 54, column: 38, scope: !3519)
!3521 = !DILocation(line: 54, column: 3, scope: !3516)
!3522 = !DILocation(line: 54, column: 41, scope: !3519)
!3523 = !DILocation(line: 54, column: 70, scope: !3519)
!3524 = distinct !{!3524, !3521, !3525, !910}
!3525 = !DILocation(line: 55, column: 5, scope: !3516)
!3526 = !DILocation(line: 66, column: 3, scope: !3507)
!3527 = !DILocation(line: 54, scope: !3516)
!3528 = distinct !DISubprogram(name: "close_stream", scope: !761, file: !761, line: 55, type: !3529, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3565)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!78, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3533, file: !160, line: 51, baseType: !78, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3533, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3533, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3533, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3533, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3533, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3533, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3533, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3533, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3533, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3533, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3533, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3533, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3533, file: !160, line: 70, baseType: !3549, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3533, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3533, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3533, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3533, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3533, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3533, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3533, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3533, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3533, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3533, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3533, file: !160, line: 93, baseType: !3549, size: 64, offset: 1344)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3533, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3533, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3533, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3533, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3565 = !{!3566, !3567, !3569, !3570}
!3566 = !DILocalVariable(name: "stream", arg: 1, scope: !3528, file: !761, line: 55, type: !3531)
!3567 = !DILocalVariable(name: "some_pending", scope: !3528, file: !761, line: 57, type: !3568)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3569 = !DILocalVariable(name: "prev_fail", scope: !3528, file: !761, line: 58, type: !3568)
!3570 = !DILocalVariable(name: "fclose_fail", scope: !3528, file: !761, line: 59, type: !3568)
!3571 = !DILocation(line: 0, scope: !3528)
!3572 = !DILocation(line: 57, column: 30, scope: !3528)
!3573 = !DILocalVariable(name: "__stream", arg: 1, scope: !3574, file: !1135, line: 135, type: !3531)
!3574 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1135, file: !1135, line: 135, type: !3529, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3575)
!3575 = !{!3573}
!3576 = !DILocation(line: 0, scope: !3574, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 58, column: 27, scope: !3528)
!3578 = !DILocation(line: 137, column: 10, scope: !3574, inlinedAt: !3577)
!3579 = !{!1143, !864, i64 0}
!3580 = !DILocation(line: 58, column: 43, scope: !3528)
!3581 = !DILocation(line: 59, column: 29, scope: !3528)
!3582 = !DILocation(line: 59, column: 45, scope: !3528)
!3583 = !DILocation(line: 69, column: 17, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3528, file: !761, line: 69, column: 7)
!3585 = !DILocation(line: 57, column: 50, scope: !3528)
!3586 = !DILocation(line: 69, column: 33, scope: !3584)
!3587 = !DILocation(line: 69, column: 53, scope: !3584)
!3588 = !DILocation(line: 69, column: 59, scope: !3584)
!3589 = !DILocation(line: 69, column: 7, scope: !3528)
!3590 = !DILocation(line: 71, column: 11, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3584, file: !761, line: 70, column: 5)
!3592 = !DILocation(line: 72, column: 9, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !761, line: 71, column: 11)
!3594 = !DILocation(line: 72, column: 15, scope: !3593)
!3595 = !DILocation(line: 77, column: 1, scope: !3528)
!3596 = !DISubprogram(name: "__fpending", scope: !3597, file: !3597, line: 75, type: !3598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3597 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!102, !3531}
!3600 = distinct !DISubprogram(name: "rpl_fclose", scope: !763, file: !763, line: 58, type: !3601, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3637)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!78, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3605, file: !160, line: 51, baseType: !78, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3605, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3605, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3605, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3605, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3605, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3605, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3605, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3605, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3605, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3605, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3605, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3605, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3605, file: !160, line: 70, baseType: !3621, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3605, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3605, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3605, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3605, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3605, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3605, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3605, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3605, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3605, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3605, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3605, file: !160, line: 93, baseType: !3621, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3605, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3605, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3605, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3605, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DILocalVariable(name: "fp", arg: 1, scope: !3600, file: !763, line: 58, type: !3603)
!3639 = !DILocalVariable(name: "saved_errno", scope: !3600, file: !763, line: 60, type: !78)
!3640 = !DILocalVariable(name: "fd", scope: !3600, file: !763, line: 63, type: !78)
!3641 = !DILocalVariable(name: "result", scope: !3600, file: !763, line: 74, type: !78)
!3642 = !DILocation(line: 0, scope: !3600)
!3643 = !DILocation(line: 63, column: 12, scope: !3600)
!3644 = !DILocation(line: 64, column: 10, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3600, file: !763, line: 64, column: 7)
!3646 = !DILocation(line: 64, column: 7, scope: !3600)
!3647 = !DILocation(line: 65, column: 12, scope: !3645)
!3648 = !DILocation(line: 65, column: 5, scope: !3645)
!3649 = !DILocation(line: 70, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3600, file: !763, line: 70, column: 7)
!3651 = !DILocation(line: 70, column: 23, scope: !3650)
!3652 = !DILocation(line: 70, column: 33, scope: !3650)
!3653 = !DILocation(line: 70, column: 26, scope: !3650)
!3654 = !DILocation(line: 70, column: 59, scope: !3650)
!3655 = !DILocation(line: 71, column: 7, scope: !3650)
!3656 = !DILocation(line: 71, column: 10, scope: !3650)
!3657 = !DILocation(line: 70, column: 7, scope: !3600)
!3658 = !DILocation(line: 100, column: 12, scope: !3600)
!3659 = !DILocation(line: 105, column: 7, scope: !3600)
!3660 = !DILocation(line: 72, column: 19, scope: !3650)
!3661 = !DILocation(line: 105, column: 19, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3600, file: !763, line: 105, column: 7)
!3663 = !DILocation(line: 107, column: 13, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3662, file: !763, line: 106, column: 5)
!3665 = !DILocation(line: 109, column: 5, scope: !3664)
!3666 = !DILocation(line: 112, column: 1, scope: !3600)
!3667 = !DISubprogram(name: "fileno", scope: !382, file: !382, line: 809, type: !3601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3668 = !DISubprogram(name: "fclose", scope: !382, file: !382, line: 178, type: !3601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3669 = !DISubprogram(name: "__freading", scope: !3597, file: !3597, line: 51, type: !3601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3670 = !DISubprogram(name: "lseek", scope: !1212, file: !1212, line: 339, type: !3671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!182, !78, !182, !78}
!3673 = distinct !DISubprogram(name: "rpl_fflush", scope: !765, file: !765, line: 130, type: !3674, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3710)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!78, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3678, file: !160, line: 51, baseType: !78, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3678, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3678, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3678, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3678, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3678, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3678, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3678, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3678, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3678, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3678, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3678, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3678, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3678, file: !160, line: 70, baseType: !3694, size: 64, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3678, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3678, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3678, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3678, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3678, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3678, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3678, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3678, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3678, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3678, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3678, file: !160, line: 93, baseType: !3694, size: 64, offset: 1344)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3678, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3678, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3678, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3678, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "stream", arg: 1, scope: !3673, file: !765, line: 130, type: !3676)
!3712 = !DILocation(line: 0, scope: !3673)
!3713 = !DILocation(line: 151, column: 14, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3673, file: !765, line: 151, column: 7)
!3715 = !DILocation(line: 151, column: 22, scope: !3714)
!3716 = !DILocation(line: 151, column: 27, scope: !3714)
!3717 = !DILocation(line: 151, column: 7, scope: !3673)
!3718 = !DILocation(line: 152, column: 12, scope: !3714)
!3719 = !DILocation(line: 152, column: 5, scope: !3714)
!3720 = !DILocalVariable(name: "fp", arg: 1, scope: !3721, file: !765, line: 42, type: !3676)
!3721 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !765, file: !765, line: 42, type: !3722, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3676}
!3724 = !{!3720}
!3725 = !DILocation(line: 0, scope: !3721, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 157, column: 3, scope: !3673)
!3727 = !DILocation(line: 44, column: 12, scope: !3728, inlinedAt: !3726)
!3728 = distinct !DILexicalBlock(scope: !3721, file: !765, line: 44, column: 7)
!3729 = !DILocation(line: 44, column: 19, scope: !3728, inlinedAt: !3726)
!3730 = !DILocation(line: 44, column: 7, scope: !3721, inlinedAt: !3726)
!3731 = !DILocation(line: 46, column: 5, scope: !3728, inlinedAt: !3726)
!3732 = !DILocation(line: 159, column: 10, scope: !3673)
!3733 = !DILocation(line: 159, column: 3, scope: !3673)
!3734 = !DILocation(line: 236, column: 1, scope: !3673)
!3735 = !DISubprogram(name: "fflush", scope: !382, file: !382, line: 230, type: !3674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3736 = distinct !DISubprogram(name: "rpl_fseeko", scope: !767, file: !767, line: 28, type: !3737, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3774)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!78, !3739, !3773, !78}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !3741)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3741, file: !160, line: 51, baseType: !78, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3741, file: !160, line: 54, baseType: !99, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3741, file: !160, line: 55, baseType: !99, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3741, file: !160, line: 56, baseType: !99, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3741, file: !160, line: 57, baseType: !99, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3741, file: !160, line: 58, baseType: !99, size: 64, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3741, file: !160, line: 59, baseType: !99, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3741, file: !160, line: 60, baseType: !99, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3741, file: !160, line: 61, baseType: !99, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3741, file: !160, line: 64, baseType: !99, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3741, file: !160, line: 65, baseType: !99, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3741, file: !160, line: 66, baseType: !99, size: 64, offset: 704)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3741, file: !160, line: 68, baseType: !175, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3741, file: !160, line: 70, baseType: !3757, size: 64, offset: 832)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3741, file: !160, line: 72, baseType: !78, size: 32, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3741, file: !160, line: 73, baseType: !78, size: 32, offset: 928)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3741, file: !160, line: 74, baseType: !182, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3741, file: !160, line: 77, baseType: !101, size: 16, offset: 1024)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3741, file: !160, line: 78, baseType: !187, size: 8, offset: 1040)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3741, file: !160, line: 79, baseType: !54, size: 8, offset: 1048)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3741, file: !160, line: 81, baseType: !190, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3741, file: !160, line: 89, baseType: !193, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3741, file: !160, line: 91, baseType: !195, size: 64, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3741, file: !160, line: 92, baseType: !198, size: 64, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3741, file: !160, line: 93, baseType: !3757, size: 64, offset: 1344)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3741, file: !160, line: 94, baseType: !100, size: 64, offset: 1408)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3741, file: !160, line: 95, baseType: !102, size: 64, offset: 1472)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3741, file: !160, line: 96, baseType: !78, size: 32, offset: 1536)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3741, file: !160, line: 98, baseType: !205, size: 160, offset: 1568)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !382, line: 63, baseType: !182)
!3774 = !{!3775, !3776, !3777, !3778}
!3775 = !DILocalVariable(name: "fp", arg: 1, scope: !3736, file: !767, line: 28, type: !3739)
!3776 = !DILocalVariable(name: "offset", arg: 2, scope: !3736, file: !767, line: 28, type: !3773)
!3777 = !DILocalVariable(name: "whence", arg: 3, scope: !3736, file: !767, line: 28, type: !78)
!3778 = !DILocalVariable(name: "pos", scope: !3779, file: !767, line: 123, type: !3773)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !767, line: 119, column: 5)
!3780 = distinct !DILexicalBlock(scope: !3736, file: !767, line: 55, column: 7)
!3781 = !DILocation(line: 0, scope: !3736)
!3782 = !DILocation(line: 55, column: 12, scope: !3780)
!3783 = !{!1143, !797, i64 16}
!3784 = !DILocation(line: 55, column: 33, scope: !3780)
!3785 = !{!1143, !797, i64 8}
!3786 = !DILocation(line: 55, column: 25, scope: !3780)
!3787 = !DILocation(line: 56, column: 7, scope: !3780)
!3788 = !DILocation(line: 56, column: 15, scope: !3780)
!3789 = !DILocation(line: 56, column: 37, scope: !3780)
!3790 = !{!1143, !797, i64 32}
!3791 = !DILocation(line: 56, column: 29, scope: !3780)
!3792 = !DILocation(line: 57, column: 7, scope: !3780)
!3793 = !DILocation(line: 57, column: 15, scope: !3780)
!3794 = !{!1143, !797, i64 72}
!3795 = !DILocation(line: 57, column: 29, scope: !3780)
!3796 = !DILocation(line: 55, column: 7, scope: !3736)
!3797 = !DILocation(line: 123, column: 26, scope: !3779)
!3798 = !DILocation(line: 123, column: 19, scope: !3779)
!3799 = !DILocation(line: 0, scope: !3779)
!3800 = !DILocation(line: 124, column: 15, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3779, file: !767, line: 124, column: 11)
!3802 = !DILocation(line: 124, column: 11, scope: !3779)
!3803 = !DILocation(line: 135, column: 19, scope: !3779)
!3804 = !DILocation(line: 136, column: 12, scope: !3779)
!3805 = !DILocation(line: 136, column: 20, scope: !3779)
!3806 = !{!1143, !1144, i64 144}
!3807 = !DILocation(line: 167, column: 7, scope: !3779)
!3808 = !DILocation(line: 169, column: 10, scope: !3736)
!3809 = !DILocation(line: 169, column: 3, scope: !3736)
!3810 = !DILocation(line: 170, column: 1, scope: !3736)
!3811 = !DISubprogram(name: "fseeko", scope: !382, file: !382, line: 736, type: !3812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!78, !3739, !182, !78}
!3814 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !686, file: !686, line: 100, type: !3815, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3818)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!102, !1554, !105, !102, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3818 = !{!3819, !3820, !3821, !3822, !3823}
!3819 = !DILocalVariable(name: "pwc", arg: 1, scope: !3814, file: !686, line: 100, type: !1554)
!3820 = !DILocalVariable(name: "s", arg: 2, scope: !3814, file: !686, line: 100, type: !105)
!3821 = !DILocalVariable(name: "n", arg: 3, scope: !3814, file: !686, line: 100, type: !102)
!3822 = !DILocalVariable(name: "ps", arg: 4, scope: !3814, file: !686, line: 100, type: !3817)
!3823 = !DILocalVariable(name: "ret", scope: !3814, file: !686, line: 130, type: !102)
!3824 = !DILocation(line: 0, scope: !3814)
!3825 = !DILocation(line: 105, column: 9, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3814, file: !686, line: 105, column: 7)
!3827 = !DILocation(line: 105, column: 7, scope: !3814)
!3828 = !DILocation(line: 117, column: 10, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3814, file: !686, line: 117, column: 7)
!3830 = !DILocation(line: 117, column: 7, scope: !3814)
!3831 = !DILocation(line: 130, column: 16, scope: !3814)
!3832 = !DILocation(line: 135, column: 11, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3814, file: !686, line: 135, column: 7)
!3834 = !DILocation(line: 135, column: 25, scope: !3833)
!3835 = !DILocation(line: 135, column: 30, scope: !3833)
!3836 = !DILocation(line: 135, column: 7, scope: !3814)
!3837 = !DILocalVariable(name: "ps", arg: 1, scope: !3838, file: !1528, line: 1135, type: !3817)
!3838 = distinct !DISubprogram(name: "mbszero", scope: !1528, file: !1528, line: 1135, type: !3839, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3817}
!3841 = !{!3837}
!3842 = !DILocation(line: 0, scope: !3838, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 137, column: 5, scope: !3833)
!3844 = !DILocalVariable(name: "__dest", arg: 1, scope: !3845, file: !1237, line: 57, type: !100)
!3845 = distinct !DISubprogram(name: "memset", scope: !1237, file: !1237, line: 57, type: !1537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3846)
!3846 = !{!3844, !3847, !3848}
!3847 = !DILocalVariable(name: "__ch", arg: 2, scope: !3845, file: !1237, line: 57, type: !78)
!3848 = !DILocalVariable(name: "__len", arg: 3, scope: !3845, file: !1237, line: 57, type: !102)
!3849 = !DILocation(line: 0, scope: !3845, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 1137, column: 3, scope: !3838, inlinedAt: !3843)
!3851 = !DILocation(line: 59, column: 10, scope: !3845, inlinedAt: !3850)
!3852 = !DILocation(line: 137, column: 5, scope: !3833)
!3853 = !DILocation(line: 138, column: 11, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3814, file: !686, line: 138, column: 7)
!3855 = !DILocation(line: 138, column: 7, scope: !3814)
!3856 = !DILocation(line: 139, column: 5, scope: !3854)
!3857 = !DILocation(line: 143, column: 26, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3814, file: !686, line: 143, column: 7)
!3859 = !DILocation(line: 143, column: 41, scope: !3858)
!3860 = !DILocation(line: 143, column: 7, scope: !3814)
!3861 = !DILocation(line: 145, column: 15, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !686, line: 145, column: 11)
!3863 = distinct !DILexicalBlock(scope: !3858, file: !686, line: 144, column: 5)
!3864 = !DILocation(line: 145, column: 11, scope: !3863)
!3865 = !DILocation(line: 146, column: 32, scope: !3862)
!3866 = !DILocation(line: 146, column: 16, scope: !3862)
!3867 = !DILocation(line: 146, column: 14, scope: !3862)
!3868 = !DILocation(line: 146, column: 9, scope: !3862)
!3869 = !DILocation(line: 286, column: 1, scope: !3814)
!3870 = !DISubprogram(name: "mbsinit", scope: !3871, file: !3871, line: 293, type: !3872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3871 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!78, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!3876 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !769, file: !769, line: 27, type: !3040, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3877)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DILocalVariable(name: "ptr", arg: 1, scope: !3876, file: !769, line: 27, type: !100)
!3879 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3876, file: !769, line: 27, type: !102)
!3880 = !DILocalVariable(name: "size", arg: 3, scope: !3876, file: !769, line: 27, type: !102)
!3881 = !DILocalVariable(name: "nbytes", scope: !3876, file: !769, line: 29, type: !102)
!3882 = !DILocation(line: 0, scope: !3876)
!3883 = !DILocation(line: 30, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3876, file: !769, line: 30, column: 7)
!3885 = !DILocation(line: 30, column: 7, scope: !3876)
!3886 = !DILocation(line: 32, column: 7, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !769, line: 31, column: 5)
!3888 = !DILocation(line: 32, column: 13, scope: !3887)
!3889 = !DILocation(line: 33, column: 7, scope: !3887)
!3890 = !DILocalVariable(name: "ptr", arg: 1, scope: !3891, file: !3132, line: 2057, type: !100)
!3891 = distinct !DISubprogram(name: "rpl_realloc", scope: !3132, file: !3132, line: 2057, type: !3124, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3892)
!3892 = !{!3890, !3893}
!3893 = !DILocalVariable(name: "size", arg: 2, scope: !3891, file: !3132, line: 2057, type: !102)
!3894 = !DILocation(line: 0, scope: !3891, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 37, column: 10, scope: !3876)
!3896 = !DILocation(line: 2059, column: 24, scope: !3891, inlinedAt: !3895)
!3897 = !DILocation(line: 2059, column: 10, scope: !3891, inlinedAt: !3895)
!3898 = !DILocation(line: 37, column: 3, scope: !3876)
!3899 = !DILocation(line: 38, column: 1, scope: !3876)
!3900 = distinct !DISubprogram(name: "hard_locale", scope: !704, file: !704, line: 28, type: !3901, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!143, !78}
!3903 = !{!3904, !3905}
!3904 = !DILocalVariable(name: "category", arg: 1, scope: !3900, file: !704, line: 28, type: !78)
!3905 = !DILocalVariable(name: "locale", scope: !3900, file: !704, line: 30, type: !3906)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3907)
!3907 = !{!3908}
!3908 = !DISubrange(count: 257)
!3909 = distinct !DIAssignID()
!3910 = !DILocation(line: 0, scope: !3900)
!3911 = !DILocation(line: 30, column: 3, scope: !3900)
!3912 = !DILocation(line: 32, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3900, file: !704, line: 32, column: 7)
!3914 = !DILocation(line: 32, column: 7, scope: !3900)
!3915 = !DILocalVariable(name: "__s1", arg: 1, scope: !3916, file: !876, line: 1359, type: !105)
!3916 = distinct !DISubprogram(name: "streq", scope: !876, file: !876, line: 1359, type: !877, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3917)
!3917 = !{!3915, !3918}
!3918 = !DILocalVariable(name: "__s2", arg: 2, scope: !3916, file: !876, line: 1359, type: !105)
!3919 = !DILocation(line: 0, scope: !3916, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 35, column: 9, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3900, file: !704, line: 35, column: 7)
!3922 = !DILocation(line: 1361, column: 11, scope: !3916, inlinedAt: !3920)
!3923 = !DILocation(line: 1361, column: 10, scope: !3916, inlinedAt: !3920)
!3924 = !DILocation(line: 35, column: 29, scope: !3921)
!3925 = !DILocation(line: 0, scope: !3916, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 35, column: 32, scope: !3921)
!3927 = !DILocation(line: 1361, column: 11, scope: !3916, inlinedAt: !3926)
!3928 = !DILocation(line: 1361, column: 10, scope: !3916, inlinedAt: !3926)
!3929 = !DILocation(line: 35, column: 7, scope: !3900)
!3930 = !DILocation(line: 46, column: 3, scope: !3900)
!3931 = !DILocation(line: 47, column: 1, scope: !3900)
!3932 = distinct !DISubprogram(name: "setlocale_null_r", scope: !773, file: !773, line: 154, type: !3933, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!78, !78, !99, !102}
!3935 = !{!3936, !3937, !3938}
!3936 = !DILocalVariable(name: "category", arg: 1, scope: !3932, file: !773, line: 154, type: !78)
!3937 = !DILocalVariable(name: "buf", arg: 2, scope: !3932, file: !773, line: 154, type: !99)
!3938 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3932, file: !773, line: 154, type: !102)
!3939 = !DILocation(line: 0, scope: !3932)
!3940 = !DILocation(line: 159, column: 10, scope: !3932)
!3941 = !DILocation(line: 159, column: 3, scope: !3932)
!3942 = distinct !DISubprogram(name: "setlocale_null", scope: !773, file: !773, line: 186, type: !3943, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!105, !78}
!3945 = !{!3946}
!3946 = !DILocalVariable(name: "category", arg: 1, scope: !3942, file: !773, line: 186, type: !78)
!3947 = !DILocation(line: 0, scope: !3942)
!3948 = !DILocation(line: 189, column: 10, scope: !3942)
!3949 = !DILocation(line: 189, column: 3, scope: !3942)
!3950 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !775, file: !775, line: 35, type: !3943, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3951)
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "category", arg: 1, scope: !3950, file: !775, line: 35, type: !78)
!3953 = !DILocalVariable(name: "result", scope: !3950, file: !775, line: 37, type: !105)
!3954 = !DILocation(line: 0, scope: !3950)
!3955 = !DILocation(line: 37, column: 24, scope: !3950)
!3956 = !DILocation(line: 62, column: 3, scope: !3950)
!3957 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !775, file: !775, line: 66, type: !3933, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963}
!3959 = !DILocalVariable(name: "category", arg: 1, scope: !3957, file: !775, line: 66, type: !78)
!3960 = !DILocalVariable(name: "buf", arg: 2, scope: !3957, file: !775, line: 66, type: !99)
!3961 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3957, file: !775, line: 66, type: !102)
!3962 = !DILocalVariable(name: "result", scope: !3957, file: !775, line: 111, type: !105)
!3963 = !DILocalVariable(name: "length", scope: !3964, file: !775, line: 125, type: !102)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !775, line: 124, column: 5)
!3965 = distinct !DILexicalBlock(scope: !3957, file: !775, line: 113, column: 7)
!3966 = !DILocation(line: 0, scope: !3957)
!3967 = !DILocation(line: 0, scope: !3950, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 111, column: 24, scope: !3957)
!3969 = !DILocation(line: 37, column: 24, scope: !3950, inlinedAt: !3968)
!3970 = !DILocation(line: 113, column: 14, scope: !3965)
!3971 = !DILocation(line: 113, column: 7, scope: !3957)
!3972 = !DILocation(line: 116, column: 19, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !775, line: 116, column: 11)
!3974 = distinct !DILexicalBlock(scope: !3965, file: !775, line: 114, column: 5)
!3975 = !DILocation(line: 116, column: 11, scope: !3974)
!3976 = !DILocation(line: 120, column: 16, scope: !3973)
!3977 = !DILocation(line: 120, column: 9, scope: !3973)
!3978 = !DILocation(line: 125, column: 23, scope: !3964)
!3979 = !DILocation(line: 0, scope: !3964)
!3980 = !DILocation(line: 126, column: 18, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3964, file: !775, line: 126, column: 11)
!3982 = !DILocation(line: 126, column: 11, scope: !3964)
!3983 = !DILocation(line: 128, column: 39, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !775, line: 127, column: 9)
!3985 = !DILocalVariable(name: "__dest", arg: 1, scope: !3986, file: !1237, line: 26, type: !1240)
!3986 = distinct !DISubprogram(name: "memcpy", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3987)
!3987 = !{!3985, !3988, !3989}
!3988 = !DILocalVariable(name: "__src", arg: 2, scope: !3986, file: !1237, line: 26, type: !1007)
!3989 = !DILocalVariable(name: "__len", arg: 3, scope: !3986, file: !1237, line: 26, type: !102)
!3990 = !DILocation(line: 0, scope: !3986, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 128, column: 11, scope: !3984)
!3992 = !DILocation(line: 29, column: 10, scope: !3986, inlinedAt: !3991)
!3993 = !DILocation(line: 129, column: 11, scope: !3984)
!3994 = !DILocation(line: 133, column: 23, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !775, line: 133, column: 15)
!3996 = distinct !DILexicalBlock(scope: !3981, file: !775, line: 132, column: 9)
!3997 = !DILocation(line: 133, column: 15, scope: !3996)
!3998 = !DILocation(line: 138, column: 44, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !775, line: 134, column: 13)
!4000 = !DILocation(line: 0, scope: !3986, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 138, column: 15, scope: !3999)
!4002 = !DILocation(line: 29, column: 10, scope: !3986, inlinedAt: !4001)
!4003 = !DILocation(line: 139, column: 15, scope: !3999)
!4004 = !DILocation(line: 139, column: 32, scope: !3999)
!4005 = !DILocation(line: 140, column: 13, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3965)
!4007 = !DILocation(line: 145, column: 1, scope: !3957)
